import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../commons/exporter.dart';

class ProfileOptions extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const ProfileOptions({
    Key? key,
    required this.size,
    required this.onTap,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: SizedBox(
          height: size.height * .08,
          width: size.width * .9,
          child: Padding(
              padding: EdgeInsets.only(
                left: AppWidth.w18,
                right: AppWidth.w8,
              ),
              child: Center(
                child: ListTile(
                  leading: Icon(
                    icon,
                    color: ColorManager.primary,
                  ),
                  title: Text(
                    title,
                    style: getMediumStyle(
                        fontSize: FontSize.s14, color: ColorManager.black),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: ColorManager.primary,
                    size: AppHeight.h16,
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
