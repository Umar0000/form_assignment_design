import 'package:flutter/material.dart';
import 'package:form_assignment_design/models/job_class.dart';
import 'package:form_assignment_design/weight/add_job_edit_text_widgett.dart';
import 'package:google_fonts/google_fonts.dart';

class EditNewJob extends StatefulWidget {
  List<Job> item;
  Job job;
  EditNewJob(this.item, this.job);

  @override
  State<EditNewJob> createState() => _EditNewJobState();
}

class _EditNewJobState extends State<EditNewJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF191720),
      body: Container(
        width: MediaQuery.of(context).size.height,
        padding:
            const EdgeInsets.only(top: 89, left: 27, right: 27, bottom: 59),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    print("aaaa");
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 31),
                Text(
                  "Edit Job",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            EditJobEditTextWidget(
              item: widget.item,
              job: widget.job,
            )
          ],
        ),
      ),
    );
  }
}
