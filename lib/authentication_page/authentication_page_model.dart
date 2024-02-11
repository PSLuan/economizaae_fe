import '/flutter_flow/flutter_flow_util.dart';
import 'authentication_page_widget.dart' show AuthenticationPageWidget;
import 'package:flutter/material.dart';

class AuthenticationPageModel
    extends FlutterFlowModel<AuthenticationPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddressRegister widget.
  FocusNode? emailAddressRegisterFocusNode;
  TextEditingController? emailAddressRegisterController;
  String? Function(BuildContext, String?)?
      emailAddressRegisterControllerValidator;
  // State field(s) for passwordRegister widget.
  FocusNode? passwordRegisterFocusNode;
  TextEditingController? passwordRegisterController;
  late bool passwordRegisterVisibility;
  String? Function(BuildContext, String?)? passwordRegisterControllerValidator;
  // State field(s) for retypePasswordRegister widget.
  FocusNode? retypePasswordRegisterFocusNode;
  TextEditingController? retypePasswordRegisterController;
  late bool retypePasswordRegisterVisibility;
  String? Function(BuildContext, String?)?
      retypePasswordRegisterControllerValidator;
  // State field(s) for emailAddressLogin widget.
  FocusNode? emailAddressLoginFocusNode;
  TextEditingController? emailAddressLoginController;
  String? Function(BuildContext, String?)? emailAddressLoginControllerValidator;
  // State field(s) for passwordLogin widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordRegisterVisibility = false;
    retypePasswordRegisterVisibility = false;
    passwordLoginVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressRegisterFocusNode?.dispose();
    emailAddressRegisterController?.dispose();

    passwordRegisterFocusNode?.dispose();
    passwordRegisterController?.dispose();

    retypePasswordRegisterFocusNode?.dispose();
    retypePasswordRegisterController?.dispose();

    emailAddressLoginFocusNode?.dispose();
    emailAddressLoginController?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
