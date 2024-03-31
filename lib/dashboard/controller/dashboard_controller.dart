import 'package:bank_sha_modular/import_all.dart';

class DashboardController extends ChangeNotifier {

  int activePage    = 0;

  void onChangePage(int index) {
    activePage = index;
    notifyListeners();
  }
}