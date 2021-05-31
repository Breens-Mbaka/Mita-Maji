import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReadingsWidget extends StatefulWidget {
  ReadingsWidget({Key key}) : super(key: key);

  @override
  _ReadingsWidgetState createState() => _ReadingsWidgetState();
}

class _ReadingsWidgetState extends State<ReadingsWidget> {
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
                padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Readings',
                      style: FlutterFlowTheme.title2.override(
                        fontFamily: 'Dosis',
                      ),
                    ),
                    Expanded(
                      child: StreamBuilder<List<ReadingsRecord>>(
                        stream: queryReadingsRecord(
                          queryBuilder: (readingsRecord) =>
                              readingsRecord.orderBy('date_of_recording'),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(child: CircularProgressIndicator());
                          }
                          List<ReadingsRecord> listViewReadingsRecordList =
                              snapshot.data;
                          // Customize what your widget looks like with no query results.
                          if (snapshot.data.isEmpty) {
                            // return Container();
                            // For now, we'll just include some dummy data.
                            listViewReadingsRecordList =
                                createDummyReadingsRecord(count: 4);
                          }
                          return Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewReadingsRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewReadingsRecord =
                                    listViewReadingsRecordList[listViewIndex];
                                return Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 40, 4),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Color(0xFFCAC4CE),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Customer: Breens',
                                                style: FlutterFlowTheme
                                                    .subtitle1
                                                    .override(
                                                  fontFamily: 'Dosis',
                                                  color: Color(0xFF242038),
                                                ),
                                              ),
                                              Text(
                                                'Agent: Agent 007',
                                                style: FlutterFlowTheme
                                                    .subtitle2
                                                    .override(
                                                  fontFamily: 'Dosis',
                                                  fontWeight: FontWeight.w800,
                                                ),
                                              ),
                                              Text(
                                                'Reading: 12737129837',
                                                style: FlutterFlowTheme
                                                    .subtitle2
                                                    .override(
                                                  fontFamily: 'Dosis',
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        },
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
