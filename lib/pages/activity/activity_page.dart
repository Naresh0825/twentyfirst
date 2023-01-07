import 'package:flutter/material.dart';
import 'package:twentyfirst/commons/exporter.dart';
import 'package:twentyfirst/pages/activity/workout_card.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Theme.of(context).backgroundColor,
      height: size.height,
      width: size.width,
      child: _createHomeBody(context, size),
    );
  }

  Widget _createHomeBody(BuildContext context, Size size) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          _createExercisesList(context, size),
        ],
      ),
    );
  }

  Widget _createExercisesList(BuildContext context, Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Exercises',
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Container(
          padding: EdgeInsets.symmetric(horizontal: AppWidth.w10),
          height: size.height * .8,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              ActivityCard(
                size: size,
                title: 'Cardio',
                exercisecount: '20',
                time: '20',
                currentProgress: 65,
                path: '${ImagePath.path}/arms.png',
              ),
              const SizedBox(height: 15),
              ActivityCard(
                size: size,
                title: 'Yoga',
                exercisecount: '6',
                time: '10',
                currentProgress: 0,
                path: '${ImagePath.path}/recicling.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
