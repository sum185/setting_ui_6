import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_ui_6/screen/provider/HomeProvider.dart';

class AndroidPage extends StatefulWidget {
  const AndroidPage({Key? key}) : super(key: key);

  @override
  State<AndroidPage> createState() => _AndroidPageState();
}

class _AndroidPageState extends State<AndroidPage> {
  HomeProvider? providerT;
  HomeProvider? providerF;

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<HomeProvider>(context, listen: true);
    providerF = Provider.of<HomeProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Settings UI",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Common",
                    style:
                        TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  )),
            ),
            Container(
              height: 150,
              width: double.infinity,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: providerF!.i2.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    ListTile(
                      leading: providerF!.i2[index].icon,
                      title: Text("${providerF!.i2[index].name}"),
                      subtitle: Text("${providerF!.i2[index].name2}"),
                    ),
                    Divider(thickness: 1,)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Account",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: providerF!.i3.length,itemBuilder: (context, index) => Column(
                  children: [
                    ListTile(
                    leading: providerF!.i3[index].icon,
                    title: Text("${providerF!.i3[index].name}"),
              ),
                    Divider(thickness: 1,)
                  ],
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Secutiry",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: providerF!.i4.length,itemBuilder: (context, index) {
                return Column(
                  children: [
                    SwitchListTile(
                      title: Text("${providerF!.i4[index].name}"),
                        secondary: providerF!.i4[index].icon,
                        activeColor: Colors.red,
                        value: providerF!.b1[index], onChanged: (value){
                      providerF!.swi(value, index);
                    }),
                    Divider(thickness: 1,)
                  ],
                );
              },),
            )
          ],
        ),
      ),
    );
  }
}
