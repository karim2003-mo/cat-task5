import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task4/cubit/cubit.dart';
import 'package:task4/cubit/state.dart';
import 'package:task4/stdpixels/fontsizes.dart';
import 'package:task4/stdpixels/stdpixel.dart';

class ChatVeiw extends StatefulWidget {
  const ChatVeiw({super.key});
  @override
  State<ChatVeiw> createState() => _ChateVeiwState();
}

class _ChateVeiwState extends State<ChatVeiw> {
  double ? _screenwidth;
  double ? _screenheight;
  @override
  Widget build(BuildContext context) {
    _screenwidth=MediaQuery.of(context).size.width;
    _screenheight=MediaQuery.of(context).size.height;
    Pixel _pixel=Pixel(screenheight: _screenheight! ,screenwidth: _screenwidth!);
    return BlocProvider(
      create: (context) => CubitFetchData()..loaddata(),
      child: Padding(
        padding:  EdgeInsets.all(4*_pixel.horizontalpixel()),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
        
          child: BlocBuilder<CubitFetchData, LoadDataState>(
            
            builder: (context, state) {
              if(state is Loaded){
              return Stack(
                children: [
                  ListView.builder(
                    itemCount:state.data.length ,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                          width: double.infinity,
                          height: 32*_pixel.verticalpixel(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(child: 
                              
                              Row(children: [Image.network(state.data[index].image),
                              Center(
                  child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 130*_pixel.horizontalpixel(),
                      child: Text(
                                  state.data[index].name,
                                  style: GoogleFonts.poppins(
                                    fontSize: FontSizes.fontsize(fontsize: FontSize.VerySmall, pixel: _pixel),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  overflow:TextOverflow.ellipsis ,
                                  maxLines: 1,
                                ),
                    ),
                    Row(
                      children: [
                        (state.data[index].islatestmessagereaded)?Icon(Icons.done_all,color: Colors.lightBlue,):
                        Icon(Icons.done_all,color: Colors.grey,),
                        Container(
                          width: 120*_pixel.horizontalpixel(),
                          child: Text(
                            
                                      state.data[index].latestmessage,
                                      style: GoogleFonts.poppins(
                                        fontSize: FontSizes.fontsize(fontsize: FontSize.Tiny, pixel: _pixel),
                                        fontWeight: FontWeight.w400,
                                      ),
                                      overflow: TextOverflow.ellipsis, // Adds dots when the text overflows.
                                      maxLines: 1,
                                    ),
                        ),
                      ],
                    ),
                  ],
                            ),
                          ),
                              ),
                              ])),
                      Text(state.data[index].messagetime.substring(0,5))
                      
                          ]),
                              );
                    },
                  ),
                  Padding(
                    padding:  EdgeInsets.only(bottom: 15*_pixel.verticalpixel(),right: 8*_pixel.horizontalpixel()),
                    child: Align(
                      alignment: Alignment.bottomRight, child: FloatingActionButton(
                        backgroundColor: Color.fromRGBO(1, 107, 93, 1),
                        child: Icon(Icons.message,size: FontSizes.fontsize(fontsize: FontSize.Meduim, pixel: _pixel),color: Colors.white,),
                        onPressed: (){})),
                  )
                ],
              );}else{
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
