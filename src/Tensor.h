#ifndef _TENSOR_GPU_H_
#define _TENSOR_GPU_H_

struct sGeometry
{
  unsigned int w, h, d;
};

#include <vector>

#define _USE_CUDA_    1

class Tensor
{
  public:
    unsigned int w, h, d;
    unsigned int size;
    float *v;

  public:
    Tensor();
    Tensor(unsigned int d);
    Tensor(unsigned int w, unsigned int d, unsigned int h);
    Tensor(sGeometry geometry);

    Tensor(Tensor &rhs);
    Tensor(const Tensor &rhs);

    virtual ~Tensor();

  public:
    void init(unsigned int d);
    void init(unsigned int w, unsigned int h, unsigned int d);
    void init(sGeometry geometry);
    void uninit();
 
    void clear();

  public:

    Tensor& operator=(Tensor &rhs);
    Tensor& operator=(float *host_src);
    Tensor& operator=(std::vector<float> &host_src);

};


#endif
