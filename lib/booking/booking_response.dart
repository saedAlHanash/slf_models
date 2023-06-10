class BookingResponse {
  BookingResponse({
    required this.result,
  });

  final BookingResult result;

  factory BookingResponse.fromJson(Map<String, dynamic> json) {
    return BookingResponse(
      result: BookingResult.fromJson(json["result"] ?? {}),
    );
  }

  Map<String, dynamic> toJson() => {
        "result": result.toJson(),
      };
}

class BookingResult {
  BookingResult({
    required this.totalPrice,
    required this.checkoutUrl,
    required this.currency,
  });

  final num totalPrice;
  final String checkoutUrl;
  final String currency;

  factory BookingResult.fromJson(Map<String, dynamic> json) {
    return BookingResult(
      totalPrice: json["totalPrice"] ?? 0,
      checkoutUrl: json["checkoutUrl"] ?? "",
      currency: json["currency"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "totalPrice": totalPrice,
        "checkoutUrl": checkoutUrl,
        "currency": currency,
      };
}
