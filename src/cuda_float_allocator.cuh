#ifndef _CUDA_FLOAT_ALLOCATOR_CUH_
#define _CUDA_FLOAT_ALLOCATOR_CUH_

#include <mutex>

class CudaFloatAllocator
{
  private:
    std::mutex mutex;

  public:
      CudaFloatAllocator();
      virtual ~CudaFloatAllocator();

      static CudaFloatAllocator& get_instance();

      float* malloc(unsigned int count);
      void free(void *ptr);


  public:

      void host_to_device(float *dev_ptr, float *host_ptr, unsigned int size);
      void device_to_host(float *host_ptr, float *dev_ptr, unsigned int size);
      void device_to_device(float *dest_ptr, float *src_ptr, unsigned int size);

      void clear(float *result, unsigned int size);
      
 public:
      CudaFloatAllocator(CudaFloatAllocator const&)  = delete;
      void operator=(CudaFloatAllocator const&)    = delete;
};


#endif
