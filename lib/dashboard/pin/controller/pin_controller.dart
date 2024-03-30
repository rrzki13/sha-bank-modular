import 'package:bank_sha_modular/import_all.dart';

class PinController extends ChangeNotifier {

  TextEditingController pinController     = TextEditingController(text: "");

  doAddPin(String number) {
    if (pinController.text.length < 6) {
      pinController.text = pinController.text + number;
    }

    if (pinController.text.length == 6) {
      if (pinController.text == "131004") {
        Modular.to.navigate("/home");
      } else {

      }
    }
    notifyListeners();
  }

  doDeletePin() {
    if (pinController.text.isNotEmpty) {
      pinController.text = pinController.text.substring(0, pinController.text.length - 1);
    }
  }
}