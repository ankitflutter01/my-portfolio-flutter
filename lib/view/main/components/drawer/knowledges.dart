import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Knowledge',style: TextStyle(color: Colors.white),),
        ),
        KnowledgeText(knowledge: 'Flutter SDK & Widgets'),
        KnowledgeText(knowledge: 'Dart Programming Language'),
        KnowledgeText(knowledge: 'State Management'),
        KnowledgeText(knowledge: 'API Integration'),
        KnowledgeText(knowledge: 'Firebase Integration'),
        KnowledgeText(knowledge: 'Architecture Patterns'),
        KnowledgeText(knowledge: 'Responsive & Adaptive UI'),
        KnowledgeText(knowledge: 'Local Data Persistence'),
        KnowledgeText(knowledge: 'Version Control'),
        KnowledgeText(knowledge: 'Testing & Debugging'),
        KnowledgeText(knowledge: 'App Deployment'),
        KnowledgeText(knowledge: 'Performance Optimization'),
      ],
    );
  }

}
