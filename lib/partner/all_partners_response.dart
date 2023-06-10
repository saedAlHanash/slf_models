import '../activity/all_activities_response.dart';
import '../booking/my_booking_response.dart';
import '../city/all_cities_response.dart';
import '../experience/experience_response.dart';
import '../explore/all_explore_response.dart';

class AllPartnersResponse {
  AllPartnersResponse({
    required this.result,
  });

  final AllPartnersResult result;

  factory AllPartnersResponse.fromJson(Map<String, dynamic> json) {
    return AllPartnersResponse(
      result: AllPartnersResult.fromJson(json['result'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() => {
        'result': result.toJson(),
      };
}

class AllPartnersResult {
  AllPartnersResult({
    required this.items,
    required this.totalCount,
  });

  final List<Partner> items;
  int totalCount;

  factory AllPartnersResult.fromJson(Map<String, dynamic> json) {
    return AllPartnersResult(
      items: json["items"] == null
          ? []
          : List<Partner>.from(json["items"]!.map((x) => Partner.fromJson(x))),
      totalCount: json["totalCount"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "items": items.map((x) => x.toJson()).toList(),
        "totalCount": totalCount,
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

class Partner {
  Partner({
    required this.id,
    required this.isFav,
    required this.name,
    required this.logo,
    required this.mainDescription,
    required this.extendedDescription,
    required this.address,
    required this.contactNumber,
    required this.email,
    required this.youtubeUrl,
    required this.facebookUrl,
    required this.twitterUrl,
    required this.instagramUrl,
    required this.partnerWaiverFormLink,
    required this.city,
    required this.activities,
    required this.trips,
    required this.images,
    required this.creationTime,
    required this.lastModificationTime,
    required this.status,
    required this.latitude,
    required this.longitude,
  });

  final int id;
  final String name;
  final String logo;
  final String mainDescription;
  final String extendedDescription;
  final String address;
  final String contactNumber;
  final String email;
  final String youtubeUrl;
  final String facebookUrl;
  final String twitterUrl;
  final String instagramUrl;
  final String partnerWaiverFormLink;
  final City city;
  final List<Activity> activities;
  final List<Experience> trips;
  final List<String> images;
  final DateTime? creationTime;
  final DateTime? lastModificationTime;
  final bool status;
  final num latitude;
  final num longitude;
  bool isFav;

  factory Partner.fromJson(Map<String, dynamic> json) {
    return Partner(
      isFav: json["isFav"] ?? false,
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      logo: json["logo"] ?? "",
      mainDescription: json["mainDescription"] ?? "",
      extendedDescription: json["extendedDescription"] ?? "",
      address: json["address"] ?? "",
      contactNumber: json["contactNumber"] ?? "",
      email: json["email"] ?? "",
      youtubeUrl: json["youtubeUrl"] ?? "",
      facebookUrl: json["facebookUrl"] ?? "",
      twitterUrl: json["twitterUrl"] ?? "",
      instagramUrl: json["instagramUrl"] ?? "",
      partnerWaiverFormLink: json["partnerWaiverFormLink"] ?? "",
      city: City.fromJson(json["city"] ?? {}),
      activities: json["activities"] == null
          ? []
          : List<Activity>.from(json["activities"]!.map((x) => Activity.fromJson(x))),
      trips: json["trips"] == null
          ? []
          : List<Experience>.from(json["trips"]!.map((x) => Experience.fromJson(x))),
      images:
          json["images"] == null ? [] : List<String>.from(json["images"]!.map((x) => x)),
      creationTime: DateTime.tryParse(json["creationTime"] ?? ""),
      lastModificationTime: DateTime.tryParse(json["lastModificationTime"] ?? ""),
      status: json["status"] ?? false,
      latitude: json["latitude"] ?? 0,
      longitude: json["longitude"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "logo": logo,
        "mainDescription": mainDescription,
        "extendedDescription": extendedDescription,
        "address": address,
        "contactNumber": contactNumber,
        "email": email,
        "youtubeUrl": youtubeUrl,
        "facebookUrl": facebookUrl,
        "twitterUrl": twitterUrl,
        "instagramUrl": instagramUrl,
        "partnerWaiverFormLink": partnerWaiverFormLink,
        "city": city.toJson(),
        "activities": activities.map((x) => x.toJson()).toList(),
        "trips": trips.map((x) => x.toJson()).toList(),
        "images": images.map((x) => x).toList(),
        "creationTime": creationTime?.toIso8601String(),
        "lastModificationTime": lastModificationTime?.toIso8601String(),
        "status": status,
        "latitude": latitude,
        "longitude": longitude,
      };
}

class Location {
  Location({
    required this.id,
    required this.name,
    required this.locationAddress,
    required this.mainDescription,
    required this.extendedDescription,
    required this.address,
    required this.videoUrl,
    required this.information,
    required this.about,
    required this.creationTime,
    required this.lastModificationTime,
    required this.status,
    required this.city,
    required this.activities,
    required this.equipments,
    required this.amenities,
    required this.trips,
    required this.tripsList,
    required this.images,
    required this.latitude,
    required this.longitude,
  });

  final int id;
  final String name;
  final String locationAddress;
  final String mainDescription;
  final String extendedDescription;
  final String address;
  final String videoUrl;
  final String information;
  final String about;
  final DateTime? creationTime;
  final DateTime? lastModificationTime;
  final bool status;
  final City? city;
  final List<City> activities;
  final List<City> equipments;
  final List<Amenity> amenities;
  final List<String> trips;
  final List<String> tripsList;
  final List<String> images;
  final num latitude;
  final num longitude;

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      locationAddress: json["locationAddress"] ?? "",
      mainDescription: json["mainDescription"] ?? "",
      extendedDescription: json["extendedDescription"] ?? "",
      address: json["address"] ?? "",
      videoUrl: json["videoUrl"] ?? "",
      information: json["information"] ?? "",
      about: json["about"] ?? "",
      creationTime: DateTime.tryParse(json["creationTime"] ?? ""),
      lastModificationTime: DateTime.tryParse(json["lastModificationTime"] ?? ""),
      status: json["status"] ?? false,
      city: json["city"] == null ? null : City.fromJson(json["city"]),
      activities: json["activities"] == null
          ? []
          : List<City>.from(json["activities"]!.map((x) => City.fromJson(x))),
      equipments: json["equipments"] == null
          ? []
          : List<City>.from(json["equipments"]!.map((x) => City.fromJson(x))),
      amenities: json["amenities"] == null
          ? []
          : List<Amenity>.from(json["amenities"]!.map((x) => Amenity.fromJson(x))),
      trips: json["trips"] == null ? [] : List<String>.from(json["trips"]!.map((x) => x)),
      tripsList: json["tripsList"] == null
          ? []
          : List<String>.from(json["tripsList"]!.map((x) => x)),
      images:
          json["images"] == null ? [] : List<String>.from(json["images"]!.map((x) => x)),
      latitude: json["latitude"] ?? 0,
      longitude: json["longitude"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "locationAddress": locationAddress,
        "mainDescription": mainDescription,
        "extendedDescription": extendedDescription,
        "address": address,
        "videoUrl": videoUrl,
        "information": information,
        "about": about,
        "creationTime": creationTime?.toIso8601String(),
        "lastModificationTime": lastModificationTime?.toIso8601String(),
        "status": status,
        "city": city?.toJson(),
        "activities": activities.map((x) => x.toJson()).toList(),
        "equipments": equipments.map((x) => x.toJson()).toList(),
        "amenities": amenities.map((x) => x.toJson()).toList(),
        "trips": trips.map((x) => x).toList(),
        "tripsList": tripsList.map((x) => x).toList(),
        "images": images.map((x) => x).toList(),
        "latitude": latitude,
        "longitude": longitude,
      };
}

class PriceMatrix {
  PriceMatrix({
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
  final num pricePerAdult;
  final num pricePerChild;
  final num minNumber;
  final num maxNumber;
  final InventroyType? inventroyType;
  final bool status;

  factory PriceMatrix.fromJson(Map<String, dynamic> json) {
    return PriceMatrix(
      id: json["id"] ?? 0,
      day: json["day"] ?? 0,
      from: DateTime.tryParse(json["from"] ?? ""),
      to: DateTime.tryParse(json["to"] ?? ""),
      timeLable: json["timeLable"] ?? "",
      interval: json["interval"] ?? 0,
      pricePerAdult: json["pricePerAdult"] ?? 0,
      pricePerChild: json["pricePerChild"] ?? 0,
      minNumber: json["minNumber"] ?? 0,
      maxNumber: json["maxNumber"] ?? 0,
      inventroyType: json["inventroyType"] == null
          ? null
          : InventroyType.fromJson(json["inventroyType"]),
      status: json["status"] ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
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
        "inventroyType": inventroyType?.toJson(),
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
  final String partner;

  factory InventroyType.fromJson(Map<String, dynamic> json) {
    return InventroyType(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      status: json["status"] ?? false,
      partner: json["partner"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "status": status,
        "partner": partner,
      };
}
