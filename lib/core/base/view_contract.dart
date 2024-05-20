import 'package:flutter/material.dart';
import 'package:injector/injector.dart';
import 'package:profinwhatsapp/core/base/base_viewmodel.dart';

abstract class ViewContract<T extends ChangeNotifier> extends StatefulWidget {
  const ViewContract({Key? key}) : super(key: key);

  Widget buildView(BuildContext context);

  @override
  _ViewContractState<T> createState() => _ViewContractState<T>();
}

class _ViewContractState<T extends ChangeNotifier>
    extends State<ViewContract<T>> {
  late BaseViewModel _viewModel;

  Injector dep = Injector.appInstance;

  @override
  void initState() {
    super.initState();
    _viewModel = dep.get<BaseViewModel>();
    _viewModel.addListener(_onViewModelChange);
  }

  @override
  void dispose() {
    _viewModel.removeListener(_onViewModelChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.buildView(context);
  }

  void _onViewModelChange() {
    setState(() {});
  }
}
