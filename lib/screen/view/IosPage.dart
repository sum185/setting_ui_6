import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_ui_6/screen/provider/HomeProvider.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

class IosPage extends StatefulWidget {
  const IosPage({Key? key}) : super(key: key);

  @override
  State<IosPage> createState() => _IosPageState();
}

class _IosPageState extends State<IosPage> {
  HomeProvider? providerT;
  HomeProvider? providerF;

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<HomeProvider>(context, listen: true);
    providerF = Provider.of<HomeProvider>(context, listen: false);
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.lightBackgroundGray,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.red,
        middle: Text(
          "Setting UI",
          style: TextStyle(color: CupertinoColors.white),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Common",
                    style: TextStyle(color: CupertinoColors.inactiveGray),
                  )),
            ),
            Container(
                height: 110,
                width: double.infinity,
                color: CupertinoColors.white,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: providerF!.a1.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CupertinoListTile(
                          title: Text("${providerF!.a1[index].name}"),
                          leading: Icon(
                            providerF!.a1[index].icon,
                            color: CupertinoColors.inactiveGray,
                          ),
                          trailing: Row(
                            children: [
                              Text(
                                "${providerF!.a1[index].name2}",
                                style: TextStyle(
                                    color: CupertinoColors.inactiveGray),
                              ),
                              Icon(
                                CupertinoIcons.forward,
                                color: CupertinoColors.inactiveGray,
                              )
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 0.5,
                        )
                      ],
                    );
                  },
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Account",
                    style: TextStyle(color: CupertinoColors.inactiveGray),
                  )),
            ),
            Container(
              height: 170,
              width: double.infinity,
              color: CupertinoColors.white,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: providerF!.a2.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CupertinoListTile(
                        title: Text("${providerF!.a2[index].name}"),
                        trailing: Icon(
                          CupertinoIcons.forward,
                          color: CupertinoColors.inactiveGray,
                        ),
                        leading: Icon(
                          providerF!.a2[index].icon,
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                      Divider(
                        thickness: 0.5,
                      )
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Secutiry",
                    style: TextStyle(color: CupertinoColors.inactiveGray),
                  )),
            ),
            Container(
                height: 170,
                width: double.infinity,
                color: CupertinoColors.white,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: providerF!.a3.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CupertinoListTile(
                          title: Text("${providerF!.a3[index].name}"),
                          leading: Icon(
                            providerF!.a3[index].icon,
                            color: CupertinoColors.inactiveGray,
                          ),
                          trailing: CupertinoSwitch(
                            activeColor: CupertinoColors.destructiveRed,
                            value: providerF!.b1[index],
                            onChanged: (value) {
                              providerF!.swi(value, index);
                            },
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        )
                      ],
                    );
                  },
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Misc",
                    style: TextStyle(color: CupertinoColors.inactiveGray),
                  )),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: CupertinoColors.white,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: providerF!.a4.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CupertinoListTile(
                          title: Text("${providerF!.a4[index].name}"),
                      leading: Icon(providerF!.a4[index].icon,color: CupertinoColors.inactiveGray,),
                        trailing: Icon(CupertinoIcons.forward,color: CupertinoColors.inactiveGray,),
                      ),
                      Divider(thickness: 1,)
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
