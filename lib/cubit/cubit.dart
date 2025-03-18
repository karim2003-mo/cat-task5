import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task4/api/Data.dart';
import 'package:task4/api/api.dart';
import 'package:task4/cubit/state.dart';

class CubitFetchData extends Cubit<LoadDataState>{
  CubitFetchData(): super(Initial());
  loaddata() async{
    emit(Loading());
    Api api=Api();
    List ? data=await api.fetchdata();
    List<Data> newdata=[];
    for(Map d in data!){
      newdata.add(Data(lastchattime: d["lastchattime"],
      latestmessage: d["latestmessage"],
        name: d["name"],
        image: d["image"],
          unreadedmessages: d["unreadedmessages"],
          islatestmessagereaded: d["islatestmessagereaded"],
          calltype: d['calltype'],
          iscall: d['iscall'],
          lastactivity: d['lastactivity'],
          lastcall: d['lastcall']
          )
          
          );
    }
    emit(Loaded(newdata));
  }

}