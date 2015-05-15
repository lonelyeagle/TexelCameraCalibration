#include <stdio.h>
#include <pmdsdk2.h>
#include <fstream>
#include <iostream>
#include <string>

#define SOURCE_PLUGIN "camcube3"
#define SOURCE_PARAM ""
#define PROC_PLUGIN "camcubeproc"
#define PROC_PARAM ""

char err[128];
void checkError(PMDHandle hnd, int code);

int main (int argc, char *argv[])
{
	PMDHandle hnd;
	int res;

	res = pmdOpen (&hnd, SOURCE_PLUGIN, SOURCE_PARAM, PROC_PLUGIN, PROC_PARAM);
	checkError(hnd, res);

	res = pmdUpdate (hnd);
	checkError(hnd, res);

	PMDDataDescription dd;

	res = pmdGetSourceDataDescription (hnd, &dd);
	checkError(hnd, res);

	if (dd.subHeaderType != PMD_IMAGE_DATA)
	{
		fprintf (stderr, "Source data is not an image!\n"); 
		pmdClose (hnd);
		return 1;
	}

	float * dist = new float [dd.img.numRows * dd.img.numColumns];
	float * intensity = new float[dd.img.numRows * dd.img.numColumns];

	std::ofstream fout, fout2;
	std::string filename;
	unsigned int i, j, k;
	for (i = 1; i <= 50; i++) 
	{
		res = pmdSetIntegrationTime(hnd, 0, i * 1000);
		checkError(hnd, res);
		filename = "record\\distance_";
		filename = filename + std::to_string(i) + ".txt";
		fout.open(filename);
		filename = "record\\intensity_";
		filename = filename + std::to_string(i) + ".txt";
		fout2.open(filename);
		for (j = 0; j < 200; j++)
		{
			res = pmdUpdate(hnd);
			checkError(hnd, res);
			res = pmdGetAmplitudes(hnd, intensity, dd.img.numColumns * dd.img.numRows * sizeof(float));
			checkError(hnd, res);
			res = pmdGetDistances(hnd, dist, dd.img.numColumns * dd.img.numRows * sizeof(float));
			checkError(hnd, res);
			for (k = 0; k < dd.img.numColumns * dd.img.numRows; k++)
			{
				fout << dist[k] << ' ';
				fout2 << intensity[k] << ' ';
			}
			fout << std::endl;
			fout2 << std::endl;
		}
		fout.close();
		fout2.close();
	}

	printf ("Middle distance: %f m\n", dist[(dd.img.numRows / 2) * dd.img.numColumns + dd.img.numColumns / 2]);

	//Test to see what modulation frequencies are available
	unsigned int test, actual;
	do{
	std::cout << "Please enter a test modulation frequency (0 to exit): " << std::endl;
	std::cin >> test;
	test = test*1000000;
	pmdGetValidModulationFrequency(hnd, &actual, 0, CloseTo, test);

	std::cout << "The closest available frequency is: " << actual / 1000000.0 << std::endl;
	} while(test != 0);

	system("PAUSE");

	delete[] dist;
	delete[] intensity;
	pmdClose (hnd);

	return 0;
}


void checkError(PMDHandle hnd, int code) {
	if (code != PMD_OK)
	{
		char err[256];
		pmdGetLastError(hnd, err, 256);
		fprintf(stderr, "Error: %s\n", err);
		pmdClose(hnd);
		exit(1);
	}
}