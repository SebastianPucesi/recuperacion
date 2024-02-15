// To parse this JSON data, do
//
//     final calendarResponse = calendarResponseFromJson(jsonString);


import 'dart:convert';

CalendarResponse calendarResponseFromJson(String str) => CalendarResponse.fromJson(json.decode(str));

String calendarResponseToJson(CalendarResponse data) => json.encode(data.toJson());

class CalendarResponse {
    final List<CalendarResponseContent> content;
    final String defaultSort;
    final String sortOrder;
    final int totalElements;
    final int totalPages;
    final List<ApiMapping> apiMapping;

    CalendarResponse({
        required this.content,
        required this.defaultSort,
        required this.sortOrder,
        required this.totalElements,
        required this.totalPages,
        required this.apiMapping,
    });

    factory CalendarResponse.fromJson(Map<String, dynamic> json) => CalendarResponse(
        content: List<CalendarResponseContent>.from(json["content"].map((x) => CalendarResponseContent.fromJson(x))),
        defaultSort: json["defaultSort"],
        sortOrder: json["sortOrder"],
        totalElements: json["totalElements"],
        totalPages: json["totalPages"],
        apiMapping: List<ApiMapping>.from(json["apiMapping"].map((x) => ApiMapping.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "content": List<dynamic>.from(content.map((x) => x.toJson())),
        "defaultSort": defaultSort,
        "sortOrder": sortOrder,
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

class CalendarResponseContent {
    final String id;
    final String guid;
    final String title;
    final String location;
    final int startDate;
    final int endDate;
    final String eventId;
    final String rallyId;
    final String description;
    final int round;
    final String cvpSeriesLink;
    final dynamic sponsor;
    final List<ChampionshipLogo> images;
    final Season season;
    final Competition competition;
    final Country country;
    final Asset asset;
    final PurpleTypename typename;
    final ContentType type;
    final String uid;
    final String seriesUid;
    final int releaseYear;
    final int availableOn;
    final int availableTill;
    final DateTime startDateLocal;
    final DateTime endDateLocal;
    final int finishDate;
    final Championship championship;
    final List<ChampionshipLogo> championshipLogo;

    CalendarResponseContent({
        required this.id,
        required this.guid,
        required this.title,
        required this.location,
        required this.startDate,
        required this.endDate,
        required this.eventId,
        required this.rallyId,
        required this.description,
        required this.round,
        required this.cvpSeriesLink,
        required this.sponsor,
        required this.images,
        required this.season,
        required this.competition,
        required this.country,
        required this.asset,
        required this.typename,
        required this.type,
        required this.uid,
        required this.seriesUid,
        required this.releaseYear,
        required this.availableOn,
        required this.availableTill,
        required this.startDateLocal,
        required this.endDateLocal,
        required this.finishDate,
        required this.championship,
        required this.championshipLogo,
    });

    factory CalendarResponseContent.fromJson(Map<String, dynamic> json) => CalendarResponseContent(
        id: json["id"],
        guid: json["guid"],
        title: json["title"],
        location: json["location"],
        startDate: json["startDate"],
        endDate: json["endDate"],
        eventId: json["eventId"],
        rallyId: json["rallyId"],
        description: json["description"],
        round: json["round"],
        cvpSeriesLink: json["cvpSeriesLink"],
        sponsor: json["sponsor"],
        images: List<ChampionshipLogo>.from(json["images"].map((x) => ChampionshipLogo.fromJson(x))),
        season: Season.fromJson(json["season"]),
        competition: Competition.fromJson(json["competition"]),
        country: Country.fromJson(json["country"]),
        asset: Asset.fromJson(json["asset"]),
        typename: purpleTypenameValues.map[json["__typename"]]!,
        type: contentTypeValues.map[json["type"]]!,
        uid: json["uid"],
        seriesUid: json["seriesUid"],
        releaseYear: json["releaseYear"],
        availableOn: json["availableOn"],
        availableTill: json["availableTill"],
        startDateLocal: DateTime.parse(json["startDateLocal"]),
        endDateLocal: DateTime.parse(json["endDateLocal"]),
        finishDate: json["finishDate"],
        championship: championshipValues.map[json["championship"]]!,
        championshipLogo: List<ChampionshipLogo>.from(json["championshipLogo"].map((x) => ChampionshipLogo.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "guid": guid,
        "title": title,
        "location": location,
        "startDate": startDate,
        "endDate": endDate,
        "eventId": eventId,
        "rallyId": rallyId,
        "description": description,
        "round": round,
        "cvpSeriesLink": cvpSeriesLink,
        "sponsor": sponsor,
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "season": season.toJson(),
        "competition": competition.toJson(),
        "country": country.toJson(),
        "asset": asset.toJson(),
        "__typename": purpleTypenameValues.reverse[typename],
        "type": contentTypeValues.reverse[type],
        "uid": uid,
        "seriesUid": seriesUid,
        "releaseYear": releaseYear,
        "availableOn": availableOn,
        "availableTill": availableTill,
        "startDateLocal": startDateLocal.toIso8601String(),
        "endDateLocal": endDateLocal.toIso8601String(),
        "finishDate": finishDate,
        "championship": championshipValues.reverse[championship],
        "championshipLogo": List<dynamic>.from(championshipLogo.map((x) => x.toJson())),
    };
}

class Asset {
    final String id;
    final List<AssetContent> contents;
    final AssetTypename typename;

    Asset({
        required this.id,
        required this.contents,
        required this.typename,
    });

    factory Asset.fromJson(Map<String, dynamic> json) => Asset(
        id: json["id"],
        contents: List<AssetContent>.from(json["contents"].map((x) => AssetContent.fromJson(x))),
        typename: assetTypenameValues.map[json["__typename"]]!,
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "contents": List<dynamic>.from(contents.map((x) => x.toJson())),
        "__typename": assetTypenameValues.reverse[typename],
    };
}

class AssetContent {
    final String id;
    final FluffyTypename typename;

    AssetContent({
        required this.id,
        required this.typename,
    });

    factory AssetContent.fromJson(Map<String, dynamic> json) => AssetContent(
        id: json["id"],
        typename: fluffyTypenameValues.map[json["__typename"]]!,
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "__typename": fluffyTypenameValues.reverse[typename],
    };
}

enum FluffyTypename {
    CONTENT_ITEM
}

final fluffyTypenameValues = EnumValues({
    "ContentItem": FluffyTypename.CONTENT_ITEM
});

enum AssetTypename {
    ASSET
}

final assetTypenameValues = EnumValues({
    "Asset": AssetTypename.ASSET
});

enum Championship {
    WRC
}

final championshipValues = EnumValues({
    "WRC": Championship.WRC
});

class ChampionshipLogo {
    final String url;
    final ChampionshipLogoType type;
    final int width;
    final int height;

    ChampionshipLogo({
        required this.url,
        required this.type,
        required this.width,
        required this.height,
    });

    factory ChampionshipLogo.fromJson(Map<String, dynamic> json) => ChampionshipLogo(
        url: json["url"],
        type: championshipLogoTypeValues.map[json["type"]]!,
        width: json["width"],
        height: json["height"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "type": championshipLogoTypeValues.reverse[type],
        "width": width,
        "height": height,
    };
}

enum ChampionshipLogoType {
    LANDSCAPE,
    SQUARE
}

final championshipLogoTypeValues = EnumValues({
    "landscape": ChampionshipLogoType.LANDSCAPE,
    "square": ChampionshipLogoType.SQUARE
});

class Competition {
    final String id;
    final Championship title;
    final CompetitionId competitionId;
    final Logo logo;
    final CompetitionTypename typename;

    Competition({
        required this.id,
        required this.title,
        required this.competitionId,
        required this.logo,
        required this.typename,
    });

    factory Competition.fromJson(Map<String, dynamic> json) => Competition(
        id: json["id"],
        title: championshipValues.map[json["title"]]!,
        competitionId: competitionIdValues.map[json["competitionId"]]!,
        logo: Logo.fromJson(json["logo"]),
        typename: competitionTypenameValues.map[json["__typename"]]!,
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": championshipValues.reverse[title],
        "competitionId": competitionIdValues.reverse[competitionId],
        "logo": logo.toJson(),
        "__typename": competitionTypenameValues.reverse[typename],
    };
}

enum CompetitionId {
    WRC
}

final competitionIdValues = EnumValues({
    "wrc": CompetitionId.WRC
});

class Logo {
    final String id;
    final String fileName;
    final Dimensions dimensions;
    final List<AspectRatio> aspectRatio;
    final LogoTypename typename;

    Logo({
        required this.id,
        required this.fileName,
        required this.dimensions,
        required this.aspectRatio,
        required this.typename,
    });

    factory Logo.fromJson(Map<String, dynamic> json) => Logo(
        id: json["id"],
        fileName: json["fileName"],
        dimensions: Dimensions.fromJson(json["dimensions"]),
        aspectRatio: List<AspectRatio>.from(json["aspectRatio"].map((x) => AspectRatio.fromJson(x))),
        typename: logoTypenameValues.map[json["__typename"]]!,
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "fileName": fileName,
        "dimensions": dimensions.toJson(),
        "aspectRatio": List<dynamic>.from(aspectRatio.map((x) => x.toJson())),
        "__typename": logoTypenameValues.reverse[typename],
    };
}

class AspectRatio {
    final Title title;
    final List<Resolution> resolutions;
    final AspectRatioTypename typename;

    AspectRatio({
        required this.title,
        required this.resolutions,
        required this.typename,
    });

    factory AspectRatio.fromJson(Map<String, dynamic> json) => AspectRatio(
        title: titleValues.map[json["title"]]!,
        resolutions: List<Resolution>.from(json["resolutions"].map((x) => Resolution.fromJson(x))),
        typename: aspectRatioTypenameValues.map[json["__typename"]]!,
    );

    Map<String, dynamic> toJson() => {
        "title": titleValues.reverse[title],
        "resolutions": List<dynamic>.from(resolutions.map((x) => x.toJson())),
        "__typename": aspectRatioTypenameValues.reverse[typename],
    };
}

class Resolution {
    final String id;
    final String url;
    final int height;
    final int width;
    final ResolutionTypename typename;

    Resolution({
        required this.id,
        required this.url,
        required this.height,
        required this.width,
        required this.typename,
    });

    factory Resolution.fromJson(Map<String, dynamic> json) => Resolution(
        id: json["id"],
        url: json["url"],
        height: json["height"],
        width: json["width"],
        typename: resolutionTypenameValues.map[json["__typename"]]!,
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "height": height,
        "width": width,
        "__typename": resolutionTypenameValues.reverse[typename],
    };
}

enum ResolutionTypename {
    RESOLUTION
}

final resolutionTypenameValues = EnumValues({
    "Resolution": ResolutionTypename.RESOLUTION
});

enum Title {
    THE_169,
    THE_219
}

final titleValues = EnumValues({
    "16:9": Title.THE_169,
    "21:9": Title.THE_219
});

enum AspectRatioTypename {
    ASPECT_RATIO
}

final aspectRatioTypenameValues = EnumValues({
    "AspectRatio": AspectRatioTypename.ASPECT_RATIO
});

class Dimensions {
    final int height;
    final int width;
    final DimensionsTypename typename;

    Dimensions({
        required this.height,
        required this.width,
        required this.typename,
    });

    factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        height: json["height"],
        width: json["width"],
        typename: dimensionsTypenameValues.map[json["__typename"]]!,
    );

    Map<String, dynamic> toJson() => {
        "height": height,
        "width": width,
        "__typename": dimensionsTypenameValues.reverse[typename],
    };
}

enum DimensionsTypename {
    IMAGE_DIMENSTION
}

final dimensionsTypenameValues = EnumValues({
    "ImageDimenstion": DimensionsTypename.IMAGE_DIMENSTION
});

enum LogoTypename {
    MEDIA
}

final logoTypenameValues = EnumValues({
    "Media": LogoTypename.MEDIA
});

enum CompetitionTypename {
    COMPETITION
}

final competitionTypenameValues = EnumValues({
    "Competition": CompetitionTypename.COMPETITION
});

class Country {
    final String id;
    final String countryId;
    final String iso3;
    final String iso2;
    final String name;
    final List<ChampionshipLogo> flag;
    final CountryTypename typename;

    Country({
        required this.id,
        required this.countryId,
        required this.iso3,
        required this.iso2,
        required this.name,
        required this.flag,
        required this.typename,
    });

    factory Country.fromJson(Map<String, dynamic> json) => Country(
        id: json["id"],
        countryId: json["countryId"],
        iso3: json["iso3"],
        iso2: json["iso2"],
        name: json["name"],
        flag: List<ChampionshipLogo>.from(json["flag"].map((x) => ChampionshipLogo.fromJson(x))),
        typename: countryTypenameValues.map[json["__typename"]]!,
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "countryId": countryId,
        "iso3": iso3,
        "iso2": iso2,
        "name": name,
        "flag": List<dynamic>.from(flag.map((x) => x.toJson())),
        "__typename": countryTypenameValues.reverse[typename],
    };
}

enum CountryTypename {
    COUNTRY
}

final countryTypenameValues = EnumValues({
    "Country": CountryTypename.COUNTRY
});

class Season {
    final String id;
    final dynamic name;
    final String seasonId;
    final String title;
    final SeasonTypename typename;

    Season({
        required this.id,
        required this.name,
        required this.seasonId,
        required this.title,
        required this.typename,
    });

    factory Season.fromJson(Map<String, dynamic> json) => Season(
        id: json["id"],
        name: json["name"],
        seasonId: json["seasonId"],
        title: json["title"],
        typename: seasonTypenameValues.map[json["__typename"]]!,
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "seasonId": seasonId,
        "title": title,
        "__typename": seasonTypenameValues.reverse[typename],
    };
}

enum SeasonTypename {
    SEASON
}

final seasonTypenameValues = EnumValues({
    "Season": SeasonTypename.SEASON
});

enum ContentType {
    CALENDAR
}

final contentTypeValues = EnumValues({
    "calendar": ContentType.CALENDAR
});

enum PurpleTypename {
    CALENDAR
}

final purpleTypenameValues = EnumValues({
    "Calendar": PurpleTypename.CALENDAR
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
