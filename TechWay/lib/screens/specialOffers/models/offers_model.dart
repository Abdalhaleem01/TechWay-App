class SpecialOffersModel{
    final int? id;
  final String? imageURL;
  final int? per;
  final String? des;
  final int? colorss;

  SpecialOffersModel({
    this.id,
    this.imageURL,
    this.per,
    this.des,
    this.colorss
  });


  SpecialOffersModel.fromJson(Map<String,dynamic> json)
    : id = json['id'] as int?,
        imageURL = json['imageURL'] as String?,
        per = json['per'] as int?,
        des = json['des'] as String?,
        colorss = json['colorss'] as int?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'imageURL' : imageURL,
    'per' : per,
    'des' : des,
    'colorss':colorss,
  };
}