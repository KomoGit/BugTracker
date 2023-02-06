import 'package:pocketbase/pocketbase.dart';
import 'package:bugtracker/Model/model_user.dart';

class MenuAPI {
  //DO NOT MODIFY
  Future<List<User>> fromRecordsToModels(PocketBase pb) async {
    var rawData = await pb.collection("menuitem").getFullList();
    List<RecordModel> listOfUser = rawData;
    List<User> categories = [];
    for (RecordModel model in listOfUser) {
      categories.add(User.fromModel(model));
    }
    return categories;
  }
}
