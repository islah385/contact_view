import 'package:contact_view/scr/contact_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final _formKey = GlobalKey<FormState>();

  List<Map<String, String>> contacts = [
    {
      'name': 'John Doe',
      'phone': '+1 555-1234',
      'email': 'john.doe@example.com',
    },
    {
      'name': 'Jane Smith',
      'phone': '+1 555-5678',
      'email': 'jane.smith@example.com',
    },
    {
      'name': 'Alice Johnson',
      'phone': '+1 555-8765',
      'email': 'alice.johnson@example.com',
    },
    {
      'name': 'Bob Brown',
      'phone': '+1 555-4321',
      'email': 'bob.brown@example.com',
    },
    {
      'name': 'Charlie Davis',
      'phone': '+1 555-6789',
      'email': 'charlie.davis@example.com',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Home'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            // key: _formKey,
            child: Center(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Text(
                            contacts[index]['name'].toString(),
                            style: TextStyle(fontSize: 25),
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ContactDetails(name: contacts[index]['name'].toString(), phone: contacts[index]['phone'].toString(),email: contacts[index]['email'].toString(),),
                                    ));
                              },
                              icon: Icon(Icons.contact_page))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ));
  }
}
