import 'package:flutter/material.dart';
class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key,required this.onTap,});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {

      },
      child: Image.network(
        "https://s3-alpha-sig.figma.com/img/4dfd/16d0/80fbc8f9a3f6ce73896cf8fb559cc1c4?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YsF40CcxvTi86pErIq9gAJ9AdlkfwvQZVepsMzDGFg9fRmb1S~he9EdhiL4YU2ZOQj1qvaiJnrt8FADAxRRM5oDpRmrAZTeIaMOja00GCS1gYPbE~RTxcJ3Di7eyjnYGON2z7Yv7K11RvAuKbZ0imhjKjNhGThtz3FWmI7ED-Sjo3NnCMtfmzndp5ek-j6pgjEfwZpcNIONm1yJVMyAyTZ4qBnDq8BclrD7cftCEimAuUzXV~udjRuVspp08Ff5tuNpXXEZpi1TFp~fVSBlcH90s6~gD2rBbZBhlc2jzuSRS5wIVAVknNO1ggjE199JbjULQjRUBuZwoajYZOdkoSg__",
        fit: BoxFit.cover,
      ),

    );
  }
}
