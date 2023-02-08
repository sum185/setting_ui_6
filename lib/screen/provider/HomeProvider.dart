import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:setting_ui_6/screen/model/HomeModel.dart';
import 'package:setting_ui_6/screen/view/AndroidPage.dart';
import 'package:setting_ui_6/screen/view/IosPage.dart';

class HomeProvider extends ChangeNotifier{
  List b1=[false,false,false];
List v1= [AndroidPage(),IosPage()];
List<HomeModel> i2= [
  HomeModel(name: "Language",name2: "English",icon: Icon(Icons.language,color: Colors.grey,)),
  HomeModel(name: "Environment",name2: "Production",icon: Icon(Icons.wb_cloudy_outlined,color: Colors.grey,)),
];
List<HomeModel> i3=[
  HomeModel(name: "Phone number",icon: Icon(Icons.call,color: Colors.grey,)),
  HomeModel(name: "Email",icon: Icon(Icons.email_rounded,color: Colors.grey,)),
  HomeModel(name: "Sign out",icon: Icon(Icons.exit_to_app,color: Colors.grey,)),
];
List<HomeModel> i4=[
  HomeModel(icon: Icon(Icons.phonelink_lock,color: Colors.grey,),name: "Lock app in background",),
  HomeModel(icon: Icon(Icons.fingerprint,color: Colors.grey,),name: "Use fingerprint",),
  HomeModel(icon: Icon(Icons.lock,color: Colors.grey,),name: "Change password",),
];
List<HomeModel> a1=[
  HomeModel(icon: CupertinoIcons.globe,name: "Language",name2: "English"),
  HomeModel(icon: CupertinoIcons.cloud,name: "Environment",name2: "Production"),
];
List<HomeModel> a2=[
  HomeModel(icon: CupertinoIcons.phone_fill,name: "Phone number"),
  HomeModel(icon: CupertinoIcons.mail_solid,name: "Email"),
  HomeModel(icon: CupertinoIcons.square_arrow_right,name: "Sign out"),
];
List<HomeModel> a3=[
  HomeModel(icon: Icons.phonelink_lock,name: "Lock app in background"),
  HomeModel(icon: Icons.fingerprint,name: "Use fingerprint"),
  HomeModel(icon: Icons.lock,name: "Change password"),
];
List<HomeModel> a4=[
  HomeModel(name: "Terms of Service",icon: CupertinoIcons.doc_text_fill),
  HomeModel(name: "Open source licenses",icon: Icons.collections_bookmark_rounded),
];
int i=0;
void select(int index)
{
  i=index;
  notifyListeners();
}
void swi(bool value,index){
  b1[index]=value;
  notifyListeners();
}

}