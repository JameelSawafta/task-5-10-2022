import '../models/dataModel.dart';

class DataViewModel {
  DataModel? dataModel;
  DataViewModel({this.dataModel});

  get original => dataModel?.original;
  

}