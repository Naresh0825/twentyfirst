import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:twentyfirst/commons/colors_manager.dart';

class ActivityCard extends StatelessWidget {
  final Size size;
  final String title;
  final String exercisecount;
  final String time;
  final String path;
  final int currentProgress;
  const ActivityCard(
      {Key? key,
      required this.size,
      required this.title,
      required this.exercisecount,
      required this.time,
      required this.currentProgress, required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const totalprogress = 100;
    return Container(
      width: size.width * .9,
      height: 140,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorManager.white,
        boxShadow: [
          BoxShadow(
              color: ColorManager.black.withOpacity(0.12),
              blurRadius: 5.0,
              spreadRadius: 1.1)
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 3),
                      Text(exercisecount + ' Exercises'.toUpperCase(),
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: ColorManager.grey),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2),
                      const SizedBox(height: 3),
                      Text(time + " " 'minutes',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: ColorManager.grey),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2),
                      const Spacer(),
                      Text('$currentProgress/$totalprogress',
                          style: TextStyle(fontSize: 10)),
                      const SizedBox(height: 3),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0, left: 2),
                        child: LinearPercentIndicator(
                          percent: currentProgress / totalprogress,
                          progressColor: ColorManager.primary,
                          backgroundColor:
                              ColorManager.primary.withOpacity(0.12),
                          lineHeight: 6,
                          padding: EdgeInsets.zero,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 60),
                Expanded(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(path,
                            fit: BoxFit.fill))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
