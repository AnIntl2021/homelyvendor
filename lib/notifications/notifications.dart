import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Important Notifications"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  child: (Column(
                    children: [
                      const Text(
                        "Payment Reminder",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        "July Month Payment is due on 04/10/2021",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Pay Now"))
                    ],
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  child: (Column(
                    children: [
                      const Text(
                        "You Did not Turn on Your Shop Yet",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        "Your Shop timing is 5 but still your shop is isnactive",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Turn On NOw"))
                    ],
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  child: (Column(
                    children: [
                      const Text(
                        "You Are Blocked",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        "Due to Non Payment your Shop is Blocked",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Pay Now"))
                    ],
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
