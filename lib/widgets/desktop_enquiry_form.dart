// desktop_enquiry_form.dart
import 'package:flutter/material.dart';

class DesktopEnquiryForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.black),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Enquiry Form',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: 'Name',
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Mobile',
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Question',
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            maxLines: 5,
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Add submit action here
              },
              child: Text('Submit', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
