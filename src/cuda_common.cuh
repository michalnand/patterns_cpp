#ifndef _CUDA_COMMON_H_
#define _CUDA_COMMON_H_


class CudaCommon
{
  public:
    CudaCommon();
    virtual ~CudaCommon();

    static CudaCommon& get_instance();

  public:
    unsigned int get_device_count();
    void set_device(unsigned int device_idx);

    unsigned int get_threads_per_block(unsigned int size);
    unsigned int get_number_of_blocks(unsigned int size);

   public:
    CudaCommon(CudaCommon const&)  = delete;
     void operator=(CudaCommon const&)    = delete;

};

#endif
