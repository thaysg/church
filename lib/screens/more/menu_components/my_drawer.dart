import 'package:church/css/css.dart';
import 'package:church/screens/more/menu_components/header_drawer.dart';
import 'package:church/screens/more/menu_components/menu_components.dart';
import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MenuComponents(
            tapMenu: () {},
            iconMenu: Icons.person,
            titleMenu: 'Perfil',
          ),
          Divider(),
          MenuComponents(
            tapMenu: () {},
            iconMenu: Icons.monetization_on,
            titleMenu: 'Doações',
          ),
          Divider(),
          MenuComponents(
            tapMenu: () {},
            iconMenu: Icons.group,
            titleMenu: 'Grupos',
          ),
          Divider(),
          MenuComponents(
            tapMenu: () {},
            iconMenu: Icons.blur_circular_outlined,
            titleMenu: 'Grupo Missões',
          ),
          Divider(),
          MenuComponents(
            tapMenu: () {},
            iconMenu: Icons.person_pin,
            titleMenu: 'Pedido de Oração',
          ),
          Divider(),
          MenuComponents(
            tapMenu: () {},
            iconMenu: Icons.source,
            titleMenu: 'Ação Social',
          ),
        ],
      ),
    );
    /* Align(
      alignment: Alignment.topRight,
      child: MultiLevelDrawer(
        backgroundColor: secondaryColor,
        header: HeaderMenu(
          picture: AssetImage(
            'images/man.png',
          ),
          name: 'Pastor Francisco',
        ),
        children: [
          MLMenuItem(
            leading: Icon(
              Icons.person,
              color: colorIconsMenu,
            ),
            content: Text(
              'Perfil',
              style: textMenu,
            ),
            onClick: () {},
          ),
          MLMenuItem(
            leading: Icon(
              Icons.attach_money_sharp,
              color: colorIconsMenu,
            ),
            content: Text(
              'Doações',
              style: textMenu,
            ),
            onClick: () {},
          ),
          MLMenuItem(
            onClick: () {},
            leading: Icon(
              Icons.group,
              color: colorIconsMenu,
            ),
            content: Text(
              'Grupos',
              style: textMenu,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: colorIconsMenu,
            ),
            subMenuItems: [
              MLSubmenu(
                submenuContent: Text('Grupo Crianças'),
              ),
              MLSubmenu(
                submenuContent: Text('Grupo Homens'),
              ),
              MLSubmenu(
                submenuContent: Text('Grupo Mulheres'),
              ),
            ],
          ),
        ],
      ),
    ); */
  }
}
