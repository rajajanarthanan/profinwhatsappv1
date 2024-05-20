import 'package:flutter/material.dart';
import 'package:injector/injector.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';
import 'view_contract.dart';

class BaseView<T extends ChangeNotifier> extends ViewContract<T> {
  final Injector dep = Injector.appInstance;

  BaseView({Key? key}) : super(key: key);

  final BaseWidgets baseWidgets = BaseWidgets();

  @override
  Widget buildView(BuildContext context) {
    return Container();
  }
}
