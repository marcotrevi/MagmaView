class logic {
  logic() {
  }

  void parseExpr(String expr) {
    // parses an expression and decides if:
    // 1) it is an atomic (evaluable) expression
    // 2) it begins with a forall quantifier
    // 3) it begins with an exists quantifier
  }

  boolean checkExists(String expr, char var){
    // evaluates expression with an exists quantifier
    boolean check = false;
    return check;
  }
  
  boolean checkForAll(String expr, char var){
    // evaluates expression with a for all quantifier
    boolean check = false;
    return check;
  }
  
  boolean checkAtomic(String expr, char var){
    // evaluates atomic expression (no quantifiers)
    boolean check = false;
    return check;
  }

  boolean checkIsomorphic(magma M1, magma M2) {
    return false;
  }
}
