class BookingResponse {
  BookingResponse({
    required this.result,
  });

  final BookingResult? result;

  factory BookingResponse.fromJson(Map<String, dynamic> json) {
    return BookingResponse(
      result: json["result"] == null ? null : BookingResult.fromJson(json["result"]),
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "result": result?.toJson(),
      };
}

class BookingResult {
  BookingResult({
    required this.totalPrice,
    required this.subtotol,
    required this.discount,
    required this.vat,
    required this.checkoutUrl,
    required this.currency,
    required this.childesNumber,
    required this.adultsNumber,
    required this.priceAdult,
    required this.priceChild,
  });

  final num totalPrice;
  final num subtotol;
  final num discount;
  final num vat;
  final String checkoutUrl;
  final String currency;

  //-------------

  num childesNumber = 0;
  num adultsNumber = 0;
  num priceAdult = 0;
  num priceChild = 0;

  factory BookingResult.fromJson(Map<String, dynamic> json) {
    return BookingResult(
      totalPrice: json["totalPrice"] ?? 0,
      subtotol: json["subtotol"] ?? 0,
      discount: json["discount"] ?? 0,
      vat: json["vat"] ?? 0,
      checkoutUrl: json["checkoutUrl"] ?? "",
      currency: json["currency"] ?? "",
      childesNumber: json["childesNumber"] ?? 0,
      adultsNumber: json["adultsNumber"] ?? 0,
      priceAdult: json["priceAdult"] ?? 0,
      priceChild: json["priceChild"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "totalPrice": totalPrice,
        "subtotol": subtotol,
        "discount": discount,
        "vat": vat,
        "checkoutUrl": checkoutUrl,
        "currency": currency,
        "childesNumber": childesNumber,
        "adultsNumber": adultsNumber,
        "priceAdult": priceAdult,
        "priceChild": priceChild,
      };
}
