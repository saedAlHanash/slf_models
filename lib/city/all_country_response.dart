
import 'all_cities_response.dart';

class AllCountriesResponse {
  AllCountriesResponse({
    required this.result,
  });

  final AllCountriesResult result;

  factory AllCountriesResponse.fromJson(Map<String, dynamic> json){
    return AllCountriesResponse(
      result: AllCountriesResult.fromJson(json["result"]??{}),
    );
  }

  Map<String, dynamic> toJson() => {
    "result": result.toJson(),
  };

}

class AllCountriesResult {
  AllCountriesResult({
    required this.totalCount,
    required this.items,
  });

  final num totalCount;
  final List<Country> items;

  factory AllCountriesResult.fromJson(Map<String, dynamic> json){
    return AllCountriesResult(
      totalCount: json["totalCount"] ?? 0,
      items: json["items"] == null ? [] : List<Country>.from(json["items"]!.map((x) => Country.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "totalCount": totalCount,
    "items": items.map((x) => x.toJson()).toList(),
  };

}

class Country {
  Country({
    required this.name,
    required this.cities,
    required this.id,
  });

  final String name;
  final List<City> cities;
  final int id;

  factory Country.fromJson(Map<String, dynamic> json){
    return Country(
      name: json["name"] ?? "",
      cities: json["cities"] == null ? [] : List<City>.from(json["cities"]!.map((x) => City.fromJson(x))),
      id: json["id"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
    "name": name,
    "id": id,
  };

}

