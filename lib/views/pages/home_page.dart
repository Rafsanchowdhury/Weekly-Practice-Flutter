import 'package:flutter/material.dart';
import 'package:my_app/widgets/hero_widget.dart';
import '../../data/constants.dart';
import '../widgets/container_widget.dart';
import 'course_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> list = [
      KValue.keyConcepts,
      KValue.cleanUi,
      KValue.fixBugs,
      KValue.basicLayout,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(
              title: 'Rafsan',
              nextPage: () => CoursePage(),
            ),
            ...List.generate(
              list.length,
              (index) {
                return ContainerWidget(
                  title: list.elementAt(index),
                  description: 'This is a description',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
