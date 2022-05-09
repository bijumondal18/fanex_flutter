import 'package:fanex_flutter/common/common.dart';
import 'package:flutter/material.dart';
import '../Models/models.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _buildList(context),
      floatingActionButton: _readAllButton(),
    );
  }
}

PreferredSizeWidget _appBar(context) {
  return AppBar(
    backgroundColor: AppBarTheme.of(context).backgroundColor,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.clear,
        size: 20,
      ),
    ),
    title: const Text('Notifications'),
  );
}

Widget _buildList(BuildContext context) {
  return NotificationListener<OverscrollIndicatorNotification>(
    onNotification: (overScroll) {
      overScroll.disallowIndicator();
      return false;
    },
    child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: notificationTitle.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(
                left: AppSizes.dimen4, right: AppSizes.dimen4),
            child: _cardItem(context, index),
          );
        }),
  );
}

Widget _readAllButton() {
  return FloatingActionButton(
    onPressed: () {},
    backgroundColor: AppColors.green,
    child: const Text('Read All',
        style: TextStyle(fontSize: 10, color: AppColors.white)),
  );
}

Widget _cardItem(
  BuildContext context,
  int index,
) {
  return Card(
    color: AppColors.grey.withOpacity(0.1),
    child: Padding(
      padding: const EdgeInsets.all(AppSizes.dimen8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            notificationTitle[index],
            style: const TextStyle(
                fontSize: AppSizes.headline5,
                color: AppColors.white,
                fontWeight: FontWeight.bold),
          ),
          _space(),
          Text(
            notificationsubtitles[index],
            style: Theme.of(context).textTheme.headline6,
          ),
          _space(),
          Text(
            timeDate[index],
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    ),
  );
}
Widget _space(){
  return const SizedBox(
    height: AppSizes.dimen3,
  );
}