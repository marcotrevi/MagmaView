JSONObject magma_library;
JSONArray magmas;
JSONArray table;
int[][] T;
String expr;
expression E;

logic L = new logic();

void setup() {
  int[][] quant = {{1,0},{0,1}};
  E = new expression(quant);
  
  // test multiplication table
  T = new int[2][2];
  T[0][0] = 0;
  T[0][1] = 1;
  T[1][0] = 1;
  T[1][1] = 1;
  
  expr = "xy = x";
  
  magma_library = loadJSONObject("magma_library.json");
  magmas = magma_library.getJSONArray("magmas");
  int id = magmas.getJSONObject(0).getInt("magmaId");
  table = magmas.getJSONObject(0).getJSONArray("multiplication_table");
  //  println(table[0][0]);
  E.printExpr();
}

void draw() {
}
