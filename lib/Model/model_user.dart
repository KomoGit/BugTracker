import 'package:pocketbase/pocketbase.dart';

class User {
  String id;
  String fullName;
  String profilePic;
  String email;

  User(this.id, this.fullName, this.profilePic, this.email);
  //For Login.
  static User recordToModel(RecordModel model) {
    String id = model.id;
    String fullName = model.getStringValue('fullname');
    String profilePic = model.getStringValue('profilePicture');
    String email = model.getStringValue('email');
    return User(id, fullName, profilePic, email);
  }

  //For register.
  static Map<String, dynamic> modelToRecord(String email, username, password) {
    final body = <String, dynamic>{
      "username": username,
      "email": email,
      "emailVisibility": true,
      "password": password, //Will add a password confirmation check
      "name": username,
      "profilePicture":
          "" //We will change this so users can apply their own urls
    };
    return body;
  }
}
