class CatData {
  final String id;
  final String name;
  final String cfaUrl;
  final String temperament;
  final String origin;
  final String countryCodes;
  final String countryCode;
  final String description;
  final String lifeSpan;
  final String childFriendly;

  CatData(
      this.id,
      this.name,
      this.cfaUrl,
      this.temperament,
      this.origin,
      this.countryCodes,
      this.countryCode,
      this.description,
      this.lifeSpan,
      this.childFriendly);

  CatData.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        cfaUrl = json['cfa_url'],
        temperament = json['temperament'],
        origin = json['origin'],
        countryCodes = json['country_codes'],
        countryCode = json['country_code'],
        description = json['description'],
        lifeSpan = json['life_span'],
        childFriendly = json['child_friendly'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'cfa_url': cfaUrl,
        'temperament': temperament,
        'origin': origin,
        'country_codes': countryCodes,
        'country_code': countryCode,
        'description': description,
        'life_span': lifeSpan,
        'child_friendly': childFriendly,
      };
}
