import 'dart:convert';

import 'package:http/http.dart' as http;
class Api{
  static String BASE_URL="http://10.0.2.2:8000";
  Future<List?> fetchdata() async{
    String url="$BASE_URL/api/?format=json";
    Uri uri=Uri.parse(url);
    final response=await http.get(uri);
    print('Content-Type: ${response.headers['content-type']}');
    Map<String , dynamic> res=jsonDecode(utf8.decode(response.bodyBytes));
    List? data=res['data'];
    // String date=datetime.substring(0,datetime.indexOf("T"));
    // String time=datetime.substring(datetime.indexOf("T")+1,datetime.indexOf("Z"));
    // print(date);
    print(data);
    return data;
  }
}
void main(List<String> args) {
  Api t=Api();
  t.fetchdata();
}