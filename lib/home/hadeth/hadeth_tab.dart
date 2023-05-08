import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/hadeth/hadeth_detaiks.dart';

import '../../theme_mode.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethContantDatelis> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    loadHadethFiles();
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image(
            image: AssetImage('assets/image/hadeth_image.png'),
          ),
        ),
        Divider(
          color: MyTheme.gokdprimary,
          thickness: 4,
        ),
        Text('Hadeth Name', style: Theme.of(context).textTheme.titleMedium),
        Divider(
          color: MyTheme.gokdprimary,
          thickness: 4,
        ),
        Expanded(
          flex: 2,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return HadethItem(hadethContantDatelis: allHadeth[index]);
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: MyTheme.gokdprimary,
                thickness: 4,
              );
            },
            itemCount: allHadeth.length,
          ),
        )
      ],
    );
  }

  void loadHadethFiles() async {
    String Hadethcontant =
        await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> allHadethItem = Hadethcontant.split('#\r\n');

    for (int i = 0; i < allHadethItem.length; i++) {
      print(allHadethItem[i]);
      List<String> hadethcontabt = allHadethItem[i].split('\n');
      String title = hadethcontabt[0];
      hadethcontabt.removeAt(0);
      HadethContantDatelis hadethContantDatelis =
          HadethContantDatelis(title: title, contant: hadethcontabt);
      allHadeth.add(hadethContantDatelis);
    }
    setState(() {});
  }
}

class HadethContantDatelis {
  String title;
  List<String> contant;
  HadethContantDatelis({required this.title, required this.contant});
}
