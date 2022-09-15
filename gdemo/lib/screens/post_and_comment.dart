import 'package:flutter/material.dart';
import 'package:gdemo/constant/g_color.dart';
import '../models/postmodel.dart';
import '../services/api_service.dart';
import '../widgets/post_cart_list_widget.dart';

class PostandComment extends StatefulWidget {
  const PostandComment({Key? key}) : super(key: key);

  @override
  State<PostandComment> createState() => _PostandCommentState();
}

class _PostandCommentState extends State<PostandComment> {
  late Future<PostFullListModel> postdatarespons;

  @override
  void initState() {
    super.initState();
    postdatarespons = APIService().getPostData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<PostFullListModel>(
        future: postdatarespons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PostCartListWidget(snapshot: snapshot);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          return Center(
            child: const CircularProgressIndicator(
              color: G1Colors.primaryColorMat,
            ),
          );
        },
      ),
    );
  }
}
