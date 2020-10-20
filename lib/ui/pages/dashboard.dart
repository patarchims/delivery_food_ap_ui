part of 'pages.dart';

class DashboardPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Container(
              margin: EdgeInsets.fromLTRB(defaultMargin, 2 * defaultMargin,
                  defaultMargin, defaultMargin),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Parent(
                        child: Txt(
                          "Menu",
                          style: TxtStyle()
                            ..textColor(whiteColor)
                            ..fontSize(26),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                        width: 18,
                        child: Icon(
                          MdiIcons.shopping,
                          color: whiteColor,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
            backgroundColor: darkGrey,
            bottom: TabBar(
              unselectedLabelColor: whiteColor,
              labelPadding: EdgeInsets.all(1),
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: orangeColor,
              ),
              tabs: [
                buildTabsbar("Pasta"),
                buildTabsbar("Salads"),
                buildTabsbar("Soup"),
                buildTabsbar("Pizza"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              PastaWidgets(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
            ],
          ),
        ));
  }

  Tab buildTabsbar(String title) {
    return Tab(
      child: Parent(
        child: Center(
          child: Txt(
            title,
            style: TxtStyle()
              ..textColor(whiteColor)
              ..fontSize(16),
          ),
        ),
      ),
    );
  }
}
