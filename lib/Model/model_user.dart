// class Category {
//   String id;
//   String title;
//   String imgUrl;

//   Category(this.id, this.title, this.imgUrl);
//   //Record Model is not native to Flutter, it is a part of PocketBase dependency.
//   static Category fromModel(RecordModel model) {
//     String id = model.id;
//     String title = model.getStringValue('title');
//     String imgUrl = model.getStringValue('imgUrl');
//     return Category(id, title, imgUrl);
//   }
// }

import 'package:pocketbase/pocketbase.dart';

class User {
  String id;
  String fullName;
  String imgUrl;
  String email;

  User(this.id, this.fullName, this.imgUrl, this.email);

  static User fromModel(RecordModel model) {
    String id = model.id;
    String fullName = model.getStringValue('fullname');
    String imgUrl = model.getStringValue('profilepicurl');
    String email = model.getStringValue('email');
    return User(id, fullName, imgUrl, email);
  }
}
