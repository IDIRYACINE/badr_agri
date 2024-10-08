enum SurfaceType {
  km,
  m,
  h,
}

class Surface {
  final String id;
  final double amount;
  final SurfaceType type;

  Surface({required this.id, required this.amount, required this.type});
}
