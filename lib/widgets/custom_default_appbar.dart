import 'package:fanex_flutter/common/common.dart';
import 'package:flutter/material.dart';

class CustomDefaultAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;

  const CustomDefaultAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_rounded,
          size: 20,
        ),
      ),
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppSizes.appBarHeight);
}
