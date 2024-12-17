class MovieModel {
  Data? data;
  bool status;
  String message;

  MovieModel({
    required this.data,
    required this.status,
    required this.message,
  });

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      data: Data.fromMap(map['data']),
      status: map['status'],
      message: map['message'],
    );
  }
}

class Data {
  MainSearch mainSearch;

  Data({
    required this.mainSearch,
  });

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      mainSearch: MainSearch.fromMap(map['mainSearch']),
    );
  }
}

class MainSearch {
  List<Edge> edges;

  MainSearch({
    required this.edges,
  });

  factory MainSearch.fromMap(Map<String, dynamic> map) {
    return MainSearch(
      edges: List<Edge>.from(map['edges'].map((e) => Edge.fromMap(e))),
    );
  }
}

class Entity {
  String typename;
  String id;
  Map<String, dynamic> titleText;
  Map<String, dynamic> originalTitleText;
  int releaseYear;
  Map<String, dynamic> releaseDate;
  Map<String, dynamic> titleType;
  Map<String, dynamic> primaryImage;
  dynamic episodes;
  dynamic series;
  List<Map<String, dynamic>> principalCredits;

  Entity({
    required this.typename,
    required this.id,
    required this.titleText,
    required this.originalTitleText,
    required this.releaseYear,
    required this.releaseDate,
    required this.titleType,
    required this.primaryImage,
    required this.episodes,
    required this.series,
    required this.principalCredits,
  });

  factory Entity.fromMap(Map<String, dynamic> map) {
    return Entity(
      typename: map['typename'],
      id: map['id'],
      titleText: map['titleText'],
      originalTitleText: map['originalTitleText'],
      releaseYear: map['releaseYear'],
      releaseDate: map['releaseDate'],
      titleType: map['titleType'],
      primaryImage: map['primaryImage'],
      episodes: map['episodes'],
      series: map['series'],
      principalCredits:
          List<Map<String, dynamic>>.from(map['principalCredits']),
    );
  }
}

class TitleText {
  String text;
  bool isOriginalTitle;

  TitleText({
    required this.text,
    required this.isOriginalTitle,
  });

  factory TitleText.fromMap(Map<String, dynamic> map) {
    return TitleText(
      text: map['text'],
      isOriginalTitle: map['isOriginalTitle'],
    );
  }
}

class PrimaryImage {
  String typename;
  String id;
  String url;
  int height;
  int width;

  PrimaryImage({
    required this.typename,
    required this.id,
    required this.url,
    required this.height,
    required this.width,
  });

  factory PrimaryImage.fromMap(Map<String, dynamic> map) {
    return PrimaryImage(
      typename: map['typename'],
      id: map['id'],
      url: map['url'],
      height: map['height'],
      width: map['width'],
    );
  }
}

class PrincipalCredit {
  List<Map<String, dynamic>> credits;

  PrincipalCredit({
    required this.credits,
  });

  factory PrincipalCredit.fromMap(Map<String, dynamic> map) {
    return PrincipalCredit(
      credits: List<Map<String, dynamic>>.from(map['credits']),
    );
  }
}

class Credit {
  Map<String, dynamic> name;

  Credit({
    required this.name,
  });

  factory Credit.fromMap(Map<String, dynamic> map) {
    return Credit(
      name: map['name'],
    );
  }
}

class Name {
  String typename;
  String id;
  Map<String, dynamic> nameText;
  Map<String, dynamic>? primaryImage;

  Name({
    required this.typename,
    required this.id,
    required this.nameText,
    this.primaryImage,
  });

  factory Name.fromMap(Map<String, dynamic> map) {
    return Name(
      typename: map['typename'],
      id: map['id'],
      nameText: map['nameText'],
      primaryImage: map['primaryImage'],
    );
  }
}

class ReleaseDate {
  String typename;
  int? month;
  int? day;
  int year;
  String country;
  dynamic restriction;
  List<Map<String, dynamic>> attributes;
  Map<String, dynamic> displayableProperty;

  ReleaseDate({
    required this.typename,
    required this.month,
    required this.day,
    required this.year,
    required this.country,
    required this.restriction,
    required this.attributes,
    required this.displayableProperty,
  });

  factory ReleaseDate.fromMap(Map<String, dynamic> map) {
    return ReleaseDate(
      typename: map['typename'],
      month: map['month'],
      day: map['day'],
      year: map['year'],
      country: map['country'],
      restriction: map['restriction'],
      attributes: List<Map<String, dynamic>>.from(map['attributes']),
      displayableProperty: map['displayableProperty'],
    );
  }
}

class Attribute {
  String id;
  String text;

  Attribute({
    required this.id,
    required this.text,
  });

  factory Attribute.fromMap(Map<String, dynamic> map) {
    return Attribute(
      id: map['id'],
      text: map['text'],
    );
  }
}

class Edge {
  Node? node;

  Edge({this.node});

  factory Edge.fromMap(Map map) {
    return Edge(
      node: Node.fromMap(map['node']),
    );
  }
}

class Node {
  Entity? entity;

  Node({this.entity});

  factory Node.fromMap(Map map) {
    return Node(
      entity: Entity.fromMap(map['entity']),
    );
  }
}
