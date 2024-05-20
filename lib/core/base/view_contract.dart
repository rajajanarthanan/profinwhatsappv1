import 'package:flutter/material.dart';

abstract class ViewContract<T extends ChangeNotifier> extends StatefulWidget {
  final T viewModel;

  const ViewContract({Key? key, required this.viewModel}) : super(key: key);

  Widget buildView(BuildContext context, T viewModel);

  @override
  _ViewContractState<T> createState() => _ViewContractState<T>();
}

class _ViewContractState<T extends ChangeNotifier>
    extends State<ViewContract<T>> {
  late T _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = widget.viewModel;
    _viewModel.addListener(_onViewModelChange);
  }

  @override
  void dispose() {
    _viewModel.removeListener(_onViewModelChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.buildView(context, _viewModel);
  }

  void _onViewModelChange() {
    setState(() {});
  }
}