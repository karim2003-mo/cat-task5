import 'package:task4/stdpixels/stdpixel.dart';

class FontSizes {
  static double fontsize({required FontSize fontsize ,required Pixel pixel }){
    if(pixel.horizontalpixel()>=pixel.horizontalpixel()){
      switch(fontsize){
      case FontSize.VerySmall:
      return 2*pixel.horizontalpixel()+6*pixel.verticalpixel();
      case FontSize.Small:
      return 3*pixel.horizontalpixel()+8*pixel.verticalpixel();
      case FontSize.Meduim:
        return 4*pixel.horizontalpixel()+10*pixel.verticalpixel();
      case FontSize.Large:
        return 5*pixel.horizontalpixel()+12*pixel.verticalpixel();
      case FontSize.VeryLarge:
        return 6*pixel.horizontalpixel()+14*pixel.verticalpixel();
    }
    }else{
    switch(fontsize){
      case FontSize.VerySmall:
      return 6*pixel.horizontalpixel()+2*pixel.verticalpixel();
      case FontSize.Small:
      return 8*pixel.horizontalpixel()+3*pixel.verticalpixel();
      case FontSize.Meduim:
        return 10*pixel.horizontalpixel()+4*pixel.verticalpixel();
      case FontSize.Large:
        return 12*pixel.horizontalpixel()+5*pixel.verticalpixel();
      case FontSize.VeryLarge:
        return 14*pixel.horizontalpixel()+6*pixel.verticalpixel();
    }
    }
  }
}
enum FontSize{
  VerySmall,
  Small,
  Meduim,
  Large,
  VeryLarge,
}