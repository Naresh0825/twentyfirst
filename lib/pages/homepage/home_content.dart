import 'package:flutter/material.dart';
import 'package:twentyfirst/commons/exporter.dart';
import 'package:twentyfirst/pages/homepage/home_statistics.dart';

import 'home_exercises_card.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      height: double.infinity,
      width: double.infinity,
      child: _createHomeBody(context),
    );
  }

  Widget _createHomeBody(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          createProfile(),
          const SizedBox(height: 35),
          const HomeStatistics(),
          const SizedBox(height: 30),
          _createExercisesList(context),
          const SizedBox(height: 25),
          _createProgress(),
        ],
      ),
    );
  }

  Widget _createExercisesList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Discover Workouts',
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
          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              WorkoutCard(
                title: 'Cardio',
                exercise: '10 exercises',
                color: ColorManager.blue,
                onTap: () {},
                path: '${ImagePath.path}/cardio.png',
                time: "20 minutes",
              ),
              const SizedBox(width: 15),
              WorkoutCard(
                title: 'Arm Workout',
                exercise: '6 exercises',
                color: ColorManager.blue,
                onTap: () {},
                path: '${ImagePath.path}/cardio.png',
                time: "15 minutes",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget createProfile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Naresh',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                'Check Activity',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          GestureDetector(
            child: CircleAvatar(
                backgroundImage: AssetImage('${ImagePath.path}/cv.jpg'),
                radius: 60),
            onTap: () async {},
          ),
        ],
      ),
    );
  }

  Widget _createProgress() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorManager.white,
        boxShadow: [
          BoxShadow(
            color: ColorManager.black.withOpacity(0.12),
            blurRadius: 5.0,
            spreadRadius: 1.1,
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            '${ImagePath.path}/progress.png',
            height: 150,
          ),
          SizedBox(width: 20),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Keep Progress',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  'Profile Successful',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
