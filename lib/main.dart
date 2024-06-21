import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'My Profile',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              //Search Box

              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[300],
                    filled: true,
                    prefixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide.none),
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 20,
              ),

              Card(
                color: Colors.grey[300],
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kavin Kumar S',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.verified,
                                color: Colors.green,
                              ),
                              Text(
                                '20IT016',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.bloodtype,
                                color: Colors.red,
                              ),
                              Text(
                                'A1 +ve',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/kavinkumar.jpg'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //divider
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.blue,
                  thickness: 5,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                height: 370,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      buildCard(Icon(Icons.check_box), 'User Details'),
                      buildCard(Icon(Icons.key), 'Update Password'),
                      buildCard(Icon(Icons.book), 'Syllabus'),
                      buildCard(Icon(Icons.calendar_month), 'Attendance'),
                      buildCard(Icon(Icons.settings), 'Settings'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(icon, title) {
    return Card(
      color: Colors.grey[300],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListTile(
          leading: icon,
          trailing: Icon(Icons.arrow_forward_ios_outlined),
          title: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
