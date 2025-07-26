import 'package:flutter/material.dart';
import 'package:untitled/res/constants.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Knowledge',style: TextStyle(color: color1 , fontWeight: FontWeight.bold),),
        ),
        KnowledgeText(knowledge: 'Flutter, Dart'),
        KnowledgeText(knowledge: 'Networking, Cyber Security'),
        KnowledgeText(knowledge: 'Git, Github'),
      ],
    );
  }

}
