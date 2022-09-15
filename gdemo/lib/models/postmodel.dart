class PostModel {
  PostModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int? userId;
  int? id;
  String? title;
  String? body;

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );
}

class PostFullListModel {
  List<PostModel>? postmodelddata;
  PostFullListModel({this.postmodelddata});
  factory PostFullListModel.fromJson(dynamic json) {
    return PostFullListModel(
        postmodelddata:
            List<PostModel>.from(json.map((x) => PostModel.fromJson(x))));
  }
}
