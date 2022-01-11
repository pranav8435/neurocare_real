// @dart=2.9
import '../auth/auth_util.dart';
import '../complete_profile/complete_profile_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../forgot_password/forgot_password_widget.dart';
import '../setup/setup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  TextEditingController emailAddressController;
  TextEditingController passwordCreateController;
  bool passwordCreateVisibility;
  TextEditingController passwordConfirmController;
  bool passwordConfirmVisibility;
  TextEditingController emailAddressLoginController;
  TextEditingController passwordLoginController;
  bool passwordLoginVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
    passwordCreateController = TextEditingController();
    passwordCreateVisibility = false;
    passwordConfirmController = TextEditingController();
    passwordConfirmVisibility = false;
    emailAddressLoginController = TextEditingController();
    passwordLoginController = TextEditingController();
    passwordLoginVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF9E9E9E),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.background,
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: Image.asset(
                        'assets/images/page_background.png',
                      ).image,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/Untitled_design_(19).png',
                                width: 300,
                                height: 160,
                                fit: BoxFit.fitHeight,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                            child: DefaultTabController(
                              length: 2,
                              initialIndex: 0,
                              child: Column(
                                children: [
                                  TabBar(
                                    labelColor: Color(0xFF9965AD),
                                    unselectedLabelColor:
                                        FlutterFlowTheme.grayLight,
                                    labelStyle: GoogleFonts.getFont(
                                      'Roboto',
                                    ),
                                    indicatorColor: Color(0xFF9965AD),
                                    indicatorWeight: 3,
                                    tabs: [
                                      Tab(
                                        text: 'Login',
                                      ),
                                      Tab(
                                        text: 'Register',
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 20, 0, 0),
                                                  child: TextFormField(
                                                    controller:
                                                        emailAddressLoginController,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          'Email Address',
                                                      labelStyle:
                                                          FlutterFlowTheme
                                                              .bodyText1
                                                              .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0x98FFFFFF),
                                                      ),
                                                      hintText:
                                                          'Enter your email...',
                                                      hintStyle:
                                                          FlutterFlowTheme
                                                              .bodyText1
                                                              .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0x98FFFFFF),
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme
                                                              .darkBackground,
                                                      contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(20, 24,
                                                                  20, 24),
                                                    ),
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF9965AD),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 0),
                                                  child: TextFormField(
                                                    controller:
                                                        passwordLoginController,
                                                    obscureText:
                                                        !passwordLoginVisibility,
                                                    decoration: InputDecoration(
                                                      labelText: 'Password',
                                                      labelStyle:
                                                          FlutterFlowTheme
                                                              .bodyText1
                                                              .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0x98FFFFFF),
                                                      ),
                                                      hintText:
                                                          'Enter your password...',
                                                      hintStyle:
                                                          FlutterFlowTheme
                                                              .bodyText1
                                                              .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0x98FFFFFF),
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme
                                                              .darkBackground,
                                                      contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(20, 24,
                                                                  20, 24),
                                                      suffixIcon: InkWell(
                                                        onTap: () => setState(
                                                          () => passwordLoginVisibility =
                                                              !passwordLoginVisibility,
                                                        ),
                                                        child: Icon(
                                                          passwordLoginVisibility
                                                              ? Icons
                                                                  .visibility_outlined
                                                              : Icons
                                                                  .visibility_off_outlined,
                                                          color:
                                                              Color(0x98FFFFFF),
                                                          size: 20,
                                                        ),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF9965AD),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 24, 0, 0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      final user =
                                                          await signInWithEmail(
                                                        context,
                                                        emailAddressLoginController
                                                            .text,
                                                        passwordLoginController
                                                            .text,
                                                      );
                                                      if (user == null) {
                                                        return;
                                                      }

                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .leftToRight,
                                                          duration: Duration(
                                                              milliseconds: 10),
                                                          reverseDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      10),
                                                          child: SetupWidget(),
                                                        ),
                                                      );
                                                    },
                                                    text: 'Login',
                                                    options: FFButtonOptions(
                                                      width: 230,
                                                      height: 60,
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      textStyle:
                                                          FlutterFlowTheme
                                                              .subtitle2
                                                              .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color: FlutterFlowTheme
                                                            .textColor,
                                                      ),
                                                      elevation: 3,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1,
                                                      ),
                                                      borderRadius: 8,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 20, 0, 24),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      await Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              ForgotPasswordWidget(),
                                                        ),
                                                      );
                                                    },
                                                    text: 'Forgot Password?',
                                                    options: FFButtonOptions(
                                                      width: 170,
                                                      height: 40,
                                                      color: FlutterFlowTheme
                                                          .background,
                                                      textStyle:
                                                          FlutterFlowTheme
                                                              .subtitle2
                                                              .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color: Colors.white,
                                                      ),
                                                      elevation: 0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1,
                                                      ),
                                                      borderRadius: 8,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 20, 0, 0),
                                                  child: TextFormField(
                                                    controller:
                                                        emailAddressController,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          'Email Address',
                                                      labelStyle:
                                                          FlutterFlowTheme
                                                              .bodyText1
                                                              .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0x98FFFFFF),
                                                      ),
                                                      hintText:
                                                          'Enter your email...',
                                                      hintStyle:
                                                          FlutterFlowTheme
                                                              .bodyText1
                                                              .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0x98FFFFFF),
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme
                                                              .darkBackground,
                                                      contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(20, 24,
                                                                  20, 24),
                                                    ),
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: FlutterFlowTheme
                                                          .tertiaryColor,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 0),
                                                  child: TextFormField(
                                                    controller:
                                                        passwordCreateController,
                                                    obscureText:
                                                        !passwordCreateVisibility,
                                                    decoration: InputDecoration(
                                                      labelText: 'Password',
                                                      labelStyle:
                                                          FlutterFlowTheme
                                                              .bodyText1
                                                              .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0x98FFFFFF),
                                                      ),
                                                      hintText:
                                                          'Enter your password...',
                                                      hintStyle:
                                                          FlutterFlowTheme
                                                              .bodyText1
                                                              .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0x98FFFFFF),
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme
                                                              .darkBackground,
                                                      contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(20, 24,
                                                                  20, 24),
                                                      suffixIcon: InkWell(
                                                        onTap: () => setState(
                                                          () => passwordCreateVisibility =
                                                              !passwordCreateVisibility,
                                                        ),
                                                        child: Icon(
                                                          passwordCreateVisibility
                                                              ? Icons
                                                                  .visibility_outlined
                                                              : Icons
                                                                  .visibility_off_outlined,
                                                          color:
                                                              Color(0x98FFFFFF),
                                                          size: 20,
                                                        ),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: FlutterFlowTheme
                                                          .tertiaryColor,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 0),
                                                  child: TextFormField(
                                                    controller:
                                                        passwordConfirmController,
                                                    obscureText:
                                                        !passwordConfirmVisibility,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          'Confirm Password',
                                                      labelStyle:
                                                          FlutterFlowTheme
                                                              .bodyText1
                                                              .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0x98FFFFFF),
                                                      ),
                                                      hintText:
                                                          'Enter your password...',
                                                      hintStyle:
                                                          FlutterFlowTheme
                                                              .bodyText1
                                                              .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0x98FFFFFF),
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme
                                                              .darkBackground,
                                                      contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(20, 24,
                                                                  20, 24),
                                                      suffixIcon: InkWell(
                                                        onTap: () => setState(
                                                          () => passwordConfirmVisibility =
                                                              !passwordConfirmVisibility,
                                                        ),
                                                        child: Icon(
                                                          passwordConfirmVisibility
                                                              ? Icons
                                                                  .visibility_outlined
                                                              : Icons
                                                                  .visibility_off_outlined,
                                                          color:
                                                              Color(0x98FFFFFF),
                                                          size: 20,
                                                        ),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: FlutterFlowTheme
                                                          .tertiaryColor,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 24, 0, 24),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      final user =
                                                          await createAccountWithEmail(
                                                        context,
                                                        emailAddressController
                                                            .text,
                                                        passwordCreateController
                                                            .text,
                                                      );
                                                      if (user == null) {
                                                        return;
                                                      }

                                                      await Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              CompleteProfileWidget(),
                                                        ),
                                                      );
                                                    },
                                                    text: 'Create Account',
                                                    options: FFButtonOptions(
                                                      width: 230,
                                                      height: 60,
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      textStyle:
                                                          FlutterFlowTheme
                                                              .subtitle2
                                                              .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color: FlutterFlowTheme
                                                            .textColor,
                                                      ),
                                                      elevation: 3,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1,
                                                      ),
                                                      borderRadius: 8,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
