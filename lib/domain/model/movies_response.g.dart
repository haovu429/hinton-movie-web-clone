// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      id: json['id'] as int? ?? 0,
      watchlist: (json['watchlist'] as List<dynamic>?)
              ?.map((e) => Watchlist.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      title: json['title'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      showDate: json['show_date'] as String?,
      timeShowDate: json['time_show_date'] as String?,
      closeDate: json['close_date'] as String?,
      timeCloseDate: json['time_close_date'] as String?,
      active: json['active'] as bool? ?? true,
      createDate: json['create_date'] as String?,
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'watchlist': instance.watchlist,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'show_date': instance.showDate,
      'time_show_date': instance.timeShowDate,
      'close_date': instance.closeDate,
      'time_close_date': instance.timeCloseDate,
      'active': instance.active,
      'create_date': instance.createDate,
    };

Watchlist _$WatchlistFromJson(Map<String, dynamic> json) => Watchlist(
      id: json['id'] as int? ?? 0,
      datePicker: json['date_picker'] as String?,
      timeShowDate: json['time_show_date'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      website: json['website'] as String?,
      active: json['active'] as bool? ?? true,
      createDate: json['create_date'] as String?,
      platform: json['platform'] as int? ?? 1,
    );

Map<String, dynamic> _$WatchlistToJson(Watchlist instance) => <String, dynamic>{
      'id': instance.id,
      'date_picker': instance.datePicker,
      'time_show_date': instance.timeShowDate,
      'price': instance.price,
      'website': instance.website,
      'active': instance.active,
      'create_date': instance.createDate,
      'platform': instance.platform,
    };
