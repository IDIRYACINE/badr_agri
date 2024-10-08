import 'package:stacked/stacked.dart';

class FormCheckboxModel extends BaseViewModel {
  bool isChecked ;

  FormCheckboxModel({required this.isChecked});

  void setChecked(bool value) {
    isChecked = value;
    rebuildUi();
  }
}
