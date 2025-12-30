import 'package:flutter/material.dart';
import 'package:my_app/widgets/hero_widget.dart';

import '../widgets/container_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroWidget(
                title: 'Rafsan',
              ),
              ContainerWidget(
                title: 'Basic Layout',
                description:
                    'This is a simple Flutter application demonstrating basic layout and navigation concepts.',
              ),
              ContainerWidget(
                title: 'Basic Layout',
                description:
                    'This is a simple Flutter application demonstrating basic layout and navigation concepts.',
              ),
              ContainerWidget(
                title: 'Basic Layout',
                description:
                    'This is a simple Flutter application demonstrating basic layout and navigation concepts.',
              ),
              ContainerWidget(
                title: 'Basic Layout',
                description:
                    'This is a simple Flutter application demonstrating basic layout and navigation concepts.',
              ),
              ContainerWidget(
                title: 'Basic Layout',
                description:
                    'This is a simple Flutter application demonstrating basic layout and navigation concepts.',
              ),
              ContainerWidget(
                title: 'Basic Layout',
                description:
                    'This is a simple Flutter application demonstrating basic layout and navigation concepts.',
              ),
              ContainerWidget(
                title: 'Basic Layout',
                description:
                    'This is a simple Flutter application demonstrating basic layout and navigation concepts.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
