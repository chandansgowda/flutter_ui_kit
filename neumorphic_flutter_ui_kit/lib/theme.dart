import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// CHANGE ACCORDING TO THE THEME OF THE PROJECT
class AppThemes {
  static const borderRadius = 6.0;

  static const appNavyBlue = Color(0xFF0B0F1A),
      appDarkBlue = Color(0xFF0C1D31),
      appBlue = Color(0xFF0F2743),
      appDarkGrey = Color(0xFFABABAB),
      appGold = Color(0xFFBA8820),
      appGrey = Color(0xFFC6C6C8),
      appError = Color(0xFFDC2626),
      appScaffold = Color(0xFFF0F0F3),
      appNeutral = Color(0xFF4B5768);

  /// Inner shadow effect
  static const NeumorphicStyle innerShadowEffect = NeumorphicStyle(
    oppositeShadowLightSource: true,
    shadowLightColorEmboss: Colors.white,
    shape: NeumorphicShape.concave,
    shadowDarkColor: Colors.white,
    intensity: 1,
    shadowDarkColorEmboss: Colors.transparent,
    depth: -3,
  );

  static const BoxDecoration lowerShadow = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Color.fromARGB(70, 88, 88, 88),
        offset: Offset(5, 5),
        blurRadius: 4,
        spreadRadius: 0,
      ),
      BoxShadow(
        color: Colors.white,
        offset: Offset(-5, -5),
        blurRadius: 4,
        spreadRadius: 0,
      ),
    ],
  );

  static const Color appTextColor = Color(0xff0F172A),
      white = Color(0xffffffff),
      offWhite = Color(0xfff0f0f0);

  static final ColorScheme lightColorScheme =
      const ColorScheme.light().copyWith(
    primary: appBlue,
    secondary: appNavyBlue,
    error: appError,
    background: Colors.grey.shade100,
    surface: Colors.white,
  );

  static void customSnackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.white,
        elevation: 2,
        margin: const EdgeInsets.all(10),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            5,
          ),
        ),
        content: Text(
          text,
          style: const TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }

  static TextStyle captionJosefin = const TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: "JosefinSans",
  );

  static TextStyle josefinRegular = const TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 20,
    letterSpacing: 1,
    fontFamily: "JosefinSans",
  );

  static TextStyle heading4JosefinBold = const TextStyle(
    color: Color(0xff0F172A),
    fontWeight: FontWeight.w900,
    fontSize: 28,
    letterSpacing: -1,
    fontFamily: "JosefinSans",
  );

  static TextStyle heading4BoldExo = const TextStyle(
    color: Color(0xff0F172A),
    fontWeight: FontWeight.bold,
    fontSize: 28,
    letterSpacing: -2,
    fontFamily: "Exo",
  );

  static TextStyle heading4ExtraBoldExo = const TextStyle(
    color: Color(0xff0F172A),
    fontWeight: FontWeight.w900,
    fontSize: 28,
    letterSpacing: -2,
    fontFamily: "Exo",
  );

  static TextStyle heading4SemiBoldExoSmall = const TextStyle(
    color: Color(0xff0F172A),
    fontWeight: FontWeight.w700,
    fontSize: 23,
    letterSpacing: -2,
    fontFamily: "Exo",
  );

  static TextStyle heading4BoldExoSmall = const TextStyle(
    color: Color(0xff0F172A),
    fontWeight: FontWeight.bold,
    fontSize: 23,
    letterSpacing: -2,
    fontFamily: "Exo",
  );

  static TextStyle heading4ExtraBoldExoSmall = const TextStyle(
    color: Color(0xff0F172A),
    fontWeight: FontWeight.w900,
    fontSize: 23,
    letterSpacing: -2,
    fontFamily: "Exo",
  );

  static TextStyle subTitleNunitoBold = const TextStyle(
    color: Color(0xff0F172A),
    fontWeight: FontWeight.bold,
    fontSize: 20,
    fontFamily: "Nunito",
  );

  static TextStyle subTitleNunitoRegularUnderLine = const TextStyle(
    color: Color(0xff0F172A),
    fontSize: 20,
    fontFamily: "Nunito",
    decoration: TextDecoration.underline,
  );

  static TextStyle subTitleNunitoRegular = const TextStyle(
    color: Color(0xff0F172A),
    fontSize: 20,
    fontFamily: "Nunito",
  );

  static TextStyle subTitle2MaliBold = const TextStyle(
    color: Color(0xff0F172A),
    fontWeight: FontWeight.bold,
    fontSize: 14,
    fontFamily: "Mali",
  );

  static TextStyle subTitle2MaliRegularUnderLine = const TextStyle(
    color: Color(0xff0F172A),
    fontWeight: FontWeight.bold,
    fontSize: 14,
    fontFamily: "Mali",
    decoration: TextDecoration.underline,
  );

  static TextStyle bodyText1MaliBold = const TextStyle(
    color: Color(0xff0F172A),
    fontWeight: FontWeight.bold,
    fontSize: 16,
    fontFamily: "Mali",
  );

  static TextStyle bodyText1MaliRegularUnderline = const TextStyle(
    color: Color(0xff0F172A),
    fontSize: 16,
    fontFamily: "Mali",
    decoration: TextDecoration.underline,
  );

  static TextStyle bodyText2MaliBold = const TextStyle(
    color: Color(0xff0F172A),
    fontWeight: FontWeight.bold,
    fontSize: 18,
    fontFamily: "Mali",
  );

  static TextStyle bodyText2MaliRegularUnderLine = const TextStyle(
    color: Color(0xff0F172A),
    fontSize: 18,
    fontFamily: "Mali",
    decoration: TextDecoration.underline,
  );

  static TextStyle bodyText2MaliRegularSmall = const TextStyle(
    color: Color(0xff0F172A),
    fontSize: 16,
    fontFamily: "Mali",
  );

  static TextStyle bodyText2MaliBoldSmall = const TextStyle(
    color: Color(0xff0F172A),
    fontWeight: FontWeight.bold,
    fontSize: 16,
    fontFamily: "Mali",
  );

  static TextStyle bodyText2MaliRegularSmallUnderLine = const TextStyle(
    color: Color(0xff0F172A),
    fontSize: 16,
    fontFamily: "Mali",
    decoration: TextDecoration.underline,
  );

  static TextStyle captionMaliBold = const TextStyle(
    color: appBlue,
    fontWeight: FontWeight.bold,
    fontSize: 12,
    fontFamily: "Mali",
  );

  static TextStyle overLineMaliBold = const TextStyle(
    color: Color(0xff0F172A),
    fontWeight: FontWeight.bold,
    fontSize: 10,
    letterSpacing: 2,
    fontFamily: "Mali",
  );

  static TextStyle overLineMaliBoldCaps = const TextStyle(
    color: Color(0xff0F172A),
    fontWeight: FontWeight.bold,
    fontSize: 10,
    letterSpacing: 8,
    fontFamily: "Mali",
  );

  static TextStyle josefin = const TextStyle(
    color: Color(0xff0F172A),
    fontWeight: FontWeight.bold,
    fontSize: 28,
    fontFamily: "JosefinSans",
  );

  static get textTheme => const TextTheme(
        headline4: TextStyle(
          color: Color(0xff0F172A),
          fontWeight: FontWeight.w700,
          fontSize: 28,
          fontFamily: "Exo",
        ),
        headline5: TextStyle(
          color: Color(0xffEF4444),
          fontWeight: FontWeight.bold,
          fontSize: 18,
          fontFamily: "Nunito",
        ),
        subtitle1: TextStyle(
          color: Color(0xff0F172A),
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontFamily: "Nunito",
        ),
        subtitle2: TextStyle(
          color: Color(0xff0F172A),
          fontSize: 14,
          fontFamily: "Mali",
        ),
        bodyText1: TextStyle(
          color: Color(0xff0F172A),
          fontSize: 16,
          fontFamily: "Mali",
        ),
        bodyText2: TextStyle(
          color: Color(0xff0F172A),
          fontSize: 18,
          fontFamily: "Mali",
        ),
        caption: TextStyle(
          color: Color(0xff0F172A),
          fontSize: 12,
          fontFamily: "Mali",
        ),
        overline: TextStyle(
          color: Color(0xff0F172A),
          fontSize: 10,
          letterSpacing: 2,
          fontFamily: "Mali",
        ),
      );

  static TextTheme globalTextTheme(ThemeData theme) {
    var txtTheme = theme.textTheme;

    return txtTheme;
  }

  static final ThemeData lightTheme = ThemeData.from(
          colorScheme: lightColorScheme,
          textTheme: globalTextTheme(ThemeData.light()))
      .copyWith(
    splashColor: appBlue.withOpacity(0.2),
    primaryColor: appBlue,
    toggleableActiveColor: appBlue,
    scaffoldBackgroundColor: appScaffold,
    textTheme: textTheme,
    iconTheme: const IconThemeData(color: appBlue),
    inputDecorationTheme: const InputDecorationTheme()
        .copyWith(isDense: true, border: const OutlineInputBorder()),
    appBarTheme: ThemeData.light().appBarTheme.copyWith(
          // centerTitle: true,
          backgroundColor: appScaffold,

          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.grey),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          toolbarTextStyle: globalTextTheme(ThemeData.light()).bodyText2,
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              4.0,
            ),
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        side:
            // MaterialStateProperty.resolveWith((states) => {
            //   if(states.contains(MaterialState.pressed))
            // })

            MaterialStateProperty.all(
          const BorderSide(
            color: appBlue,
            width: 2.5,
            style: BorderStyle.solid,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              8.0,
            ),
          ),
        ),
      ),
    ),
    cardTheme: const CardTheme(
      color: appScaffold,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    ),
    colorScheme: lightColorScheme.copyWith(secondary: appNavyBlue),
  );
}
