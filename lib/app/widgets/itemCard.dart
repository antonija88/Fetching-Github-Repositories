import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ingemark_app/app/models/repository.dart';
import 'package:ingemark_app/app/providers/repository_provider.dart';
import 'package:ingemark_app/app/services/repository_service.dart';
import 'package:ingemark_app/app/widgets/itemCard.dart';
import 'package:ingemark_app/utility/size_config.dart';
import 'package:ingemark_app/utility/constants.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ingemark_app/app/ui/details_screen.dart';
import 'package:intl/intl.dart';

class ItemCard extends StatelessWidget {
  final Repository repository;
  ItemCard({required this.repository});

  String formatDate(String dateString) {
    final dateTime = DateTime.parse(dateString);
    final format = DateFormat('dd/MM/yyyy');
    return format.format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double? sizeH = SizeConfig.safeBlockVertical;
    double? sizeW = SizeConfig.safeBlockHorizontal;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: sizeW! * 4),
      child: Card(
        elevation: sizeH! * 3,
        child: Container(
          decoration: BoxDecoration(color: kMainColor.withOpacity(0.8)),
          child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                  horizontal: sizeW * 5, vertical: sizeH * 0.7),
              title: Text(
                '${repository.repoName}',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.update,
                      color: Colors.yellowAccent, size: sizeH * 2),
                  SizedBox(width: sizeW * 2),
                  Text(formatDate(repository.lastUpdateTime!),
                      style: TextStyle(color: Colors.white))
                ],
              ),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: Colors.white, size: sizeH * 4)),
        ),
      ),
    );
  }
}
