class expression {
  int n_variables; 
  // number of variables
  
  int degree; 
  // maximum degree of the LHS or RHS.
  // minimum degree is floor(n_variables/2)+1
  
  int[][] quantifiers;
  // quantifiers[i][0]: i-th quantifier 
  // 0: for all
  // 1: exists
  // quantifiers[i][1]: variable for the i-th quantifier
  
  expression(int[][] quantifiers) {
    this.quantifiers = quantifiers;
  }

  void printExpr() {
    int var = -1;
    String charVar = "";
    for (int i=0; i<quantifiers.length; i++) {
      var = quantifiers[i][1];
      if(var == 0){charVar = "x";}else{charVar = "y";}
      if (quantifiers[i][0] == 0) {
        print("A" + charVar+" ");
      } else {
        print("E"+charVar+" ");
      }
    }
  }
}
