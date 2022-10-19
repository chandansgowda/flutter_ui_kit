import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../theme.dart';

class FavouritesWidget extends StatelessWidget {
  const FavouritesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Text(
            "Favourite picks of the day",
            style: AppThemes.bodyText1MaliBold.copyWith(fontSize: 16),
          ),
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              NeumorphicButton(
                onPressed: () {},
                style: const NeumorphicStyle(
                  depth: 5,
                  color: AppThemes.appScaffold,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      foregroundImage: NetworkImage(
                          'https://seeafricatoday.com/wp-content/uploads/2020/04/Ethiopian-coffee-2-2048x1365.jpg'),
                      radius: 15.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Espresso",
                      overflow: TextOverflow.ellipsis,
                      style: AppThemes.bodyText1MaliBold,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              NeumorphicButton(
                onPressed: () {},
                style: const NeumorphicStyle(
                  depth: 5,
                  color: AppThemes.appScaffold,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      foregroundImage: NetworkImage(
                          'https://th.bing.com/th/id/R.0ecc3f0e6da88064dfa4ad0dfdb12409?rik=dmYKTYF1lqq0Eg&riu=http%3a%2f%2fimages6.fanpop.com%2fimage%2fphotos%2f39000000%2f-Coffee-coffee-39019633-2048-2048.jpg&ehk=npPBEZN6HofMZSNlm2d%2fRL8TI1OhGVu%2fOMgO%2fB84wtg%3d&risl=&pid=ImgRaw&r=0'),
                      radius: 15.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Latte",
                      overflow: TextOverflow.ellipsis,
                      style: AppThemes.bodyText1MaliBold,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              NeumorphicButton(
                onPressed: () {},
                style: const NeumorphicStyle(
                  depth: 5,
                  color: AppThemes.appScaffold,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      foregroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.iOXZtzh5WOOqyrGJDHLm_wHaHa?pid=ImgDet&rs=1'),
                      radius: 15.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "venti",
                      overflow: TextOverflow.ellipsis,
                      style: AppThemes.bodyText2MaliBoldSmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              NeumorphicButton(
                onPressed: () {},
                style: const NeumorphicStyle(
                  depth: 5,
                  color: AppThemes.appScaffold,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      foregroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.iOXZtzh5WOOqyrGJDHLm_wHaHa?pid=ImgDet&rs=1'),
                      radius: 15.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Americano",
                      overflow: TextOverflow.ellipsis,
                      style: AppThemes.bodyText2MaliBoldSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
