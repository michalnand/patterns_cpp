#include "cuda_common.cuh"

CudaCommon::CudaCommon()
{

}

CudaCommon::~CudaCommon()
{

}


CudaCommon& CudaCommon::get_instance()
{
  static CudaCommon instance;
  return instance;
}

unsigned int CudaCommon::get_device_count()
{
  int result = 0;
  cudaGetDeviceCount(&result);
  return result;
}

void CudaCommon::set_device(unsigned int device_idx)
{
  cudaSetDevice(device_idx);
}

unsigned int CudaCommon::get_threads_per_block(unsigned int size)
{
  if (size <= 256)
    return 32;
  else
    return 256;
}

unsigned int CudaCommon::get_number_of_blocks(unsigned int size)
{
  unsigned int tmp = get_threads_per_block(size);
  return (size + tmp -1)/tmp;
}
