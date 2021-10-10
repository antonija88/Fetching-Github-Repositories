import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ingemark_app/app/models/repository.dart';
import 'package:ingemark_app/app/providers/repository_provider.dart';
import 'package:ingemark_app/app/widgets/itemCard.dart';
import 'package:ingemark_app/utility/size_config.dart';
import 'package:ingemark_app/utility/constants.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';

class DetailsScreen extends StatefulHookWidget {
  static const String routName = 'details_screen';
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

String formatDate(String dateString) {
  final dateTime = DateTime.parse(dateString);
  final format = DateFormat('dd/MM/yyyy');
  return format.format(dateTime);
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double? sizeH = SizeConfig.safeBlockVertical;
    double? sizeW = SizeConfig.safeBlockHorizontal;

    Repository repo = useProvider(reposProvider).repository;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container()),
            Text("REPOSITORY DETAILS",
                style:
                    TextStyle(color: Colors.white54, fontSize: sizeH! * 2.5)),
          ],
        ),
        backgroundColor: kMainColor.withOpacity(0.8),
      ),
      body: Padding(
        padding: EdgeInsets.all(sizeH * 2),
        child: Card(
          elevation: sizeH * 3,
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              color: kMainColor.withOpacity(0.8),
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                  horizontal: sizeW! * 5, vertical: sizeH * 2),
              subtitle: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'REPOSITORY NAME:',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: sizeH * 2),
                      ),
                    ],
                  ),
                  SizedBox(height: sizeH * 1),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          child: Text(
                            '${repo.repoName}',
                            maxLines: 6,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                                color: Colors.white, fontSize: sizeH * 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: sizeH * 3),
                  Row(
                    children: [
                      Text(
                        'LAST UPDATE TIME:',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: sizeH * 2),
                      )
                    ],
                  ),
                  SizedBox(height: sizeH * 1),
                  Row(
                    children: [
                      Icon(Icons.update,
                          color: Colors.yellowAccent, size: sizeH * 2),
                      SizedBox(width: sizeW * 2),
                      Text(formatDate(repo.lastUpdateTime!),
                          style: TextStyle(
                              color: Colors.white, fontSize: sizeH * 2))
                    ],
                  ),
                  SizedBox(height: sizeH * 3),
                  Row(
                    children: [
                      Text(
                        'OWNER NAME:',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: sizeH * 2),
                      ),
                    ],
                  ),
                  SizedBox(height: sizeH * 1),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          child: Text(
                            '${repo.ownerName}',
                            maxLines: 6,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                                color: Colors.white, fontSize: sizeH * 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: sizeH * 3),
                  Row(
                    children: [
                      Text(
                        'DESCRIPTION:',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: sizeH * 2),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          child: Text(
                            repo.description != null
                                ? '${repo.description}'
                                : "No description",
                            maxLines: 6,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: sizeH * 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
