import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'update_date_widget.dart' show UpdateDateWidget;
import 'package:flutter/material.dart';

class UpdateDateModel extends FlutterFlowModel<UpdateDateWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for money widget.
  FocusNode? moneyFocusNode;
  TextEditingController? moneyTextController;
  String? Function(BuildContext, String?)? moneyTextControllerValidator;
  String? _moneyTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for status widget.
  String? statusValue;
  FormFieldController<String>? statusValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {
    moneyTextControllerValidator = _moneyTextControllerValidator;
  }

  @override
  void dispose() {
    moneyFocusNode?.dispose();
    moneyTextController?.dispose();
  }
}
