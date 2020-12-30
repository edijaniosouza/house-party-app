import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:house_party/database/dao/user_dao.dart';
import 'package:house_party/theme/app_theme.dart';

class LateralMenu extends StatelessWidget {
  LateralMenu({
    Key key,
  }) : super(key: key);

  UserDAO _userDAO = UserDAO();

  singOut(BuildContext context) {
    _userDAO.deleteAll();
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppTheme.defaultTheme.scaffoldBackgroundColor,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppTheme.defaultTheme.primaryColor
              ),
              child: CircleAvatar(
                child: Image.asset('assets/images/caneca_baloes-vetor.png'),
                backgroundColor: AppTheme.defaultTheme.scaffoldBackgroundColor,
              ),
            ),
            Card(
              elevation: 4,
              child: ListTile(
                onTap: () {
                  singOut(context);
                },
                leading: FaIcon(FontAwesomeIcons.signOutAlt, size: 25,),
                title: Text(
                  'Sair',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
