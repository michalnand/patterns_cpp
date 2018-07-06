#ifndef _SINGLETON_PATTERN_H_
#define _SINGLETON_PATTERN_H_

class SingletonPattern
{
  public:
    SingletonPattern();
    virtual ~SingletonPattern();


    static SingletonPattern& get_instance();

   public:
       SingletonPattern(SingletonPattern const&)  = delete;
       void operator=(SingletonPattern const&)    = delete;

};

#endif
