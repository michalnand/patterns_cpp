#ifndef _RULE_OF_THREE_H_
#define _RULE_OF_THREE_H_


class RuleOfThree
{
  public:
    // Default constructor
    RuleOfThree();

    // Copy constructor
    RuleOfThree(RuleOfThree& other);

    // Copy constructor
    RuleOfThree(const RuleOfThree& other);

    // Destructor
    virtual ~RuleOfThree();

    // Copy assignment operator
    RuleOfThree& operator= (RuleOfThree& other);

    // Copy assignment operator
    RuleOfThree& operator= (const RuleOfThree& other);
};


#endif
