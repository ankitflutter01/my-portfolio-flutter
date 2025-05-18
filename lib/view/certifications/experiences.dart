import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/experience_controller.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/certifications/components/certification_grid.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';
import 'package:get/get.dart';

class Experience extends StatelessWidget {
  final controller = Get.put(ExperienceController());

  Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context)) const SizedBox(height: defaultPadding),
          const TitleText(prefix: 'Work ', title: 'Experience'),
          const SizedBox(height: defaultPadding),
          Expanded(
              child: Responsive(
                desktop: ExperienceGrid(crossAxisCount: 3, ratio: 1.5),
                extraLargeScreen: ExperienceGrid(crossAxisCount: 4, ratio: 1.6),
                largeMobile: ExperienceGrid(crossAxisCount: 1, ratio: 1.8),
                mobile: ExperienceGrid(crossAxisCount: 1, ratio: 1.4),
                tablet: ExperienceGrid(crossAxisCount: 2, ratio: 1.7),
              )),
        ],
      ),
    );
  }
}