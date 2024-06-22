import 'package:flutter/material.dart';
import 'package:website/widgets/site_logo.dart';
class HeaderMobile extends StatelessWidget{
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1700,
      height: 70,
      decoration: const BoxDecoration(color: Color(0xFF0C421F)),
      child: Row(
        children: [
          SiteLogo(
              onTap: (){} // Corrected the onTap callback
          ),
          const Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(
              Icons.menu,
              color: Colors.white, // Set the color to white
            ),
          ),
          const SizedBox(width: 15), // Added const to SizedBox for optimization
        ],
      ),
    );
  }
}
