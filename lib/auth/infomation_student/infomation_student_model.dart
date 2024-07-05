import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'infomation_student_widget.dart' show InfomationStudentWidget;
import 'package:flutter/material.dart';

class InfomationStudentModel extends FlutterFlowModel<InfomationStudentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for company widget.
  FocusNode? companyFocusNode;
  TextEditingController? companyTextController;
  String? Function(BuildContext, String?)? companyTextControllerValidator;
  String? _companyTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '필드가 필요합니다';
    }

    return null;
  }

  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  String? _phoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '필드가 필요합니다';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for note widget.
  FocusNode? noteFocusNode;
  TextEditingController? noteTextController;
  String? Function(BuildContext, String?)? noteTextControllerValidator;
  String? _noteTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '필드가 필요합니다';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    companyTextControllerValidator = _companyTextControllerValidator;
    phoneTextControllerValidator = _phoneTextControllerValidator;
    noteTextControllerValidator = _noteTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    companyFocusNode?.dispose();
    companyTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    noteFocusNode?.dispose();
    noteTextController?.dispose();
  }
}
