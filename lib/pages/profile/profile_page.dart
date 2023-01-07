import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../commons/exporter.dart';
import 'widgets/logout_alert_dialogue.dart';
import 'widgets/profile_options.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      // appBar: AppBarWidget(appTitle: 'Profile'),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff2083FD),
                      Color(0xff416BE7),
                    ],
                  )),
                  height: size.height * 0.3,
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.35),
                  child: Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(AppRadius.r30),
                        topLeft: Radius.circular(AppRadius.r30),
                      ),
                    ),
                    child: Column(
                      children: [],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: size.height * .06,
              left: size.width * .2,
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        height: size.height * .1,
                        width: size.width * .2,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/cv.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(width: AppWidth.w8),
                      SizedBox(
                        width: size.width * .6,
                        height: size.height * .1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  'Naresh Shrestha',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: getBoldStyle(
                                    fontSize: FontSize.s20,
                                    color: ColorManager.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: AppHeight.h10),
                ],
              ),
            ),
            // Positioned.fill(
            //   top: size.height * .1,
            //   child: Align(
            //     alignment: Alignment.center,
            //     child: Card(
            //       elevation: 5,
            //       child: Container(
            //         height: size.height * .25,
            //         width: size.width * .9,
            //         child: Padding(
            //           padding: EdgeInsets.only(
            //             top: AppHeight.h6,
            //             left: AppWidth.w14,
            //             right: AppWidth.w14,
            //           ),
            //           child: Column(
            //             children: [
            //               Text(
            //                 'Your Details',
            //                 style: getheadingStyle(
            //                   fontSize: FontSize.s18,
            //                   color: Color(0xff3885F2),
            //                 ),
            //               ),
            //               Divider(),
            //               SizedBox(height: AppHeight.h6),
            //               Container(
            //                 height: size.height * .1,
            //                 child: Column(
            //                   children: [
            //                     Expanded(
            //                       child: Container(
            //                         child: Row(
            //                           children: [
            //                             Text(
            //                               'Room occupied :',
            //                               style: getBoldStyle(
            //                                 fontSize: FontSize.s14,
            //                                 color: Color(0xff3885F2),
            //                               ),
            //                             ),
            //                             SizedBox(
            //                               child: SingleChildScrollView(
            //                                 scrollDirection: Axis.horizontal,
            //                                 child: Text(
            //                                   '203, 204, 301, 405, 406',
            //                                   style: getRegularStyle(
            //                                     fontSize: FontSize.s14,
            //                                     color: ColorManager.black,
            //                                   ),
            //                                 ),
            //                               ),
            //                             ),
            //                           ],
            //                         ),
            //                       ),
            //                     ),
            //                     VerticalDivider(),
            //                     Expanded(
            //                       child: Container(
            //                         child: Row(
            //                           children: [
            //                             Text(
            //                               'Guests',
            //                               style: getBoldStyle(
            //                                 fontSize: FontSize.s14,
            //                                 color: Color(0xff3885F2),
            //                               ),
            //                             ),
            //                             Text(
            //                               '10',
            //                               style: getRegularStyle(
            //                                 fontSize: FontSize.s14,
            //                                 color: ColorManager.black,
            //                               ),
            //                             ),
            //                           ],
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Positioned.fill(
              top: size.height * .25,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  color: ColorManager.white,
                  child: Column(
                    children: [
                      ProfileOptions(
                        onTap: () {},
                        size: size,
                        icon: CupertinoIcons.person,
                        title: 'Your Linked Account',
                      ),
                      ProfileOptions(
                        onTap: () {
                          dialoguebox(context);
                        },
                        size: size,
                        icon: CupertinoIcons.power,
                        title: 'Log Out',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
