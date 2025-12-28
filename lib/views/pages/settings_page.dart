import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();

  bool isChecked = true;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem = 'e0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 5),
                      content: Text('Snackbar'),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                child: Text('Open Snackbar'),
              ),
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(
                    value: 'e0',
                    child: Text('Select Option'),
                  ),
                  DropdownMenuItem(
                    value: 'e1',
                    child: Text('Element 1'),
                  ),
                  DropdownMenuItem(
                    value: 'e2',
                    child: Text('Element 2'),
                  ),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onEditingComplete: () {
                  setState(() {});
                  print('Editing complete');
                },
              ),
              const SizedBox(height: 10),
              Text(controller.text),
              Checkbox(
                tristate: true,
                value: isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    isChecked = newValue ?? false;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Click me'),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              Switch(
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              SwitchListTile.adaptive(
                title: const Text('Switch me'),
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              const SizedBox(height: 10),
              Slider.adaptive(
                max: 10.0,
                divisions: 10,
                value: sliderValue,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                  print(value);
                },
              ),
              InkWell(
                splashColor: Colors.teal,
                onTap: () {
                  print('Image Selected');
                },
                child: Container(
                  height: 30,
                  width: double.infinity,
                  color: Colors.green,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text('Click me'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Click me'),
              ),
              FilledButton(
                onPressed: () {},
                child: Text('Click me'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Click me'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Click me'),
              ),
              CloseButton(),
              BackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
