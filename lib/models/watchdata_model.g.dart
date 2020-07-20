// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchdata_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WatchModel _$WatchModelFromJson(Map<String, dynamic> json) {
  return WatchModel(
    connected: json['connected'] as bool,
    deviceId: json['deviceId'] as String,
    deviceName: json['deviceName'] as String,
    message: json['message'] as String,
    additionalInformation:
        (json['additionalInformation'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
  );
}

Map<String, dynamic> _$WatchModelToJson(WatchModel instance) =>
    <String, dynamic>{
      'connected': instance.connected,
      'deviceId': instance.deviceId,
      'deviceName': instance.deviceName,
      'message': instance.message,
      'additionalInformation': instance.additionalInformation,
    };
