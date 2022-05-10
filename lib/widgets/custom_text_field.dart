import 'package:fanex_flutter/common/common.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final Icon icon;

  const CustomTextField(
      {Key? key,
      required this.hintText,
      required this.obscureText,
      required this.controller,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: AppSizes.dimen8),
      width: MediaQuery.of(context).size.width,
      height: AppSizes.textFieldHeight,
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        cursorColor: AppColors.black,
        decoration: InputDecoration(
          prefixIcon: icon,
          iconColor: AppColors.lightGrey,
          prefixIconColor: AppColors.lightGrey,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyText1,
          filled: true,
          fillColor: AppColors.textFieldBg,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius)),
        ),
      ),
    );
  }
}
class CustomTextField1 extends StatefulWidget {
  final Icon icon;
  final TextEditingController controller;
  const CustomTextField1({Key? key,
    required this.controller,
    required this.icon}) : super(key: key);

  @override
  State<CustomTextField1> createState() => _CustomTextField1State();
}
class _CustomTextField1State extends State<CustomTextField1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: AppSizes.dimen8),
      width: MediaQuery.of(context).size.width,
      height: AppSizes.textFieldHeight,
      child: TextField(
        controller: widget.controller,
        obscureText: false,
       keyboardType: TextInputType.number,
        cursorColor: AppColors.black,
        decoration: InputDecoration(
          prefixIcon: widget.icon,
          iconColor: AppColors.lightGrey,
          prefixIconColor: AppColors.lightGrey,
          hintStyle: Theme.of(context).textTheme.bodyText1,
          filled: true,
          fillColor: AppColors.textFieldBg,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius)),
        ),
      ),
    );
  }
}
