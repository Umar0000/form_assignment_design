import 'package:flutter/material.dart';
import 'package:form_assignment_design/models/job_class.dart';
import 'package:form_assignment_design/weight/custom_btn.dart';
import 'package:form_assignment_design/weight/edit_text_field.dart';

import 'describe_requirement_text.dart';

class EditJobEditTextWidget extends StatelessWidget {
  List<Job> item;
  Job job;
  EditJobEditTextWidget({required this.item, required this.job});
  @override
  Widget build(BuildContext context) {
    String positionName = "";
    String describe = "";
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            EditTextField(
                hint: "Enter position name",
                textVisible: false,
                getString: (s) {
                  positionName = s;
                  print(s);
                },
                text: job.job_position.isNotEmpty ? job.job_position : ""),
            DescribeEditText(
              hint: "Describe Requirement",
              getString: (b) {
                describe = b;
                print(b);
              },
              text: job.describe.isNotEmpty ? job.describe : "",
            ),
            const Spacer(),
            CustomeBtn(
                btnText: job.describe.isNotEmpty ? "Update Job" : "Submit Job",
                btnClick: () {
                  print(describe);
                  print(positionName);
                  if (job.describe.isNotEmpty) {
                    Job job1 = item
                        .where((element) =>
                            element.job_position == job.job_position)
                        .first;
                    job1.job_position = job.job_position;
                    job1.job_position = job.job_position;
                    job1.city = job.city;
                    Navigator.pop(context, job1);
                  } else {
                    item.add(Job(positionName, "Karachi", describe));
                    Navigator.pop(context, "1");
                  }
                })
          ],
        ),
      ),
    );
  }
}
