import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_ui_6/screen/provider/HomeProvider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeProvider? providerT;
  HomeProvider? providerF;
  @override
  Widget build(BuildContext context) {
    providerT =Provider.of<HomeProvider>(context,listen: true);
    providerF =Provider.of<HomeProvider>(context,listen: false);
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: providerF!.v1.elementAt(providerF!.i),
          ),
          bottomNavigationBar: BottomNavigationBar(
             items: [
               BottomNavigationBarItem(icon: Icon(Icons.android,color: Colors.green,),label: "Android"),
               BottomNavigationBarItem(icon: Icon(Icons.apple,color: Colors.black,),label: "IOS"),
             ],
            currentIndex: providerF!.i,
            selectedItemColor: Colors.amber,
            onTap: (value){
               providerF!.select(value);
            },
          ),
        )
    );
  }
}
