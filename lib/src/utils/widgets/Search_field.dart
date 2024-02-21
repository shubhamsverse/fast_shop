import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:flutter/material.dart';

class MySearchField extends StatefulWidget {
  @override
  _MySearchFieldState createState() => _MySearchFieldState();
}

class _MySearchFieldState extends State<MySearchField> {
  final _controller = TextEditingController();
    List<String> _searchSuggestions = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig(context).screenWidth,
      height: SizeConfig(context).getProportionateScreenHeight(70),
      child: Column(
        children: [
          TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    borderSide: BorderSide.none),
                prefixIcon: Icon(Icons.search),
                hintText: 'Search...',
              ),
              onChanged: (value) {
                setState(() {
                  _searchSuggestions = _getSearchSuggestions(value)!;
                });
              }),
          // Update search results based on the user's input
          Expanded(
            child: ListView.builder(
              itemCount: _searchSuggestions.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_searchSuggestions[index]),
                  onTap: () {
                    // Perform search with selected suggestion
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  List<String>? _getSearchSuggestions(String query) {
    // Return a list of search suggestions based on the query
  }
}
