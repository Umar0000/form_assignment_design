import 'package:flutter/material.dart';
import 'package:form_assignment_design/screens/add_new_job_screen.dart';
import 'package:form_assignment_design/screens/edit_new_job_screen.dart';
import 'package:form_assignment_design/weight/job_item_design.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/job_class.dart';
import '../weight/job_list_header.dart';

class JobListing extends StatefulWidget {
  @override
  State<JobListing> createState() => _JobListingState();
}

class _JobListingState extends State<JobListing> {
  List<Job> item = List<Job>.generate(
    10,
    (index) => Job("Flutter", "Karachi,Pakistan",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
  );

  void _navigateAndDisplaySelection(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final dynamic result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddNewJob(item)),
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateAndDisplaySelection(context);
        },
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          color: Color(0xff191720),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF191720),
      body: Padding(
          padding: const EdgeInsets.only(right: 27, left: 27, top: 110),
          child: Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  JobListHeader(logoutBtn: () {
                    Navigator.pop(context);
                  }),
                  SearchBox((s) {
                    setState(() {
                      if (s.isNotEmpty) {
                        var where =
                            item.where((element) => element.city.contains(s));
                        if (where.isNotEmpty) {
                          item.clear();
                          item.add(where.first);
                        } else
                          item;
                      } else {}
                    });
                  }),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: item.length,
                        itemBuilder: (context, index) => JobItem(
                            job: item[index],
                            listItem: item,
                            delete: () {
                              deleteItem(index);
                            },
                            edit: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            EditNewJob(item, item[index])));
                              });
                            })),
                  )
                ]),
          )),
    );
  }

  void deleteItem(int index) {
    setState(() {
      item.remove(item[index]);
    });
  }
}

Widget SearchBox(ValueChanged<String> searching) {
  return Container(
      margin: const EdgeInsets.only(top: 37),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: const Color(0xFF1E1C24),
          border: Border.all(color: const Color(0xff5D5D67), width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        onChanged: searching,
        style: TextStyle(
          color: Colors.white,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Color(0xff5D5D67),
            ),
            border: InputBorder.none,
            hintText: "Search Keywords",
            hintStyle: TextStyle(color: Color(0xFF8F8F9E), fontSize: 15)),
      ));
}
