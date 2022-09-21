import 'package:aplicacion/firebase_options.dart';
import 'package:aplicacion/screens/screens.dart';
import 'package:aplicacion/services/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
   runApp(AppState());

}

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AgregarProductosService()),
        ChangeNotifierProvider(create: (_) => AgregarClientesService()),
        ChangeNotifierProvider(create: (_) => AgregarProveedoresService())
      ],
      child: MyApp(),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto',
      initialRoute: PaginaDeInicio.routerName,
      routes: {
        AccesoUsuarioView.routerName: (_) => const AccesoUsuarioView(),
        AcercaDeView.routerName: (_) => const AcercaDeView(),
        AgregarProductoView.routerName: (_) => const AgregarProductoView(),
        BdMovimientosView.routerName: (_) => const BdMovimientosView(),
        CatalogoProductos.routerName: (_) => const CatalogoProductos(),
        ClientesView.routerName: (_) => ClientesView(),
        Creditos.routerName: (_) => const Creditos(),
        ConfiguracionView.routerName: (_) => const ConfiguracionView(),
        EstadisticasEmpresaView.routerName: (_) => const EstadisticasEmpresaView(),
        Existencias.routerName: (_) =>  Existencias(),
        GastosView.routerName: (_) => const GastosView(),
        GenerarReportesView.routerName: (_) => const GenerarReportesView(),
        PaginaDeInicio.routerName: (_) => const PaginaDeInicio(),
        ProveedoresView.routerName: (_) => const ProveedoresView(),
        RealizarMovimientos.routerName: (_) => const RealizarMovimientos(),
        TableroMovimientosView.routerName: (_) => const TableroMovimientosView(),
        UsuarioPrueba.routerName: (_) => const UsuarioPrueba(),
        VentasDiarias.routerName: (_) => const VentasDiarias(),        
      },      
    );
  }
}
