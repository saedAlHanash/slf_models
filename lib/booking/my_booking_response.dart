import '../experience/experience_response.dart';

class MyBookingResponse {
  MyBookingResponse({
    required this.result,
  });

  final MyBookingResult result;

  factory MyBookingResponse.fromJson(Map<String, dynamic> json) {
    return MyBookingResponse(
      result: MyBookingResult.fromJson(json["result"] ?? {}),
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "result": result.toJson(),
      };
}

class MyBookingResult {
  MyBookingResult({
    required this.items,
    required this.totalCount,
  });

  final List<MyBookingItem> items;
  final int totalCount;

  factory MyBookingResult.fromJson(Map<String, dynamic> json) {
    return MyBookingResult(
      items: json["items"] == null
          ? []
          : List<MyBookingItem>.from(
          json["items"]!.map((x) => MyBookingItem.fromJson(x))),
      totalCount: json["totalCount"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "items": items.map((x) => x.toJson()).toList(),
        "totalCount": totalCount,
      };
}

enum BookingState { Paid, Canceled, Done, Confirmed, PaymentFailed, Pending }

class MyBookingItem {
  MyBookingItem({
    required this.id,
    required this.trip,
    required this.creationTime,
    required this.lastModificationTime,
    required this.bookingSource,
    required this.childsNumber,
    required this.adultsNumber,
    required this.subTotal,
    required this.discount,
    required this.totalPrice,
    required this.bookingType,
    required this.transactionId,
    required this.invoiceId,
    required this.note,
    required this.promoCode,
    required this.currency,
    required this.status,
    required this.selectedDate,
    required this.selectedTimes,
    required this.isGAEventSent,
    required this.tripName,
    required this.tripStatus,
    required this.partnerName,
    required this.invoiceLink,
    required this.interval,
    required this.email,
    required this.phone,
    required this.fullName,
    required this.pricingMatrixType,
  });

  final int id;
  final Experience trip;
  final DateTime? creationTime;
  final DateTime? lastModificationTime;
  final int bookingSource;
  final int childsNumber;
  final int adultsNumber;
  final num subTotal;
  final bool isGAEventSent;
  final num discount;
  final num totalPrice;
  final int bookingType;
  final String transactionId;
  final String invoiceId;
  final String note;
  final String promoCode;
  final int status;

  final String currency;
  final String tripName;
  final num tripStatus;
  final String partnerName;
  final String invoiceLink;
  final num interval;
  final String email;
  final String phone;
  final String fullName;
  final num pricingMatrixType;

  final DateTime? selectedDate;
  final List<SelectedTime> selectedTimes;


  factory MyBookingItem.fromJson(Map<String, dynamic> json) {
    return MyBookingItem(
      currency: json['currency'] ?? '',
      tripName: json['tripName'] ?? '',
      tripStatus: json['tripStatus'] ?? 0,
      partnerName: json['partnerName'] ?? '',
      invoiceLink: json['invoiceLink'] ?? '',
      interval: json['interval'] ?? 0,
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      fullName: json['fullName'] ?? '',
      pricingMatrixType: json['pricingMatrixType'] ?? 0,
      id: json["id"] ?? 0,
      isGAEventSent: json["isGAEventSent"] ?? true,
      trip: Experience.fromJson(json["trip"] ?? {}),
      creationTime: DateTime.tryParse(json["creationTime"] ?? ""),
      lastModificationTime: DateTime.tryParse(json["lastModificationTime"] ?? ""),
      bookingSource: json["bookingSource"] ?? 0,
      childsNumber: json["childsNumber"] ?? 0,
      adultsNumber: json["adultsNumber"] ?? 0,
      subTotal: json["subTotal"] ?? 0,
      discount: json["discount"] ?? 0,
      totalPrice: json["totalPrice"] ?? 0,
      bookingType: json["bookingType"] ?? 0,
      transactionId: json["transactionId"] ?? "",
      invoiceId: json["invoiceId"] ?? "",
      note: json["note"] ?? "",
      promoCode: json["promoCode"] ?? "",
      status: json["status"] ?? 0,
      selectedDate: DateTime.tryParse(json["selectedDate"] ?? ""),
      selectedTimes: json["selectedTimes"] == null
          ? []
          : List<SelectedTime>.from(
          json["selectedTimes"]!.map((x) => SelectedTime.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "trip": trip.toJson(),
        "creationTime": creationTime?.toIso8601String(),
        "lastModificationTime": lastModificationTime?.toIso8601String(),
        "bookingSource": bookingSource,
        "childsNumber": childsNumber,
        "adultsNumber": adultsNumber,
        "subTotal": subTotal,
        "discount": discount,
        "totalPrice": totalPrice,
        "bookingType": bookingType,
        "transactionId": transactionId,
        "invoiceId": invoiceId,
        "note": note,
        "promoCode": promoCode,
        "status": status,
        "selectedDate": selectedDate?.toIso8601String(),
        "selectedTimes": selectedTimes.map((x) => x.toJson()).toList(),
      };
}

class SelectedTime {
  SelectedTime({
    required this.id,
    required this.from,
    required this.to,
    required this.count,
  });

  final int id;
  final DateTime? from;
  final DateTime? to;
  final num count;

  factory SelectedTime.fromJson(Map<String, dynamic> json) {
    return SelectedTime(
      id: json["id"] ?? 0,
      from: DateTime.tryParse(json["from"] ?? ""),
      to: DateTime.tryParse(json["to"] ?? ""),
      count: json["count"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "from": from?.toIso8601String(),
        "to": to?.toIso8601String(),
        "count": count,
      };
}

