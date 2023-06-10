import 'package:slf_models/explore/all_explore_response.dart';

import '../activity/all_activities_response.dart';
import '../booking/my_booking_response.dart';
import '../city/all_cities_response.dart';
import '../partner/all_partners_response.dart';

extension FixDayWeek on int? {
  int get fixDayWeek {
    switch (this) {
      case 0:
        return 7;
      case 1:
        return 1;
      case 2:
        return 2;
      case 3:
        return 3;
      case 4:
        return 4;
      case 5:
        return 5;
      case 6:
        return 6;
      default:
        return 7;
    }
  }
}

class ExperienceResponse {
  ExperienceResponse({
    required this.result,
  });

  final ExperienceResult result;

  factory ExperienceResponse.fromJson(Map<String, dynamic> json) {
    return ExperienceResponse(
      result: ExperienceResult.fromJson(json["result"] ?? {}),
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "result": result.toJson(),
      };
}

class ExperienceResult {
  ExperienceResult({
    required this.totalCount,
    required this.items,
  });

  int totalCount;
  final List<Experience> items;

  factory ExperienceResult.fromJson(Map<String, dynamic> json) {
    return ExperienceResult(
      totalCount: json["totalCount"] ?? 0,
      items: json["items"] == null
          ? []
          : List<Experience>.from(json["items"]!.map((x) => Experience.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "totalCount": totalCount,
        "items": items.map((x) => x.toJson()).toList(),
      };

  void setFav(int id, bool isFav) {
    for (var e in items) {
      if (e.id == id) {
        e.isFav = isFav;
        break;
      }
    }
  }
}

class Experience {
  Experience({
    required this.id,
    required this.name,
    required this.subtitle,
    required this.price,
    required this.order,
    required this.isFinest,
    required this.type,
    required this.partner,
    required this.partnerModel,
    required this.status,
    required this.tripStatus,
    required this.isFav,
    required this.about,
    required this.requirements,
    required this.timing,
    required this.pricing,
    required this.offers,
    required this.location,
    required this.city,
    required this.cityId,
    required this.activities,
    required this.dayPriceMatrices,
    required this.datePriceMatrices,
    required this.extraPriceMatrices,
    required this.locationAddress,
    required this.latitude,
    required this.longitude,
    required this.startDate,
    required this.tripTimeLead,
    required this.pricingMatrixType,
    required this.youtubeUrl,
    required this.images,
    required this.waiverFormLink,
  });

  final int id;
  final String name;
  final String subtitle;
  final num price;
  final num order;
  final bool isFinest;
  final num type;
  final Partner partner;
  final Partner partnerModel;
  final bool status;
  final num tripStatus;
  bool isFav;
  final String about;
  final String requirements;
  final String timing;
  final String pricing;
  final String offers;
  final ExploreItem location;
  final City city;
  final num cityId;
  final List<Activity> activities;
  final List<DayPriceMatrix> dayPriceMatrices;
  final List<DatePriceMatrix> datePriceMatrices;
  final List<ExtraPriceMatrix> extraPriceMatrices;
  final String locationAddress;
  final num latitude;
  final num longitude;
  final DateTime? startDate;
  final int tripTimeLead;
  final int pricingMatrixType;
  final String youtubeUrl;
  final List<String> images;
  final String waiverFormLink;

  factory Experience.fromJson(Map<String, dynamic> json) {
    return Experience(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      subtitle: json["subtitle"] ?? "",
      price: json["price"] ?? 0,
      order: json["order"] ?? 0,
      isFinest: json["isFinest"] ?? false,
      type: json["type"] ?? 0,
      partner: Partner.fromJson(json["partner"] ?? {}),
      partnerModel: Partner.fromJson(json["partnerModel"] ?? {}),
      status: json["status"] ?? false,
      tripStatus: json["tripStatus"] ?? 0,
      isFav: json["isFav"] ?? false,
      about: json["about"] ?? "",
      requirements: json["requirements"] ?? "",
      timing: json["timing"] ?? "",
      pricing: json["pricing"] ?? "",
      offers: json["offers"] ?? "",
      location: ExploreItem.fromJson(json["location"] ?? {}),
      city: City.fromJson(json["city"] ?? {}),
      cityId: json["cityId"] ?? 0,
      activities: json["activities"] == null
          ? []
          : List<Activity>.from(json["activities"]!.map((x) => Activity.fromJson(x))),
      dayPriceMatrices: json["dayPriceMatrices"] == null
          ? []
          : List<DayPriceMatrix>.from(
          json["dayPriceMatrices"]!.map((x) => DayPriceMatrix.fromJson(x))),
      datePriceMatrices: json["datePriceMatrices"] == null
          ? []
          : List<DatePriceMatrix>.from(
          json["datePriceMatrices"]!.map((x) => DatePriceMatrix.fromJson(x))),
      extraPriceMatrices: json["extraPriceMatrices"] == null
          ? []
          : List<ExtraPriceMatrix>.from(
          json["extraPriceMatrices"]!.map((x) => ExtraPriceMatrix.fromJson(x))),
      locationAddress: json["locationAddress"] ?? "",
      latitude: json["latitude"] ?? 0,
      longitude: json["longitude"] ?? 0,
      startDate: DateTime.tryParse(json["startDate"] ?? ""),
      tripTimeLead: json["tripTimeLead"] ?? 0,
      pricingMatrixType: json["pricingMatrixType"] ?? 0,
      youtubeUrl: json["youtubeUrl"] ?? "",
      images:
      json["images"] == null ? [] : List<String>.from(json["images"]!.map((x) => x)),
      waiverFormLink: json["waiverFormLink"] ?? "",
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "name": name,
        "subtitle": subtitle,
        "price": price,
        "order": order,
        "isFinest": isFinest,
        "type": type,
        "partner": partner.toJson(),
        "partnerModel": partnerModel,
        "status": status,
        "tripStatus": tripStatus,
        "isFav": isFav,
        "about": about,
        "requirements": requirements,
        "timing": timing,
        "pricing": pricing,
        "offers": offers,
        "location": location.toJson(),
        "city": city.toJson(),
        "cityId": cityId,
        "activities": activities.map((x) => x.toJson()).toList(),
        "dayPriceMatrices": dayPriceMatrices.map((x) => x.toJson()).toList(),
        "datePriceMatrices": datePriceMatrices.map((x) => x.toJson()).toList(),
        "extraPriceMatrices": extraPriceMatrices.map((x) => x.toJson()).toList(),
        "locationAddress": locationAddress,
        "latitude": latitude,
        "longitude": longitude,
        "startDate": startDate?.toIso8601String(),
        "tripTimeLead": tripTimeLead,
        "pricingMatrixType": pricingMatrixType,
        "youtubeUrl": youtubeUrl,
        "images": images.map((x) => x).toList(),
        "waiverFormLink": waiverFormLink,
      };
}

class DatePriceMatrix {
  DatePriceMatrix({
    required this.id,
    required this.date,
    required this.startTime,
    required this.pricePerAdult,
    required this.pricePerChild,
    required this.minNumber,
    required this.maxNumber,
    required this.inventroyType,
    required this.status,
  });

  final int id;
  final DateTime? date;
  final String startTime;
  final double pricePerAdult;
  final double pricePerChild;
  final int minNumber;
  final int maxNumber;
  final InventroyType inventroyType;
  final bool status;

  factory DatePriceMatrix.fromJson(Map<String, dynamic> json) {
    return DatePriceMatrix(
      id: json["id"] ?? 0,
      date: DateTime.tryParse(json["date"] ?? ""),
      startTime: json["startTime"] ?? "",
      pricePerAdult: json["pricePerAdult"] ?? 0,
      pricePerChild: json["pricePerChild"] ?? 0,
      minNumber: json["minNumber"] ?? 0,
      maxNumber: json["maxNumber"] ?? 0,
      inventroyType: InventroyType.fromJson(json["inventroyType"] ?? {}),
      status: json["status"] ?? false,
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "date": date?.toIso8601String(),
        "startTime": startTime,
        "pricePerAdult": pricePerAdult,
        "pricePerChild": pricePerChild,
        "minNumber": minNumber,
        "maxNumber": maxNumber,
        "inventroyType": inventroyType.toJson(),
        "status": status,
      };
}

class InventroyType {
  InventroyType({
    required this.id,
    required this.name,
    required this.status,
    required this.partner,
  });

  final int id;
  final String name;
  final bool status;
  final InventroyTypePartner? partner;

  factory InventroyType.fromJson(Map<String, dynamic> json) {
    return InventroyType(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      status: json["status"] ?? false,
      partner:
      json["partner"] == null ? null : InventroyTypePartner.fromJson(json["partner"]),
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "name": name,
        "status": status,
        "partner": partner?.toJson(),
      };
}

class InventroyTypePartner {
  InventroyTypePartner({
    required this.id,
    required this.name,
    required this.logo,
    required this.mainDescription,
  });

  final int id;
  final String name;
  final String logo;
  final String mainDescription;

  factory InventroyTypePartner.fromJson(Map<String, dynamic> json) {
    return InventroyTypePartner(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      logo: json["logo"] ?? "",
      mainDescription: json["mainDescription"] ?? "",
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "name": name,
        "logo": logo,
        "mainDescription": mainDescription,
      };
}

class DayPriceMatrix {
  DayPriceMatrix({
    required this.id,
    required this.day,
    required this.from,
    required this.to,
    required this.timeLable,
    required this.interval,
    required this.pricePerAdult,
    required this.pricePerChild,
    required this.minNumber,
    required this.maxNumber,
    required this.inventroyType,
    required this.status,
  });

  final int id;
  final num day;
  final DateTime? from;
  final DateTime? to;
  final String timeLable;
  final num interval;
  final double pricePerAdult;
  final double pricePerChild;
  final int minNumber;
  final int maxNumber;
  final InventroyType inventroyType;
  final bool status;

  factory DayPriceMatrix.fromJson(Map<String, dynamic> json) {
    return DayPriceMatrix(
      id: json["id"] ?? 0,
      day: ((json["day"] ?? 0) as int).fixDayWeek,
      from: DateTime.tryParse(json["from"] ?? ""),
      to: DateTime.tryParse(json["to"] ?? ""),
      timeLable: json["timeLable"] ?? "",
      interval: json["interval"] ?? 0,
      pricePerAdult: json["pricePerAdult"] ?? 0,
      pricePerChild: json["pricePerChild"] ?? 0,
      minNumber: json["minNumber"] ?? 0,
      maxNumber: json["maxNumber"] ?? 0,
      inventroyType: InventroyType.fromJson(json["inventroyType"] ?? {}),
      status: json["status"] ?? false,
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "day": day,
        "from": from?.toIso8601String(),
        "to": to?.toIso8601String(),
        "timeLable": timeLable,
        "interval": interval,
        "pricePerAdult": pricePerAdult,
        "pricePerChild": pricePerChild,
        "minNumber": minNumber,
        "maxNumber": maxNumber,
        "inventroyType": inventroyType.toJson(),
        "status": status,
      };
}

class ExtraPriceMatrix {
  ExtraPriceMatrix({
    required this.id,
    required this.timeSlotNumber,
    required this.pricePerAdult,
    required this.pricePerChild,
    required this.inventroyType,
  });

  final int id;
  final int timeSlotNumber;
  final double pricePerAdult;
  final double pricePerChild;
  final InventroyType inventroyType;

  factory ExtraPriceMatrix.fromJson(Map<String, dynamic> json) {
    return ExtraPriceMatrix(
      id: json["id"] ?? 0,
      timeSlotNumber: json["timeSlotNumber"] ?? 0,
      pricePerAdult: json["pricePerAdult"] ?? 0,
      pricePerChild: json["pricePerChild"] ?? 0,
      inventroyType: InventroyType.fromJson(json["inventroyType"] ?? {}),
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "timeSlotNumber": timeSlotNumber,
        "pricePerAdult": pricePerAdult,
        "pricePerChild": pricePerChild,
        "inventroyType": inventroyType.toJson(),
      };
}

