import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/hadeth_tab.dart';
import 'package:islami_app/home/hadeth/item_hadeth_details.dart';
import 'package:islami_app/home/quran/item_sura_details.dart';

import '../../theme_mode.dart';

class HadethNameDetails extends StatelessWidget {
  static const String routeName='Hadeth_name';

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as HadethContantDatelis;
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/image/main_background.png'),
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title:
            Text('${args.title}', style: Theme.of(context).textTheme.displayLarge),
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration(
              color: MyTheme.wightcolor,
              borderRadius: BorderRadius.circular(24),
            ),
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
            padding: EdgeInsets.all(12),
            child: ListView.builder(
              itemBuilder:(context, index) {
                return ItemHadethDetailsScreen(contant: args.contant[index]);
              },
              itemCount: args.contant.length,
            ),
          ),
        ),
      ],
    );
  }
}
