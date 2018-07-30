#include "rule_of_three.h"


RuleOfThree::RuleOfThree()
{

}

RuleOfThree::RuleOfThree(RuleOfThree& other)
{
  copy(other);
}

RuleOfThree::RuleOfThree(const RuleOfThree& other)
{
  copy(other);
}

RuleOfThree::~RuleOfThree()
{

}

RuleOfThree& RuleOfThree::operator= (RuleOfThree& other)
{
  copy(other);

  return *this;
}

RuleOfThree& RuleOfThree::operator= (const RuleOfThree& other)
{
  copy(other);

  return *this;
}

void RuleOfThree::copy(RuleOfThree& other)
{
  (void)other;
  //TODO copy other to this
}

void RuleOfThree::copy(const RuleOfThree& other)
{
  (void)other;
  //TODO copy other to this
}
