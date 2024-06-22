import 'package:flutter/material.dart';
import 'package:website/constants/colors.dart';
import 'package:website/widgets/site_logo.dart';
import '../constants/nav_items.dart';

class HeaderDesktop extends StatefulWidget {
  const HeaderDesktop({super.key});

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}
class _HeaderDesktopState extends State<HeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 1700,
          height: 70,
          decoration: const BoxDecoration(color: Color(0xFF0C421F)),
          child: Row(
            children: [
            SiteLogo(onTap: (){

            },),

              const Spacer(),
              for (int i = 0; i < navTitles.length; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      navTitles[i],
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),
        ),

      ],
    );
  }
}
