// @dart=2.9

import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NoDiseaseWidget extends StatefulWidget {
  const NoDiseaseWidget({Key key}) : super(key: key);

  @override
  _NoDiseaseWidgetState createState() => _NoDiseaseWidgetState();
}

class _NoDiseaseWidgetState extends State<NoDiseaseWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      slideOffset: Offset(0, -51),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Diagnostic Results',
          style: FlutterFlowTheme.title1,
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFF090F13),
      body: Stack(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                child: AutoSizeText(
                  'No Disease Detected',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Lexend Deca',
                    color: FlutterFlowTheme.textColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 33,
                  ),
                ).animated([animationsMap['textOnPageLoadAnimation']]),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Text(
                  'Our algorithms detected linguistic impairments in your speech while describing the following image that suggest you may suffer from Alzheimer\'s disease. ',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.bodyText1,
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional(0, -0.75),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: Text(
                'Our algorithms detected no linguistic impairments in your speech while describing the following image that suggest you may suffer from Alzheimer\'s disease. ',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.bodyText1,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, -0.4),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 50),
              child: Image.asset(
                'assets/images/The-standardized-Cookie-Theft-picture-Goodglass-and-Kaplan-1983.png',
                width: 300,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, 0.84),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        NavBarPage(initialPage: 'myAppointments'),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                ),
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 35),
                  child: Text(
                    'Book Official Diagnostic Test',
                    style: FlutterFlowTheme.title3,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, 0.76),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.2, 0.8),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Text(
                        'Book an official diagnostic test at a hospital near you to diagnose any diseaes',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.bodyText1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
