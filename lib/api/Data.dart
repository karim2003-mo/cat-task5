import 'package:task4/api/api.dart';

class Data{
  String  name ;
  String image ;
  String messagedate="";
  String messagetime="";
  String latestmessage ;
  int unreadedmessages ;
  bool islatestmessagereaded ;
  Data({
    required String lastchattime,
    required this.latestmessage,
    required this.name,
    required this.image,
    required this.unreadedmessages,
    required this.islatestmessagereaded,
  }){
    messagedate=lastchattime.substring(0,lastchattime.indexOf("T"));
    messagetime=lastchattime.substring(lastchattime.indexOf("T")+1,lastchattime.indexOf("Z"));
    image=Api.BASE_URL + image;
  }

}