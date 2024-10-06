import 'package:stacked/stacked.dart';

class FormSelectorModel<T> extends BaseViewModel {
  T? selection;

  void updateSelection(T? value) {
    selection = value;
    rebuildUi();
  }
}
