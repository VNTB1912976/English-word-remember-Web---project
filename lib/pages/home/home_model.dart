import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  int timervalue = 60000;

  bool togletime = true;

  int? indexen = 0;

  int? indexko;

  String? valueen = 'hello';

  String? valueko = 'hello';

  int indexendachon = 21;

  int indexkodachon = 22;

  bool check = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  // Stores action output result for [Custom Action - listxaotron] action in IconButton widget.
  List<String>? englishrandom;
  // Stores action output result for [Custom Action - listxaotron] action in IconButton widget.
  List<String>? koearandom;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Custom Action - cong] action in Icon widget.
  int? timercong;
  // Stores action output result for [Custom Action - tru] action in Icon widget.
  int? timertru;
  // State field(s) for cke1 widget.
  bool? cke1Value;
  // State field(s) for cke2 widget.
  bool? cke2Value;
  // State field(s) for cke widget.
  Map<String, bool> ckeValueMap = {};
  List<String> get ckeCheckedItems =>
      ckeValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  // Stores action output result for [Custom Action - indexatitem] action in cke widget.
  int? valueindexengNOrandom;
  AudioPlayer? soundPlayer1;
  // Stores action output result for [Custom Action - indexatitem] action in cke widget.
  int? valueindexengrandom;
  AudioPlayer? soundPlayer2;
  // Stores action output result for [Custom Action - congsolanlambai] action in cke widget.
  int? solandalam;
  AudioPlayer? soundPlayer3;
  AudioPlayer? soundPlayer4;
  // State field(s) for ckk widget.
  Map<String, bool> ckkValueMap = {};
  List<String> get ckkCheckedItems =>
      ckkValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  // Stores action output result for [Custom Action - indexatitem] action in ckk widget.
  int? valueindexekoNOrandom;
  AudioPlayer? soundPlayer5;
  // Stores action output result for [Custom Action - indexatitem] action in ckk widget.
  int? valueindexkorandom;
  AudioPlayer? soundPlayer6;
  // Stores action output result for [Custom Action - congsolanlambai] action in ckk widget.
  int? solandalam2;
  AudioPlayer? soundPlayer7;
  AudioPlayer? soundPlayer8;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
    timerController.dispose();
  }
}
