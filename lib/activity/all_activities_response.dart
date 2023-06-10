class AllActivitiesResponse {
  AllActivitiesResponse({
    required this.result,
  });

  final AllActivitiesResult result;

  factory AllActivitiesResponse.fromJson(Map<String, dynamic> json) {
    return AllActivitiesResponse(
      result: AllActivitiesResult.fromJson(json["result"] ?? {}),
    );
  }

  Map<String, dynamic> toJson() => {"result": result.toJson()};
}

class AllActivitiesResult {
  AllActivitiesResult({
    required this.totalCount,
    required this.items,
  });

  final int totalCount;
  final List<Activity> items;

  factory AllActivitiesResult.fromJson(Map<String, dynamic> json) {
    return AllActivitiesResult(
      totalCount: json["totalCount"] ?? 0,
      items: json["items"] == null
          ? []
          : List<Activity>.from(
              json["items"]!.map((x) => Activity.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "totalCount": totalCount,
        "items": items.map((x) => x.toJson()).toList(),
      };
}

class Activity {
  Activity({
    required this.name,
    required this.imageUrl,
    required this.id,
  });

  final String name;
  final String imageUrl;
  final int id;

  factory Activity.fromJson(Map<String, dynamic> json) {
    return Activity(
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
