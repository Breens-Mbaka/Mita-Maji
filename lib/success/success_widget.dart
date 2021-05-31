import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessWidget extends StatefulWidget {
  SuccessWidget({Key key}) : super(key: key);

  @override
  _SuccessWidgetState createState() => _SuccessWidgetState();
}

class _SuccessWidgetState extends State<SuccessWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF242038),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 0, 8),
          child: Image.asset(
            'assets/images/logo-icon.svg',
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
        ),
        title: Align(
          alignment: Alignment(-1.2, 0),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 70, 8),
            child: Text(
              'Mita Maji',
              style: FlutterFlowTheme.title1.override(
                fontFamily: 'Dosis',
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 10, 0),
            child: InkWell(
              onTap: () async {
                Navigator.pop(context);
              },
              child: Text(
                '< Back',
                style: FlutterFlowTheme.bodyText2.override(
                  fontFamily: 'Dosis',
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.secondaryColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.tertiaryColor,
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Success',
                      style: FlutterFlowTheme.title2.override(
                        fontFamily: 'Dosis',
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/SplashLogo.svg',
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                color: Color(0xFFCAC4CE),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Image.asset(
                      'assets/images/logo-icon.svg',
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 0, 0, 3),
                    child: Text(
                      'Mita Maji. Copyright 2021.',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Dosis',
                        color: Color(0xFFA37AD9),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
