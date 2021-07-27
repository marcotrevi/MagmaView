JSONObject magma_library;
JSONArray magmas;

logic L = new logic();

void setup() {
  magma_library = loadJSONObject("magma_library.json");
  magmas = magma_library.getJSONArray("magmas");
  int id = magmas.getJSONObject(0).getInt("magmaId");
  println(id);
}

void draw() {
}
