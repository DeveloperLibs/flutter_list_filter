class Country {

  String name;
  String flag;
  String capital;

  Country({this.name, this.flag, this.capital});

  factory Country.fromJson(Map<String, dynamic> json) {
    return new Country(
      name: json['name'] as String,
      flag: json['flag'] as String,
      capital: json['capital'] as String,
    );
  }
}
