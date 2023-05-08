import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/hadeth_tab.dart';
import 'package:islami_app/home/quran/quran_tab.dart';
import 'package:islami_app/home/radio_tab.dart';
import 'package:islami_app/home/tasbeh_tab.dart';
import 'package:islami_app/theme_mode.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home_Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
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
                Text('islami', style: Theme.of(context).textTheme.displayLarge),
            centerTitle: true,
          ),
          bottomNavigationBar:Theme(
            data: Theme.of(context).copyWith(
              canvasColor:MyTheme.gokdprimary
            ),
            child: BottomNavigationBar(
              currentIndex:selectedIndex ,
              onTap: (index){
                selectedIndex=index;
                setState(() {

                });
              },

              items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/image/quran.png')),
                      label:'Quran'
                  ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/image/ic_hedeth.png')),
                  label:'Hadeth'
              ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/image/sebha.png')),
                  label:'Tasbeh'
              ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/image/radio.png')),
                  label:'Radio'
              ),
                ],
            ),
          ) ,
          body: Tabs[selectedIndex],

        )
      ],
    );
  }
  List<Widget> Tabs=[
  QuranTab(),HadethTab(),TasbehTab(), RadioTab(),
  ];
}
