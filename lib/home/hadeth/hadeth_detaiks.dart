
import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/hadeth_name_details.dart';

import 'hadeth_tab.dart';


class HadethItem extends StatelessWidget {
  HadethContantDatelis hadethContantDatelis;

HadethItem({required this.hadethContantDatelis});
   @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      Navigator.of(context).pushNamed(HadethNameDetails.routeName,
        arguments: hadethContantDatelis,
      );
      },
      child: Text(hadethContantDatelis.title,
      style: Theme.of(context).textTheme.titleMedium,
       textAlign: TextAlign.center,
      ),
    );
  }
}
