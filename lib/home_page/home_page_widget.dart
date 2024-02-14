// ignore_for_file: use_build_context_synchronously, unused_local_variable, unnecessary_null_comparison

import 'package:economiza_ae/authentication_page/authentication_page_widget.dart';
import 'package:economiza_ae/backend/api_requests/api_calls.dart';
import 'package:economiza_ae/models/filial_model.dart';
import 'package:economiza_ae/models/pessoa_juridica.dart';

import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: const Color(0xFF78618F),
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamedAuth('AuthenticationPage', context.mounted);

            GoRouter.of(context).prepareAuthEvent();
            await authManager.signOut();
            GoRouter.of(context).clearRedirectLocation();
          },
          child: const Icon(
            Icons.menu,
            color: Color(0xFFFCFCFC),
            size: 24,
          ),
        ),
        flexibleSpace: FlexibleSpaceBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Economiza',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: const Color(0xFFFCCDB9),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'aê!',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: const Color(0xFF37EFE4),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          centerTitle: true,
          expandedTitleScale: 1.0,
          titlePadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
        ),
        elevation: 2,
      ),
      body: Container(
        color: const Color(0xFFA8C2CA),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
          child: ListView(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                ),
                child: GridView.count(
                  padding: EdgeInsets.zero,
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 10,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true, // Use shrinkWrap to ensure proper sizing
                  physics:
                      const NeverScrollableScrollPhysics(), // Disable scrolling
                  children: List<Widget>.generate(
                    TipoEmpresa.values.length,
                    (index) {
                      TipoEmpresa tipoEmpresa = TipoEmpresa.values[index];
                      if (tipoEmpresa.name.contains('_')) {
                        tipoEmpresa.name.replaceAll('_', ' ');
                      }

                      IconData iconData;

                      // Use a switch statement to select the icon based on tipoEmpresa.name
                      switch (tipoEmpresa.name) {
                        case 'SUPERMERCADO':
                          iconData = Icons.local_grocery_store;
                          break;
                        case 'POSTO_COMBUSTIVEL':
                          iconData = Icons.local_gas_station;
                          break;
                        case 'DROGRARIA':
                          iconData = Icons.medication;
                          break;
                        case 'MATERIAIS_CONSTRUCAO':
                          iconData = Icons.construction;
                          break;
                        default:
                          iconData = Icons
                              .error; // Default icon if tipoEmpresa.name doesn't match any case
                      }

                      return GestureDetector(
                        onTap: () {
                          // Replace 'YourNextScreen' with the name of your destination screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const AuthenticationPageWidget(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF54B7DC),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(5, 5),
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.all(30),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  iconData,
                                  size:
                                      40, // Adjust the size of the icon as needed
                                  color: Colors
                                      .white, // Adjust the color of the icon as needed
                                ),
                                const SizedBox(
                                    height:
                                        10), // Add space between icon and text
                                Text(
                                  tipoEmpresa.name.replaceAll('_',
                                      ' DE '), // Replace with your actual text
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
