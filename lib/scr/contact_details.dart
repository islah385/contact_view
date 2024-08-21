import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactDetails extends StatelessWidget {
  String? name;
  String? phone;
  String? email;

  ContactDetails({super.key, required this.name, required this.phone,required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Details'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Icon(Icons.person_2,size: 75,),
              decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(50)),
              ),
              SizedBox(height: 50,),
            Container(
              padding: EdgeInsets.all(5),
              height: 50,
              width: 250,
              child: Center(
                child: Text(
                  'Name: $name}',
                  style: TextStyle(),
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal),
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(5),
              height: 50,
              width: 250,
              child: Center(
                child: Text(
                  'Phone No.: $phone',
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal),
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(5),
              height: 50,
              width: 250,
              child: Center(
                child: Text(
                  'Email: $email',
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal),
                  borderRadius: BorderRadius.circular(10)),
            )
          ],
        ),
      ),
    );
  }
}
