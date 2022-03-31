// To parse this JSON data, do
//
//     final folderListModel = folderListModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<FolderListModel> folderListModelFromJson(String str) =>
    List<FolderListModel>.from(
        json.decode(str).map((x) => FolderListModel.fromJson(x)));

String folderListModelToJson(List<FolderListModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FolderListModel {
  FolderListModel({
    required this.folder,
    required this.id,
    required this.title,
    required this.streaks,
    required this.image,
    required this.type,
  });

  String folder;
  String id;
  String title;
  String streaks;
  String image;
  String type;

  factory FolderListModel.fromJson(Map<String, dynamic> json) =>
      FolderListModel(
        folder: json["folder"] == null ? null : json["folder"],
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        streaks: json["streaks"] == null ? null : json["streaks"],
        image: json["image"] == null ? null : json["image"],
        type: json["type"] == null ? null : json["type"],
      );

  Map<String, dynamic> toJson() => {
        "folder": folder == null ? null : folder,
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "streaks": streaks == null ? null : streaks,
        "image": image == null ? null : image,
        "type": type == null ? null : type,
      };
}
