import 'package:fast_shop/src/config/Lists/Categories_list.dart';
import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/utils/widgets/Custom_app_bar.dart';
import 'package:fast_shop/src/utils/widgets/Custom_categories.dart';
import 'package:fast_shop/src/utils/widgets/Custom_categories_container.dart';
import 'package:fast_shop/src/utils/widgets/Search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kConrtPrimaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: Offset(5, 5),
                    ),
                  ],
                  color: kConrtPrimaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              child: MySearchField()),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Row(
              children: const [
                CustomCategoriesContainer(inputtext: "All"),
                CustomCategoriesContainer(inputtext: "Men"),
                CustomCategoriesContainer(inputtext: "Women"),
                CustomCategoriesContainer(inputtext: "Kids"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: SizeConfig(context).getProportionateScreenHeight(150),
              color: kPrimaryColor,
              width: SizeConfig(context).screenWidth,
              child: Row(
                children: [
                  Container(
                    width: SizeConfig(context).getProportionateScreenWidth(200),
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left:15.0, bottom: 8.0, top: 8.0),
                          child: Text("25% Off on Everything!",style: TextStyle(fontSize: 30, color: kConrtPrimaryColor, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right:15.0),
                          child: Text("With code:VR567",style: TextStyle(fontSize: 17, color: kConrtPrimaryColor, fontWeight: FontWeight.bold,),),
                        )
                      ],
                    ),
                  ),
                  Image.asset(sploff),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                  right: 0, left: 0, bottom: 10.0, top: 10.0),
              width: MediaQuery.of(context).size.width - 10,
              height: SizeConfig(context)
                  .getProportionateScreenHeight(catoglist.length * 100),
              color: kConrtPrimaryColor,
              child: ListView.builder(
                itemCount: catoglist.length,
                itemBuilder: ((context, index) {
                  return catoglist[index];
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
