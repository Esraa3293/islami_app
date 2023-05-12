import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/hadeth_content.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/ahadeth_provider.dart';
import 'package:provider/provider.dart';

class AhadethTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AhadethProvider()..loadAhadethFile(),
      builder: (context, child) {
        var provider = Provider.of<AhadethProvider>(context);
        return Center(
          child: Column(
            children: [
              Image.asset("assets/images/basmala.png"),
              Divider(
                thickness: 2,
                color: Theme.of(context).brightness == Brightness.light
                    ? Theme.of(context).primaryColor
                    : MyThemeData.yellowColor,
              ),
              Text(
                AppLocalizations.of(context)!.ahadeth,
                style: GoogleFonts.elMessiri(
                    fontSize: 25, fontWeight: FontWeight.w500),
              ),
              Divider(
                thickness: 2,
                color: Theme.of(context).brightness == Brightness.light
                    ? Theme.of(context).primaryColor
                    : MyThemeData.yellowColor,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    thickness: 1,
                    color: Theme.of(context).brightness == Brightness.light
                        ? Theme.of(context).primaryColor
                        : MyThemeData.yellowColor,
                    indent: 35,
                    endIndent: 35,
                  ),
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HadethContent.routeName,
                          arguments: provider.allAhadeth[index]);
                    },
                    child: Text(
                      provider.allAhadeth[index].title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  itemCount: provider.allAhadeth.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
