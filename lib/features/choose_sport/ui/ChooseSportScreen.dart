import 'package:degitalhubsport/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/route/approuter.dart';
import '../../../core/theme/style.dart';
import '../data/model/sports_data.dart';
import 'SportCard.dart';


class ChooseSportScreen extends StatelessWidget {
  const ChooseSportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text(
              'Choose Sport',
              style: TextStyles.title1B
            ),
            verticalSpace(23)
,            Expanded(
              child: GridView.builder(
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two columns
                  crossAxisSpacing: 16.sp,
                  mainAxisSpacing: 16.sp,
                ),
                itemCount: sports.length,
                itemBuilder: (context, index) {
                  final sport = sports[index];
                  return SportCard(
                    name: sport.name,
                    iconPath: sport.iconPath,
                    onTap: () {
                      if (sport.name == 'Volleyball') {
                        context.push(ConstantsRoutes.volleyballHome);
                      }
                   },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
