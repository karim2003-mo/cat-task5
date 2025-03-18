import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task4/stdpixels/fontsizes.dart';
import 'package:task4/stdpixels/stdpixel.dart';
import 'package:task4/veiws/callsveiw.dart';
import 'package:task4/veiws/chatveiw.dart';
import 'package:task4/veiws/statusveiw.dart';
void main() {
  runApp( MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    Pixel pixel=Pixel(screenwidth:width,screenheight:height);
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        tabBarTheme: TabBarTheme(
          dividerColor:Color.fromRGBO(255, 255, 255, 1),
          indicatorColor: Color.fromRGBO(255, 255, 255, 1),
          labelColor:Color.fromRGBO(255, 255, 255, 1),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromRGBO(1, 123, 107, 1),
          foregroundColor: Color.fromRGBO(255, 255, 255, 1)
        )
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar:AppBar(
            toolbarHeight:(pixel.horizontalpixel()>pixel.verticalpixel())? 11*pixel.horizontalpixel():
            11*pixel.verticalpixel()
            ,
            title:
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("WhatsApp",style: GoogleFonts.poppins(fontSize:
                            FontSizes.fontsize(fontsize: FontSize.Small, pixel: pixel)
                            ,color:Color.fromRGBO(255, 255, 255, 1),
                            fontWeight: FontWeight.w400),),
                            Container(
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,)),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded)),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
                                ],
                              ),
                            )
                          ],
                        ),
                        bottom: TabBar(tabs: [
                          Tab(
                            child: Icon(Icons.groups,color:Color.fromRGBO(255, 255, 255, 1),size: 32,),
                          ),
                          Tab(
                            child: Text("Chats",style:GoogleFonts.poppins(fontSize:
                            FontSizes.fontsize(fontsize: FontSize.VerySmall, pixel: pixel)
                            ,color:Color.fromRGBO(255, 255, 255, 1),fontWeight: FontWeight.w700),),
                          ),
                          Tab(
                            child: Text("Status",style:GoogleFonts.poppins(fontSize:
                            FontSizes.fontsize(fontsize: FontSize.VerySmall, pixel: pixel)
                            ,color:Color.fromRGBO(255, 255, 255, 1),fontWeight: FontWeight.w700),),
                          ),
                          Tab(
                            child: Text("Calls",style:GoogleFonts.poppins(fontSize:
                            FontSizes.fontsize(fontsize: FontSize.VerySmall, pixel: pixel)
                            ,color:Color.fromRGBO(255, 255, 255, 1),fontWeight: FontWeight.w700),),
                          ),
                        ]),
          ),
          body:TabBarView(children:[
            Center(child: SelectableText("GROUP VEIW",style: GoogleFonts.poppins(fontSize: 26,fontWeight:FontWeight.w900 ),)),
            ChatVeiw(),
           StatusVeiw(),
            CallVeiw()
          ])
        ),
      ),
    );
  }
}
