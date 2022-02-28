class Job {
  String _job_position;
  String _city;
  String _describe;

  Job(this._job_position, this._city, this._describe);

  String get describe => _describe;

  set describe(String value) {
    _describe = value;
  }

  String get city => _city;

  set city(String value) {
    _city = value;
  }

  String get job_position => _job_position;

  set job_position(String value) {
    _job_position = value;
  }
}
