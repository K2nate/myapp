import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDetailsAppBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 21),
                      blurRadius: 53,
                      color: Colors.black.withOpacity(0.05),
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  buildTitleWithMoreIcon(),
                  SizedBox(
                    height: 15,
                  ),
                  buildCaseNumber(context),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "From Health Center",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: kTextMediumColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildCaseNumber(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "547",
          style: Theme.of(context)
              .textTheme
              .headline2
              .copyWith(color: kPrimaryColor, height: 1.2),
        ),
        Text(
          "5.9%",
          style: TextStyle(color: kPrimaryColor),
        ),
        Icon(
          Icons.trending_up,
          color: kPrimaryColor,
        )
      ],
    );
  }

  Row buildTitleWithMoreIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "New Cases",
          style: TextStyle(
            color: kTextMediumColor,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        Icon(
          Icons.more_vert,
        )
      ],
    );
  }

  AppBar buildDetailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackGroundColor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: kPrimaryColor,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: kPrimaryColor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
