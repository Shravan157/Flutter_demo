// Time and Date in Flutter


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'DateTime Demo',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),

                // ── BASIC DATE & TIME ──
                sectionTitle('Basic Date & Time'),
                infoRow('Year',        '${time.year}'),
                infoRow('Month',       '${time.month}'),
                infoRow('Day',         '${time.day}'),
                infoRow('Hour',        '${time.hour}'),
                infoRow('Minute',      '${time.minute}'),
                infoRow('Second',      '${time.second}'),
                infoRow('Millisecond', '${time.millisecond}'),
                infoRow('Microsecond', '${time.microsecond}'),

                SizedBox(height: 20),

                // ── WEEK & TIMEZONE ──
                sectionTitle('Week & Timezone'),
                infoRow('Weekday (1=Mon, 7=Sun)', '${time.weekday}'),
                infoRow('Day of Year',            '${time.difference(DateTime(time.year, 1, 1)).inDays + 1}'),
                infoRow('Timezone',               time.timeZoneName),
                infoRow('Is UTC?',                '${time.isUtc}'),
                infoRow('UTC time',               '${time.toUtc()}'),

                SizedBox(height: 20),

                // ── SPECIFIC DATE CREATION ──
                sectionTitle('Creating Specific Dates'),
                infoRow('Custom Date',     '${DateTime(2000, 1, 1)}'),
                infoRow('With Time',       '${DateTime(2000, 1, 1, 10, 30, 0)}'),
                infoRow('From Timestamp',  '${DateTime.fromMillisecondsSinceEpoch(0)}'),

                SizedBox(height: 20),

                // ── ADD & SUBTRACT ──
                sectionTitle('Add & Subtract'),
                infoRow('+5 days',    '${time.add(Duration(days: 5))}'),
                infoRow('-5 days',    '${time.subtract(Duration(days: 5))}'),
                infoRow('+2 hours',   '${time.add(Duration(hours: 2))}'),
                infoRow('+30 mins',   '${time.add(Duration(minutes: 30))}'),

                SizedBox(height: 20),

                // ── DIFFERENCE BETWEEN DATES ──
                sectionTitle('Difference Between Dates'),
                infoRow('Days since 2000',    '${time.difference(DateTime(2000, 1, 1)).inDays}'),
                infoRow('Hours since 2000',   '${time.difference(DateTime(2000, 1, 1)).inHours}'),
                infoRow('Mins since 2000',    '${time.difference(DateTime(2000, 1, 1)).inMinutes}'),

                SizedBox(height: 20),

                // ── COMPARISON ──
                sectionTitle('Comparing Dates'),
                infoRow('isBefore 2030?',  '${time.isBefore(DateTime(2030, 1, 1))}'),
                infoRow('isAfter 2000?',   '${time.isAfter(DateTime(2000, 1, 1))}'),
                infoRow('isAtSameMomentAs?','${time.isAtSameMomentAs(time)}'),

                SizedBox(height: 20),

                // ── FORMATTING ──
                sectionTitle('Formatting'),
                infoRow('toString()',      time.toString()),
                infoRow('toIso8601',       time.toIso8601String()),
                infoRow('Date only',       '${time.year}-${time.month.toString().padLeft(2,'0')}-${time.day.toString().padLeft(2,'0')}'),
                infoRow('Time only',       '${time.hour.toString().padLeft(2,'0')}:${time.minute.toString().padLeft(2,'0')}:${time.second.toString().padLeft(2,'0')}'),

                SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      time = DateTime.now(); // refresh all values
                    });
                  },
                  child: Text('Refresh Time'),
                ),

                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ── HELPER WIDGETS ──
  Widget sectionTitle(String title) {
    return Container(
      width: double.infinity,
      color: Colors.blue.shade100,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
      ),
    );
  }

  Widget infoRow(String label, String value) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 14, color: Colors.grey.shade700)),
          Text(value, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
