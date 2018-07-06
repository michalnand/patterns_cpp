#include "singleton_pattern.h"

SingletonPattern::SingletonPattern()
{

}

SingletonPattern::~SingletonPattern()
{

}

SingletonPattern& SingletonPattern::get_instance()
{
  static SingletonPattern instance;
  return instance;
}
