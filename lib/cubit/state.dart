import 'package:task4/api/Data.dart';

class LoadDataState{
}
class Initial extends LoadDataState{}
class Loading extends LoadDataState{}
class Loaded extends LoadDataState{
  final List<Data> data;
  Loaded(this.data);
}