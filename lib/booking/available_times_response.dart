class AvailableTimesResponse {
  AvailableTimesResponse({
    required this.result,
  });

  final List<AvailableTimesResult> result;

  factory AvailableTimesResponse.fromJson(Map<String, dynamic> json) {
    return AvailableTimesResponse(
      result: json["result"] == null
          ? []
          : List<AvailableTimesResult>.from(json["result"]!.map((x) => AvailableTimesResult.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "result": result.map((x) => x.toJson()).toList(),
  };
}

class AvailableTimesResult {
  AvailableTimesResult({
    required this.id,
    required this.from,
    required this.to,
    required this.count,
  });

  final int id;
  final DateTime from;
  final DateTime to;
  final int count;

  factory AvailableTimesResult.fromJson(Map<String, dynamic> json) {
    var from  = json["from"] ?? "";
    var to  = json["to"] ?? "";
    from = from.replaceAll(RegExp(r'[+-]\d{2}:\d{2}$'), "");
    to = to.replaceAll(RegExp(r'[+-]\d{2}:\d{2}$'), "");
    // from = DateFormat("yyyy-MM-dd hh:mm:ss").parse(from);
    // to = DateFormat("yyyy-MM-dd hh:mm:ss").parse(to);
    return AvailableTimesResult(
      id: json["id"] ?? 0,
      from: DateTime.tryParse(from) ?? DateTime.now(),
      to: DateTime.tryParse(to) ?? DateTime.now(),
      count: json["count"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "from": from.toIso8601String(),
    "to": to.toIso8601String(),
    "count": count,
  };
}
