import '/flutter_flow/flutter_flow_util.dart';
import 'input_story_board_widget.dart' show InputStoryBoardWidget;
import 'package:flutter/material.dart';

class InputStoryBoardModel extends FlutterFlowModel<InputStoryBoardWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? count;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
