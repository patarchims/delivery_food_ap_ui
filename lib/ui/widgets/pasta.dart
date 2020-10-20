part of 'widgets.dart';

class PastaWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: darkGrey,
            width: 300,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Stack(
                  children: [
                    Parent(
                        child: Parent(
                          child: Column(
                            children: [],
                          ),
                          style: ParentStyle()
                            ..width(double.infinity)
                            ..height(double.infinity)
                            ..borderRadius(all: 40)
                            ..linearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  blackColor.withOpacity(0.1),
                                  blackColor.withOpacity(0.9)
                                ]),
                        ),
                        style: ParentStyle()
                          ..height(310)
                          ..width(double.infinity)
                          ..borderRadius(all: 40)
                          ..background.image(
                              path: "assets/images/background1.png",
                              fit: BoxFit.cover)
                          ..margin(
                              top: 2 * defaultMargin,
                              left: defaultMargin,
                              right: defaultMargin)),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            "assets/images/food1.png",
                            width: 150,
                            height: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Txt(
                          "Tuscana Eggs",
                          style: TxtStyle()
                            ..textColor(whiteColor)
                            ..fontSize(32)
                            ..bold(),
                        ),
                        Txt("The perfect summer salad of melon, \n olives and feta cheese with toasted",
                            style: TxtStyle()
                              ..textAlign.justify()
                              ..textColor(whiteColor)
                              ..fontSize(16)),
                        SizedBox(
                          height: 15,
                        ),
                        Parent(
                            child: Txt(
                              "Try it",
                              style: TxtStyle()
                                ..bold()
                                ..textAlign.center()
                                ..textColor(orangeColor)
                                ..fontSize(18),
                            ),
                            style: ParentStyle()
                              ..border(all: 2, color: orangeColor)
                              ..borderRadius(all: 10)
                              ..width(150)
                              ..padding(all: 10))
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Txt(
                        "Popular",
                        style: TxtStyle()
                          ..textColor(whiteColor)
                          ..fontSize(22)
                          ..bold(),
                      ),
                      Txt(
                        "more",
                        style: TxtStyle()
                          ..textColor(orangeColor)
                          ..fontSize(16)
                          ..bold(),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Row(
                    children: [
                      buildPopularFood("assets/images/popular1.png", "5\$",
                          "450g", "Italian beef"),
                      SizedBox(
                        width: 20,
                      ),
                      buildPopularFood("assets/images/popular2.png", "7\$",
                          "350 g", "Japan Wok"),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Expanded buildPopularFood(String image, String price, String g, String name) {
    return Expanded(
      child: Parent(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Txt(
              price,
              style: TxtStyle()
                ..textColor(yellowColor)
                ..fontSize(45)
                ..bold(),
            ),
            Txt(g,
                style: TxtStyle()
                  ..textColor(whiteColor)
                  ..fontSize(22)),
            SizedBox(
              height: 5,
            ),
            Parent(
              style: ParentStyle()
                ..height(2)
                ..width(double.infinity)
                ..borderRadius(all: 10)
                ..background.color(whiteColor),
            ),
            SizedBox(
              height: 5,
            ),
            Txt(
              name,
              style: TxtStyle()
                ..textColor(whiteColor)
                ..fontSize(26)
                ..bold(),
            ),
          ],
        ),
        style: ParentStyle()
          ..background.image(path: image, fit: BoxFit.cover)
          ..borderRadius(all: 20)
          ..padding(all: 15),
      ),
    );
  }
}
