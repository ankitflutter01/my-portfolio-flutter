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
            const Expanded(
              child: Responsive(
                mobile: AboutInfo(isMobile: true),
                largeMobile: AboutInfo(isMobile: true),
                tablet: AboutInfo(isMobile: false),
                desktop: AboutInfo(isMobile: false),
                extraLargeScreen: AboutInfo(isMobile: false),
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
        // const SizedBox(width: defaultPadding),
        // const Expanded(
        //   child: CircleAvatar(
        //     radius: 80,
        //     backgroundImage: AssetImage('assets/images/profile_img.jpg'), // Your profile image
        //   ),
        // ),
      ],
    );
  }

  List<Widget> _buildContent() {
    return [
      const Text(
        "Hi, I'm Ankit 👋",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white,),
      ),
      const SizedBox(height: defaultPadding),
      const Text(
        "I'm a passionate Flutter developer with experience in building responsive and high-performance apps. "
            "I love solving problems, crafting UI, and learning new tech stacks. Currently, I'm focusing on building cross-platform mobile and web applications.",
        style: TextStyle(fontSize: 16, height: 1.6),
      ),
      const SizedBox(height: defaultPadding),
      const Align(
        alignment: Alignment.center,
        child: Text("Skills", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: primaryColor)),
      ),
      const SizedBox(height: 8),
      const SkillChips(),
      const SizedBox(height: defaultPadding),
      const Align(
        alignment: Alignment.center,
        child: Text("Contact Info", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: primaryColor)),
      ),
      const SizedBox(height: 8),
      const Align(
          alignment: Alignment.center,
          child: ContactInfo()),
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
        label: Text(skill,style: const TextStyle(color: darkColor)),
        backgroundColor: Colors.grey.shade200,
      ))
          .toList(),
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ContactRow(icon: Icons.email, label: 'Email', value: 'ankit.ce2018@gmail.com'),
        SizedBox(height: 8),
        ContactRow(icon: Icons.phone, label: 'Phone', value: '+91 8141683686'),
        SizedBox(height: 8),
        ContactRow(icon: Icons.link, label: 'Website', value: 'https://ankitportfolio.com'),
        // Add more contact rows if needed (LinkedIn, GitHub, etc.)
      ],
    );
  }
}

class ContactRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const ContactRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: primaryColor),
        const SizedBox(width: 12),
        Text(
          '$label: ',
          style: const TextStyle(fontWeight: FontWeight.bold, color: primaryColor),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}