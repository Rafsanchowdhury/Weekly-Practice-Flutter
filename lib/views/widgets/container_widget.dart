import 'package:flutter/material.dart';
import '../../data/constants.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 10.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: KTextStyle.titleTealText,
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: KTextStyle.descriptionText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
