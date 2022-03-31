import 'dart:convert';

import 'package:flutter/material.dart';

class MotivationModel {
  final String id, title, author, authorAvatar, background;
  const MotivationModel({
    this.id = "",
    this.title = "",
    this.author = "",
    this.authorAvatar = "",
    this.background = "#000000",
  });
  MotivationModel.fromJson(Map<String, dynamic> json)
      : title = json["title"] ?? "",
        author = json["author"] ?? "",
        background = json["background"] ?? "",
        authorAvatar = (json["authorAvatar"]) ?? "",
        id = json["id"] ?? "";
  // static MotivationModel mapJson(Map<String, dynamic> json) {
  //   return json["id"] == null || json["lat"] == null
  //       ? null
  //       : MotivationModel(
  //           nickname: json["name"] ?? "Others",
  //           addressLine: json["address"],
  //           phoneNumber: json["phone_number"],
  //           lat: double.parse(json["lat"]),
  //           lng: double.parse(json["lng"]),
  //           street: json["street_number"],
  //           id: json["id"]);
  // }

  // Map<String, dynamic> toJson() => {
  //       "name": nickname,
  //       "address": addressLine,
  //       "lat": lat.toString(),
  //       "lng": lng.toString(),
  //       "phone_number": phoneNumber,
  //       "id": id,
  //       // "street_number": street,
  //     };
  // @override
  // bool operator ==(Object other) => (other is MotivationModel &&
  //     (other.lat == lat) &&
  //     (other.addressLine == addressLine) &&
  //     (other.lng == lng));

  // int get hashCode => hashValues(lat, lng, addressLine);
  // Map<String, dynamic> toMap() => {
  //       "name": nickname,
  //       "address": addressLine,
  //       "lat": lat.toString(),
  //       "lng": lng.toString(),
  //       "phone_number": phoneNumber,
  //       "id": id,
  //       "street_number": street,
  //     };
  // static String encode(List<MotivationModel> musics) => json.encode(
  //       musics.map<Map<String, dynamic>>((music) => music.toMap()).toList(),
  //     );

  // static List<MotivationModel> decode(String addresses) {
  //   return addresses == null
  //       ? []
  //       : (json.decode(addresses) as List<dynamic>)
  //           .map<MotivationModel>((item) => MotivationModel.mapJson(item))
  //           .where((element) => element != null)
  //           .toList();
  // }
}
