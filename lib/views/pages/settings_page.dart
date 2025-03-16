import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // remove automatic flutter back btn
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Text(controller.text),
              Checkbox(
                tristate: true,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              CheckboxListTile(
                tristate: true,
                title: Text('Click me'),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
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
              Slider(
                value: sliderValue,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
              GestureDetector(
                onTap: () {
                  print('Image Selected');
                },
                child: Image.asset('assets/images/mac2.jpg'),
              ),
              InkWell(
                splashColor: Colors.teal,
                onTap: () {
                  print('Container Selected');
                },
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.white12,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 5),
                      content: Text('Snack bar'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text('Button'),
              ),
              Divider(
                color: Colors.teal,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Alert'),
                        content: Text('Some description'),
                        actions: [
                          FilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text('Button Dialog'),
              ),
              CloseButton(),
            ],
          ),
        ),
      ),
    );
  }
}
