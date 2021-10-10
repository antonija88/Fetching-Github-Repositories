class Repository {
  String? repoName;
  String? lastUpdateTime;
  String? ownerName;
  String? description;

  Repository(
      { this.repoName,
       this.lastUpdateTime,
       this.ownerName,
       this.description});

  factory Repository.fromJson(Map<String, dynamic> json) {
    return Repository(
        repoName: json['name'],
        lastUpdateTime: json['updated_at'],
        ownerName: json['full_name'],
        description: json['description']);
  }
}
