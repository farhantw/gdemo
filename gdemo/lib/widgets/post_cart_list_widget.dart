import 'package:flutter/material.dart';
import 'package:gdemo/constant/g_strings.dart';
import '../constant/g_color.dart';
import '../constant/g_styles.dart';
import '../models/postmodel.dart';
import 'comment_list_widget.dart';
import 'container_widget.dart';

class PostCartListWidget extends StatelessWidget {
  final AsyncSnapshot<PostFullListModel> snapshot;
  const PostCartListWidget({Key? key, required this.snapshot})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: snapshot.data?.postmodelddata!.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Column(
                children: [
                  ContainerWidget(
                    margin: const EdgeInsets.symmetric(vertical: 7.0),
                    dbox: G1Styles.bottomsheetboxdecoration,
                    height: 2.0,
                    width: 35.0,
                  ),
                  ContainerWidget(
                    height: 400,
                    child: CommentListWidget(
                        id: snapshot.data!.postmodelddata![index].id ?? 1),
                  ),
                ],
              );
            },
            shape: G1Styles.bottomsheetshap,
          );
        },
        child: ContainerWidget(
            margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            height: MediaQuery.of(context).size.height * 0.32,
            dbox: G1Styles.decoratebox,
            // child: FittedBox(
            // fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        G1String.post,
                        style: G1Styles.fontSize7,
                      ),
                      const SizedBox(
                        width: 3.0,
                      ),
                      CircleAvatar(
                          backgroundColor: G1Colors.primaryColorMat,
                          child: Text(
                            '${snapshot.data!.postmodelddata![index].id}',
                            style: G1Styles.fontWeight500FontSize15,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  FittedBox(
                    child: Row(
                      children: [
                        const Text(G1String.title),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          '${snapshot.data!.postmodelddata![index].title}',
                          style: G1Styles.fontWeight500FontSize15,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ContainerWidget(
                    padding: const EdgeInsets.all(4.0),
                    dbox: G1Styles.contentdecorationbox,
                    child: Text(
                      '${snapshot.data!.postmodelddata![index].body}',
                      style: const TextStyle(fontSize: 11),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ContainerWidget(
                      width: MediaQuery.of(context).size.width * 0.33,
                      height: 25.0,
                      dbox: G1Styles.commentdecorateboxbutton,
                      child: const Text(
                        G1String.commentbox,
                        style: G1Styles.fontWeight500FontSize15,
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
