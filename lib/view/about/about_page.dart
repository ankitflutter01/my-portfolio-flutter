import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isLargeMobile(context)) const SizedBox(height: defaultPadding),
            const TitleText(prefix: 'About', title: 'Me'),
            const SizedBox(height: defaultPadding),
            Expanded(
              child: Responsive(
                mobile: const AboutInfo(isMobile: true),
                largeMobile: const AboutInfo(isMobile: true),
                tablet: const AboutInfo(isMobile: false),
                desktop: const AboutInfo(isMobile: false),
                extraLargeScreen: const AboutInfo(isMobile: false),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutInfo extends StatelessWidget {
  final bool isMobile;

  const AboutInfo({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return isMobile
        ? SingleChildScrollView(
      child: Column(
        children: _buildContent(),
      ),
    )
        : Row(
      children: [
        Expanded(flex: 2, child: Column(children: _buildContent())),
        const SizedBox(width: defaultPadding),
        Expanded(
          child: CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/profile_img.jpg'), // Your profile image
          ),
        ),
      ],
    );
  }

  List<Widget> _buildContent() {
    return [
      const Text(
        "Hi, I'm Ankit 👋",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: defaultPadding),
      const Text(
        "I'm a passionate Flutter developer with experience in building responsive and high-performance apps. "
            "I love solving problems, crafting UI, and learning new tech stacks. Currently, I'm focusing on building cross-platform mobile and web applications.",
        style: TextStyle(fontSize: 16, height: 1.6),
      ),
      const SizedBox(height: defaultPadding),
      const Align(
        alignment: Alignment.centerLeft,
        child: Text("Skills", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
      const SizedBox(height: 8),
      const SkillChips(),
      const SizedBox(height: defaultPadding),
      ElevatedButton.icon(
        onPressed: () {
          // TODO: implement download resume logic
        },
        icon: const Icon(Icons.download),
        label: const Text("Download Resume"),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber[700],
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        ),
      )
    ];
  }
}

class SkillChips extends StatelessWidget {
  const SkillChips({super.key});

  final skills = const [
    'Flutter',
    'Dart',
    'Firebase',
    'REST API',
    'Git & GitHub',
    'GetX',
    'Riverpod',
    'Figma',
    'Responsive UI',
    'Node.js',
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: skills
          .map((skill) => Chip(
        label: Text(skill),
        backgroundColor: Colors.grey.shade200,
      ))
          .toList(),
    );
  }
}