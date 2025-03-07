import '/components/select_page_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_widget.dart' show AdminWidget;
import 'package:flutter/material.dart';

class AdminModel extends FlutterFlowModel<AdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for selectPage component.
  late SelectPageModel selectPageModel;

  @override
  void initState(BuildContext context) {
    selectPageModel = createModel(context, () => SelectPageModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    selectPageModel.dispose();
  }
}
