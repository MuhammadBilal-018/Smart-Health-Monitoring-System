import 'package:flutter/material.dart';

import '../AppBar/app_bar.dart';

class NotificationAlertScreen extends StatefulWidget {
  @override
  _NotificationAlertScreenState createState() =>
      _NotificationAlertScreenState();
}

class _NotificationAlertScreenState extends State<NotificationAlertScreen> {
  bool vibrationEnabled = true; // Initial state for vibration setting
  bool ledNotificationEnabled =
      true; // Initial state for LED notification setting
  String selectedTone =
      'Default'; // Initial state for notification tone selection
  String selectedPriority = 'High'; // Initial state for notification priority

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(title: 'Notification Alert Settings'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                'Notification Settings',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Divider(thickness: 2),
            ListTile(
              title: Text('Notification Tone'),
              trailing: DropdownButton<String>(
                value: selectedTone,
                onChanged: (newValue) {
                  setState(() {
                    selectedTone = newValue!;
                  });
                },
                items: ['Default', 'Tone 1', 'Tone 2', 'Tone 3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            ListTile(
              title: Text('Notification Priority'),
              trailing: DropdownButton<String>(
                value: selectedPriority,
                onChanged: (newValue) {
                  setState(() {
                    selectedPriority = newValue!;
                  });
                },
                items: ['High', 'Medium', 'Low']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            ListTile(
              title: Text('Vibration'),
              trailing: Switch(
                value: vibrationEnabled,
                onChanged: (newValue) {
                  setState(() {
                    vibrationEnabled = newValue;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('LED Notification'),
              trailing: Switch(
                value: ledNotificationEnabled,
                onChanged: (newValue) {
                  setState(() {
                    ledNotificationEnabled = newValue;
                  });
                },
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 200, // Set the width of the buttons here
                    child: ElevatedButton(
                      onPressed: () {
                        // Implement logic to save notification settings here
                        // You can use the selectedTone, selectedPriority,
                        // vibrationEnabled, and ledNotificationEnabled variables
                        // to save user preferences.
                      },
                      child: Text('Save/Apply Changes'),
                    ),
                  ),
                  SizedBox(height: 10), // Add spacing between buttons
                  Container(
                    width: 200, // Set the width of the buttons here
                    child: ElevatedButton(
                      onPressed: () {
                        // Implement logic to reset notification settings to defaults here
                        // You can reset the variables to their initial values.
                      },
                      child: Text('Reset to Defaults'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
