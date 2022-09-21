import 'package:aplicacion/screens/screens.dart';
import 'package:flutter/material.dart';

class MenuBarraLateral extends StatelessWidget {
  const MenuBarraLateral({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeader(),
          agregarOpcionBarraLateral(context, Icons.list_alt, 'Usuario Prueba', UsuarioPrueba.routerName),
          agregarOpcionBarraLateral(context, Icons.view_list_rounded, 'Bd Movimientos', BdMovimientosView.routerName),
          agregarOpcionBarraLateral(context, Icons.auto_graph_rounded, 'Estadisticas de empresa', EstadisticasEmpresaView.routerName),
          agregarOpcionBarraLateral(context, Icons.web, 'Tabero de Movimientos', TableroMovimientosView.routerName),
          agregarOpcionBarraLateral(context, Icons.monetization_on, 'Gastos', GastosView.routerName),
          agregarOpcionBarraLateral(context, Icons.receipt_long_outlined, 'Generar Reportes', GenerarReportesView.routerName),
          agregarOpcionBarraLateral(context, Icons.groups_outlined, 'Clientes', ClientesView.routerName),
          agregarOpcionBarraLateral(context, Icons.quick_contacts_dialer_outlined, 'Proveedores', ProveedoresView.routerName),
          agregarOpcionBarraLateral(context, Icons.settings_suggest_sharp, 'Configuración', ConfiguracionView.routerName),
          agregarOpcionBarraLateral(context, Icons.switch_account_rounded, 'Acceso de usuario', AccesoUsuarioView.routerName),
          agregarOpcionBarraLateral(context, Icons.assignment_late, 'Acerca de', AcercaDeView.routerName),
        ],
      ),
    );
  }
  
  ListTile agregarOpcionBarraLateral(BuildContext context, IconData icono, String nombreOpcion, String vista, ){
    return
    ListTile(
            leading: Icon(icono),
            title: Text(nombreOpcion),
            onTap: () {
              Navigator.pop(context);
              Navigator.restorablePushNamed(context, vista);
            },
          );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/logo.png'), fit: BoxFit.cover)),
      child: Container(),
    );
  }
}
