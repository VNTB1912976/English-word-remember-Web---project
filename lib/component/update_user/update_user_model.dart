import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'update_user_widget.dart' show UpdateUserWidget;
import 'package:flutter/material.dart';

class UpdateUserModel extends FlutterFlowModel<UpdateUserWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for company widget.
  FocusNode? companyFocusNode;
  TextEditingController? companyTextController;
  String? Function(BuildContext, String?)? companyTextControllerValidator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  String? _phoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  // State field(s) for payer widget.
  FocusNode? payerFocusNode;
  TextEditingController? payerTextController;
  String? Function(BuildContext, String?)? payerTextControllerValidator;
  // State field(s) for money widget.
  FocusNode? moneyFocusNode;
  TextEditingController? moneyTextController;
  String? Function(BuildContext, String?)? moneyTextControllerValidator;
  // State field(s) for note widget.
  FocusNode? noteFocusNode;
  TextEditingController? noteTextController;
  String? Function(BuildContext, String?)? noteTextControllerValidator;
  DateTime? datePicked1;
  // Stores action output result for [Custom Action - setTime] action in Container widget.
  int? setTime1;
  DateTime? datePicked2;
  // Stores action output result for [Custom Action - setTime] action in Container widget.
  int? setTime;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for time widget.
  FocusNode? timeFocusNode;
  TextEditingController? timeTextController;
  String? Function(BuildContext, String?)? timeTextControllerValidator;
  // Stores action output result for [Custom Action - setTime] action in Button widget.
  int? setTimebt;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    phoneTextControllerValidator = _phoneTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    companyFocusNode?.dispose();
    companyTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();

    payerFocusNode?.dispose();
    payerTextController?.dispose();

    moneyFocusNode?.dispose();
    moneyTextController?.dispose();

    noteFocusNode?.dispose();
    noteTextController?.dispose();

    timeFocusNode?.dispose();
    timeTextController?.dispose();
  }
}
