import 'package:final_project/views/HomeScreen.dart';
import 'package:final_project/firebase_serviec/storage_img.dart';
import 'package:final_project/widgets/custom_button.dart';
import 'package:final_project/widgets/drop_draw.dart';
import 'package:final_project/widgets/dropdraw_img.dart';
import 'package:flutter/material.dart';
import 'package:final_project/trailing(1)/city.dart';
import 'package:final_project/trailing(1)/confirm_password.dart';
import 'package:final_project/trailing(1)/date_of_birth.dart';
import 'package:final_project/trailing(1)/email.dart';
import 'package:final_project/trailing(1)/full_name.dart';
import 'package:final_project/trailing(1)/password.dart';
import 'package:final_project/trailing(1)/personal_address.dart';
import 'package:final_project/trailing(1)/phone_number.dart';
import 'package:final_project/trailing(1)/your_id.dart';
import 'package:final_project/trailing(2)/add_button.dart';
import 'package:final_project/trailing(2)/clinc_addres.dart';
import 'package:final_project/trailing(2)/clinc_name.dart';
import 'package:final_project/trailing(2)/clinc_number.dart';
import 'package:final_project/trailing(3)/diagnones.dart';
import 'package:final_project/trailing(2)/main_speaciality.dart';
import 'package:final_project/trailing(3)/medications.dart';
import 'package:final_project/trailing(3)/operations.dart';
import 'package:final_project/trailing(2)/scientific_degree.dart';
import 'package:final_project/trailing(2)/sub%20_speaciality.dart';
import 'package:final_project/constans/appcolor.dart';
import 'package:final_project/trailing(3)/video_condition.dart';
import 'package:final_project/trailing(3)/voice_condition.dart';
import 'package:final_project/trailing(2)/upload_lincense.dart';
import 'package:final_project/trailing(2)/upload_certificates.dart';
import 'package:final_project/widgets/custom_listTile.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:final_project/generated/l10n.dart';

bool language = false;
bool isExpanded = true;

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
 
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Row(children: [
              SizedBox(
                  height: 25.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 1, horizontal: 3.w),
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              language = !language;
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.settings,
                              size: 20.sp,
                            )),
                        Text(
                          S.of(context).language,
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        language == false
                            ? const SizedBox()
                            : SizedBox(
                                height: 10.h,
                                // width: 20.w,
                                child: Column(
                                  children: [
                                    const Text(
                                      'English',
                                      style: TextStyle(
                                        color:
                                            AppColor.greenColor, // Text color
                                      ),
                                    ),
                                    // SizedBox(height: 0,),
                                    TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(15),
                                                bottomLeft:
                                                    Radius.circular(15)),
                                          ),
                                          side: const BorderSide(
                                            color: Colors.black87,
                                          ),
                                          backgroundColor: Colors.white,
                                          fixedSize: Size.fromWidth(20.w)),
                                      child: const Text(
                                        'العربيه',
                                        style: TextStyle(
                                          color:
                                              AppColor.greenColor, // Text color
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                      ],
                    ),
                  )),
              SizedBox(
                width: 14.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: Stack(
                  children: [
                    Center(
                      child: CircleAvatar(
                          radius: 40.sp,
                          backgroundImage:  NetworkImage   ("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.shutterstock.com%2Fsearch%2Fdoctor-clipart&psig=AOvVaw0wgweDSWoSdHHRfYRD5lKy&ust=1705845152624000&source=images&cd=vfe&ved=0CBMQjRxqFwoTCJCUy8qO7IMDFQAAAAAdAAAAABAE"
                       )),
                    ),
                    Positioned(
                        right: -9,
                        bottom: -7,
                        child: Row(
                          children: [
                            PopupMenuButton(
                                icon: Icon(Icons.camera_alt,
                                    color: AppColor.greenColor),
                                itemBuilder: (context) => [
                                      PopupMenuItem(
                                          child: MyDropdown(listItems: [
                                        'Upload Images',
                                        "Take Images"
                                      ], selecteditem: 'Upload Images'))
                                    ]),
                          ],
                        )),
                  ],
                ),
              )
            ]),
            CustomListTile(
              title: S.of(context).PersonalInfo,
              isExpanded: isExpanded,
              childList: [
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      FullName(),
                    ],
                  ),
                ),
                YourID(),
 
                GGender(context),
                DateOfBirth(),
                PersonalAddress(),
                City(),
                phoneNumber(), email(),
                password(),
                confirmPassword(),

                //start here
              ],
            ),
            CustomListTile(
                title: S.of(context).WorkInfo,
                isExpanded: isExpanded,
                childList: [
                  Column(
                    children: [
                      MainSpecality(),
                      SubSpeaciality(),
                      ScientificDegree(),
                      ClincName(),
                      ClincAddress(),
                      ClincNumber(),
                      AddButton(),
                      UploadCertificates(),
                      UploadLincense(),
                    ],
                  )
                ]),
            CustomListTile(
                title: S.of(context).MedicalInfo,
                isExpanded: isExpanded,
                childList: [
                  Column(
                    children: [
                      Diagnones(),
                      Operations(),
                      Medications(),
                      Condtition_byVideo(),
                      Condition_byVoice(),
                    ],
                  )
                ]),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: S.of(context).SignUp,
                  onTap: () async {
                    
                    if (formKey.currentState!.validate()) {
                      //   isLoading = true;
                      setState(() {});
                    };
Navigator.pushNamed(context, '/home');                 
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  Container GGender(BuildContext context) {
    String? gender;
    return Container(

                color: Colors.white,
                child: Row(
                  children: [
                      
                    Text(S.of(context).Gender,
                        style: TextStyle(
                            color: AppColor.greenColor, fontSize: 20)),
                    Expanded(
                        child: RadioListTile(
                            contentPadding: EdgeInsets.all(0),
                            title: Icon(Icons.male_sharp),
                            secondary: Text(S.of(context).Male,
                                style: TextStyle(
                                    color: AppColor.greenColor,
                                    fontSize: 17)),
                            value: S.of(context).Male,
                             
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value;
                              });
                            })),
                    SizedBox(width: 45),
                    Expanded(
                      child: RadioListTile(
                          contentPadding: EdgeInsets.all(0),
                          title: Icon(Icons.female_sharp),
                          secondary: Text(S.of(context).Female,
                              style: TextStyle(
                                  color: AppColor.greenColor, fontSize: 17)),
                          value: S.of(context).Female,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value;
                            });
                          }),
                    ),
                  ],
                ),
              );
  }
}
