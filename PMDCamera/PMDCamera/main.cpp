#include <stdio.h>
#include <pmdsdk2.h>
#include <fstream>
#include <iostream>

#define SOURCE_PLUGIN "camcube3"
#define SOURCE_PARAM ""
#define PROC_PLUGIN "camcubeproc"
#define PROC_PARAM ""

char err[128];

int main (int argc, char *argv[])
{
  PMDHandle hnd;
  int res;

  res = pmdOpen (&hnd, SOURCE_PLUGIN, SOURCE_PARAM, PROC_PLUGIN, PROC_PARAM);
  if (res != PMD_OK)
    {
      pmdGetLastError (0, err, 128);
      fprintf (stderr, "Could not connect: %s\n", err);
      return 1;
    }

  res = pmdUpdate (hnd);
  if (res != PMD_OK)
    {
      pmdGetLastError (hnd, err, 128);
      fprintf (stderr, "Could transfer data: %s\n", err);
      pmdClose (hnd);
      return 1;
    }

  PMDDataDescription dd;

  res = pmdGetSourceDataDescription (hnd, &dd);
  if (res != PMD_OK)
    {
      pmdGetLastError (hnd, err, 128);
      fprintf (stderr, "Could get data description: %s\n", err);
      pmdClose (hnd);
      return 1;
    }

  if (dd.subHeaderType != PMD_IMAGE_DATA)
    {
      fprintf (stderr, "Source data is not an image!\n"); 
      pmdClose (hnd);
      return 1;
    }

  float * dist = new float [dd.img.numRows * dd.img.numColumns];
  std::ofstream fout("image.raw");


  res = pmdGetDistances (hnd, dist, dd.img.numColumns * dd.img.numRows * sizeof (float));
  if (res != PMD_OK)
    {
      pmdGetLastError (hnd, err, 128);
      fprintf (stderr, "Could get distances: %s\n", err);
      pmdClose (hnd);
      return 1;
    }

  for(int i = 0; i < dd.img.numColumns * dd.img.numRows; i++)
  {
	  fout << dist[i] << std::endl;
  }
  fout.close();
  float * calDist = new float[dd.img.numColumns * dd.img.numRows];
  res = pmdCalcDistances(hnd, calDist, dd.img.numColumns * dd.img.numRows* sizeof(float), dd, dist);
  if (res != PMD_OK)
  {
	  pmdGetLastError(hnd, err, 128);
	  fprintf(stderr, "Could calculate distances: %s\n", err);
	  pmdClose(hnd);
	  return 1;
  }
  std::ofstream newfout("cal.raw");

  for (int i = 0; i < dd.size; i++)
  {
	  newfout << dist[i] << std::endl;
  }
  newfout.close();
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
  delete[] calDist;
  pmdClose (hnd);

  return 0;
}


