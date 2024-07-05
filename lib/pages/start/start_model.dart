import '/flutter_flow/flutter_flow_util.dart';
import 'start_widget.dart' show StartWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class StartModel extends FlutterFlowModel<StartWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
