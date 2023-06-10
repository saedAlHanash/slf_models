class AllEquipmentsResponse {
  AllEquipmentsResponse({
    required this.result,
  });

  final AllEquipmentsResult result;

  factory AllEquipmentsResponse.fromJson(Map<String, dynamic> json) {
    return AllEquipmentsResponse(
      result: AllEquipmentsResult.fromJson(json["result"] ?? {}),
    );
  }

  Map<String, dynamic> toJson() => {
    "result": result.toJson(),
  };
}

class AllEquipmentsResult {
  AllEquipmentsResult({
    required this.totalCount,
    required this.items,
  });

  final int totalCount;
  final List<Equipment> items;

  factory AllEquipmentsResult.fromJson(Map<String, dynamic> json) {
    return AllEquipmentsResult(
      totalCount: json["totalCount"] ?? 0,
      items: json["items"] == null
          ? []
          : List<Equipment>.from(json["items"]!.map((x) => Equipment.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "totalCount": totalCount,
    "items": items.map((x) => x.toJson()).toList(),
  };
}

class Equipment {
  Equipment({
    required this.name,
    required this.imageUrl,
    required this.id,
  });

  final String name;
  final String imageUrl;
  final int id;

  factory Equipment.fromJson(Map<String, dynamic> json) {
    return Equipment(
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
