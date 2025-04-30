abstract class BaseModel {
  Map<String, dynamic> toJson();
}

class CounterModel extends BaseModel {
  final int _count;

  CounterModel(this._count);

  int get count => _count;

  CounterModel copyWith({int? count}) {
    return CounterModel(count ?? _count);
  }

  @override
  Map<String, dynamic> toJson() {
    return {'count': _count};
  }
}