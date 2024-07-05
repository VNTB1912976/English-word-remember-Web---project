import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _checknoramdom = prefs.getBool('ff_checknoramdom') ?? _checknoramdom;
    });
    _safeInit(() {
      _checkramdom = prefs.getBool('ff_checkramdom') ?? _checkramdom;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _startTimer = false;
  bool get startTimer => _startTimer;
  set startTimer(bool value) {
    _startTimer = value;
  }

  String _curentgame = 'https://blank.page';
  String get curentgame => _curentgame;
  set curentgame(String value) {
    _curentgame = value;
  }

  bool _viewgame = false;
  bool get viewgame => _viewgame;
  set viewgame(bool value) {
    _viewgame = value;
  }

  String _uid = '';
  String get uid => _uid;
  set uid(String value) {
    _uid = value;
  }

  String _ms = '';
  String get ms => _ms;
  set ms(String value) {
    _ms = value;
  }

  int _page = 0;
  int get page => _page;
  set page(int value) {
    _page = value;
  }

  String _english = '';
  String get english => _english;
  set english(String value) {
    _english = value;
  }

  String _korea = '';
  String get korea => _korea;
  set korea(String value) {
    _korea = value;
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String _password = '';
  String get password => _password;
  set password(String value) {
    _password = value;
  }

  bool _limitVoca = true;
  bool get limitVoca => _limitVoca;
  set limitVoca(bool value) {
    _limitVoca = value;
  }

  int _solanlambai = 0;
  int get solanlambai => _solanlambai;
  set solanlambai(int value) {
    _solanlambai = value;
  }

  bool _chophepchoigame60 = false;
  bool get chophepchoigame60 => _chophepchoigame60;
  set chophepchoigame60(bool value) {
    _chophepchoigame60 = value;
  }

  bool _thoigianchoigame = false;
  bool get thoigianchoigame => _thoigianchoigame;
  set thoigianchoigame(bool value) {
    _thoigianchoigame = value;
  }

  VocalB1Struct _dstuduocchon = VocalB1Struct.fromSerializableMap(
      jsonDecode('{\"id\":\"[]\",\"englist\":\"[]\",\"korea\":\"[]\"}'));
  VocalB1Struct get dstuduocchon => _dstuduocchon;
  set dstuduocchon(VocalB1Struct value) {
    _dstuduocchon = value;
  }

  void updateDstuduocchonStruct(Function(VocalB1Struct) updateFn) {
    updateFn(_dstuduocchon);
  }

  List<String> _englishNOrandom = [];
  List<String> get englishNOrandom => _englishNOrandom;
  set englishNOrandom(List<String> value) {
    _englishNOrandom = value;
  }

  void addToEnglishNOrandom(String value) {
    englishNOrandom.add(value);
  }

  void removeFromEnglishNOrandom(String value) {
    englishNOrandom.remove(value);
  }

  void removeAtIndexFromEnglishNOrandom(int index) {
    englishNOrandom.removeAt(index);
  }

  void updateEnglishNOrandomAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    englishNOrandom[index] = updateFn(_englishNOrandom[index]);
  }

  void insertAtIndexInEnglishNOrandom(int index, String value) {
    englishNOrandom.insert(index, value);
  }

  List<String> _koreaNOrandom = [];
  List<String> get koreaNOrandom => _koreaNOrandom;
  set koreaNOrandom(List<String> value) {
    _koreaNOrandom = value;
  }

  void addToKoreaNOrandom(String value) {
    koreaNOrandom.add(value);
  }

  void removeFromKoreaNOrandom(String value) {
    koreaNOrandom.remove(value);
  }

  void removeAtIndexFromKoreaNOrandom(int index) {
    koreaNOrandom.removeAt(index);
  }

  void updateKoreaNOrandomAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    koreaNOrandom[index] = updateFn(_koreaNOrandom[index]);
  }

  void insertAtIndexInKoreaNOrandom(int index, String value) {
    koreaNOrandom.insert(index, value);
  }

  List<String> _englishrandom = [];
  List<String> get englishrandom => _englishrandom;
  set englishrandom(List<String> value) {
    _englishrandom = value;
  }

  void addToEnglishrandom(String value) {
    englishrandom.add(value);
  }

  void removeFromEnglishrandom(String value) {
    englishrandom.remove(value);
  }

  void removeAtIndexFromEnglishrandom(int index) {
    englishrandom.removeAt(index);
  }

  void updateEnglishrandomAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    englishrandom[index] = updateFn(_englishrandom[index]);
  }

  void insertAtIndexInEnglishrandom(int index, String value) {
    englishrandom.insert(index, value);
  }

  List<String> _korearandom = [];
  List<String> get korearandom => _korearandom;
  set korearandom(List<String> value) {
    _korearandom = value;
  }

  void addToKorearandom(String value) {
    korearandom.add(value);
  }

  void removeFromKorearandom(String value) {
    korearandom.remove(value);
  }

  void removeAtIndexFromKorearandom(int index) {
    korearandom.removeAt(index);
  }

  void updateKorearandomAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    korearandom[index] = updateFn(_korearandom[index]);
  }

  void insertAtIndexInKorearandom(int index, String value) {
    korearandom.insert(index, value);
  }

  int _soluongtuconlai = 21;
  int get soluongtuconlai => _soluongtuconlai;
  set soluongtuconlai(int value) {
    _soluongtuconlai = value;
  }

  List<VocalStruct> _dstudachon = [];
  List<VocalStruct> get dstudachon => _dstudachon;
  set dstudachon(List<VocalStruct> value) {
    _dstudachon = value;
  }

  void addToDstudachon(VocalStruct value) {
    dstudachon.add(value);
  }

  void removeFromDstudachon(VocalStruct value) {
    dstudachon.remove(value);
  }

  void removeAtIndexFromDstudachon(int index) {
    dstudachon.removeAt(index);
  }

  void updateDstudachonAtIndex(
    int index,
    VocalStruct Function(VocalStruct) updateFn,
  ) {
    dstudachon[index] = updateFn(_dstudachon[index]);
  }

  void insertAtIndexInDstudachon(int index, VocalStruct value) {
    dstudachon.insert(index, value);
  }

  bool _checknoramdom = false;
  bool get checknoramdom => _checknoramdom;
  set checknoramdom(bool value) {
    _checknoramdom = value;
    prefs.setBool('ff_checknoramdom', value);
  }

  bool _checkramdom = true;
  bool get checkramdom => _checkramdom;
  set checkramdom(bool value) {
    _checkramdom = value;
    prefs.setBool('ff_checkramdom', value);
  }

  List<bool> _checkboxvocal = [];
  List<bool> get checkboxvocal => _checkboxvocal;
  set checkboxvocal(List<bool> value) {
    _checkboxvocal = value;
  }

  void addToCheckboxvocal(bool value) {
    checkboxvocal.add(value);
  }

  void removeFromCheckboxvocal(bool value) {
    checkboxvocal.remove(value);
  }

  void removeAtIndexFromCheckboxvocal(int index) {
    checkboxvocal.removeAt(index);
  }

  void updateCheckboxvocalAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    checkboxvocal[index] = updateFn(_checkboxvocal[index]);
  }

  void insertAtIndexInCheckboxvocal(int index, bool value) {
    checkboxvocal.insert(index, value);
  }

  List<bool> _checkvocalko = [];
  List<bool> get checkvocalko => _checkvocalko;
  set checkvocalko(List<bool> value) {
    _checkvocalko = value;
  }

  void addToCheckvocalko(bool value) {
    checkvocalko.add(value);
  }

  void removeFromCheckvocalko(bool value) {
    checkvocalko.remove(value);
  }

  void removeAtIndexFromCheckvocalko(int index) {
    checkvocalko.removeAt(index);
  }

  void updateCheckvocalkoAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    checkvocalko[index] = updateFn(_checkvocalko[index]);
  }

  void insertAtIndexInCheckvocalko(int index, bool value) {
    checkvocalko.insert(index, value);
  }

  int _loppcheck = 0;
  int get loppcheck => _loppcheck;
  set loppcheck(int value) {
    _loppcheck = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
