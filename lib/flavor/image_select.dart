import 'package:flutter/cupertino.dart';
import 'config/config.dart';

class ImageSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String selectImage = "images/neko_";

    if (Config.getString() == "DEVELOP")
      selectImage += "dev.jpg";
    else if (Config.getString() == "STAGING")
      selectImage += "stg.jpg";
    else if (Config.getString() == "RELEASE")
      selectImage += "prd.jpg";

    return Image.asset(selectImage);
  }
}
