import 'package:flutter/material.dart';
import 'view_contract.dart';

class BaseView<T extends ChangeNotifier> extends ViewContract<T> {
  const BaseView({Key? key, required T viewModel})
      : super(key: key, viewModel: viewModel);

  @override
  Widget buildView(BuildContext context, T viewModel) {
    return Container();
  }
}
