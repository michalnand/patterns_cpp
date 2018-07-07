#include "rule_of_three.h"


RuleOfThree::RuleOfThree()
{

}

RuleOfThree::RuleOfThree(RuleOfThree& other)
{
  (void)other;
  //TODO copy other to this
}

RuleOfThree::RuleOfThree(const RuleOfThree& other)
{
  (void)other;
  //TODO copy other to this
}

RuleOfThree::~RuleOfThree()
{

}

RuleOfThree& RuleOfThree::operator= (RuleOfThree& other)
{
  (void)other;
  //TODO copy other to this

  return *this;
}

RuleOfThree& RuleOfThree::operator= (const RuleOfThree& other)
{
  (void)other;
  //TODO copy other to this

  return *this;
}
