import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/common/strings.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

/// ----------create contest screen-------------------- ///

class CreateContestScreen extends StatefulWidget {
  const CreateContestScreen({Key? key}) : super(key: key);

  @override
  State<CreateContestScreen> createState() => _CreateContestScreenState();
}

class _CreateContestScreenState extends State<CreateContestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: AppSizes.elevation1,
        title: Text(
          'Create Contest',
          style: AppTheme.lightTheme.textTheme.headline5,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.dimen12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter Contest Title',
                style: AppTheme.lightTheme.textTheme.headline5,
              ),
              const CustomTextField(hintText: 'Enter Contest Title'),
              const SizedBox(
                height: AppSizes.dimen8,
              ),
              Text(
                'Select Category',
                style: AppTheme.lightTheme.textTheme.headline5,
              ),
              CustomSpinner(),
              const SizedBox(
                height: AppSizes.dimen8,
              ),
              Text(
                'Select Match',
                style: AppTheme.lightTheme.textTheme.headline5,
              ),
              const CustomTextField(hintText: 'Select Match'),
              const SizedBox(
                height: AppSizes.dimen8,
              ),
              Text(
                'Select Statistical Category',
                style: AppTheme.lightTheme.textTheme.headline5,
              ),
              const CustomTextField(hintText: 'Select Statistical Category'),
              const SizedBox(
                height: AppSizes.dimen8,
              ),
              Text(
                'Add Entry Fee',
                style: AppTheme.lightTheme.textTheme.headline5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Flexible(
                    child: CustomTextField(hintText: 'Cash or Coins'),
                  ),
                  SizedBox(width: AppSizes.dimen12),
                  Flexible(child: CustomTextField(hintText: 'Amount')),
                ],
              ),
              const SizedBox(
                height: AppSizes.dimen8,
              ),
              Text(
                'Message',
                style: AppTheme.lightTheme.textTheme.headline5,
              ),
              const CustomTextField(hintText: 'Write Message'),
              const SizedBox(
                height: AppSizes.dimen8,
              ),
              const CustomTextField(hintText: 'Invite Friends'),
              const SizedBox(
                height: AppSizes.dimen16,
              ),
              CustomFullButton(title: AppStrings.finishButtonText, onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
