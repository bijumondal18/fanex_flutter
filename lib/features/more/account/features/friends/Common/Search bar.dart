import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import '../../../../../../common/common.dart';
class SearchBar extends StatelessWidget {
  final VoidCallback onPressed;

  SearchBar({Key? key, required this.onPressed}) : super(key: key);

  @override
  final TextEditingController searchController = TextEditingController();

  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppSizes.dimen12,
      ),
      child: CustomTextField(
        hintText: AppStrings.SearchText,
        obscureText: false,
        controller: searchController,
        icon: const Icon(Icons.search),
      ),
    );
  }
}