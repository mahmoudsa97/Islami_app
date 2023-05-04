import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/quran/item_sura_details.dart';
import 'package:islami_app/theme_mode.dart';

class SuraNameDetails extends StatefulWidget {
  static const String routeName = 'sura_details';

  @override
  State<SuraNameDetails> createState() => _SuraNameDetailsState();
}

class _SuraNameDetailsState extends State<SuraNameDetails> {
  List<String> verses=[];

  @override
  Widget build(BuildContext context) {
    var Args=ModalRoute.of(context)?.settings.arguments as SuraNameDetailsArgs;
    if(verses.isEmpty){
      loadFile(Args.index);
    }

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
                Text('${Args.Name}', style: Theme.of(context).textTheme.displayLarge),
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration(
              color: MyTheme.wightcolor,
              borderRadius: BorderRadius.circular(24),
            ),
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
            padding: EdgeInsets.all(12),
            child:
            verses.length==0?
               Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor),):

            ListView.separated(
                itemBuilder:(context, index) {
                  return ItemSuraDetailsScreen(name: verses[index],index: index,);
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: MyTheme.gokdprimary,
                    thickness: 4,
                  );
                },
                itemCount: verses.length,
            ),
          ),
        ),
      ],
    );
  }

  void loadFile(int index)async{
   String contant=await rootBundle.loadString('assets/files/${index+1}.txt');
   List<String>lines=contant.split('\n');
   verses=lines;
   setState(() {

   });
  }
}
class SuraNameDetailsArgs{
  String Name;
  int index;
  SuraNameDetailsArgs({required this.Name,required this.index});
}
