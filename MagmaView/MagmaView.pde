JSONObject magma_library;
JSONArray magmas;
JSONArray table;
int[][] T;

logic L = new logic();

void setup() {
  magma_library = loadJSONObject("magma_library.json");
  magmas = magma_library.getJSONArray("magmas");
  int id = magmas.getJSONObject(0).getInt("magmaId");
  table = magmas.getJSONObject(0).getJSONArray("multiplication_table");
  //  println(table[0][0]);
}

void draw() {
}

int operate(int x1, int x2) {
  return(T[x1][x2]);
}
