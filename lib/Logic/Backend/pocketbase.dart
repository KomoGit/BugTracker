import 'package:pocketbase/pocketbase.dart';
import 'package:bugtracker/Model/model_user.dart';

class GetSetUsers {
  //DO NOT MODIFY
  Future<List<User>> fromRecordsToModels(PocketBase pb) async {
    var rawData = await pb.collection('users').getFullList();
    List<RecordModel> listOfUser = rawData;
    List<User> users = [];
    for (RecordModel model in listOfUser) {
      users.add(User.recordToModel(model));
    }
    return users;
  }

  //This might seem confusing but here is the jist. We take a model that contains data
  //and from data we create a model.
  Future<void> fromModelToRecord(
      PocketBase pb, Map<String, dynamic> modelToRecord) async {
    await pb.collection('users').create(body: modelToRecord);
  }
}
