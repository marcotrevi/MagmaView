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

  int[] lhs = {-1, 0, 0};
  // left-hand-side of the expression in Polish notation
  // -1: operation
  // non-negative intergers: variable identifiers

  int[] rhs = {-1, -1, 0, -1, 0, 0, 0};
  // right-hand-side of the expression in Polish notation
  // -1: operation
  // non-negative intergers: variable identifiers

  expression(int[][] quantifiers) {
    this.quantifiers = quantifiers;
  }

  String polishToString(int[] expr, String strExpr, int k) {
    // recursively parses the <expr> array starting from index <k>
    println("parsing index " + k + ": symbol: "+ expr[k]);
    if (expr[k] == -1) {
      // recursion step on smaller array
      println("before: "+strExpr);
      strExpr = "(" + polishToString(expr, strExpr, k+1);
      strExpr = polishToString(expr, strExpr, k+2) + ")";
      println("after: "+strExpr);
    } else {
      println("adding variable");
      println("before var: "+strExpr);
      strExpr = strExpr + str(expr[k]);
      println("after var: "+strExpr);
    }
    return(strExpr);
  }


  void printExpr() {
    int var = -1;
    String charVar = "";
    // quantifiers
    for (int i=0; i<quantifiers.length; i++) {
      var = quantifiers[i][1];
      if (var == 0) {
        charVar = "x";
      } else {
        charVar = "y";
      }
      if (quantifiers[i][0] == 0) {
        println("A" + charVar+" ");
      } else {
        println("E"+charVar+" ");
      }
    }
    // lhs
    String lhsStr = "";
    //polishToString(lhs, lhsStr, 0);
    // equals
    println(" = ");
    // rhs
    String rhsStr = polishToString(rhs, "", 0);
    println("");
    println(rhsStr);
  }
}
