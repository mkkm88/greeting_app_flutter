class UserDetails {
  String? name, email, dept, course, enroll, roll;
  int? year, sem;

//<editor-fold desc="Data Methods">

  UserDetails({
    this.name,
    this.email,
    this.dept,
    this.course,
    this.enroll,
    this.roll,
    this.year,
    this.sem,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserDetails &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          email == other.email &&
          dept == other.dept &&
          course == other.course &&
          enroll == other.enroll &&
          roll == other.roll &&
          year == other.year &&
          sem == other.sem);

  @override
  int get hashCode =>
      name.hashCode ^
      email.hashCode ^
      dept.hashCode ^
      course.hashCode ^
      enroll.hashCode ^
      roll.hashCode ^
      year.hashCode ^
      sem.hashCode;

  @override
  String toString() {
    return 'UserDetails{ name: $name, email: $email, dept: $dept, course: $course, enroll: $enroll, roll: $roll, year: $year, sem: $sem,}';
  }

  UserDetails copyWith({
    String? name,
    String? email,
    String? dept,
    String? course,
    String? enroll,
    String? roll,
    int? year,
    int? sem,
  }) {
    return UserDetails(
      name: name ?? this.name,
      email: email ?? this.email,
      dept: dept ?? this.dept,
      course: course ?? this.course,
      enroll: enroll ?? this.enroll,
      roll: roll ?? this.roll,
      year: year ?? this.year,
      sem: sem ?? this.sem,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'dept': dept,
      'course': course,
      'enroll': enroll,
      'roll': roll,
      'year': year,
      'sem': sem,
    };
  }

  factory UserDetails.fromMap(Map<String, dynamic> map) {
    return UserDetails(
      name: map['name'] as String,
      email: map['email'] as String,
      dept: map['dept'] as String,
      course: map['course'] as String,
      enroll: map['enroll'] as String,
      roll: map['roll'] as String,
      year: map['year'] as int,
      sem: map['sem'] as int,
    );
  }

//</editor-fold>
}
