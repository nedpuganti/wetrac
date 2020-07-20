import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'watchdata_model.g.dart';

@JsonSerializable()
class WatchModel {
  final bool connected;
  final String deviceId;
  final String deviceName;
  final String message;
  final Map<String, String> additionalInformation;

  WatchModel({
    this.connected,
    @required this.deviceId,
    this.deviceName,
    this.message,
    this.additionalInformation,
  });

  factory WatchModel.fromJson(Map<String, dynamic> json) =>
      _$WatchModelFromJson(json);

  Map<String, dynamic> toJson() => _$WatchModelToJson(this);
}
