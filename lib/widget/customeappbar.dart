import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    Key? key,
    required BuildContext context,
    required String title,
    List<Widget>? actions,
  }) : super(
         key: key,
         title: Text(title),
         actions: actions,
         leading: Navigator.canPop(context)
             ? IconButton(
                 icon: Icon(Icons.arrow_back_ios_new),
                 onPressed: () => Navigator.of(context).pop(),
               )
             : null,
       );
}
