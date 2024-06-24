// home_page.dart
import 'package:flutter/material.dart';
import 'package:website/widgets/drawer_mobile.dart';
import 'package:website/widgets/header_desktop.dart';
import 'package:website/widgets/header_mobile.dart';
import '../widgets/desktop_enquiry_form.dart';
import '../widgets/mobile_enquiry_form.dart';
import '../widgets/tablet_enquiry_form.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  // Define a list of image paths
  List<String> imagePaths = [
    'assets/saloon.png',
    'assets/tato.jpg',
    'assets/hotels.jpg',
    'assets/yoga.jpg',
    'assets/doctor.jpg',
    'assets/school.jpg',
  ];
  List<String> serviceNames = [
    'Saloon',
    'Tatoo',
    'Hotels',
    'Yoga',
    'Doctor',
    'Schools',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: DrawerMobile(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                // Display desktop header if screen width is greater than 800
                return HeaderDesktop();
              } else {
                // Display mobile header if screen width is less than or equal to 800
                return HeaderMobile(
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                );
              }
            },
          ),
          Container(
            height: 700,
            decoration: BoxDecoration(color: Color(0xFFD6E6C2)),
            child: Padding(
              padding: EdgeInsets.only(left: 30.0, top: 90.0), // Adjust left padding and top padding as needed
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'SAMAY\nONE-SOLUTION',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 64,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 1.0, // Adjust line height as needed
                                letterSpacing: -1.28,
                              ),
                            ),
                            SizedBox(height: 90.0), // Adjust vertical spacing as needed
                            Text(
                              'ALL- IN - ONE Book different\nAppointments at one place.',
                              style: TextStyle(
                                color: Color(0xFF224F34),
                                fontSize: 50,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 1.0, // Adjust line height as needed
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20), // Adjust horizontal spacing between text and image
                      Container(
                        width: 341,
                        height: 266, // Adjust height of the image container as needed
                        child: Image.asset(
                          'assets/webimg.png', // Replace with your image path
                          fit: BoxFit.cover, // Adjust the fit as needed
                          width: 200, // Adjust width of the image as needed
                          height: 200, // Adjust height of the image as needed
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 1400,
            width: 900,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Text(
                    'Booking Services',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0.03,
                      letterSpacing: -0.80,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.white, // Replace with your grid view background color
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: imagePaths.length, // Use the length of your imagePaths list
                    itemBuilder: (BuildContext context, int index) {
                      // Use imagePaths[index] to load different images
                      return GridTile(
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Image.asset(
                            imagePaths[index], // Load image dynamically based on index
                            fit: BoxFit.cover,
                          ),
                        ),
                        footer: Container(
                          color: Colors.white.withOpacity(0.7),
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            serviceNames[index],
                            style: TextStyle(fontSize: 16, color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Text(
                  'Samay is an all-in-one super app designed to simplify the appointment\n booking process across various services, including doctors, salons, spas, gyms, yoga classes, job searches, tattoo artists, events, school appointments, hotels, and restaurants. Users can effortlessly schedule appointments, manage their booking history, and store medical records in one unified platform.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              width: 1513,
              height: 871,
              decoration: BoxDecoration(color: Color(0xFFCCFF8D)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 400,
                    ),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        if (constraints.maxWidth < 600) {
                          return MobileEnquiryForm();
                        } else if (constraints.maxWidth < 1200) {
                          return TabletEnquiryForm();
                        } else {
                          return DesktopEnquiryForm();
                        }
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 300,
            color: Colors.black,
            child: Center(
              child: Text(
                'Additional Section',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
