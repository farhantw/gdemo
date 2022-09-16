import 'package:flutter/material.dart';
import 'package:gdemo/constant/g_strings.dart';
import '../constant/g_styles.dart';
import '../models/comment_model.dart';
import '../services/api_service.dart';
import 'container_widget.dart';

class CommentListWidget extends StatelessWidget {
  final int id;
  // final ScrollController scrollController;
  const CommentListWidget(
      {Key? key,
      //  required this.scrollController,
      required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CommentFullListModel>(
      future: APIService().getCommentData(id),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              // controller: scrollController,
              itemCount: snapshot.data?.postmodelddata!.length,
              itemBuilder: (context, index) => ContainerWidget(
                    margin: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10.0),
                    height: MediaQuery.of(context).size.height * 0.09,
                    dbox: G1Styles.decoratebox,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${G1String.name}${snapshot.data!.postmodelddata![index].name}',
                            style: G1Styles.fontWeight500FontSize10,
                          ),
                          Text(
                            '${G1String.email}${snapshot.data!.postmodelddata![index].email}',
                            style: G1Styles.fontWeight500FontSize10,
                          ),
                        ],
                      ),
                    ),
                  ));
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const Align(
            alignment: Alignment.topCenter,
            child: CircularProgressIndicator(
              strokeWidth: 3.0,
            ));
      },
    );
  }
}
