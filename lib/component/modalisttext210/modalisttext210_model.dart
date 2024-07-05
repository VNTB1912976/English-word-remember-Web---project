import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'modalisttext210_widget.dart' show Modalisttext210Widget;
import 'package:flutter/material.dart';

class Modalisttext210Model extends FlutterFlowModel<Modalisttext210Widget> {
  ///  Local state fields for this component.

  List<VocalistLv11Record> promotevoca = [];
  void addToPromotevoca(VocalistLv11Record item) => promotevoca.add(item);
  void removeFromPromotevoca(VocalistLv11Record item) =>
      promotevoca.remove(item);
  void removeAtIndexFromPromotevoca(int index) => promotevoca.removeAt(index);
  void insertAtIndexInPromotevoca(int index, VocalistLv11Record item) =>
      promotevoca.insert(index, item);
  void updatePromotevocaAtIndex(
          int index, Function(VocalistLv11Record) updateFn) =>
      promotevoca[index] = updateFn(promotevoca[index]);

  List<int> indexvoca = [];
  void addToIndexvoca(int item) => indexvoca.add(item);
  void removeFromIndexvoca(int item) => indexvoca.remove(item);
  void removeAtIndexFromIndexvoca(int index) => indexvoca.removeAt(index);
  void insertAtIndexInIndexvoca(int index, int item) =>
      indexvoca.insert(index, item);
  void updateIndexvocaAtIndex(int index, Function(int) updateFn) =>
      indexvoca[index] = updateFn(indexvoca[index]);

  int index = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<VocalistLv11Record>();
  InstantTimer? instantTimer;
  // Stores action output result for [Custom Action - listxaotron] action in Container widget.
  List<String>? englishrandom;
  // Stores action output result for [Custom Action - listxaotron] action in Container widget.
  List<String>? koearandom;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
