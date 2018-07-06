#ifndef _FACTORY_PATTERN_H_
#define _FACTORY_PATTERN_H_

class CreatedClass
{

};

class FactoryPattern
{
  public:
    CreatedClass* create_dynamic();
    CreatedClass create();

};


#endif
