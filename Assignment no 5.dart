void main() {
  List<Map<String, dynamic>> dataList = [
    {
      "taskName": "Do Assignment 5",
      "isCompleted": false,
      "submissionDate": 29,
    },
    {
      "taskName": "Do Assignment 4",
      "isCompleted": true,
      "submissionDate": 26,
    },
    {
      "taskName": "Do Assignment 3",
      "isCompleted": true,
      "submissionDate": 19,
    },
    {
      "taskName": "Do Assignment 2",
      "isCompleted": false,
      "submissionDate": 12,
    },
    {"taskName": "Do Assignment 1", "isCompleted": true, "submissionDate": 5}
  ];

  List<Map<String, dynamic>> completedList = [];
  List<Map<String, dynamic>> submissionDataList = [];
  print(
      "===========================Assignment No 5 ===========================\n \n");

  completedList.addAll(addNewListCompletedTask(dataList));
  printListCompletedTask(completedList);
  addListTosubmissionByDate(dataList, submissionDataList);
  mapListUpdate(completedList);

  printListSubmissionDate(submissionDataList);
  printUpdateCompletedList(completedList);
}

void mapListUpdate(List<Map<String, dynamic>> completedList) {
  completedList.forEach((k) => {k.putIfAbsent("completed", () => "completed")});
}

List<Map<String, dynamic>> addNewListCompletedTask(
    List<Map<String, dynamic>> dataList) {
  return dataList.where((e) => e["isCompleted"] == true).toList();
}

void addListTosubmissionByDate(List<Map<String, dynamic>> dataList,
    List<Map<String, dynamic>> submissionDateList) {
  submissionDateList.addAll(dataList
      .where((e) => e["submissionDate"] >= 10 && e["submissionDate"] <= 20));
}

void printListCompletedTask(List<Map<String, dynamic>> completedList) {
  print("===============show Completed List ============= \n");
  completedList.forEach((e) => {print("$e \n")});
}

void printListSubmissionDate(List<Map<String, dynamic>> submissionDataList) {
  print("====== show Submission Date  List============= \n");
  submissionDataList.forEach((e) => {print(" $e \n")});
}

void printUpdateCompletedList(List<Map<String, dynamic>> completedList) {
  print("====== show Update Completed List Add Completed============= \n");
  completedList.forEach((e) => {print(" $e \n ")});
}
