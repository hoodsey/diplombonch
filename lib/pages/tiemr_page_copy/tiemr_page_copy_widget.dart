import '/backend/backend.dart';
import '/components/tasks_edit_widget.dart';
import '/components/timer_settings_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'tiemr_page_copy_model.dart';
export 'tiemr_page_copy_model.dart';

class TiemrPageCopyWidget extends StatefulWidget {
  const TiemrPageCopyWidget({
    super.key,
    this.date,
    int? timerValue,
  }) : this.timerValue = timerValue ?? 1500000;

  final DateTime? date;
  final int timerValue;

  static String routeName = 'tiemr_pageCopy';
  static String routePath = '/tiemrPageCopy';

  @override
  State<TiemrPageCopyWidget> createState() => _TiemrPageCopyWidgetState();
}

class _TiemrPageCopyWidgetState extends State<TiemrPageCopyWidget> {
  late TiemrPageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TiemrPageCopyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Фокус-Таймер',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  FlutterFlowTheme.of(context).primary,
                  FlutterFlowTheme.of(context).secondary
                ],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Color(0x99FFFFFF),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: CircularPercentIndicator(
                                percent: 1.0,
                                radius: 75.0,
                                lineWidth: 150.0,
                                animation: true,
                                animateFromLastPercent: true,
                                progressColor:
                                    FlutterFlowTheme.of(context).primary,
                                backgroundColor: Color(0x33FFFFFF),
                                center: Text(
                                  '25:00',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Inter Tight',
                                        color: Color(0xFF1A5E20),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Text(
                              'Pomodoro 1 из 4',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: Color(0xFF1A5E20),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderRadius: 32.0,
                          borderWidth: 2.0,
                          buttonSize: 64.0,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          icon: Icon(
                            Icons.play_arrow_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 32.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderRadius: 32.0,
                          borderWidth: 2.0,
                          buttonSize: 64.0,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          icon: Icon(
                            Icons.pause_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 32.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderRadius: 32.0,
                          borderWidth: 2.0,
                          buttonSize: 64.0,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          icon: Icon(
                            Icons.refresh_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 32.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ].divide(SizedBox(width: 24.0)),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x99FFFFFF),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                5.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Режим сессии',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: TimerSettingsWidget(),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: Container(
                                          width: 120.0,
                                          height: 80.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 5.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  3.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.work_outline_rounded,
                                                  color: Colors.white,
                                                  size: 24.0,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Deep Work',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 112.3,
                                        height: 80.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 5.0,
                                              color: Color(0x33000000),
                                              offset: Offset(
                                                0.0,
                                                3.0,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.timer_rounded,
                                                color: Colors.white,
                                                size: 24.0,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  'Pomodoro',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 120.0,
                                        height: 80.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 5.0,
                                              color: Color(0x33000000),
                                              offset: Offset(
                                                0.0,
                                                3.0,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.fitness_center_rounded,
                                                color: Colors.white,
                                                size: 24.0,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  'Спринт',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              5.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Связать с задачей',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            StreamBuilder<List<TaskRecord>>(
                              stream: queryTaskRecord(
                                queryBuilder: (taskRecord) => taskRecord.where(
                                  'status',
                                  isNotEqualTo: 'Выполнена',
                                ),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<TaskRecord> dropDownTaskRecordList =
                                    snapshot.data!;

                                return FlutterFlowDropDown<String>(
                                  controller: _model.dropDownValueController ??=
                                      FormFieldController<String>(null),
                                  options: [
                                    'Подготовка презентации',
                                    'Изучение материалов',
                                    'Написание отчета'
                                  ],
                                  onChanged: (val) => safeSetState(
                                      () => _model.dropDownValue = val),
                                  width: double.infinity,
                                  height: 50.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Выберите задачу...',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Colors.white,
                                    size: 24.0,
                                  ),
                                  fillColor: Color(0x33FFFFFF),
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderWidth: 1.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 4.0, 12.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                );
                              },
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () {
                                        FocusScope.of(context).unfocus();
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: TasksEditWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              text: 'Создать новую задачу',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0x33FFFFFF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Статистика',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: Color(0xFF1A5E20),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FutureBuilder<int>(
                                      future: queryTimerSessionRecordCount(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        int textCount = snapshot.data!;

                                        return Text(
                                          valueOrDefault<String>(
                                            textCount.toString(),
                                            '0',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Inter',
                                                color: Color(0xFF1A5E20),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        );
                                      },
                                    ),
                                    Text(
                                      'Сессий сегодня',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Inter',
                                            color: Color(0xFF1A5E20),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '1ч 40м',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Inter',
                                            color: Color(0xFF1A5E20),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      'Общее время',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Inter',
                                            color: Color(0xFF1A5E20),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '2',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Inter',
                                            color: Color(0xFF1A5E20),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      'Задач завершено',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Inter',
                                            color: Color(0xFF1A5E20),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
