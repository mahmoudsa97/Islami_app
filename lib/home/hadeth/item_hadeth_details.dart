
import 'package:flutter/material.dart';

class ItemHadethDetailsScreen extends StatelessWidget {
String contant;
ItemHadethDetailsScreen({required this.contant});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Text( contant,
       style: Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center,
        textDirection:TextDirection.rtl ,

      ),
    );
  }
}
