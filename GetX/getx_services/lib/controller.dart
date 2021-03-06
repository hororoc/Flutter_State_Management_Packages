import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class Controller extends GetxController {
//   void increment() async {
//     SharedPreferences sp = await SharedPreferences.getInstance();
//     int counter = (sp.getInt('counter') ?? 0) + 1;

//     print('It\'s count $counter times');

//     await sp.setInt('counter', counter);
//   }
// }

class Service extends GetxService {
  Future<void> increment() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    int counter = (sp.getInt('counter') ?? 0) + 1;

    print('It\'s count $counter times');

    await sp.setInt('counter', counter);
  }
}
