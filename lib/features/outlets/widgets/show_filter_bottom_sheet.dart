import 'package:flutter/material.dart';
import 'package:nettapp/core/widgets/outlined_container.dart';
import 'package:nettapp/core/widgets/text_widget.dart';

void showPromotionBottomSheet(BuildContext context) {
  final controller = PageController(
    initialPage: 0,
  );
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          height: MediaQuery.of(context).size.height * 0.75,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Image.asset("assets/images/x.png")],
                    ),
                  ),
                ),
                OutlinedContainer(
                    content: SizedBox(
                  height: 450,
                  child: PageView(
                    controller: controller,
                    children: [
                      Promotion_one(
                        controller: controller,
                      ),
                      Promotion_one(
                        controller: controller,
                      ),
                      Promotion_one(
                        controller: controller,
                      ),
                    ],
                  ),
                )),
                const Flexible(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
              ],
            ),
          ));
    },
  );
}

class Promotion_one extends StatelessWidget {
  const Promotion_one({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            width: 340,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          const TextWidget(
              color: Color(0xFF868FAD),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              text:
                  'Hi Daniel,\n\nThis water delivery amount is optimal given your current water tank level. This water delivery amount is optimal given your current water tank level. This water delivery amount is optimal given your current water tank level. This water delivery amount is optimal given your current water tank level. This water delivery amount is optimal given your current water tank level.\n\nTeam Aquayar.'),
        ],
      ),
    );
  }
}
