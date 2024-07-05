import '/backend/backend.dart';
import '/components/select_page_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_user_widget.dart' show AdminUserWidget;
import 'package:flutter/material.dart';

class AdminUserModel extends FlutterFlowModel<AdminUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for selectPage component.
  late SelectPageModel selectPageModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<UsersRecord>();
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? updateStatus;
  // Stores action output result for [Custom Action - getNextMonth] action in Button widget.
  DateTime? nextMonth;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? deleteUser;

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
