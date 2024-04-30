import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Посуточная аренда недвижимости',
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Посуточная аренда',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 27.5,
                ),
              ),
              Text(
                'недвижимости',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 27.5,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Colors.lightBlue[50],
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.language, // Globe icon
                            color: Colors.blueAccent,
                          ),
                          SizedBox(
                              width: 15), // Add space between icon and text
                          Text(
                            'Где арендовать',
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          ),
                        ],
                      ),
                      SizedBox(height: 14), // Add small space between the rows
                      Divider(
                          height: 1,
                          color:
                              Colors.grey), // Add a small line between the rows
                      SizedBox(height: 14), // Add small space between the rows
                      Row(
                        children: [
                          Icon(
                            Icons.access_time, // Clock icon
                            color: Colors.blueAccent,
                          ),
                          SizedBox(
                              width: 15), // Add space between icon and text
                          Text(
                            'Когда',
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              CustomButton(
                icon: Icons.home,
                text: 'Мои заселения',
                subText: 'Предстоящие и предыдущие',
                onPressed: () {
                  // Add your logic here
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.key, color: Colors.blue),
              label: 'Снять',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt, color: Colors.blue),
              label: 'Сдать',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.blue),
              label: 'Профиль',
            ),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final String subText;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.subText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: Colors.lightBlue[100],
        elevation: 3,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: Colors.lightBlue[700],
                size: 40, // Increased icon size
              ),
              SizedBox(height: 8),
              Text(
                text,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.lightBlue[700],
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                subText,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
