import 'package:fanex_flutter/widgets/custom_default_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fanex_flutter/common/common.dart';

class RewardScreen extends StatefulWidget {



  const RewardScreen({Key? key}) : super(key: key);

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  List<String> listName = [
    "Verify Email Address",
    "Create Profile Picture",
    "Add Favourite Player",
    "Refer A Friend",

  ];
  List<String> listImage = [

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomDefaultAppBar(
        title: 'Rewards',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: listName.length,
            itemBuilder: (BuildContext context, index){
              return Container(
                height: 60,
                margin: const EdgeInsets.all(AppSizes.dimen12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
                  color: AppColors.grey.withOpacity(0.3),
                ),

                child: Padding(
                  padding: EdgeInsets.all(AppSizes.dimen8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSBTxS2FUzf104bsjvgILUXTtZ0IPhPGSUUQ&usqp=CAU',
                          fit: BoxFit.cover,),

                      Text(listName[index],style: TextStyle(fontSize: AppSizes.dimen16,fontWeight: FontWeight.w600),),
                      Icon(Icons.arrow_forward_ios,color: AppColors.green,),
                    ],
                  ),
                ),
              );
              }
              ),
            Container(
              margin: const EdgeInsets.all(AppSizes.dimen12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
                // color: AppColors.lightGrey,
              ),

              child: Image.asset("assets/images/fanex-logo.png",fit: BoxFit.cover,),
            ),
            Container(
              margin: const EdgeInsets.all(AppSizes.dimen12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
                // color: AppColors.lightGrey,
              ),
              height: 60,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgtFmzi-suCJkTZAmZinC2ZiIRyvw4E2V8Fg&usqp=CAU",fit: BoxFit.cover,),
                  SizedBox(width: 55,),
                  Text("Share a Promotion",style: TextStyle(fontSize: AppSizes.dimen16,fontWeight: FontWeight.w600),)
                ],
              ),
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.all(AppSizes.dimen12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
                color: AppColors.grey.withOpacity(0.3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network("https://www.freepnglogos.com/uploads/facebook-logo-icon/facebook-logo-icon-facebook-logo-png-transparent-svg-vector-bie-supply-15.png",fit: BoxFit.cover,),
                  Image.network("https://www.iconpacks.net/icons/2/free-twitter-logo-icon-2429-thumb.png",fit: BoxFit.cover,),
                  Image.network("https://www.freepnglogos.com/uploads/logo-ig-png/logo-ig-instagram-windows-phone-all-you-need-know-9.png",fit: BoxFit.cover,),

                ],
              ),
            )









          ],
        ),
      ),
    );
  }
}