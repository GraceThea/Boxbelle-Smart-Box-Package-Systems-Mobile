import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'list_of_snapshoot_page_widget.dart' show ListOfSnapshootPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListOfSnapshootPageModel
    extends FlutterFlowModel<ListOfSnapshootPageWidget> {
  ///  Local state fields for this page.

  List<String> urlList = [];
  void addToUrlList(String item) => urlList.add(item);
  void removeFromUrlList(String item) => urlList.remove(item);
  void removeAtIndexFromUrlList(int index) => urlList.removeAt(index);
  void insertAtIndexInUrlList(int index, String item) =>
      urlList.insert(index, item);
  void updateUrlListAtIndex(int index, Function(String) updateFn) =>
      urlList[index] = updateFn(urlList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Read Document] action in ListOfSnapshootPage widget.
  SnapshotRecord? snapshotQueryResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
