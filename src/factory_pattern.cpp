#include "factory_pattern.h"


CreatedClass* FactoryPattern::create_dynamic()
{
  return new CreatedClass();
}

CreatedClass FactoryPattern::create()
{
  return CreatedClass();
}
