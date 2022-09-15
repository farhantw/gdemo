import 'dart:convert';

class CommentFullListModel {
  List<CommentModel>? postmodelddata;
  CommentFullListModel({this.postmodelddata});
  factory CommentFullListModel.fromJson(dynamic json) {
    return CommentFullListModel(
        postmodelddata:
            List<CommentModel>.from(json.map((x) => CommentModel.fromJson(x))));
  }
}

class CommentModel {
  CommentModel({
    this.postId,
    this.id,
    this.name,
    this.email,
    this.body,
  });

  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  factory CommentModel.fromJson(Map<String, dynamic> json) => CommentModel(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
      );
}
