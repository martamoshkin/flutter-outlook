import 'package:scoped_model/scoped_model.dart';

class BaseModel extends Model {
  int stackIndex = 0;

  List entityList = [];
  var entityBeingEdited;

  String chosenDate;

  void setChosenDate(String inDate) {
    print("## BaseModel.setChosenDate(): inDate = $inDate");

    chosenDate = inDate;
    notifyListeners();
  }

  void loadData(String inEntityType, dynamic inDatabase) async {

    print("## ${inEntityType}Model.loadData()");

    // Load entities from database.
    entityList = await inDatabase.getAll();

    // Notify listeners that the data is available so they can paint themselves.
    notifyListeners();

  }

    void setStackIndex(int inStackIndex) {

    print("## BaseModel.setStackIndex(): inStackIndex = $inStackIndex");

    stackIndex = inStackIndex;
    notifyListeners();

  }
}
