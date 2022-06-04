class CounterState {
  final int count;

  CounterState({
    required this.count,
  });

  CounterState copyWith({
    int? count,
  }) {
    return CounterState(
      count: count ?? this.count,
    );
  }

  @override
  String toString() => 'CounterState(count: $count)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CounterState && other.count == count;
  }

  @override
  int get hashCode => count.hashCode;
}
