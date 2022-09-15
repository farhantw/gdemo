import 'package:flutter/material.dart';

import '../constant/g_color.dart';
import '../constant/g_styles.dart';
import '../models/comment_model.dart';
import '../services/api_service.dart';
import 'container_widget.dart';

class CommentListWidget extends StatelessWidget {
  final int id;
  const CommentListWidget({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CommentFullListModel>(
      future: APIService().getCommentData(id),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data?.postmodelddata!.length,
            itemBuilder: (context, index) => ContainerWidget(
                margin: const EdgeInsets.symmetric(vertical: 5.0),
                height: MediaQuery.of(context).size.height * 0.2,
                dbox: G1Styles.decoratebox,
                child: FittedBox(
                  // fit: BoxFit.contain,
                  child: Column(
                    children: [
                      Text('${snapshot.data!.postmodelddata![index].postId}'),
                      // Text('${snapshot.data!.postmodelddata![index].userId}'),
                      // Text('${snapshot.data!.postmodelddata![index].title}'),
                      Text('${snapshot.data!.postmodelddata![index].body}'),
                    ],
                  ),
                )),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }
}
