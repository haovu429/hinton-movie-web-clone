import 'package:json_annotation/json_annotation.dart';

part 'movies_response.g.dart';

@JsonSerializable()
class Movie {
  int id;
  List<Watchlist> watchlist;
  String? title;
  String? description;
  String? image;
  @JsonKey(name: "show_date")
  String? showDate;
  @JsonKey(name: "time_show_date")
  String? timeShowDate;
  @JsonKey(name: "close_date")
  String? closeDate;
  @JsonKey(name: "time_close_date")
  String? timeCloseDate;
  bool active;
  @JsonKey(name: "create_date")
  String? createDate;

  Movie({
    this.id = 0,
    this.watchlist = const [],
    this.title,
    this.description,
    this.image,
    this.showDate,
    this.timeShowDate,
    this.closeDate,
    this.timeCloseDate,
    this.active = true,
    this.createDate,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
  Map<String, dynamic> toJson() => _$MovieToJson(this);
}

@JsonSerializable()
class Watchlist {
  int id;
  @JsonKey(name: "date_picker")
  String? datePicker;
  @JsonKey(name: "time_show_date")
  String? timeShowDate;
  double? price;
  String? website;
  bool active;
  @JsonKey(name: "create_date")
  String? createDate;
  int? platform;

  Watchlist({
    this.id = 0,
    this.datePicker ,
    this.timeShowDate ,
    this.price,
    this.website ,
    this.active = true,
    this.createDate,
    this.platform = 1,
  });

  factory Watchlist.fromJson(Map<String, dynamic> json) =>
      _$WatchlistFromJson(json);
  Map<String, dynamic> toJson() => _$WatchlistToJson(this);
}
