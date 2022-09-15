import 'package:flutter/material.dart';
import '../constant/g_color.dart';
import '../constant/g_styles.dart';
import '../models/comment_model.dart';
import '../models/postmodel.dart';
import '../services/api_service.dart';
import 'comment_list_widget.dart';
import 'container_widget.dart';

class PostCartListWidget extends StatelessWidget {
  final AsyncSnapshot<PostFullListModel> snapshot;
  PostCartListWidget({Key? key, required this.snapshot}) : super(key: key);

  late Future<CommentFullListModel> commentdatarespons;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: snapshot.data?.postmodelddata!.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          // commentdatarespons = APIService()
          //     .getCommentData(snapshot.data!.postmodelddata![index].id);
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 400,
                // color: Colors.amber,
                child: CommentListWidget(
                    id: snapshot.data!.postmodelddata![index].id ?? 1),
              );
            },
          );
        },
        child: ContainerWidget(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            height: MediaQuery.of(context).size.height * 0.2,
            dbox: G1Styles.decoratebox,
            child: FittedBox(
              // fit: BoxFit.contain,
              child: Column(
                children: [
                  Text('${snapshot.data!.postmodelddata![index].id}'),
                  Text('${snapshot.data!.postmodelddata![index].userId}'),
                  Text('${snapshot.data!.postmodelddata![index].title}'),
                  Text('${snapshot.data!.postmodelddata![index].body}'),
                ],
              ),
            )),
      ),
    );
  }
}
