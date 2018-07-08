#include "Tensor.h"

Tensor::Tensor()
{
  this->w     = 0;
  this->h     = 0;
  this->d     = 0;
  this->size  = 0;

  this->v     = nullptr;
}

Tensor::Tensor(unsigned int d)
{
  this->w     = 0;
  this->h     = 0;
  this->d     = 0;
  this->size  = 0;

  this->v     = nullptr;

  init(1, 1, d);
}

Tensor::Tensor(unsigned int w, unsigned int d, unsigned int h)
{
  this->w     = 0;
  this->h     = 0;
  this->d     = 0;
  this->size  = 0;

  this->v     = nullptr;

  init(w, h, d);
}

Tensor::Tensor(sGeometry geometry)
{
  this->w     = 0;
  this->h     = 0;
  this->d     = 0;
  this->size  = 0;

  this->v     = nullptr;

  init(geometry.w, geometry.h, geometry.d);
}

Tensor::Tensor(Tensor &rhs)
{
  this->w     = 0;
  this->h     = 0;
  this->d     = 0;
  this->size  = 0;

  this->v     = nullptr;

  init(rhs.w, rhs.h, rhs.d);
}

Tensor::Tensor(const Tensor &rhs)
{
  this->w     = 0;
  this->h     = 0;
  this->d     = 0;
  this->size  = 0;

  this->v     = nullptr;
}

Tensor::~Tensor()
{
  uninit();
}


void Tensor::init(unsigned int d)
{
  uninit();
  init(1, 1, d);
}

void Tensor::init(unsigned int w, unsigned int h, unsigned int d)
{
  uninit();

  this->w = w;
  this->h = h;
  this->d = d;

  this->size = w*h*d;

  #ifdef _USE_CUDA_
    cudaMalloc(&v, size*sizeof(float));
  #else

  #endif

}

void Tensor::init(sGeometry geometry)
{
  uninit();
  init(geometry.w, geometry.h, geometry.d);
}

void Tensor::uninit()
{
  if (v != nullptr)
  {
    #ifdef _USE_CUDA_
      cudaFree(v);
    #else
      delete v;
    #endif

    w     = 0;
    h     = 0;
    d     = 0;
    size  = 0;

    v     = nullptr;
  }
}

void Tensor::clear()
{

}


Tensor& Tensor::operator=(Tensor &rhs)
{
  return *this;
}

Tensor& Tensor::operator=(float *host_src)
{
  return *this;
}

Tensor& Tensor::operator=(std::vector<float> &host_src)
{
  return *this;
}
