// @dart=2.9

import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../upload3d/upload3d_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AlzheimersPositiveWidget extends StatefulWidget {
  const AlzheimersPositiveWidget({Key key}) : super(key: key);

  @override
  _AlzheimersPositiveWidgetState createState() =>
      _AlzheimersPositiveWidgetState();
}

class _AlzheimersPositiveWidgetState extends State<AlzheimersPositiveWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      slideOffset: Offset(0, -51),
    ),
    'stackOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      slideOffset: Offset(0, -78),
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      slideOffset: Offset(0, -29),
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
          Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: AutoSizeText(
                              'Alzheimers Detected',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.getFont(
                                'Lexend Deca',
                                color: FlutterFlowTheme.textColor,
                                fontWeight: FontWeight.normal,
                                fontSize: 33,
                              ),
                            ).animated(
                                [animationsMap['textOnPageLoadAnimation']]),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Text(
                          'Our algorithms detected linguistic impairments in your speech while describing the following image that suggest you may suffer from Alzheimer\'s disease. ',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.bodyText1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 50),
                        child: Image.asset(
                          'assets/images/The-standardized-Cookie-Theft-picture-Goodglass-and-Kaplan-1983.png',
                          width: 300,
                          height: 220,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Divider(
                        height: 10,
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.45),
                        child: Container(
                          height: 200,
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, 1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 50, 0, 0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF262D34),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 60, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Set up NeuroCare AR',
                                            style: FlutterFlowTheme.subtitle1
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 8, 16, 0),
                                              child: Text(
                                                'Setup NeuroCare AR to navigate around your house with digital assistance. This can be done by selecting currently supported items and uploading custom 3D files of objects',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xB3FFFFFF),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, -0.75),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()
                                          // MultiSelectionExample(
                                          //     favoriteMovies),
                                          ),
                                    );
                                  },
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDF3F3F),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 7,
                                          color: Color(0x8E000000),
                                          offset: Offset(0, 3),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: FaIcon(
                                        FontAwesomeIcons.notesMedical,
                                        color: Colors.white,
                                        size: 60,
                                      ),
                                    ),
                                  ),
                                ).animated([
                                  animationsMap['containerOnPageLoadAnimation']
                                ]),
                              ),
                            ],
                          ),
                        ).animated([animationsMap['stackOnPageLoadAnimation']]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
