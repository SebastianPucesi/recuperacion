// To parse this JSON data, do
//
//     final driversResponse = driversResponseFromJson(jsonString);


import 'dart:convert';

DriversResponse driversResponseFromJson(String str) => DriversResponse.fromJson(json.decode(str));

String driversResponseToJson(DriversResponse data) => json.encode(data.toJson());

class DriversResponse {
    final List<Content> content;
    final int totalElements;
    final int totalPages;
    final List<ApiMapping> apiMapping;

    DriversResponse({
        required this.content,
        required this.totalElements,
        required this.totalPages,
        required this.apiMapping,
    });

    factory DriversResponse.fromJson(Map<String, dynamic> json) => DriversResponse(
        content: List<Content>.from(json["content"].map((x) => Content.fromJson(x))),
        totalElements: json["totalElements"],
        totalPages: json["totalPages"],
        apiMapping: List<ApiMapping>.from(json["apiMapping"].map((x) => ApiMapping.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "content": List<dynamic>.from(content.map((x) => x.toJson())),
        "totalElements": totalElements,
        "totalPages": totalPages,
        "apiMapping": List<dynamic>.from(apiMapping.map((x) => x.toJson())),
    };
}

class ApiMapping {
    ApiMapping();

    factory ApiMapping.fromJson(Map<String, dynamic> json) => ApiMapping(
    );

    Map<String, dynamic> toJson() => {
    };
}

class Content {
    final String id;
    final String uid;
    final String title;
    final String articleId;
    final String name;
    final String key;
    final String car;
    final Country country;
    final String type;
    final String team;
    final String chapionship;
    final String championship;
    // final String contentClass;
    final String manufacturer;
    final List<Image> images;

    Content({
        required this.id,
        required this.uid,
        required this.title,
        required this.articleId,
        required this.name,
        required this.key,
        required this.car,
        required this.country,
        required this.type,
        required this.team,
        required this.chapionship,
        required this.championship,
        // required this.contentClass,
        required this.manufacturer,
        required this.images,
    });

    factory Content.fromJson(Map<String, dynamic> json) => Content(
        id: json["id"],
        uid: json["uid"],
        title: json["title"],
        articleId: json["articleId"],
        name: json["name"],
        key: json["key"],
        car: "${json["car"]}",
        country: Country.fromJson(json["country"]),
        type: json["type"],
        team: json["team"],
        chapionship: json["chapionship"],
        championship: json["championship"],
        // contentClass: json["class"],
        manufacturer: json["manufacturer"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "uid": uid,
        "title": title,
        "articleId": articleId,
        "name": name,
        "key": key,
        "car": carValues.reverse[car],
        "country": country.toJson(),
        "type": contentTypeValues.reverse[type],
        "team": manufacturerValues.reverse[team],
        "chapionship": chapionshipValues.reverse[chapionship],
        "championship": chapionshipValues.reverse[championship],
        // "class": classValues.reverse[contentClass],
        "manufacturer": manufacturerValues.reverse[manufacturer],
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
    };
}

enum Car {
    FORD_PUMA_RALLY1_HYBRID,
    HYUNDAI_I20_N_RALLY1_HYBRID,
    TOYOTA_GR_YARIS_RALLY1_HYBRID
}

final carValues = EnumValues({
    "Ford Puma Rally1 Hybrid": Car.FORD_PUMA_RALLY1_HYBRID,
    "Hyundai i20 N Rally1 Hybrid": Car.HYUNDAI_I20_N_RALLY1_HYBRID,
    "Toyota GR Yaris Rally1 Hybrid": Car.TOYOTA_GR_YARIS_RALLY1_HYBRID
});

enum Chapionship {
    WRC
}

final chapionshipValues = EnumValues({
    "WRC": Chapionship.WRC
});

enum Class {
    WRC
}

final classValues = EnumValues({
    "wrc": Class.WRC
});

class Country {
    final String name;
    final List<Image> flag;

    Country({
        required this.name,
        required this.flag,
    });

    factory Country.fromJson(Map<String, dynamic> json) => Country(
        name: json["name"],
        flag: List<Image>.from(json["flag"].map((x) => Image.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "flag": List<dynamic>.from(flag.map((x) => x.toJson())),
    };
}

class Image {
    final String url;
    final int height;
    final int width;
    final ImageType type;

    Image({
        required this.url,
        required this.height,
        required this.width,
        required this.type,
    });

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        url: json["url"],
        height: json["height"],
        width: json["width"],
        type: imageTypeValues.map[json["type"]]!,
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "height": height,
        "width": width,
        "type": imageTypeValues.reverse[type],
    };
}

enum ImageType {
    LANDSCAPE
}

final imageTypeValues = EnumValues({
    "landscape": ImageType.LANDSCAPE
});

enum Manufacturer {
    HYUNDAI_SHELL_MOBIS_WORLD_RALLY_TEAM,
    M_SPORT_FORD_WORLD_RALLY_TEAM,
    TOYOTA_GAZOO_RACING_WORLD_RALLY_TEAM
}

final manufacturerValues = EnumValues({
    "HYUNDAI SHELL MOBIS WORLD RALLY TEAM": Manufacturer.HYUNDAI_SHELL_MOBIS_WORLD_RALLY_TEAM,
    "M-SPORT FORD WORLD RALLY TEAM": Manufacturer.M_SPORT_FORD_WORLD_RALLY_TEAM,
    "TOYOTA GAZOO RACING WORLD RALLY TEAM": Manufacturer.TOYOTA_GAZOO_RACING_WORLD_RALLY_TEAM
});

enum ContentType {
    CO_DRIVER,
    DRIVER
}

final contentTypeValues = EnumValues({
    "CO-DRIVER": ContentType.CO_DRIVER,
    "DRIVER": ContentType.DRIVER
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
