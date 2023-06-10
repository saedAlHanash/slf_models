class AllCitiesResponse {
  AllCitiesResponse({
    required this.result,
  });

  final AllCitiesResult result;

  factory AllCitiesResponse.fromJson(Map<String, dynamic> json) {
    return AllCitiesResponse(
      result: AllCitiesResult.fromJson(json["result"] ?? {}),
    );
  }

  Map<String, dynamic> toJson() => {
        "result": result.toJson(),
      };
}

class AllCitiesResult {
  AllCitiesResult({
    required this.totalCount,
    required this.items,
  });

  final int totalCount;
  final List<City> items;

  factory AllCitiesResult.fromJson(Map<String, dynamic> json) {
    return AllCitiesResult(
      totalCount: json["totalCount"] ?? 0,
      items: json["items"] == null
          ? []
          : List<City>.from(json["items"]!.map((x) => City.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "totalCount": totalCount,
        "items": items.map((x) => x.toJson()).toList(),
      };
}

class City {
  City({
    required this.name,
    required this.imageUrl,
    required this.id,
  });

  final String name;
  final String imageUrl;
  final int id;

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      name: json["name"] ?? "",
      imageUrl: json["imageUrl"] ?? "",
      id: json["id"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "imageUrl": imageUrl,
        "id": id,
      };
}
