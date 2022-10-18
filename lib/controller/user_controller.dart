import 'package:get/get.dart';
import 'package:getx_dependency_injection/model/user_model.dart';

class UserController extends GetxController {
  Rx<UserModel> user = UserModel().obs;

  void setUserName(String userName) {
    user.update((obj) {
      obj?.name = userName;
    });
  }

  void setUserAge(int userAge) {
    user.update((obj) {
      obj?.age = userAge;
    });
  }
}
