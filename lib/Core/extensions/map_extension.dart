extension MapExtension<K, V> on Map<K, V> {
  Map<K, V> reverse() => Map.fromEntries(entries.toList().reversed);
}
