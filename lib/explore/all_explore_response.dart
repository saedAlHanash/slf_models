import '../activity/all_activities_response.dart';
import '../city/all_cities_response.dart';
import '../equipment/all_equipments_response.dart';
import '../experience/experience_response.dart';

class AllExploreResponse {
  AllExploreResponse({
    required this.result,
  });

  final AllExploreResult result;

  factory AllExploreResponse.fromJson(Map<String, dynamic> json) {
    return AllExploreResponse(
      result: AllExploreResult.fromJson(json["result"] ?? {}),
    );
  }

  Map<String, dynamic> toJson() => {"result": result.toJson()};
}

class AllExploreResult {
  AllExploreResult({
    required this.totalCount,
    required this.items,
  });

  int totalCount;
  final List<ExploreItem> items;

  factory AllExploreResult.fromJson(Map<String, dynamic> json) {
    return AllExploreResult(
      totalCount: json["totalCount"] ?? 0,
      items: json["items"] == null
          ? []
          : List<ExploreItem>.from(json["items"]!.map((x) => ExploreItem.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
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

class ExploreItem {
  ExploreItem({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.locationAddress,
    required this.mainDescription,
    required this.extendedDescription,
    required this.address,
    required this.videoUrl,
    required this.information,
    required this.about,
    required this.status,
    required this.city,
    required this.activities,
    required this.equipments,
    required this.amenities,
    required this.trips,
    required this.images,
    required this.lat,
    required this.lng,
    required this.isFav,
  });

  final int id;
  final String name;
  final String imageUrl;
  final String locationAddress;
  final String mainDescription;
  final String extendedDescription;
  final String address;
  final String videoUrl;
  final String information;
  final String about;
  final bool status;
  final City city;
  final List<Activity> activities;
  final List<Equipment> equipments;
  final List<Amenity> amenities;
  final List<Experience> trips;
  final List<String> images;
  final num lat;
  final num lng;
  bool isFav;

  factory ExploreItem.fromJson(Map<String, dynamic> json) {
    return ExploreItem(
      isFav: json["isFav"] ?? false,
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      imageUrl: json["imageUrl"] ?? "",
      locationAddress: json["locationAddress"] ?? "",
      mainDescription: json["mainDescription"] ?? "",
      extendedDescription: json["extendedDescription"] ?? "",
      address: json["address"] ?? "",
      videoUrl: json["videoUrl"] ?? "",
      information: json["information"] ?? "",
      about: json["about"] ?? "",
      status: json["status"] ?? false,
      city: City.fromJson(json["city"] ?? {}),
      activities: json["activities"] == null
          ? []
          : List<Activity>.from(json["activities"]!.map((x) => Activity.fromJson(x))),
      equipments: json["equipments"] == null
          ? []
          : List<Equipment>.from(json["equipments"]!.map((x) => Equipment.fromJson(x))),
      amenities: json["amenities"] == null
          ? []
          : List<Amenity>.from(json["amenities"]!.map((x) => Amenity.fromJson(x))),
      trips: json["trips"] == null
          ? []
          : List<Experience>.from(json["trips"]!.map((x) => Experience.fromJson(x))),
      images:
          json["images"] == null ? [] : List<String>.from(json["images"]!.map((x) => x)),
      lat: json["latitude"] ?? 0,
      lng: json["longitude"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "imageUrl": imageUrl,
        "locationAddress": locationAddress,
        "mainDescription": mainDescription,
        "extendedDescription": extendedDescription,
        "address": address,
        "videoUrl": videoUrl,
        "information": information,
        "about": about,
        "status": status,
        "city": city.toJson(),
        "activities": activities.map((x) => x.toJson()).toList(),
        "equipments": equipments.map((x) => x.toJson()).toList(),
        "amenities": amenities.map((x) => x.toJson()).toList(),
        "trips": trips.map((x) => x.toJson()).toList(),
        "images": images.map((x) => x).toList(),
        "latitude": lat,
        "longitude": lng,
      };
}

class Amenity {
  Amenity({
    required this.name,
    required this.description,
    required this.lat,
    required this.long,
    required this.amenity,
    required this.amenityId,
    required this.id,
  });

  final String name;
  final dynamic description;
  final num lat;
  final num long;
  final AmenityModel amenity;
  final num amenityId;
  final int id;

  factory Amenity.fromJson(Map<String, dynamic> json) {
    return Amenity(
      name: json["name"] ?? "",
      description: json["description"],
      lat: json["lat"] ?? 0,
      long: json["long"] ?? 0,
      amenity: AmenityModel.fromJson(json["amenity"] ?? {}),
      amenityId: json["amenityId"] ?? 0,
      id: json["id"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "lat": lat,
        "long": long,
        "amenity": amenity.toJson(),
        "amenityId": amenityId,
        "id": id,
      };
}

class AmenityModel {
  AmenityModel({
    required this.type,
    required this.imageUrl,
    required this.creationTime,
    required this.lastModificationTime,
    required this.id,
  });

  final String type;
  final String imageUrl;
  final DateTime? creationTime;
  final DateTime? lastModificationTime;
  final int id;

  factory AmenityModel.fromJson(Map<String, dynamic> json) {
    return AmenityModel(
      type: json["type"] ?? "",
      imageUrl: json["imageUrl"] ?? "",
      creationTime: DateTime.tryParse(json["creationTime"] ?? ""),
      lastModificationTime: DateTime.tryParse(json["lastModificationTime"] ?? ""),
      id: json["id"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "type": type,
        "imageUrl": imageUrl,
        "creationTime": creationTime?.toIso8601String(),
        "lastModificationTime": lastModificationTime?.toIso8601String(),
        "id": id,
      };
}

class ExploreActivity {
  ExploreActivity({
    required this.id,
    required this.domainEvents,
    required this.creationTime,
    required this.creatorUserId,
    required this.lastModificationTime,
    required this.lastModifierUserId,
    required this.isDeleted,
    required this.deleterUserId,
    required this.deletionTime,
    required this.name,
    required this.imageUrl,
    required this.userId,
    required this.user,
    required this.mins,
  });

  final int id;
  final List<DomainEvent> domainEvents;
  final DateTime? creationTime;
  final num creatorUserId;
  final DateTime? lastModificationTime;
  final num lastModifierUserId;
  final bool isDeleted;
  final num deleterUserId;
  final DateTime? deletionTime;
  final String name;
  final String imageUrl;
  final num userId;
  final String user;
  final num mins;

  factory ExploreActivity.fromJson(Map<String, dynamic> json) {
    return ExploreActivity(
      id: json["id"] ?? 0,
      domainEvents: json["domainEvents"] == null
          ? []
          : List<DomainEvent>.from(
              json["domainEvents"]!.map((x) => DomainEvent.fromJson(x))),
      creationTime: DateTime.tryParse(json["creationTime"] ?? ""),
      creatorUserId: json["creatorUserId"] ?? 0,
      lastModificationTime: DateTime.tryParse(json["lastModificationTime"] ?? ""),
      lastModifierUserId: json["lastModifierUserId"] ?? 0,
      isDeleted: json["isDeleted"] ?? false,
      deleterUserId: json["deleterUserId"] ?? 0,
      deletionTime: DateTime.tryParse(json["deletionTime"] ?? ""),
      name: json["name"] ?? "",
      imageUrl: json["imageUrl"] ?? "",
      userId: json["userId"] ?? 0,
      user: json["user"] ?? "",
      mins: json["mins"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "domainEvents": domainEvents.map((x) => x.toJson()).toList(),
        "creationTime": creationTime?.toIso8601String(),
        "creatorUserId": creatorUserId,
        "lastModificationTime": lastModificationTime?.toIso8601String(),
        "lastModifierUserId": lastModifierUserId,
        "isDeleted": isDeleted,
        "deleterUserId": deleterUserId,
        "deletionTime": deletionTime?.toIso8601String(),
        "name": name,
        "imageUrl": imageUrl,
        "userId": userId,
        "user": user,
        "mins": mins,
      };
}

class DomainEvent {
  DomainEvent({
    required this.eventTime,
    required this.eventSource,
  });

  final DateTime? eventTime;
  final String eventSource;

  factory DomainEvent.fromJson(Map<String, dynamic> json) {
    return DomainEvent(
      eventTime: DateTime.tryParse(json["eventTime"] ?? ""),
      eventSource: json["eventSource"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "eventTime": eventTime?.toIso8601String(),
        "eventSource": eventSource,
      };
}

class Location {
  Location({
    required this.id,
    required this.domainEvents,
    required this.creationTime,
    required this.creatorUserId,
    required this.lastModificationTime,
    required this.lastModifierUserId,
    required this.isDeleted,
    required this.deleterUserId,
    required this.deletionTime,
    required this.name,
    required this.imageUrl,
    required this.locationAddress,
    required this.mainDescription,
    required this.extendedDescription,
    required this.address,
    required this.videoUrl,
    required this.information,
    required this.about,
    required this.status,
    required this.latitude,
    required this.longitude,
    required this.activities,
    required this.equipments,
    required this.amenities,
    required this.trips,
    required this.images,
    required this.city,
    required this.cityId,
  });

  final int id;
  final List<DomainEvent> domainEvents;
  final DateTime? creationTime;
  final num creatorUserId;
  final DateTime? lastModificationTime;
  final num lastModifierUserId;
  final bool isDeleted;
  final num deleterUserId;
  final DateTime? deletionTime;
  final String name;
  final String imageUrl;
  final String locationAddress;
  final String mainDescription;
  final String extendedDescription;
  final String address;
  final String videoUrl;
  final String information;
  final String about;
  final bool status;
  final num latitude;
  final num longitude;
  final List<ExploreActivity> activities;
  final List<ExploreActivity> equipments;
  final List<TripLocation> amenities;
  final List<String> trips;
  final List<ExploreActivity> images;
  final ExploreActivity? city;
  final num cityId;

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      id: json["id"] ?? 0,
      domainEvents: json["domainEvents"] == null
          ? []
          : List<DomainEvent>.from(
              json["domainEvents"]!.map((x) => DomainEvent.fromJson(x))),
      creationTime: DateTime.tryParse(json["creationTime"] ?? ""),
      creatorUserId: json["creatorUserId"] ?? 0,
      lastModificationTime: DateTime.tryParse(json["lastModificationTime"] ?? ""),
      lastModifierUserId: json["lastModifierUserId"] ?? 0,
      isDeleted: json["isDeleted"] ?? false,
      deleterUserId: json["deleterUserId"] ?? 0,
      deletionTime: DateTime.tryParse(json["deletionTime"] ?? ""),
      name: json["name"] ?? "",
      imageUrl: json["imageUrl"] ?? "",
      locationAddress: json["locationAddress"] ?? "",
      mainDescription: json["mainDescription"] ?? "",
      extendedDescription: json["extendedDescription"] ?? "",
      address: json["address"] ?? "",
      videoUrl: json["videoUrl"] ?? "",
      information: json["information"] ?? "",
      about: json["about"] ?? "",
      status: json["status"] ?? false,
      latitude: json["latitude"] ?? 0,
      longitude: json["longitude"] ?? 0,
      activities: json["activities"] == null
          ? []
          : List<ExploreActivity>.from(
              json["activities"]!.map((x) => ExploreActivity.fromJson(x))),
      equipments: json["equipments"] == null
          ? []
          : List<ExploreActivity>.from(
              json["equipments"]!.map((x) => ExploreActivity.fromJson(x))),
      amenities: json["amenities"] == null
          ? []
          : List<TripLocation>.from(
              json["amenities"]!.map((x) => TripLocation.fromJson(x))),
      trips: json["trips"] == null ? [] : List<String>.from(json["trips"]!.map((x) => x)),
      images: json["images"] == null
          ? []
          : List<ExploreActivity>.from(
              json["images"]!.map((x) => ExploreActivity.fromJson(x))),
      city: json["city"] == null ? null : ExploreActivity.fromJson(json["city"]),
      cityId: json["cityId"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "domainEvents": domainEvents.map((x) => x.toJson()).toList(),
        "creationTime": creationTime?.toIso8601String(),
        "creatorUserId": creatorUserId,
        "lastModificationTime": lastModificationTime?.toIso8601String(),
        "lastModifierUserId": lastModifierUserId,
        "isDeleted": isDeleted,
        "deleterUserId": deleterUserId,
        "deletionTime": deletionTime?.toIso8601String(),
        "name": name,
        "imageUrl": imageUrl,
        "locationAddress": locationAddress,
        "mainDescription": mainDescription,
        "extendedDescription": extendedDescription,
        "address": address,
        "videoUrl": videoUrl,
        "information": information,
        "about": about,
        "status": status,
        "latitude": latitude,
        "longitude": longitude,
        "activities": activities.map((x) => x.toJson()).toList(),
        "equipments": equipments.map((x) => x.toJson()).toList(),
        "amenities": amenities.map((x) => x.toJson()).toList(),
        "trips": trips.map((x) => x).toList(),
        "images": images.map((x) => x.toJson()).toList(),
        "city": city?.toJson(),
        "cityId": cityId,
      };
}

class TripLocation {
  TripLocation({
    required this.id,
    required this.domainEvents,
    required this.creationTime,
    required this.creatorUserId,
    required this.lastModificationTime,
    required this.lastModifierUserId,
    required this.isDeleted,
    required this.deleterUserId,
    required this.deletionTime,
    required this.type,
    required this.name,
    required this.description,
    required this.lat,
    required this.long,
  });

  final int id;
  final List<DomainEvent> domainEvents;
  final DateTime? creationTime;
  final num creatorUserId;
  final DateTime? lastModificationTime;
  final num lastModifierUserId;
  final bool isDeleted;
  final num deleterUserId;
  final DateTime? deletionTime;
  final String type;
  final String name;
  final String description;
  final num lat;
  final num long;

  factory TripLocation.fromJson(Map<String, dynamic> json) {
    return TripLocation(
      id: json["id"] ?? 0,
      domainEvents: json["domainEvents"] == null
          ? []
          : List<DomainEvent>.from(
              json["domainEvents"]!.map((x) => DomainEvent.fromJson(x))),
      creationTime: DateTime.tryParse(json["creationTime"] ?? ""),
      creatorUserId: json["creatorUserId"] ?? 0,
      lastModificationTime: DateTime.tryParse(json["lastModificationTime"] ?? ""),
      lastModifierUserId: json["lastModifierUserId"] ?? 0,
      isDeleted: json["isDeleted"] ?? false,
      deleterUserId: json["deleterUserId"] ?? 0,
      deletionTime: DateTime.tryParse(json["deletionTime"] ?? ""),
      type: json["type"] ?? "",
      name: json["name"] ?? "",
      description: json["description"] ?? "",
      lat: json["lat"] ?? 0,
      long: json["long"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "domainEvents": domainEvents.map((x) => x.toJson()).toList(),
        "creationTime": creationTime?.toIso8601String(),
        "creatorUserId": creatorUserId,
        "lastModificationTime": lastModificationTime?.toIso8601String(),
        "lastModifierUserId": lastModifierUserId,
        "isDeleted": isDeleted,
        "deleterUserId": deleterUserId,
        "deletionTime": deletionTime?.toIso8601String(),
        "type": type,
        "name": name,
        "description": description,
        "lat": lat,
        "long": long,
      };
}
