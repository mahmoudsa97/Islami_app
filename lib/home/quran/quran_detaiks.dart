
import 'package:flutter/material.dart';
import 'package:islami_app/home/quran/suraNameDetails.dart';

class ItemSuraName extends StatelessWidget {
String name;
int Index;
ItemSuraName({required this.name,required this.Index});
   @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      Navigator.of(context).pushNamed(SuraNameDetails.routeName,
          arguments:SuraNameDetailsArgs(Name: name, index: Index)
      );
      },
      child: Text(name,
      style: Theme.of(context).textTheme.titleMedium,
       textAlign: TextAlign.center,
      ),
    );
  }
}
