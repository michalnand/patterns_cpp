#ifndef _COMPONENT_H_
#define _COMPONENT_H_


class InterfaceClass
{
  public:
    InterfaceClass() { };
    virtual ~InterfaceClass() { };

  public:
    virtual void foo() { };
};

class ExampleClass : public InterfaceClass
{
  public:
    ExampleClass();
    virtual ~ExampleClass();

  public:
    virtual void foo();
};

#endif
