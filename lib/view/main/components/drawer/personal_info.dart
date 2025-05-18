import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding/2,),
        AreaInfoText(title: 'Contact', text: '+91 8141683686'),
        AreaInfoText(title: 'Email', text: 'ankit.ce2018@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: '@ankit-patel-2ab90b229'),
        // AreaInfoText(title: 'Github', text: '@hamad-anwar'),
        SizedBox(
          height: defaultPadding,
        ),
        Text('Skills',style: TextStyle(color: Colors.white),),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
