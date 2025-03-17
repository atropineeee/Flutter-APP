import 'package:flutter/material.dart';

class NTPanel extends StatelessWidget {
  const NTPanel({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 255, 175, 5),
              Color.fromARGB(255, 190, 170, 5),
              Color.fromARGB(255, 65, 140, 5)
            ],
          ),
        ),
        child: Container(
          color: const Color.fromARGB(80, 0, 0, 0),
          padding: EdgeInsets.all(screenWidth * 0.025),
          child: const NotificationList(),
        ),
      ),
    );
  }
}

class NotificationList extends StatefulWidget {
  const NotificationList({super.key});

  @override
  NotificationListState createState() => NotificationListState();
}

class NotificationListState extends State<NotificationList> {
  List<String> notifications =
      List.generate(10, (index) => 'Notification ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 4),
          child: ListTile(
            leading: Icon(Icons.notifications, color: Colors.blue),
            title: Text(
              notifications[index],
              style: TextStyle(
                  fontFamily: "CenturyGothic", fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'This is a notification message.',
              style: TextStyle(
                fontFamily: "CenturyGothic",
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                setState(() {
                  notifications.removeAt(index);
                });
              },
            ),
            onTap: () {},
          ),
        );
      },
    );
  }
}
