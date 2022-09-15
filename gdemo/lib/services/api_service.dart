import 'dart:convert';
import '../constant/g_api_constant.dart';
import 'package:http/http.dart' as http;
import '../models/comment_model.dart';
import '../models/postmodel.dart';

class APIService {
  static final APIService _singleton = APIService._internal();

  factory APIService() {
    return _singleton;
  }
  APIService._internal();

  Future<PostFullListModel> getPostData() async {
    var url = Uri.parse('${G1APIConstant.baseUrl}${G1APIConstant.postdata}');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      return PostFullListModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<CommentFullListModel> getCommentData(id) async {
    var url = Uri.parse(
        '${G1APIConstant.commentbaseUrl}$id${G1APIConstant.commentdata}');
    // var url =
    //     Uri.parse('https://jsonplaceholder.typicode.com/posts/3/comments');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      return CommentFullListModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
