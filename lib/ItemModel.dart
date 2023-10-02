class ItemModle {
  String name;

  var time;
  var image;

  ItemModle({required this.name, required this.time, this.image});
}

class ItemModle2 {
  var name;
  var time;
  var image;
  ItemModle2({required this.name, required this.time, required this.image});
}

class ItemModle3 {
  var name;

  var day;
  ItemModle3({required this.name, required this.day});
}

class ItemModle4 {
  var id;
  var name;
  var image;
  var price;
  ItemModle4(
      {required this.id,
      required this.name,
      required this.image,
      required this.price});
}
