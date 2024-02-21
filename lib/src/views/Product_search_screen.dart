import 'package:fast_shop/src/config/Lists/product_search_list.dart';
import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/utils/widgets/Custom_app_bar.dart';
import 'package:fast_shop/src/utils/widgets/Custom_categories_container.dart';
import 'package:fast_shop/src/utils/widgets/Custom_search_product_card.dart';
import 'package:fast_shop/src/utils/widgets/Search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductSearchScreen extends StatelessWidget {
  const ProductSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(inttxt: "Clothing", navstri: "/nav"),
      backgroundColor: kConrtPrimaryColor,
      body: Column(
        children:[
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
        SizedBox(
          height: 60,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children:[
           CustomCategoriesContainer(inputtext: "All Clothing"),
           CustomCategoriesContainer(inputtext: "Active Wear"),
           CustomCategoriesContainer(inputtext: "Blazer"),
           CustomCategoriesContainer(inputtext: "Blazer"),
           CustomCategoriesContainer(inputtext: "All"),
           ]
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("920 Results Found",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
            padding: EdgeInsets.only(right: 20.0, left: 20.0, bottom: 0.0, top: 10.0),
            width: MediaQuery.of(context).size.width  ,
            height: MediaQuery.of(context).size.height  ,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 50.0,
                childAspectRatio: 0.65,
              ),
              itemCount: plist.length,
              itemBuilder: (BuildContext context, int index) {
                return plist[index];
              },
            ),
            ),
          ),
        )
      ]),
    );
  }
}
