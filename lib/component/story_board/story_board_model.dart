import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'story_board_widget.dart' show StoryBoardWidget;
import 'package:flutter/material.dart';

class StoryBoardModel extends FlutterFlowModel<StoryBoardWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<LearntVocaRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
