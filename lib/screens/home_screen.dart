import 'package:book_i_have_read/consttants.dart';
import 'package:book_i_have_read/screens/details_screen.dart';
import 'package:book_i_have_read/widgets/book_rating.dart';
import 'package:book_i_have_read/widgets/reading_card_list.dart';
import 'package:book_i_have_read/widgets/two_side_rounded_button.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * .1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.display1,
                        children: [
                          TextSpan(text: "What are you \nreading "),
                          TextSpan(
                              text: "today?",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        ReadingListCard(
                          image: "assets/images/americana.png",
                          title: "Americana",
                          auth: "Chimamanda adichie",
                          rating: 4.8,
                          wd: 125,
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailsScreen(
                                    image: "assets/images/americana.png",
                                    title3: "",
                                    title2: " Americana",
                                    title:
                                        "Americanah is a 2013 novel by the Nigerian author Chimamanda Ngozi Adichie, for which Adichie won the 2013 U.S. National Book Critics Circle Award for fiction. Americanah tells the story of a young Nigerian woman, Ifemelu, who immigrates to the United States to attend university",
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        ReadingListCard(
                            image: "assets/images/fuck.png",
                            title: "Subtle Art of Not Giving a Fuck",
                            auth: "Mark Manson",
                            rating: 4.8,
                            wd: 100,
                            pressDetails: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return DetailsScreen(
                                      image: "assets/images/fuck.png",
                                      title3: "Subtle Art of Not",
                                      title2: "Giving a Fuck",
                                      title:
                                          " A Counterintuitive Approach to Living a Good Life is the second book by blogger and author Mark Manson. In it Manson argues that life's struggles give it meaning, and that the mindless positivity of typical self-help books is neither practical nor helpful.",
                                    );
                                  },
                                ),
                              );
                            }),
                        ReadingListCard(
                          image: "assets/images/lifeofpi.png",
                          title: "Life of Pi",
                          auth: "Yann Martel",
                          rating: 4.8,
                          wd: 80,
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailsScreen(
                                    image: "assets/images/lifeofpi.png",
                                    title3: "",
                                    title2: " Life of Pi",
                                    title:
                                        "Life of Pi is a Canadian philosophical novel by Yann Martel published in 2001. The protagonist is Piscine Molitor Pi Patel, an Indian Tamil boy from Pondicherry who explores issues of spirituality and metaphysics from an early age",
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        ReadingListCard(
                          image: "assets/images/1984.jpg",
                          title: "1984",
                          auth: "George Orwell",
                          rating: 4.8,
                          wd: 100,
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailsScreen(
                                    image: "assets/images/1984.jpg",
                                    title3: "",
                                    title2: " 1984",
                                    title:
                                        "A Novel, often referred to as 1984, is a dystopian social science fiction novel by the English novelist George Orwell. It was published on 8 June 1949 by Secker & Warburg as Orwell's ninth and final book completed in his lifetime",
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        ReadingListCard(
                          image: "assets/images/kite.png",
                          title: "The Kite Runner",
                          auth: "Khaled Hosseini",
                          rating: 4.9,
                          wd: 450,
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailsScreen(
                                    image: "assets/images/book-1.png",
                                    title3: "The Kite ",
                                    title2: "Runner",
                                    title:
                                        "The Kite Runner is the first novel by Afghan-American author Khaled Hosseini. Published in 2003 by Riverhead Books, it tells the story of Amir, a young boy from the Wazir Akbar Khan district of Kabul.",
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        SizedBox(width: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.display1,
                            children: [
                              TextSpan(text: "Best of the "),
                              TextSpan(
                                text: "day",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        bestOfTheDayCard(size, context),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.display1,
                            children: [
                              TextSpan(text: "Continue "),
                              TextSpan(
                                text: "reading...",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: Color(0xFFD3D3D3).withOpacity(.84),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 30, right: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Crushing & Influence",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                "Gary Venchuk",
                                                style: TextStyle(
                                                  color: kLightBlackColor,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Text(
                                                  "Chapter 7 of 10",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                            ],
                                          ),
                                        ),
                                        Image.asset(
                                          "assets/images/book-1.png",
                                          width: 55,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: size.width * .65,
                                  decoration: BoxDecoration(
                                    color: kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
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

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 245,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * .35,
              ),
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text(
                      "New York Time Best For 11th March 2020",
                      style: TextStyle(
                        fontSize: 9,
                        color: kLightBlackColor,
                      ),
                    ),
                  ),
                  Text(
                    "How To Win \nFriends &  Influence",
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    "Gary Venchuk",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: BookRating(score: 4.9),
                        ),
                        Expanded(
                          child: Text(
                            "When the earth was flat and everyone wanted to win the game of the best and people….",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 10,
                              color: kLightBlackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: -12,
            child: Image.asset(
              "assets/images/book-3.png",
              width: size.width * .37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                text: "Read",
                radious: 24,
                press: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
