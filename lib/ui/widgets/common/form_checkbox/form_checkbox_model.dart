import 'package:stacked/stacked.dart';

class FormCheckboxModel extends BaseViewModel {
  bool isChecked = true;

  void setChecked(bool value) {
    isChecked = value;
    rebuildUi();
  }
}
