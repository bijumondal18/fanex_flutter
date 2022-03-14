import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

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
        elevation: AppSizes.elevation0,
        title: Text('Create Contest', style: AppTheme.lightTheme.textTheme.headline5,),
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
              CustomTextField(hintText: 'Enter Contest Title'),
              const SizedBox(
                height: AppSizes.dimen8,
              ),
              Text(
                'Select a Category',
                style: AppTheme.lightTheme.textTheme.headline5,
              ),
              CustomTextField(hintText: 'Select a Category'),
              const SizedBox(
                height: AppSizes.dimen8,
              ),
              Text(
                'Select Match',
                style: AppTheme.lightTheme.textTheme.headline5,
              ),
              CustomTextField(hintText: 'Select Match'),
              const SizedBox(
                height: AppSizes.dimen8,
              ),
              Text(
                'Select Statistical category',
                style: AppTheme.lightTheme.textTheme.headline5,
              ),
              CustomTextField(hintText: 'Select Statistical Category'),
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
                  Flexible(child: const CustomTextField(hintText: 'Amount')),
                ],
              ),
              const SizedBox(
                height: AppSizes.dimen8,
              ),
              Text(
                'Message',
                style: AppTheme.lightTheme.textTheme.headline5,
              ),
              CustomTextField(hintText: 'Write Message'),

              const SizedBox(
                height: AppSizes.dimen16,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(AppSizes.buttonHeight), // fromHeight use double.infinity as width and 40 is the height
                ),
                onPressed: () {
                  // Finish button press
                },
                child: Text('Finish'),
              )

            ],
          ),
        ),
      ),
    );
  }
}
