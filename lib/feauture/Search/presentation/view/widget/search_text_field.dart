import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key, this.cubit});

  final cubit;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: (value)
      {
        cubit.fetchSearch(name: value);
      },
      // onChanged: (value) {
      //   if(value.isNotEmpty) {
      //     cubit.fetchSearch(name: value);
      //   }
     // },
      decoration: InputDecoration(
          hintText: 'Search',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          suffixIcon: const Icon(Icons.search)),
    );
  }
}
