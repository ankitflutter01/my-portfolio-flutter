import 'package:flutter/material.dart';
import 'package:flutter_portfolio/model/certificate_model.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:get/get.dart';
import '../../../view model/getx_controllers/experience_controller.dart';

class ExperienceGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;
  final controller = Get.find<ExperienceController>();

  ExperienceGrid({
    super.key,
    required this.crossAxisCount,
    required this.ratio,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: experienceList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: ratio,
      ),
      padding: const EdgeInsets.all(defaultPadding),
      itemBuilder: (context, index) {
        final exp = experienceList[index];
        return InkWell(
          onHover: (value) {
            controller.onHover(index, value);
          },
          child: MouseRegion(
            onEnter: (_) => controller.onHover(index, true),
            onExit: (_) => controller.onHover(index, false),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                      colors: [
                        Colors.pink,
                        Colors.blue.shade900,
                      ]
                  ),
                  boxShadow:const [
                    BoxShadow(color: Colors.blue,offset: Offset(0, -1),blurRadius: 5),
                    BoxShadow(color: Colors.red,offset: Offset(0, 1),blurRadius: 5),
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(exp.role,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
                  const SizedBox(height: 4),
                  Text(exp.organization,
                      style: const TextStyle(fontSize: 14, color: Colors.amber, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 2),
                  Text(exp.duration, style: const TextStyle(fontSize: 12, color: Colors.white60)),
                  const SizedBox(height: 10),
                  Expanded(
                    child: Text(
                      exp.description,
                      style: const TextStyle(fontSize: 13, color: Colors.white70),
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}


class ExperienceStack extends StatelessWidget {
  final controller = Get.put(ExperienceController());
  ExperienceStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    final exp = experienceList[index];
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
          padding: const EdgeInsets.all(defaultPadding),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: bgColor),
          duration: const Duration(milliseconds: 500),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(exp.role,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
                const SizedBox(height: 4),
                Text(exp.organization,
                    style: const TextStyle(fontSize: 14, color: Colors.amber, fontWeight: FontWeight.w600)),
                const SizedBox(height: 2),
                Text(exp.duration, style: const TextStyle(fontSize: 12, color: Colors.white60)),
                const SizedBox(height: 10),
                Text(
                  exp.description,
                  style: const TextStyle(fontSize: 13, color: Colors.white70),
                  overflow: TextOverflow.fade,
                ),
              ],
            ),
          )),
    );
  }
}