import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

List<VocalistLv1Record> findPromotedEmpsVocal1(
  List<VocalistLv1Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv1Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv1Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv2Record> findPromotedEmpsVocal2(
  List<VocalistLv2Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv2Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv2Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv3Record> findPromotedEmpsVocal3(
  List<VocalistLv3Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv3Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv3Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv4Record> findPromotedEmpsVocal4(
  List<VocalistLv4Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv4Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv4Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv5Record> findPromotedEmpsVocal5(
  List<VocalistLv5Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv5Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv5Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv6Record> findPromotedEmpsVocal6(
  List<VocalistLv6Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv6Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv6Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv7Record> findPromotedEmpsVocal7(
  List<VocalistLv7Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv7Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv7Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv8Record> findPromotedEmpsVocal8(
  List<VocalistLv8Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv8Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv8Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv14Record> findPromotedEmpsVocal23(
  List<VocalistLv14Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv14Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv14Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv10Record> findPromotedEmpsVocal10(
  List<VocalistLv10Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv10Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv10Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv12Record> findPromotedEmpsVocal21(
  List<VocalistLv12Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv12Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv12Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv13Record> findPromotedEmpsVocal22(
  List<VocalistLv13Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv13Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv13Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv11Record> findPromotedEmpsVocal20(
  List<VocalistLv11Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv11Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv11Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv15Record> findPromotedEmpsVocal24(
  List<VocalistLv15Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv15Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv15Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv16Record> findPromotedEmpsVocal25(
  List<VocalistLv16Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv16Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv16Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv22Record> findPromotedEmpsVocal31(
  List<VocalistLv22Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv22Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv22Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv28Record> findPromotedEmpsVocal37(
  List<VocalistLv28Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv28Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv28Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv29Record> findPromotedEmpsVocal38(
  List<VocalistLv29Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv29Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv29Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv27Record> findPromotedEmpsVocal36(
  List<VocalistLv27Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv27Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv27Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv26Record> findPromotedEmpsVocal35(
  List<VocalistLv26Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv26Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv26Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv25Record> findPromotedEmpsVocal34(
  List<VocalistLv25Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv25Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv25Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv24Record> findPromotedEmpsVocal33(
  List<VocalistLv24Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv24Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv24Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv23Record> findPromotedEmpsVocal32(
  List<VocalistLv23Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv23Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv23Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv30Record> findPromotedEmpsVocal39(
  List<VocalistLv30Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv30Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv30Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv17Record> findPromotedEmpsVocal26(
  List<VocalistLv17Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv17Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv17Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv18Record> findPromotedEmpsVocal27(
  List<VocalistLv18Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv18Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv18Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv19Record> findPromotedEmpsVocal28(
  List<VocalistLv19Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv19Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv19Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv20Record> findPromotedEmpsVocal29(
  List<VocalistLv20Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv20Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv20Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv21Record> findPromotedEmpsVocal30(
  List<VocalistLv21Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv21Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv21Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}

List<VocalistLv9Record> findPromotedEmpsVocal9(
  List<VocalistLv9Record> allEmps,
  List<int> selecteEmpsIndex,
) {
  List<VocalistLv9Record> promotevoca = [];
  for (int i = 0; i < selecteEmpsIndex.length; i++) {
    int index = selecteEmpsIndex[i];
    if (index >= 0 && index < allEmps.length) {
      VocalistLv9Record emp = allEmps[index];
      promotevoca.add(emp);
    }
  }
  return promotevoca;
}
