import 'package:flutter/material.dart';

import '../../shared/custom_filled_field.dart';
import '../../shared/rounded_button.dart';
import '../../utils/constants.dart';
import 'channel_item_result.dart';
import 'game_item_result.dart';
import 'other_item_result.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: CustomFilledField(
                  label: "Search games, channels...",
                  iconData: Icons.search,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      GameItemResult(
                        imageUrl: "assets/images/game_1.jpg",
                        name: "Fortnite",
                        morePadding: true,
                      ),
                      ChannelItemResult(
                        live: true,
                        name: "ForeverYoungGaming",
                      ),
                      ChannelItemResult(
                        live: true,
                        name: "FortniteWorld",
                      ),
                      ChannelItemResult(
                        live: false,
                        name: "vegeta777",
                      ),
                      OtherItemResult(
                        name: "Fortnite",
                      ),
                      OtherItemResult(
                        name: "Fortnite customs",
                      ),
                      OtherItemResult(
                        name: "Fortnite fashion show",
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: RoundedButton(
                  color: Colors.white12,
                  text: "All results",
                  onPress: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
