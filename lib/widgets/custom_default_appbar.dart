import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fanex_flutter/common/common.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  const CustomAppbar({Key? key, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          EvaIcons.arrowBack,
          size: 20,
          color: AppColors.white,
        ),
      ),
      title: Text(title!),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppSizes.appBarHeight);
}
