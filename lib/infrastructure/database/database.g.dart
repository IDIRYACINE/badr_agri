// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $TreeTypesTable extends TreeTypes
    with TableInfo<$TreeTypesTable, TreeType> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TreeTypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tree_types';
  @override
  VerificationContext validateIntegrity(Insertable<TreeType> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TreeType map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TreeType(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $TreeTypesTable createAlias(String alias) {
    return $TreeTypesTable(attachedDatabase, alias);
  }
}

class TreeType extends DataClass implements Insertable<TreeType> {
  final String id;
  final String name;
  const TreeType({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  TreeTypesCompanion toCompanion(bool nullToAbsent) {
    return TreeTypesCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory TreeType.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TreeType(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  TreeType copyWith({String? id, String? name}) => TreeType(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  TreeType copyWithCompanion(TreeTypesCompanion data) {
    return TreeType(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TreeType(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TreeType && other.id == this.id && other.name == this.name);
}

class TreeTypesCompanion extends UpdateCompanion<TreeType> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> rowid;
  const TreeTypesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TreeTypesCompanion.insert({
    required String id,
    required String name,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name);
  static Insertable<TreeType> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TreeTypesCompanion copyWith(
      {Value<String>? id, Value<String>? name, Value<int>? rowid}) {
    return TreeTypesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TreeTypesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TreeSubTypesTable extends TreeSubTypes
    with TableInfo<$TreeSubTypesTable, TreeSubType> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TreeSubTypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tree_sub_types';
  @override
  VerificationContext validateIntegrity(Insertable<TreeSubType> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TreeSubType map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TreeSubType(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $TreeSubTypesTable createAlias(String alias) {
    return $TreeSubTypesTable(attachedDatabase, alias);
  }
}

class TreeSubType extends DataClass implements Insertable<TreeSubType> {
  final String id;
  final String name;
  const TreeSubType({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  TreeSubTypesCompanion toCompanion(bool nullToAbsent) {
    return TreeSubTypesCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory TreeSubType.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TreeSubType(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  TreeSubType copyWith({String? id, String? name}) => TreeSubType(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  TreeSubType copyWithCompanion(TreeSubTypesCompanion data) {
    return TreeSubType(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TreeSubType(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TreeSubType && other.id == this.id && other.name == this.name);
}

class TreeSubTypesCompanion extends UpdateCompanion<TreeSubType> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> rowid;
  const TreeSubTypesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TreeSubTypesCompanion.insert({
    required String id,
    required String name,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name);
  static Insertable<TreeSubType> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TreeSubTypesCompanion copyWith(
      {Value<String>? id, Value<String>? name, Value<int>? rowid}) {
    return TreeSubTypesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TreeSubTypesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TreesTable extends Trees with TableInfo<$TreesTable, Tree> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TreesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ageMeta = const VerificationMeta('age');
  @override
  late final GeneratedColumn<int> age = GeneratedColumn<int>(
      'age', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES tree_types (id)'));
  static const VerificationMeta _subTypeMeta =
      const VerificationMeta('subType');
  @override
  late final GeneratedColumn<String> subType = GeneratedColumn<String>(
      'sub_type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES tree_sub_types (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, age, type, subType];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'trees';
  @override
  VerificationContext validateIntegrity(Insertable<Tree> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('age')) {
      context.handle(
          _ageMeta, age.isAcceptableOrUnknown(data['age']!, _ageMeta));
    } else if (isInserting) {
      context.missing(_ageMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('sub_type')) {
      context.handle(_subTypeMeta,
          subType.isAcceptableOrUnknown(data['sub_type']!, _subTypeMeta));
    } else if (isInserting) {
      context.missing(_subTypeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Tree map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Tree(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      age: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}age'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      subType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sub_type'])!,
    );
  }

  @override
  $TreesTable createAlias(String alias) {
    return $TreesTable(attachedDatabase, alias);
  }
}

class Tree extends DataClass implements Insertable<Tree> {
  final String id;
  final int age;
  final String type;
  final String subType;
  const Tree(
      {required this.id,
      required this.age,
      required this.type,
      required this.subType});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['age'] = Variable<int>(age);
    map['type'] = Variable<String>(type);
    map['sub_type'] = Variable<String>(subType);
    return map;
  }

  TreesCompanion toCompanion(bool nullToAbsent) {
    return TreesCompanion(
      id: Value(id),
      age: Value(age),
      type: Value(type),
      subType: Value(subType),
    );
  }

  factory Tree.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Tree(
      id: serializer.fromJson<String>(json['id']),
      age: serializer.fromJson<int>(json['age']),
      type: serializer.fromJson<String>(json['type']),
      subType: serializer.fromJson<String>(json['subType']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'age': serializer.toJson<int>(age),
      'type': serializer.toJson<String>(type),
      'subType': serializer.toJson<String>(subType),
    };
  }

  Tree copyWith({String? id, int? age, String? type, String? subType}) => Tree(
        id: id ?? this.id,
        age: age ?? this.age,
        type: type ?? this.type,
        subType: subType ?? this.subType,
      );
  Tree copyWithCompanion(TreesCompanion data) {
    return Tree(
      id: data.id.present ? data.id.value : this.id,
      age: data.age.present ? data.age.value : this.age,
      type: data.type.present ? data.type.value : this.type,
      subType: data.subType.present ? data.subType.value : this.subType,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Tree(')
          ..write('id: $id, ')
          ..write('age: $age, ')
          ..write('type: $type, ')
          ..write('subType: $subType')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, age, type, subType);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tree &&
          other.id == this.id &&
          other.age == this.age &&
          other.type == this.type &&
          other.subType == this.subType);
}

class TreesCompanion extends UpdateCompanion<Tree> {
  final Value<String> id;
  final Value<int> age;
  final Value<String> type;
  final Value<String> subType;
  final Value<int> rowid;
  const TreesCompanion({
    this.id = const Value.absent(),
    this.age = const Value.absent(),
    this.type = const Value.absent(),
    this.subType = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TreesCompanion.insert({
    required String id,
    required int age,
    required String type,
    required String subType,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        age = Value(age),
        type = Value(type),
        subType = Value(subType);
  static Insertable<Tree> custom({
    Expression<String>? id,
    Expression<int>? age,
    Expression<String>? type,
    Expression<String>? subType,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (age != null) 'age': age,
      if (type != null) 'type': type,
      if (subType != null) 'sub_type': subType,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TreesCompanion copyWith(
      {Value<String>? id,
      Value<int>? age,
      Value<String>? type,
      Value<String>? subType,
      Value<int>? rowid}) {
    return TreesCompanion(
      id: id ?? this.id,
      age: age ?? this.age,
      type: type ?? this.type,
      subType: subType ?? this.subType,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (age.present) {
      map['age'] = Variable<int>(age.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (subType.present) {
      map['sub_type'] = Variable<String>(subType.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TreesCompanion(')
          ..write('id: $id, ')
          ..write('age: $age, ')
          ..write('type: $type, ')
          ..write('subType: $subType, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TreeHistoryOptionsTable extends TreeHistoryOptions
    with TableInfo<$TreeHistoryOptionsTable, TreeHistoryOption> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TreeHistoryOptionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tree_history_options';
  @override
  VerificationContext validateIntegrity(Insertable<TreeHistoryOption> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TreeHistoryOption map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TreeHistoryOption(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $TreeHistoryOptionsTable createAlias(String alias) {
    return $TreeHistoryOptionsTable(attachedDatabase, alias);
  }
}

class TreeHistoryOption extends DataClass
    implements Insertable<TreeHistoryOption> {
  final String id;
  final String name;
  const TreeHistoryOption({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  TreeHistoryOptionsCompanion toCompanion(bool nullToAbsent) {
    return TreeHistoryOptionsCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory TreeHistoryOption.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TreeHistoryOption(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  TreeHistoryOption copyWith({String? id, String? name}) => TreeHistoryOption(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  TreeHistoryOption copyWithCompanion(TreeHistoryOptionsCompanion data) {
    return TreeHistoryOption(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TreeHistoryOption(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TreeHistoryOption &&
          other.id == this.id &&
          other.name == this.name);
}

class TreeHistoryOptionsCompanion extends UpdateCompanion<TreeHistoryOption> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> rowid;
  const TreeHistoryOptionsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TreeHistoryOptionsCompanion.insert({
    required String id,
    required String name,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name);
  static Insertable<TreeHistoryOption> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TreeHistoryOptionsCompanion copyWith(
      {Value<String>? id, Value<String>? name, Value<int>? rowid}) {
    return TreeHistoryOptionsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TreeHistoryOptionsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TreeHistoriesTable extends TreeHistories
    with TableInfo<$TreeHistoriesTable, TreeHistory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TreeHistoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _treeIdMeta = const VerificationMeta('treeId');
  @override
  late final GeneratedColumn<String> treeId = GeneratedColumn<String>(
      'tree_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES trees (id)'));
  static const VerificationMeta _treeHistoryOptionIdMeta =
      const VerificationMeta('treeHistoryOptionId');
  @override
  late final GeneratedColumn<String> treeHistoryOptionId =
      GeneratedColumn<String>('tree_history_option_id', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'REFERENCES tree_history_options (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, treeId, treeHistoryOptionId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tree_histories';
  @override
  VerificationContext validateIntegrity(Insertable<TreeHistory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('tree_id')) {
      context.handle(_treeIdMeta,
          treeId.isAcceptableOrUnknown(data['tree_id']!, _treeIdMeta));
    } else if (isInserting) {
      context.missing(_treeIdMeta);
    }
    if (data.containsKey('tree_history_option_id')) {
      context.handle(
          _treeHistoryOptionIdMeta,
          treeHistoryOptionId.isAcceptableOrUnknown(
              data['tree_history_option_id']!, _treeHistoryOptionIdMeta));
    } else if (isInserting) {
      context.missing(_treeHistoryOptionIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TreeHistory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TreeHistory(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      treeId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tree_id'])!,
      treeHistoryOptionId: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}tree_history_option_id'])!,
    );
  }

  @override
  $TreeHistoriesTable createAlias(String alias) {
    return $TreeHistoriesTable(attachedDatabase, alias);
  }
}

class TreeHistory extends DataClass implements Insertable<TreeHistory> {
  final String id;
  final String treeId;
  final String treeHistoryOptionId;
  const TreeHistory(
      {required this.id,
      required this.treeId,
      required this.treeHistoryOptionId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['tree_id'] = Variable<String>(treeId);
    map['tree_history_option_id'] = Variable<String>(treeHistoryOptionId);
    return map;
  }

  TreeHistoriesCompanion toCompanion(bool nullToAbsent) {
    return TreeHistoriesCompanion(
      id: Value(id),
      treeId: Value(treeId),
      treeHistoryOptionId: Value(treeHistoryOptionId),
    );
  }

  factory TreeHistory.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TreeHistory(
      id: serializer.fromJson<String>(json['id']),
      treeId: serializer.fromJson<String>(json['treeId']),
      treeHistoryOptionId:
          serializer.fromJson<String>(json['treeHistoryOptionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'treeId': serializer.toJson<String>(treeId),
      'treeHistoryOptionId': serializer.toJson<String>(treeHistoryOptionId),
    };
  }

  TreeHistory copyWith(
          {String? id, String? treeId, String? treeHistoryOptionId}) =>
      TreeHistory(
        id: id ?? this.id,
        treeId: treeId ?? this.treeId,
        treeHistoryOptionId: treeHistoryOptionId ?? this.treeHistoryOptionId,
      );
  TreeHistory copyWithCompanion(TreeHistoriesCompanion data) {
    return TreeHistory(
      id: data.id.present ? data.id.value : this.id,
      treeId: data.treeId.present ? data.treeId.value : this.treeId,
      treeHistoryOptionId: data.treeHistoryOptionId.present
          ? data.treeHistoryOptionId.value
          : this.treeHistoryOptionId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TreeHistory(')
          ..write('id: $id, ')
          ..write('treeId: $treeId, ')
          ..write('treeHistoryOptionId: $treeHistoryOptionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, treeId, treeHistoryOptionId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TreeHistory &&
          other.id == this.id &&
          other.treeId == this.treeId &&
          other.treeHistoryOptionId == this.treeHistoryOptionId);
}

class TreeHistoriesCompanion extends UpdateCompanion<TreeHistory> {
  final Value<String> id;
  final Value<String> treeId;
  final Value<String> treeHistoryOptionId;
  final Value<int> rowid;
  const TreeHistoriesCompanion({
    this.id = const Value.absent(),
    this.treeId = const Value.absent(),
    this.treeHistoryOptionId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TreeHistoriesCompanion.insert({
    required String id,
    required String treeId,
    required String treeHistoryOptionId,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        treeId = Value(treeId),
        treeHistoryOptionId = Value(treeHistoryOptionId);
  static Insertable<TreeHistory> custom({
    Expression<String>? id,
    Expression<String>? treeId,
    Expression<String>? treeHistoryOptionId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (treeId != null) 'tree_id': treeId,
      if (treeHistoryOptionId != null)
        'tree_history_option_id': treeHistoryOptionId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TreeHistoriesCompanion copyWith(
      {Value<String>? id,
      Value<String>? treeId,
      Value<String>? treeHistoryOptionId,
      Value<int>? rowid}) {
    return TreeHistoriesCompanion(
      id: id ?? this.id,
      treeId: treeId ?? this.treeId,
      treeHistoryOptionId: treeHistoryOptionId ?? this.treeHistoryOptionId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (treeId.present) {
      map['tree_id'] = Variable<String>(treeId.value);
    }
    if (treeHistoryOptionId.present) {
      map['tree_history_option_id'] =
          Variable<String>(treeHistoryOptionId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TreeHistoriesCompanion(')
          ..write('id: $id, ')
          ..write('treeId: $treeId, ')
          ..write('treeHistoryOptionId: $treeHistoryOptionId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SurfaceTypesTable extends SurfaceTypes
    with TableInfo<$SurfaceTypesTable, SurfaceType> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SurfaceTypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'surface_types';
  @override
  VerificationContext validateIntegrity(Insertable<SurfaceType> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SurfaceType map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SurfaceType(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $SurfaceTypesTable createAlias(String alias) {
    return $SurfaceTypesTable(attachedDatabase, alias);
  }
}

class SurfaceType extends DataClass implements Insertable<SurfaceType> {
  final String id;
  final String name;
  const SurfaceType({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  SurfaceTypesCompanion toCompanion(bool nullToAbsent) {
    return SurfaceTypesCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory SurfaceType.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SurfaceType(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  SurfaceType copyWith({String? id, String? name}) => SurfaceType(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  SurfaceType copyWithCompanion(SurfaceTypesCompanion data) {
    return SurfaceType(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SurfaceType(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SurfaceType && other.id == this.id && other.name == this.name);
}

class SurfaceTypesCompanion extends UpdateCompanion<SurfaceType> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> rowid;
  const SurfaceTypesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SurfaceTypesCompanion.insert({
    required String id,
    required String name,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name);
  static Insertable<SurfaceType> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SurfaceTypesCompanion copyWith(
      {Value<String>? id, Value<String>? name, Value<int>? rowid}) {
    return SurfaceTypesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SurfaceTypesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SurfacesTable extends Surfaces with TableInfo<$SurfacesTable, Surface> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SurfacesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES surface_types (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, amount, type];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'surfaces';
  @override
  VerificationContext validateIntegrity(Insertable<Surface> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Surface map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Surface(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
    );
  }

  @override
  $SurfacesTable createAlias(String alias) {
    return $SurfacesTable(attachedDatabase, alias);
  }
}

class Surface extends DataClass implements Insertable<Surface> {
  final String id;
  final double amount;
  final String type;
  const Surface({required this.id, required this.amount, required this.type});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['amount'] = Variable<double>(amount);
    map['type'] = Variable<String>(type);
    return map;
  }

  SurfacesCompanion toCompanion(bool nullToAbsent) {
    return SurfacesCompanion(
      id: Value(id),
      amount: Value(amount),
      type: Value(type),
    );
  }

  factory Surface.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Surface(
      id: serializer.fromJson<String>(json['id']),
      amount: serializer.fromJson<double>(json['amount']),
      type: serializer.fromJson<String>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'amount': serializer.toJson<double>(amount),
      'type': serializer.toJson<String>(type),
    };
  }

  Surface copyWith({String? id, double? amount, String? type}) => Surface(
        id: id ?? this.id,
        amount: amount ?? this.amount,
        type: type ?? this.type,
      );
  Surface copyWithCompanion(SurfacesCompanion data) {
    return Surface(
      id: data.id.present ? data.id.value : this.id,
      amount: data.amount.present ? data.amount.value : this.amount,
      type: data.type.present ? data.type.value : this.type,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Surface(')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, amount, type);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Surface &&
          other.id == this.id &&
          other.amount == this.amount &&
          other.type == this.type);
}

class SurfacesCompanion extends UpdateCompanion<Surface> {
  final Value<String> id;
  final Value<double> amount;
  final Value<String> type;
  final Value<int> rowid;
  const SurfacesCompanion({
    this.id = const Value.absent(),
    this.amount = const Value.absent(),
    this.type = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SurfacesCompanion.insert({
    required String id,
    required double amount,
    required String type,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        amount = Value(amount),
        type = Value(type);
  static Insertable<Surface> custom({
    Expression<String>? id,
    Expression<double>? amount,
    Expression<String>? type,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (amount != null) 'amount': amount,
      if (type != null) 'type': type,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SurfacesCompanion copyWith(
      {Value<String>? id,
      Value<double>? amount,
      Value<String>? type,
      Value<int>? rowid}) {
    return SurfacesCompanion(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      type: type ?? this.type,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SurfacesCompanion(')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('type: $type, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PlantingModesTable extends PlantingModes
    with TableInfo<$PlantingModesTable, PlantingMode> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlantingModesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'planting_modes';
  @override
  VerificationContext validateIntegrity(Insertable<PlantingMode> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PlantingMode map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PlantingMode(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $PlantingModesTable createAlias(String alias) {
    return $PlantingModesTable(attachedDatabase, alias);
  }
}

class PlantingMode extends DataClass implements Insertable<PlantingMode> {
  final String id;
  final String name;
  const PlantingMode({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  PlantingModesCompanion toCompanion(bool nullToAbsent) {
    return PlantingModesCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory PlantingMode.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PlantingMode(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  PlantingMode copyWith({String? id, String? name}) => PlantingMode(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  PlantingMode copyWithCompanion(PlantingModesCompanion data) {
    return PlantingMode(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PlantingMode(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PlantingMode && other.id == this.id && other.name == this.name);
}

class PlantingModesCompanion extends UpdateCompanion<PlantingMode> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> rowid;
  const PlantingModesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PlantingModesCompanion.insert({
    required String id,
    required String name,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name);
  static Insertable<PlantingMode> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PlantingModesCompanion copyWith(
      {Value<String>? id, Value<String>? name, Value<int>? rowid}) {
    return PlantingModesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlantingModesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GpsCoordinatesTable extends GpsCoordinates
    with TableInfo<$GpsCoordinatesTable, GpsCoordinate> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GpsCoordinatesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _latitudeMeta =
      const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
      'latitude', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _longitudeMeta =
      const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
      'longitude', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, latitude, longitude];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'gps_coordinates';
  @override
  VerificationContext validateIntegrity(Insertable<GpsCoordinate> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GpsCoordinate map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GpsCoordinate(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      latitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}latitude'])!,
      longitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}longitude'])!,
    );
  }

  @override
  $GpsCoordinatesTable createAlias(String alias) {
    return $GpsCoordinatesTable(attachedDatabase, alias);
  }
}

class GpsCoordinate extends DataClass implements Insertable<GpsCoordinate> {
  final String id;
  final double latitude;
  final double longitude;
  const GpsCoordinate(
      {required this.id, required this.latitude, required this.longitude});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['latitude'] = Variable<double>(latitude);
    map['longitude'] = Variable<double>(longitude);
    return map;
  }

  GpsCoordinatesCompanion toCompanion(bool nullToAbsent) {
    return GpsCoordinatesCompanion(
      id: Value(id),
      latitude: Value(latitude),
      longitude: Value(longitude),
    );
  }

  factory GpsCoordinate.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GpsCoordinate(
      id: serializer.fromJson<String>(json['id']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
    };
  }

  GpsCoordinate copyWith({String? id, double? latitude, double? longitude}) =>
      GpsCoordinate(
        id: id ?? this.id,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
      );
  GpsCoordinate copyWithCompanion(GpsCoordinatesCompanion data) {
    return GpsCoordinate(
      id: data.id.present ? data.id.value : this.id,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GpsCoordinate(')
          ..write('id: $id, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, latitude, longitude);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GpsCoordinate &&
          other.id == this.id &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude);
}

class GpsCoordinatesCompanion extends UpdateCompanion<GpsCoordinate> {
  final Value<String> id;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<int> rowid;
  const GpsCoordinatesCompanion({
    this.id = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GpsCoordinatesCompanion.insert({
    required String id,
    required double latitude,
    required double longitude,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        latitude = Value(latitude),
        longitude = Value(longitude);
  static Insertable<GpsCoordinate> custom({
    Expression<String>? id,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GpsCoordinatesCompanion copyWith(
      {Value<String>? id,
      Value<double>? latitude,
      Value<double>? longitude,
      Value<int>? rowid}) {
    return GpsCoordinatesCompanion(
      id: id ?? this.id,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GpsCoordinatesCompanion(')
          ..write('id: $id, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GardensTable extends Gardens with TableInfo<$GardensTable, Garden> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GardensTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _coordinatesIdMeta =
      const VerificationMeta('coordinatesId');
  @override
  late final GeneratedColumn<String> coordinatesId = GeneratedColumn<String>(
      'coordinates_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES gps_coordinates (id)'));
  static const VerificationMeta _surfaceIdMeta =
      const VerificationMeta('surfaceId');
  @override
  late final GeneratedColumn<String> surfaceId = GeneratedColumn<String>(
      'surface_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES surfaces (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, name, coordinatesId, surfaceId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'gardens';
  @override
  VerificationContext validateIntegrity(Insertable<Garden> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('coordinates_id')) {
      context.handle(
          _coordinatesIdMeta,
          coordinatesId.isAcceptableOrUnknown(
              data['coordinates_id']!, _coordinatesIdMeta));
    } else if (isInserting) {
      context.missing(_coordinatesIdMeta);
    }
    if (data.containsKey('surface_id')) {
      context.handle(_surfaceIdMeta,
          surfaceId.isAcceptableOrUnknown(data['surface_id']!, _surfaceIdMeta));
    } else if (isInserting) {
      context.missing(_surfaceIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Garden map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Garden(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      coordinatesId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}coordinates_id'])!,
      surfaceId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}surface_id'])!,
    );
  }

  @override
  $GardensTable createAlias(String alias) {
    return $GardensTable(attachedDatabase, alias);
  }
}

class Garden extends DataClass implements Insertable<Garden> {
  final String id;
  final String name;
  final String coordinatesId;
  final String surfaceId;
  const Garden(
      {required this.id,
      required this.name,
      required this.coordinatesId,
      required this.surfaceId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['coordinates_id'] = Variable<String>(coordinatesId);
    map['surface_id'] = Variable<String>(surfaceId);
    return map;
  }

  GardensCompanion toCompanion(bool nullToAbsent) {
    return GardensCompanion(
      id: Value(id),
      name: Value(name),
      coordinatesId: Value(coordinatesId),
      surfaceId: Value(surfaceId),
    );
  }

  factory Garden.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Garden(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      coordinatesId: serializer.fromJson<String>(json['coordinatesId']),
      surfaceId: serializer.fromJson<String>(json['surfaceId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'coordinatesId': serializer.toJson<String>(coordinatesId),
      'surfaceId': serializer.toJson<String>(surfaceId),
    };
  }

  Garden copyWith(
          {String? id,
          String? name,
          String? coordinatesId,
          String? surfaceId}) =>
      Garden(
        id: id ?? this.id,
        name: name ?? this.name,
        coordinatesId: coordinatesId ?? this.coordinatesId,
        surfaceId: surfaceId ?? this.surfaceId,
      );
  Garden copyWithCompanion(GardensCompanion data) {
    return Garden(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      coordinatesId: data.coordinatesId.present
          ? data.coordinatesId.value
          : this.coordinatesId,
      surfaceId: data.surfaceId.present ? data.surfaceId.value : this.surfaceId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Garden(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('coordinatesId: $coordinatesId, ')
          ..write('surfaceId: $surfaceId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, coordinatesId, surfaceId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Garden &&
          other.id == this.id &&
          other.name == this.name &&
          other.coordinatesId == this.coordinatesId &&
          other.surfaceId == this.surfaceId);
}

class GardensCompanion extends UpdateCompanion<Garden> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> coordinatesId;
  final Value<String> surfaceId;
  final Value<int> rowid;
  const GardensCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.coordinatesId = const Value.absent(),
    this.surfaceId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GardensCompanion.insert({
    required String id,
    required String name,
    required String coordinatesId,
    required String surfaceId,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        coordinatesId = Value(coordinatesId),
        surfaceId = Value(surfaceId);
  static Insertable<Garden> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? coordinatesId,
    Expression<String>? surfaceId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (coordinatesId != null) 'coordinates_id': coordinatesId,
      if (surfaceId != null) 'surface_id': surfaceId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GardensCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? coordinatesId,
      Value<String>? surfaceId,
      Value<int>? rowid}) {
    return GardensCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      coordinatesId: coordinatesId ?? this.coordinatesId,
      surfaceId: surfaceId ?? this.surfaceId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (coordinatesId.present) {
      map['coordinates_id'] = Variable<String>(coordinatesId.value);
    }
    if (surfaceId.present) {
      map['surface_id'] = Variable<String>(surfaceId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GardensCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('coordinatesId: $coordinatesId, ')
          ..write('surfaceId: $surfaceId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GardenSectionsTable extends GardenSections
    with TableInfo<$GardenSectionsTable, GardenSection> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GardenSectionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _treeTypeMeta =
      const VerificationMeta('treeType');
  @override
  late final GeneratedColumn<String> treeType = GeneratedColumn<String>(
      'tree_type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES tree_types (id)'));
  static const VerificationMeta _treeSubTypeMeta =
      const VerificationMeta('treeSubType');
  @override
  late final GeneratedColumn<String> treeSubType = GeneratedColumn<String>(
      'tree_sub_type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES tree_sub_types (id)'));
  static const VerificationMeta _gardenIdMeta =
      const VerificationMeta('gardenId');
  @override
  late final GeneratedColumn<String> gardenId = GeneratedColumn<String>(
      'garden_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES gardens (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, treeType, treeSubType, gardenId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'garden_sections';
  @override
  VerificationContext validateIntegrity(Insertable<GardenSection> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('tree_type')) {
      context.handle(_treeTypeMeta,
          treeType.isAcceptableOrUnknown(data['tree_type']!, _treeTypeMeta));
    } else if (isInserting) {
      context.missing(_treeTypeMeta);
    }
    if (data.containsKey('tree_sub_type')) {
      context.handle(
          _treeSubTypeMeta,
          treeSubType.isAcceptableOrUnknown(
              data['tree_sub_type']!, _treeSubTypeMeta));
    } else if (isInserting) {
      context.missing(_treeSubTypeMeta);
    }
    if (data.containsKey('garden_id')) {
      context.handle(_gardenIdMeta,
          gardenId.isAcceptableOrUnknown(data['garden_id']!, _gardenIdMeta));
    } else if (isInserting) {
      context.missing(_gardenIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GardenSection map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GardenSection(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      treeType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tree_type'])!,
      treeSubType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tree_sub_type'])!,
      gardenId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}garden_id'])!,
    );
  }

  @override
  $GardenSectionsTable createAlias(String alias) {
    return $GardenSectionsTable(attachedDatabase, alias);
  }
}

class GardenSection extends DataClass implements Insertable<GardenSection> {
  final String id;
  final String treeType;
  final String treeSubType;
  final String gardenId;
  const GardenSection(
      {required this.id,
      required this.treeType,
      required this.treeSubType,
      required this.gardenId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['tree_type'] = Variable<String>(treeType);
    map['tree_sub_type'] = Variable<String>(treeSubType);
    map['garden_id'] = Variable<String>(gardenId);
    return map;
  }

  GardenSectionsCompanion toCompanion(bool nullToAbsent) {
    return GardenSectionsCompanion(
      id: Value(id),
      treeType: Value(treeType),
      treeSubType: Value(treeSubType),
      gardenId: Value(gardenId),
    );
  }

  factory GardenSection.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GardenSection(
      id: serializer.fromJson<String>(json['id']),
      treeType: serializer.fromJson<String>(json['treeType']),
      treeSubType: serializer.fromJson<String>(json['treeSubType']),
      gardenId: serializer.fromJson<String>(json['gardenId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'treeType': serializer.toJson<String>(treeType),
      'treeSubType': serializer.toJson<String>(treeSubType),
      'gardenId': serializer.toJson<String>(gardenId),
    };
  }

  GardenSection copyWith(
          {String? id,
          String? treeType,
          String? treeSubType,
          String? gardenId}) =>
      GardenSection(
        id: id ?? this.id,
        treeType: treeType ?? this.treeType,
        treeSubType: treeSubType ?? this.treeSubType,
        gardenId: gardenId ?? this.gardenId,
      );
  GardenSection copyWithCompanion(GardenSectionsCompanion data) {
    return GardenSection(
      id: data.id.present ? data.id.value : this.id,
      treeType: data.treeType.present ? data.treeType.value : this.treeType,
      treeSubType:
          data.treeSubType.present ? data.treeSubType.value : this.treeSubType,
      gardenId: data.gardenId.present ? data.gardenId.value : this.gardenId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GardenSection(')
          ..write('id: $id, ')
          ..write('treeType: $treeType, ')
          ..write('treeSubType: $treeSubType, ')
          ..write('gardenId: $gardenId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, treeType, treeSubType, gardenId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GardenSection &&
          other.id == this.id &&
          other.treeType == this.treeType &&
          other.treeSubType == this.treeSubType &&
          other.gardenId == this.gardenId);
}

class GardenSectionsCompanion extends UpdateCompanion<GardenSection> {
  final Value<String> id;
  final Value<String> treeType;
  final Value<String> treeSubType;
  final Value<String> gardenId;
  final Value<int> rowid;
  const GardenSectionsCompanion({
    this.id = const Value.absent(),
    this.treeType = const Value.absent(),
    this.treeSubType = const Value.absent(),
    this.gardenId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GardenSectionsCompanion.insert({
    required String id,
    required String treeType,
    required String treeSubType,
    required String gardenId,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        treeType = Value(treeType),
        treeSubType = Value(treeSubType),
        gardenId = Value(gardenId);
  static Insertable<GardenSection> custom({
    Expression<String>? id,
    Expression<String>? treeType,
    Expression<String>? treeSubType,
    Expression<String>? gardenId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (treeType != null) 'tree_type': treeType,
      if (treeSubType != null) 'tree_sub_type': treeSubType,
      if (gardenId != null) 'garden_id': gardenId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GardenSectionsCompanion copyWith(
      {Value<String>? id,
      Value<String>? treeType,
      Value<String>? treeSubType,
      Value<String>? gardenId,
      Value<int>? rowid}) {
    return GardenSectionsCompanion(
      id: id ?? this.id,
      treeType: treeType ?? this.treeType,
      treeSubType: treeSubType ?? this.treeSubType,
      gardenId: gardenId ?? this.gardenId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (treeType.present) {
      map['tree_type'] = Variable<String>(treeType.value);
    }
    if (treeSubType.present) {
      map['tree_sub_type'] = Variable<String>(treeSubType.value);
    }
    if (gardenId.present) {
      map['garden_id'] = Variable<String>(gardenId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GardenSectionsCompanion(')
          ..write('id: $id, ')
          ..write('treeType: $treeType, ')
          ..write('treeSubType: $treeSubType, ')
          ..write('gardenId: $gardenId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SectionLinesTable extends SectionLines
    with TableInfo<$SectionLinesTable, SectionLine> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SectionLinesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _gardenSectionIdMeta =
      const VerificationMeta('gardenSectionId');
  @override
  late final GeneratedColumn<String> gardenSectionId = GeneratedColumn<String>(
      'garden_section_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES garden_sections (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, gardenSectionId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'section_lines';
  @override
  VerificationContext validateIntegrity(Insertable<SectionLine> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('garden_section_id')) {
      context.handle(
          _gardenSectionIdMeta,
          gardenSectionId.isAcceptableOrUnknown(
              data['garden_section_id']!, _gardenSectionIdMeta));
    } else if (isInserting) {
      context.missing(_gardenSectionIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SectionLine map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SectionLine(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      gardenSectionId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}garden_section_id'])!,
    );
  }

  @override
  $SectionLinesTable createAlias(String alias) {
    return $SectionLinesTable(attachedDatabase, alias);
  }
}

class SectionLine extends DataClass implements Insertable<SectionLine> {
  final String id;
  final String gardenSectionId;
  const SectionLine({required this.id, required this.gardenSectionId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['garden_section_id'] = Variable<String>(gardenSectionId);
    return map;
  }

  SectionLinesCompanion toCompanion(bool nullToAbsent) {
    return SectionLinesCompanion(
      id: Value(id),
      gardenSectionId: Value(gardenSectionId),
    );
  }

  factory SectionLine.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SectionLine(
      id: serializer.fromJson<String>(json['id']),
      gardenSectionId: serializer.fromJson<String>(json['gardenSectionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'gardenSectionId': serializer.toJson<String>(gardenSectionId),
    };
  }

  SectionLine copyWith({String? id, String? gardenSectionId}) => SectionLine(
        id: id ?? this.id,
        gardenSectionId: gardenSectionId ?? this.gardenSectionId,
      );
  SectionLine copyWithCompanion(SectionLinesCompanion data) {
    return SectionLine(
      id: data.id.present ? data.id.value : this.id,
      gardenSectionId: data.gardenSectionId.present
          ? data.gardenSectionId.value
          : this.gardenSectionId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SectionLine(')
          ..write('id: $id, ')
          ..write('gardenSectionId: $gardenSectionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, gardenSectionId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SectionLine &&
          other.id == this.id &&
          other.gardenSectionId == this.gardenSectionId);
}

class SectionLinesCompanion extends UpdateCompanion<SectionLine> {
  final Value<String> id;
  final Value<String> gardenSectionId;
  final Value<int> rowid;
  const SectionLinesCompanion({
    this.id = const Value.absent(),
    this.gardenSectionId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SectionLinesCompanion.insert({
    required String id,
    required String gardenSectionId,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        gardenSectionId = Value(gardenSectionId);
  static Insertable<SectionLine> custom({
    Expression<String>? id,
    Expression<String>? gardenSectionId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (gardenSectionId != null) 'garden_section_id': gardenSectionId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SectionLinesCompanion copyWith(
      {Value<String>? id, Value<String>? gardenSectionId, Value<int>? rowid}) {
    return SectionLinesCompanion(
      id: id ?? this.id,
      gardenSectionId: gardenSectionId ?? this.gardenSectionId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (gardenSectionId.present) {
      map['garden_section_id'] = Variable<String>(gardenSectionId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SectionLinesCompanion(')
          ..write('id: $id, ')
          ..write('gardenSectionId: $gardenSectionId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CultureTypesTable extends CultureTypes
    with TableInfo<$CultureTypesTable, CultureType> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CultureTypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'culture_types';
  @override
  VerificationContext validateIntegrity(Insertable<CultureType> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CultureType map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CultureType(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $CultureTypesTable createAlias(String alias) {
    return $CultureTypesTable(attachedDatabase, alias);
  }
}

class CultureType extends DataClass implements Insertable<CultureType> {
  final String id;
  final String name;
  const CultureType({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  CultureTypesCompanion toCompanion(bool nullToAbsent) {
    return CultureTypesCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory CultureType.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CultureType(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  CultureType copyWith({String? id, String? name}) => CultureType(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  CultureType copyWithCompanion(CultureTypesCompanion data) {
    return CultureType(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CultureType(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CultureType && other.id == this.id && other.name == this.name);
}

class CultureTypesCompanion extends UpdateCompanion<CultureType> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> rowid;
  const CultureTypesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CultureTypesCompanion.insert({
    required String id,
    required String name,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name);
  static Insertable<CultureType> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CultureTypesCompanion copyWith(
      {Value<String>? id, Value<String>? name, Value<int>? rowid}) {
    return CultureTypesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CultureTypesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EquipementsTable extends Equipements
    with TableInfo<$EquipementsTable, Equipement> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EquipementsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
      'quantity', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _gardenIdMeta =
      const VerificationMeta('gardenId');
  @override
  late final GeneratedColumn<String> gardenId = GeneratedColumn<String>(
      'garden_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES gardens (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, name, quantity, gardenId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'equipements';
  @override
  VerificationContext validateIntegrity(Insertable<Equipement> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('garden_id')) {
      context.handle(_gardenIdMeta,
          gardenId.isAcceptableOrUnknown(data['garden_id']!, _gardenIdMeta));
    } else if (isInserting) {
      context.missing(_gardenIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Equipement map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Equipement(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quantity'])!,
      gardenId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}garden_id'])!,
    );
  }

  @override
  $EquipementsTable createAlias(String alias) {
    return $EquipementsTable(attachedDatabase, alias);
  }
}

class Equipement extends DataClass implements Insertable<Equipement> {
  final String id;
  final String name;
  final int quantity;
  final String gardenId;
  const Equipement(
      {required this.id,
      required this.name,
      required this.quantity,
      required this.gardenId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['quantity'] = Variable<int>(quantity);
    map['garden_id'] = Variable<String>(gardenId);
    return map;
  }

  EquipementsCompanion toCompanion(bool nullToAbsent) {
    return EquipementsCompanion(
      id: Value(id),
      name: Value(name),
      quantity: Value(quantity),
      gardenId: Value(gardenId),
    );
  }

  factory Equipement.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Equipement(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      quantity: serializer.fromJson<int>(json['quantity']),
      gardenId: serializer.fromJson<String>(json['gardenId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'quantity': serializer.toJson<int>(quantity),
      'gardenId': serializer.toJson<String>(gardenId),
    };
  }

  Equipement copyWith(
          {String? id, String? name, int? quantity, String? gardenId}) =>
      Equipement(
        id: id ?? this.id,
        name: name ?? this.name,
        quantity: quantity ?? this.quantity,
        gardenId: gardenId ?? this.gardenId,
      );
  Equipement copyWithCompanion(EquipementsCompanion data) {
    return Equipement(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      gardenId: data.gardenId.present ? data.gardenId.value : this.gardenId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Equipement(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('quantity: $quantity, ')
          ..write('gardenId: $gardenId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, quantity, gardenId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Equipement &&
          other.id == this.id &&
          other.name == this.name &&
          other.quantity == this.quantity &&
          other.gardenId == this.gardenId);
}

class EquipementsCompanion extends UpdateCompanion<Equipement> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> quantity;
  final Value<String> gardenId;
  final Value<int> rowid;
  const EquipementsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.quantity = const Value.absent(),
    this.gardenId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EquipementsCompanion.insert({
    required String id,
    required String name,
    required int quantity,
    required String gardenId,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        quantity = Value(quantity),
        gardenId = Value(gardenId);
  static Insertable<Equipement> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? quantity,
    Expression<String>? gardenId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (quantity != null) 'quantity': quantity,
      if (gardenId != null) 'garden_id': gardenId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EquipementsCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<int>? quantity,
      Value<String>? gardenId,
      Value<int>? rowid}) {
    return EquipementsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      gardenId: gardenId ?? this.gardenId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (gardenId.present) {
      map['garden_id'] = Variable<String>(gardenId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EquipementsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('quantity: $quantity, ')
          ..write('gardenId: $gardenId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TreeTypesTable treeTypes = $TreeTypesTable(this);
  late final $TreeSubTypesTable treeSubTypes = $TreeSubTypesTable(this);
  late final $TreesTable trees = $TreesTable(this);
  late final $TreeHistoryOptionsTable treeHistoryOptions =
      $TreeHistoryOptionsTable(this);
  late final $TreeHistoriesTable treeHistories = $TreeHistoriesTable(this);
  late final $SurfaceTypesTable surfaceTypes = $SurfaceTypesTable(this);
  late final $SurfacesTable surfaces = $SurfacesTable(this);
  late final $PlantingModesTable plantingModes = $PlantingModesTable(this);
  late final $GpsCoordinatesTable gpsCoordinates = $GpsCoordinatesTable(this);
  late final $GardensTable gardens = $GardensTable(this);
  late final $GardenSectionsTable gardenSections = $GardenSectionsTable(this);
  late final $SectionLinesTable sectionLines = $SectionLinesTable(this);
  late final $CultureTypesTable cultureTypes = $CultureTypesTable(this);
  late final $EquipementsTable equipements = $EquipementsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        treeTypes,
        treeSubTypes,
        trees,
        treeHistoryOptions,
        treeHistories,
        surfaceTypes,
        surfaces,
        plantingModes,
        gpsCoordinates,
        gardens,
        gardenSections,
        sectionLines,
        cultureTypes,
        equipements
      ];
}

typedef $$TreeTypesTableCreateCompanionBuilder = TreeTypesCompanion Function({
  required String id,
  required String name,
  Value<int> rowid,
});
typedef $$TreeTypesTableUpdateCompanionBuilder = TreeTypesCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<int> rowid,
});

final class $$TreeTypesTableReferences
    extends BaseReferences<_$AppDatabase, $TreeTypesTable, TreeType> {
  $$TreeTypesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TreesTable, List<Tree>> _treesRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.trees,
          aliasName: $_aliasNameGenerator(db.treeTypes.id, db.trees.type));

  $$TreesTableProcessedTableManager get treesRefs {
    final manager = $$TreesTableTableManager($_db, $_db.trees)
        .filter((f) => f.type.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_treesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$GardenSectionsTable, List<GardenSection>>
      _gardenSectionsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.gardenSections,
              aliasName: $_aliasNameGenerator(
                  db.treeTypes.id, db.gardenSections.treeType));

  $$GardenSectionsTableProcessedTableManager get gardenSectionsRefs {
    final manager = $$GardenSectionsTableTableManager($_db, $_db.gardenSections)
        .filter((f) => f.treeType.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_gardenSectionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$TreeTypesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $TreeTypesTable> {
  $$TreeTypesTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter treesRefs(
      ComposableFilter Function($$TreesTableFilterComposer f) f) {
    final $$TreesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.trees,
        getReferencedColumn: (t) => t.type,
        builder: (joinBuilder, parentComposers) => $$TreesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.trees, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter gardenSectionsRefs(
      ComposableFilter Function($$GardenSectionsTableFilterComposer f) f) {
    final $$GardenSectionsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.gardenSections,
        getReferencedColumn: (t) => t.treeType,
        builder: (joinBuilder, parentComposers) =>
            $$GardenSectionsTableFilterComposer(ComposerState($state.db,
                $state.db.gardenSections, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$TreeTypesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $TreeTypesTable> {
  $$TreeTypesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$TreeTypesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TreeTypesTable,
    TreeType,
    $$TreeTypesTableFilterComposer,
    $$TreeTypesTableOrderingComposer,
    $$TreeTypesTableCreateCompanionBuilder,
    $$TreeTypesTableUpdateCompanionBuilder,
    (TreeType, $$TreeTypesTableReferences),
    TreeType,
    PrefetchHooks Function({bool treesRefs, bool gardenSectionsRefs})> {
  $$TreeTypesTableTableManager(_$AppDatabase db, $TreeTypesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TreeTypesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TreeTypesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TreeTypesCompanion(
            id: id,
            name: name,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            Value<int> rowid = const Value.absent(),
          }) =>
              TreeTypesCompanion.insert(
            id: id,
            name: name,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TreeTypesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {treesRefs = false, gardenSectionsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (treesRefs) db.trees,
                if (gardenSectionsRefs) db.gardenSections
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (treesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$TreeTypesTableReferences._treesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TreeTypesTableReferences(db, table, p0).treesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) =>
                                referencedItems.where((e) => e.type == item.id),
                        typedResults: items),
                  if (gardenSectionsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$TreeTypesTableReferences
                            ._gardenSectionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TreeTypesTableReferences(db, table, p0)
                                .gardenSectionsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.treeType == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$TreeTypesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TreeTypesTable,
    TreeType,
    $$TreeTypesTableFilterComposer,
    $$TreeTypesTableOrderingComposer,
    $$TreeTypesTableCreateCompanionBuilder,
    $$TreeTypesTableUpdateCompanionBuilder,
    (TreeType, $$TreeTypesTableReferences),
    TreeType,
    PrefetchHooks Function({bool treesRefs, bool gardenSectionsRefs})>;
typedef $$TreeSubTypesTableCreateCompanionBuilder = TreeSubTypesCompanion
    Function({
  required String id,
  required String name,
  Value<int> rowid,
});
typedef $$TreeSubTypesTableUpdateCompanionBuilder = TreeSubTypesCompanion
    Function({
  Value<String> id,
  Value<String> name,
  Value<int> rowid,
});

final class $$TreeSubTypesTableReferences
    extends BaseReferences<_$AppDatabase, $TreeSubTypesTable, TreeSubType> {
  $$TreeSubTypesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TreesTable, List<Tree>> _treesRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.trees,
          aliasName:
              $_aliasNameGenerator(db.treeSubTypes.id, db.trees.subType));

  $$TreesTableProcessedTableManager get treesRefs {
    final manager = $$TreesTableTableManager($_db, $_db.trees)
        .filter((f) => f.subType.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_treesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$GardenSectionsTable, List<GardenSection>>
      _gardenSectionsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.gardenSections,
              aliasName: $_aliasNameGenerator(
                  db.treeSubTypes.id, db.gardenSections.treeSubType));

  $$GardenSectionsTableProcessedTableManager get gardenSectionsRefs {
    final manager = $$GardenSectionsTableTableManager($_db, $_db.gardenSections)
        .filter((f) => f.treeSubType.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_gardenSectionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$TreeSubTypesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $TreeSubTypesTable> {
  $$TreeSubTypesTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter treesRefs(
      ComposableFilter Function($$TreesTableFilterComposer f) f) {
    final $$TreesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.trees,
        getReferencedColumn: (t) => t.subType,
        builder: (joinBuilder, parentComposers) => $$TreesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.trees, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter gardenSectionsRefs(
      ComposableFilter Function($$GardenSectionsTableFilterComposer f) f) {
    final $$GardenSectionsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.gardenSections,
        getReferencedColumn: (t) => t.treeSubType,
        builder: (joinBuilder, parentComposers) =>
            $$GardenSectionsTableFilterComposer(ComposerState($state.db,
                $state.db.gardenSections, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$TreeSubTypesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $TreeSubTypesTable> {
  $$TreeSubTypesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$TreeSubTypesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TreeSubTypesTable,
    TreeSubType,
    $$TreeSubTypesTableFilterComposer,
    $$TreeSubTypesTableOrderingComposer,
    $$TreeSubTypesTableCreateCompanionBuilder,
    $$TreeSubTypesTableUpdateCompanionBuilder,
    (TreeSubType, $$TreeSubTypesTableReferences),
    TreeSubType,
    PrefetchHooks Function({bool treesRefs, bool gardenSectionsRefs})> {
  $$TreeSubTypesTableTableManager(_$AppDatabase db, $TreeSubTypesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TreeSubTypesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TreeSubTypesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TreeSubTypesCompanion(
            id: id,
            name: name,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            Value<int> rowid = const Value.absent(),
          }) =>
              TreeSubTypesCompanion.insert(
            id: id,
            name: name,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TreeSubTypesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {treesRefs = false, gardenSectionsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (treesRefs) db.trees,
                if (gardenSectionsRefs) db.gardenSections
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (treesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$TreeSubTypesTableReferences._treesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TreeSubTypesTableReferences(db, table, p0)
                                .treesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.subType == item.id),
                        typedResults: items),
                  if (gardenSectionsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$TreeSubTypesTableReferences
                            ._gardenSectionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TreeSubTypesTableReferences(db, table, p0)
                                .gardenSectionsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.treeSubType == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$TreeSubTypesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TreeSubTypesTable,
    TreeSubType,
    $$TreeSubTypesTableFilterComposer,
    $$TreeSubTypesTableOrderingComposer,
    $$TreeSubTypesTableCreateCompanionBuilder,
    $$TreeSubTypesTableUpdateCompanionBuilder,
    (TreeSubType, $$TreeSubTypesTableReferences),
    TreeSubType,
    PrefetchHooks Function({bool treesRefs, bool gardenSectionsRefs})>;
typedef $$TreesTableCreateCompanionBuilder = TreesCompanion Function({
  required String id,
  required int age,
  required String type,
  required String subType,
  Value<int> rowid,
});
typedef $$TreesTableUpdateCompanionBuilder = TreesCompanion Function({
  Value<String> id,
  Value<int> age,
  Value<String> type,
  Value<String> subType,
  Value<int> rowid,
});

final class $$TreesTableReferences
    extends BaseReferences<_$AppDatabase, $TreesTable, Tree> {
  $$TreesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $TreeTypesTable _typeTable(_$AppDatabase db) => db.treeTypes
      .createAlias($_aliasNameGenerator(db.trees.type, db.treeTypes.id));

  $$TreeTypesTableProcessedTableManager? get type {
    if ($_item.type == null) return null;
    final manager = $$TreeTypesTableTableManager($_db, $_db.treeTypes)
        .filter((f) => f.id($_item.type!));
    final item = $_typedResult.readTableOrNull(_typeTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $TreeSubTypesTable _subTypeTable(_$AppDatabase db) => db.treeSubTypes
      .createAlias($_aliasNameGenerator(db.trees.subType, db.treeSubTypes.id));

  $$TreeSubTypesTableProcessedTableManager? get subType {
    if ($_item.subType == null) return null;
    final manager = $$TreeSubTypesTableTableManager($_db, $_db.treeSubTypes)
        .filter((f) => f.id($_item.subType!));
    final item = $_typedResult.readTableOrNull(_subTypeTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$TreeHistoriesTable, List<TreeHistory>>
      _treeHistoriesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.treeHistories,
              aliasName:
                  $_aliasNameGenerator(db.trees.id, db.treeHistories.treeId));

  $$TreeHistoriesTableProcessedTableManager get treeHistoriesRefs {
    final manager = $$TreeHistoriesTableTableManager($_db, $_db.treeHistories)
        .filter((f) => f.treeId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_treeHistoriesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$TreesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $TreesTable> {
  $$TreesTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get age => $state.composableBuilder(
      column: $state.table.age,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$TreeTypesTableFilterComposer get type {
    final $$TreeTypesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.type,
        referencedTable: $state.db.treeTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$TreeTypesTableFilterComposer(ComposerState(
                $state.db, $state.db.treeTypes, joinBuilder, parentComposers)));
    return composer;
  }

  $$TreeSubTypesTableFilterComposer get subType {
    final $$TreeSubTypesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.subType,
        referencedTable: $state.db.treeSubTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$TreeSubTypesTableFilterComposer(ComposerState($state.db,
                $state.db.treeSubTypes, joinBuilder, parentComposers)));
    return composer;
  }

  ComposableFilter treeHistoriesRefs(
      ComposableFilter Function($$TreeHistoriesTableFilterComposer f) f) {
    final $$TreeHistoriesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.treeHistories,
        getReferencedColumn: (t) => t.treeId,
        builder: (joinBuilder, parentComposers) =>
            $$TreeHistoriesTableFilterComposer(ComposerState($state.db,
                $state.db.treeHistories, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$TreesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $TreesTable> {
  $$TreesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get age => $state.composableBuilder(
      column: $state.table.age,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$TreeTypesTableOrderingComposer get type {
    final $$TreeTypesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.type,
        referencedTable: $state.db.treeTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$TreeTypesTableOrderingComposer(ComposerState(
                $state.db, $state.db.treeTypes, joinBuilder, parentComposers)));
    return composer;
  }

  $$TreeSubTypesTableOrderingComposer get subType {
    final $$TreeSubTypesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.subType,
        referencedTable: $state.db.treeSubTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$TreeSubTypesTableOrderingComposer(ComposerState($state.db,
                $state.db.treeSubTypes, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$TreesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TreesTable,
    Tree,
    $$TreesTableFilterComposer,
    $$TreesTableOrderingComposer,
    $$TreesTableCreateCompanionBuilder,
    $$TreesTableUpdateCompanionBuilder,
    (Tree, $$TreesTableReferences),
    Tree,
    PrefetchHooks Function({bool type, bool subType, bool treeHistoriesRefs})> {
  $$TreesTableTableManager(_$AppDatabase db, $TreesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TreesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TreesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<int> age = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String> subType = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TreesCompanion(
            id: id,
            age: age,
            type: type,
            subType: subType,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required int age,
            required String type,
            required String subType,
            Value<int> rowid = const Value.absent(),
          }) =>
              TreesCompanion.insert(
            id: id,
            age: age,
            type: type,
            subType: subType,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$TreesTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {type = false, subType = false, treeHistoriesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (treeHistoriesRefs) db.treeHistories
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (type) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.type,
                    referencedTable: $$TreesTableReferences._typeTable(db),
                    referencedColumn: $$TreesTableReferences._typeTable(db).id,
                  ) as T;
                }
                if (subType) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.subType,
                    referencedTable: $$TreesTableReferences._subTypeTable(db),
                    referencedColumn:
                        $$TreesTableReferences._subTypeTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (treeHistoriesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$TreesTableReferences._treeHistoriesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TreesTableReferences(db, table, p0)
                                .treeHistoriesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.treeId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$TreesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TreesTable,
    Tree,
    $$TreesTableFilterComposer,
    $$TreesTableOrderingComposer,
    $$TreesTableCreateCompanionBuilder,
    $$TreesTableUpdateCompanionBuilder,
    (Tree, $$TreesTableReferences),
    Tree,
    PrefetchHooks Function({bool type, bool subType, bool treeHistoriesRefs})>;
typedef $$TreeHistoryOptionsTableCreateCompanionBuilder
    = TreeHistoryOptionsCompanion Function({
  required String id,
  required String name,
  Value<int> rowid,
});
typedef $$TreeHistoryOptionsTableUpdateCompanionBuilder
    = TreeHistoryOptionsCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<int> rowid,
});

final class $$TreeHistoryOptionsTableReferences extends BaseReferences<
    _$AppDatabase, $TreeHistoryOptionsTable, TreeHistoryOption> {
  $$TreeHistoryOptionsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TreeHistoriesTable, List<TreeHistory>>
      _treeHistoriesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.treeHistories,
              aliasName: $_aliasNameGenerator(db.treeHistoryOptions.id,
                  db.treeHistories.treeHistoryOptionId));

  $$TreeHistoriesTableProcessedTableManager get treeHistoriesRefs {
    final manager = $$TreeHistoriesTableTableManager($_db, $_db.treeHistories)
        .filter((f) => f.treeHistoryOptionId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_treeHistoriesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$TreeHistoryOptionsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $TreeHistoryOptionsTable> {
  $$TreeHistoryOptionsTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter treeHistoriesRefs(
      ComposableFilter Function($$TreeHistoriesTableFilterComposer f) f) {
    final $$TreeHistoriesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.treeHistories,
        getReferencedColumn: (t) => t.treeHistoryOptionId,
        builder: (joinBuilder, parentComposers) =>
            $$TreeHistoriesTableFilterComposer(ComposerState($state.db,
                $state.db.treeHistories, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$TreeHistoryOptionsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $TreeHistoryOptionsTable> {
  $$TreeHistoryOptionsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$TreeHistoryOptionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TreeHistoryOptionsTable,
    TreeHistoryOption,
    $$TreeHistoryOptionsTableFilterComposer,
    $$TreeHistoryOptionsTableOrderingComposer,
    $$TreeHistoryOptionsTableCreateCompanionBuilder,
    $$TreeHistoryOptionsTableUpdateCompanionBuilder,
    (TreeHistoryOption, $$TreeHistoryOptionsTableReferences),
    TreeHistoryOption,
    PrefetchHooks Function({bool treeHistoriesRefs})> {
  $$TreeHistoryOptionsTableTableManager(
      _$AppDatabase db, $TreeHistoryOptionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TreeHistoryOptionsTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$TreeHistoryOptionsTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TreeHistoryOptionsCompanion(
            id: id,
            name: name,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            Value<int> rowid = const Value.absent(),
          }) =>
              TreeHistoryOptionsCompanion.insert(
            id: id,
            name: name,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TreeHistoryOptionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({treeHistoriesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (treeHistoriesRefs) db.treeHistories
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (treeHistoriesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$TreeHistoryOptionsTableReferences
                            ._treeHistoriesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TreeHistoryOptionsTableReferences(db, table, p0)
                                .treeHistoriesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.treeHistoryOptionId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$TreeHistoryOptionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TreeHistoryOptionsTable,
    TreeHistoryOption,
    $$TreeHistoryOptionsTableFilterComposer,
    $$TreeHistoryOptionsTableOrderingComposer,
    $$TreeHistoryOptionsTableCreateCompanionBuilder,
    $$TreeHistoryOptionsTableUpdateCompanionBuilder,
    (TreeHistoryOption, $$TreeHistoryOptionsTableReferences),
    TreeHistoryOption,
    PrefetchHooks Function({bool treeHistoriesRefs})>;
typedef $$TreeHistoriesTableCreateCompanionBuilder = TreeHistoriesCompanion
    Function({
  required String id,
  required String treeId,
  required String treeHistoryOptionId,
  Value<int> rowid,
});
typedef $$TreeHistoriesTableUpdateCompanionBuilder = TreeHistoriesCompanion
    Function({
  Value<String> id,
  Value<String> treeId,
  Value<String> treeHistoryOptionId,
  Value<int> rowid,
});

final class $$TreeHistoriesTableReferences
    extends BaseReferences<_$AppDatabase, $TreeHistoriesTable, TreeHistory> {
  $$TreeHistoriesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $TreesTable _treeIdTable(_$AppDatabase db) => db.trees
      .createAlias($_aliasNameGenerator(db.treeHistories.treeId, db.trees.id));

  $$TreesTableProcessedTableManager? get treeId {
    if ($_item.treeId == null) return null;
    final manager = $$TreesTableTableManager($_db, $_db.trees)
        .filter((f) => f.id($_item.treeId!));
    final item = $_typedResult.readTableOrNull(_treeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $TreeHistoryOptionsTable _treeHistoryOptionIdTable(_$AppDatabase db) =>
      db.treeHistoryOptions.createAlias($_aliasNameGenerator(
          db.treeHistories.treeHistoryOptionId, db.treeHistoryOptions.id));

  $$TreeHistoryOptionsTableProcessedTableManager? get treeHistoryOptionId {
    if ($_item.treeHistoryOptionId == null) return null;
    final manager =
        $$TreeHistoryOptionsTableTableManager($_db, $_db.treeHistoryOptions)
            .filter((f) => f.id($_item.treeHistoryOptionId!));
    final item = $_typedResult.readTableOrNull(_treeHistoryOptionIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$TreeHistoriesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $TreeHistoriesTable> {
  $$TreeHistoriesTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$TreesTableFilterComposer get treeId {
    final $$TreesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.treeId,
        referencedTable: $state.db.trees,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$TreesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.trees, joinBuilder, parentComposers)));
    return composer;
  }

  $$TreeHistoryOptionsTableFilterComposer get treeHistoryOptionId {
    final $$TreeHistoryOptionsTableFilterComposer composer = $state
        .composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.treeHistoryOptionId,
            referencedTable: $state.db.treeHistoryOptions,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$TreeHistoryOptionsTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.treeHistoryOptions,
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class $$TreeHistoriesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $TreeHistoriesTable> {
  $$TreeHistoriesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$TreesTableOrderingComposer get treeId {
    final $$TreesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.treeId,
        referencedTable: $state.db.trees,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$TreesTableOrderingComposer(
            ComposerState(
                $state.db, $state.db.trees, joinBuilder, parentComposers)));
    return composer;
  }

  $$TreeHistoryOptionsTableOrderingComposer get treeHistoryOptionId {
    final $$TreeHistoryOptionsTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.treeHistoryOptionId,
            referencedTable: $state.db.treeHistoryOptions,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$TreeHistoryOptionsTableOrderingComposer(ComposerState(
                    $state.db,
                    $state.db.treeHistoryOptions,
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class $$TreeHistoriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TreeHistoriesTable,
    TreeHistory,
    $$TreeHistoriesTableFilterComposer,
    $$TreeHistoriesTableOrderingComposer,
    $$TreeHistoriesTableCreateCompanionBuilder,
    $$TreeHistoriesTableUpdateCompanionBuilder,
    (TreeHistory, $$TreeHistoriesTableReferences),
    TreeHistory,
    PrefetchHooks Function({bool treeId, bool treeHistoryOptionId})> {
  $$TreeHistoriesTableTableManager(_$AppDatabase db, $TreeHistoriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TreeHistoriesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TreeHistoriesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> treeId = const Value.absent(),
            Value<String> treeHistoryOptionId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TreeHistoriesCompanion(
            id: id,
            treeId: treeId,
            treeHistoryOptionId: treeHistoryOptionId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String treeId,
            required String treeHistoryOptionId,
            Value<int> rowid = const Value.absent(),
          }) =>
              TreeHistoriesCompanion.insert(
            id: id,
            treeId: treeId,
            treeHistoryOptionId: treeHistoryOptionId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TreeHistoriesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {treeId = false, treeHistoryOptionId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (treeId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.treeId,
                    referencedTable:
                        $$TreeHistoriesTableReferences._treeIdTable(db),
                    referencedColumn:
                        $$TreeHistoriesTableReferences._treeIdTable(db).id,
                  ) as T;
                }
                if (treeHistoryOptionId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.treeHistoryOptionId,
                    referencedTable: $$TreeHistoriesTableReferences
                        ._treeHistoryOptionIdTable(db),
                    referencedColumn: $$TreeHistoriesTableReferences
                        ._treeHistoryOptionIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$TreeHistoriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TreeHistoriesTable,
    TreeHistory,
    $$TreeHistoriesTableFilterComposer,
    $$TreeHistoriesTableOrderingComposer,
    $$TreeHistoriesTableCreateCompanionBuilder,
    $$TreeHistoriesTableUpdateCompanionBuilder,
    (TreeHistory, $$TreeHistoriesTableReferences),
    TreeHistory,
    PrefetchHooks Function({bool treeId, bool treeHistoryOptionId})>;
typedef $$SurfaceTypesTableCreateCompanionBuilder = SurfaceTypesCompanion
    Function({
  required String id,
  required String name,
  Value<int> rowid,
});
typedef $$SurfaceTypesTableUpdateCompanionBuilder = SurfaceTypesCompanion
    Function({
  Value<String> id,
  Value<String> name,
  Value<int> rowid,
});

final class $$SurfaceTypesTableReferences
    extends BaseReferences<_$AppDatabase, $SurfaceTypesTable, SurfaceType> {
  $$SurfaceTypesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$SurfacesTable, List<Surface>> _surfacesRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.surfaces,
          aliasName:
              $_aliasNameGenerator(db.surfaceTypes.id, db.surfaces.type));

  $$SurfacesTableProcessedTableManager get surfacesRefs {
    final manager = $$SurfacesTableTableManager($_db, $_db.surfaces)
        .filter((f) => f.type.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_surfacesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$SurfaceTypesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $SurfaceTypesTable> {
  $$SurfaceTypesTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter surfacesRefs(
      ComposableFilter Function($$SurfacesTableFilterComposer f) f) {
    final $$SurfacesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.surfaces,
        getReferencedColumn: (t) => t.type,
        builder: (joinBuilder, parentComposers) =>
            $$SurfacesTableFilterComposer(ComposerState(
                $state.db, $state.db.surfaces, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$SurfaceTypesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $SurfaceTypesTable> {
  $$SurfaceTypesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$SurfaceTypesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SurfaceTypesTable,
    SurfaceType,
    $$SurfaceTypesTableFilterComposer,
    $$SurfaceTypesTableOrderingComposer,
    $$SurfaceTypesTableCreateCompanionBuilder,
    $$SurfaceTypesTableUpdateCompanionBuilder,
    (SurfaceType, $$SurfaceTypesTableReferences),
    SurfaceType,
    PrefetchHooks Function({bool surfacesRefs})> {
  $$SurfaceTypesTableTableManager(_$AppDatabase db, $SurfaceTypesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SurfaceTypesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SurfaceTypesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SurfaceTypesCompanion(
            id: id,
            name: name,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            Value<int> rowid = const Value.absent(),
          }) =>
              SurfaceTypesCompanion.insert(
            id: id,
            name: name,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SurfaceTypesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({surfacesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (surfacesRefs) db.surfaces],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (surfacesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$SurfaceTypesTableReferences
                            ._surfacesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SurfaceTypesTableReferences(db, table, p0)
                                .surfacesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) =>
                                referencedItems.where((e) => e.type == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$SurfaceTypesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SurfaceTypesTable,
    SurfaceType,
    $$SurfaceTypesTableFilterComposer,
    $$SurfaceTypesTableOrderingComposer,
    $$SurfaceTypesTableCreateCompanionBuilder,
    $$SurfaceTypesTableUpdateCompanionBuilder,
    (SurfaceType, $$SurfaceTypesTableReferences),
    SurfaceType,
    PrefetchHooks Function({bool surfacesRefs})>;
typedef $$SurfacesTableCreateCompanionBuilder = SurfacesCompanion Function({
  required String id,
  required double amount,
  required String type,
  Value<int> rowid,
});
typedef $$SurfacesTableUpdateCompanionBuilder = SurfacesCompanion Function({
  Value<String> id,
  Value<double> amount,
  Value<String> type,
  Value<int> rowid,
});

final class $$SurfacesTableReferences
    extends BaseReferences<_$AppDatabase, $SurfacesTable, Surface> {
  $$SurfacesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $SurfaceTypesTable _typeTable(_$AppDatabase db) => db.surfaceTypes
      .createAlias($_aliasNameGenerator(db.surfaces.type, db.surfaceTypes.id));

  $$SurfaceTypesTableProcessedTableManager? get type {
    if ($_item.type == null) return null;
    final manager = $$SurfaceTypesTableTableManager($_db, $_db.surfaceTypes)
        .filter((f) => f.id($_item.type!));
    final item = $_typedResult.readTableOrNull(_typeTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$GardensTable, List<Garden>> _gardensRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.gardens,
          aliasName:
              $_aliasNameGenerator(db.surfaces.id, db.gardens.surfaceId));

  $$GardensTableProcessedTableManager get gardensRefs {
    final manager = $$GardensTableTableManager($_db, $_db.gardens)
        .filter((f) => f.surfaceId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_gardensRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$SurfacesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $SurfacesTable> {
  $$SurfacesTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get amount => $state.composableBuilder(
      column: $state.table.amount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$SurfaceTypesTableFilterComposer get type {
    final $$SurfaceTypesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.type,
        referencedTable: $state.db.surfaceTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$SurfaceTypesTableFilterComposer(ComposerState($state.db,
                $state.db.surfaceTypes, joinBuilder, parentComposers)));
    return composer;
  }

  ComposableFilter gardensRefs(
      ComposableFilter Function($$GardensTableFilterComposer f) f) {
    final $$GardensTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.gardens,
        getReferencedColumn: (t) => t.surfaceId,
        builder: (joinBuilder, parentComposers) => $$GardensTableFilterComposer(
            ComposerState(
                $state.db, $state.db.gardens, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$SurfacesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $SurfacesTable> {
  $$SurfacesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get amount => $state.composableBuilder(
      column: $state.table.amount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$SurfaceTypesTableOrderingComposer get type {
    final $$SurfaceTypesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.type,
        referencedTable: $state.db.surfaceTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$SurfaceTypesTableOrderingComposer(ComposerState($state.db,
                $state.db.surfaceTypes, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$SurfacesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SurfacesTable,
    Surface,
    $$SurfacesTableFilterComposer,
    $$SurfacesTableOrderingComposer,
    $$SurfacesTableCreateCompanionBuilder,
    $$SurfacesTableUpdateCompanionBuilder,
    (Surface, $$SurfacesTableReferences),
    Surface,
    PrefetchHooks Function({bool type, bool gardensRefs})> {
  $$SurfacesTableTableManager(_$AppDatabase db, $SurfacesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SurfacesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SurfacesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<double> amount = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SurfacesCompanion(
            id: id,
            amount: amount,
            type: type,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required double amount,
            required String type,
            Value<int> rowid = const Value.absent(),
          }) =>
              SurfacesCompanion.insert(
            id: id,
            amount: amount,
            type: type,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$SurfacesTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({type = false, gardensRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (gardensRefs) db.gardens],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (type) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.type,
                    referencedTable: $$SurfacesTableReferences._typeTable(db),
                    referencedColumn:
                        $$SurfacesTableReferences._typeTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (gardensRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$SurfacesTableReferences._gardensRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SurfacesTableReferences(db, table, p0)
                                .gardensRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.surfaceId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$SurfacesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SurfacesTable,
    Surface,
    $$SurfacesTableFilterComposer,
    $$SurfacesTableOrderingComposer,
    $$SurfacesTableCreateCompanionBuilder,
    $$SurfacesTableUpdateCompanionBuilder,
    (Surface, $$SurfacesTableReferences),
    Surface,
    PrefetchHooks Function({bool type, bool gardensRefs})>;
typedef $$PlantingModesTableCreateCompanionBuilder = PlantingModesCompanion
    Function({
  required String id,
  required String name,
  Value<int> rowid,
});
typedef $$PlantingModesTableUpdateCompanionBuilder = PlantingModesCompanion
    Function({
  Value<String> id,
  Value<String> name,
  Value<int> rowid,
});

class $$PlantingModesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $PlantingModesTable> {
  $$PlantingModesTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$PlantingModesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $PlantingModesTable> {
  $$PlantingModesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$PlantingModesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PlantingModesTable,
    PlantingMode,
    $$PlantingModesTableFilterComposer,
    $$PlantingModesTableOrderingComposer,
    $$PlantingModesTableCreateCompanionBuilder,
    $$PlantingModesTableUpdateCompanionBuilder,
    (
      PlantingMode,
      BaseReferences<_$AppDatabase, $PlantingModesTable, PlantingMode>
    ),
    PlantingMode,
    PrefetchHooks Function()> {
  $$PlantingModesTableTableManager(_$AppDatabase db, $PlantingModesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PlantingModesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$PlantingModesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PlantingModesCompanion(
            id: id,
            name: name,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            Value<int> rowid = const Value.absent(),
          }) =>
              PlantingModesCompanion.insert(
            id: id,
            name: name,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PlantingModesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PlantingModesTable,
    PlantingMode,
    $$PlantingModesTableFilterComposer,
    $$PlantingModesTableOrderingComposer,
    $$PlantingModesTableCreateCompanionBuilder,
    $$PlantingModesTableUpdateCompanionBuilder,
    (
      PlantingMode,
      BaseReferences<_$AppDatabase, $PlantingModesTable, PlantingMode>
    ),
    PlantingMode,
    PrefetchHooks Function()>;
typedef $$GpsCoordinatesTableCreateCompanionBuilder = GpsCoordinatesCompanion
    Function({
  required String id,
  required double latitude,
  required double longitude,
  Value<int> rowid,
});
typedef $$GpsCoordinatesTableUpdateCompanionBuilder = GpsCoordinatesCompanion
    Function({
  Value<String> id,
  Value<double> latitude,
  Value<double> longitude,
  Value<int> rowid,
});

final class $$GpsCoordinatesTableReferences
    extends BaseReferences<_$AppDatabase, $GpsCoordinatesTable, GpsCoordinate> {
  $$GpsCoordinatesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$GardensTable, List<Garden>> _gardensRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.gardens,
          aliasName: $_aliasNameGenerator(
              db.gpsCoordinates.id, db.gardens.coordinatesId));

  $$GardensTableProcessedTableManager get gardensRefs {
    final manager = $$GardensTableTableManager($_db, $_db.gardens)
        .filter((f) => f.coordinatesId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_gardensRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$GpsCoordinatesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $GpsCoordinatesTable> {
  $$GpsCoordinatesTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get latitude => $state.composableBuilder(
      column: $state.table.latitude,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get longitude => $state.composableBuilder(
      column: $state.table.longitude,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter gardensRefs(
      ComposableFilter Function($$GardensTableFilterComposer f) f) {
    final $$GardensTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.gardens,
        getReferencedColumn: (t) => t.coordinatesId,
        builder: (joinBuilder, parentComposers) => $$GardensTableFilterComposer(
            ComposerState(
                $state.db, $state.db.gardens, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$GpsCoordinatesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $GpsCoordinatesTable> {
  $$GpsCoordinatesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get latitude => $state.composableBuilder(
      column: $state.table.latitude,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get longitude => $state.composableBuilder(
      column: $state.table.longitude,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$GpsCoordinatesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GpsCoordinatesTable,
    GpsCoordinate,
    $$GpsCoordinatesTableFilterComposer,
    $$GpsCoordinatesTableOrderingComposer,
    $$GpsCoordinatesTableCreateCompanionBuilder,
    $$GpsCoordinatesTableUpdateCompanionBuilder,
    (GpsCoordinate, $$GpsCoordinatesTableReferences),
    GpsCoordinate,
    PrefetchHooks Function({bool gardensRefs})> {
  $$GpsCoordinatesTableTableManager(
      _$AppDatabase db, $GpsCoordinatesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$GpsCoordinatesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$GpsCoordinatesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<double> latitude = const Value.absent(),
            Value<double> longitude = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              GpsCoordinatesCompanion(
            id: id,
            latitude: latitude,
            longitude: longitude,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required double latitude,
            required double longitude,
            Value<int> rowid = const Value.absent(),
          }) =>
              GpsCoordinatesCompanion.insert(
            id: id,
            latitude: latitude,
            longitude: longitude,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$GpsCoordinatesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({gardensRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (gardensRefs) db.gardens],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (gardensRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$GpsCoordinatesTableReferences
                            ._gardensRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$GpsCoordinatesTableReferences(db, table, p0)
                                .gardensRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.coordinatesId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$GpsCoordinatesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GpsCoordinatesTable,
    GpsCoordinate,
    $$GpsCoordinatesTableFilterComposer,
    $$GpsCoordinatesTableOrderingComposer,
    $$GpsCoordinatesTableCreateCompanionBuilder,
    $$GpsCoordinatesTableUpdateCompanionBuilder,
    (GpsCoordinate, $$GpsCoordinatesTableReferences),
    GpsCoordinate,
    PrefetchHooks Function({bool gardensRefs})>;
typedef $$GardensTableCreateCompanionBuilder = GardensCompanion Function({
  required String id,
  required String name,
  required String coordinatesId,
  required String surfaceId,
  Value<int> rowid,
});
typedef $$GardensTableUpdateCompanionBuilder = GardensCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<String> coordinatesId,
  Value<String> surfaceId,
  Value<int> rowid,
});

final class $$GardensTableReferences
    extends BaseReferences<_$AppDatabase, $GardensTable, Garden> {
  $$GardensTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $GpsCoordinatesTable _coordinatesIdTable(_$AppDatabase db) =>
      db.gpsCoordinates.createAlias(
          $_aliasNameGenerator(db.gardens.coordinatesId, db.gpsCoordinates.id));

  $$GpsCoordinatesTableProcessedTableManager? get coordinatesId {
    if ($_item.coordinatesId == null) return null;
    final manager = $$GpsCoordinatesTableTableManager($_db, $_db.gpsCoordinates)
        .filter((f) => f.id($_item.coordinatesId!));
    final item = $_typedResult.readTableOrNull(_coordinatesIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $SurfacesTable _surfaceIdTable(_$AppDatabase db) => db.surfaces
      .createAlias($_aliasNameGenerator(db.gardens.surfaceId, db.surfaces.id));

  $$SurfacesTableProcessedTableManager? get surfaceId {
    if ($_item.surfaceId == null) return null;
    final manager = $$SurfacesTableTableManager($_db, $_db.surfaces)
        .filter((f) => f.id($_item.surfaceId!));
    final item = $_typedResult.readTableOrNull(_surfaceIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$GardenSectionsTable, List<GardenSection>>
      _gardenSectionsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.gardenSections,
              aliasName: $_aliasNameGenerator(
                  db.gardens.id, db.gardenSections.gardenId));

  $$GardenSectionsTableProcessedTableManager get gardenSectionsRefs {
    final manager = $$GardenSectionsTableTableManager($_db, $_db.gardenSections)
        .filter((f) => f.gardenId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_gardenSectionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$EquipementsTable, List<Equipement>>
      _equipementsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.equipements,
              aliasName:
                  $_aliasNameGenerator(db.gardens.id, db.equipements.gardenId));

  $$EquipementsTableProcessedTableManager get equipementsRefs {
    final manager = $$EquipementsTableTableManager($_db, $_db.equipements)
        .filter((f) => f.gardenId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_equipementsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$GardensTableFilterComposer
    extends FilterComposer<_$AppDatabase, $GardensTable> {
  $$GardensTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$GpsCoordinatesTableFilterComposer get coordinatesId {
    final $$GpsCoordinatesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.coordinatesId,
        referencedTable: $state.db.gpsCoordinates,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$GpsCoordinatesTableFilterComposer(ComposerState($state.db,
                $state.db.gpsCoordinates, joinBuilder, parentComposers)));
    return composer;
  }

  $$SurfacesTableFilterComposer get surfaceId {
    final $$SurfacesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.surfaceId,
        referencedTable: $state.db.surfaces,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$SurfacesTableFilterComposer(ComposerState(
                $state.db, $state.db.surfaces, joinBuilder, parentComposers)));
    return composer;
  }

  ComposableFilter gardenSectionsRefs(
      ComposableFilter Function($$GardenSectionsTableFilterComposer f) f) {
    final $$GardenSectionsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.gardenSections,
        getReferencedColumn: (t) => t.gardenId,
        builder: (joinBuilder, parentComposers) =>
            $$GardenSectionsTableFilterComposer(ComposerState($state.db,
                $state.db.gardenSections, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter equipementsRefs(
      ComposableFilter Function($$EquipementsTableFilterComposer f) f) {
    final $$EquipementsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.equipements,
        getReferencedColumn: (t) => t.gardenId,
        builder: (joinBuilder, parentComposers) =>
            $$EquipementsTableFilterComposer(ComposerState($state.db,
                $state.db.equipements, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$GardensTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $GardensTable> {
  $$GardensTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$GpsCoordinatesTableOrderingComposer get coordinatesId {
    final $$GpsCoordinatesTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.coordinatesId,
            referencedTable: $state.db.gpsCoordinates,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$GpsCoordinatesTableOrderingComposer(ComposerState($state.db,
                    $state.db.gpsCoordinates, joinBuilder, parentComposers)));
    return composer;
  }

  $$SurfacesTableOrderingComposer get surfaceId {
    final $$SurfacesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.surfaceId,
        referencedTable: $state.db.surfaces,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$SurfacesTableOrderingComposer(ComposerState(
                $state.db, $state.db.surfaces, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$GardensTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GardensTable,
    Garden,
    $$GardensTableFilterComposer,
    $$GardensTableOrderingComposer,
    $$GardensTableCreateCompanionBuilder,
    $$GardensTableUpdateCompanionBuilder,
    (Garden, $$GardensTableReferences),
    Garden,
    PrefetchHooks Function(
        {bool coordinatesId,
        bool surfaceId,
        bool gardenSectionsRefs,
        bool equipementsRefs})> {
  $$GardensTableTableManager(_$AppDatabase db, $GardensTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$GardensTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$GardensTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> coordinatesId = const Value.absent(),
            Value<String> surfaceId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              GardensCompanion(
            id: id,
            name: name,
            coordinatesId: coordinatesId,
            surfaceId: surfaceId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            required String coordinatesId,
            required String surfaceId,
            Value<int> rowid = const Value.absent(),
          }) =>
              GardensCompanion.insert(
            id: id,
            name: name,
            coordinatesId: coordinatesId,
            surfaceId: surfaceId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$GardensTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {coordinatesId = false,
              surfaceId = false,
              gardenSectionsRefs = false,
              equipementsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (gardenSectionsRefs) db.gardenSections,
                if (equipementsRefs) db.equipements
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (coordinatesId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.coordinatesId,
                    referencedTable:
                        $$GardensTableReferences._coordinatesIdTable(db),
                    referencedColumn:
                        $$GardensTableReferences._coordinatesIdTable(db).id,
                  ) as T;
                }
                if (surfaceId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.surfaceId,
                    referencedTable:
                        $$GardensTableReferences._surfaceIdTable(db),
                    referencedColumn:
                        $$GardensTableReferences._surfaceIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (gardenSectionsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$GardensTableReferences
                            ._gardenSectionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$GardensTableReferences(db, table, p0)
                                .gardenSectionsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.gardenId == item.id),
                        typedResults: items),
                  if (equipementsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$GardensTableReferences._equipementsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$GardensTableReferences(db, table, p0)
                                .equipementsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.gardenId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$GardensTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GardensTable,
    Garden,
    $$GardensTableFilterComposer,
    $$GardensTableOrderingComposer,
    $$GardensTableCreateCompanionBuilder,
    $$GardensTableUpdateCompanionBuilder,
    (Garden, $$GardensTableReferences),
    Garden,
    PrefetchHooks Function(
        {bool coordinatesId,
        bool surfaceId,
        bool gardenSectionsRefs,
        bool equipementsRefs})>;
typedef $$GardenSectionsTableCreateCompanionBuilder = GardenSectionsCompanion
    Function({
  required String id,
  required String treeType,
  required String treeSubType,
  required String gardenId,
  Value<int> rowid,
});
typedef $$GardenSectionsTableUpdateCompanionBuilder = GardenSectionsCompanion
    Function({
  Value<String> id,
  Value<String> treeType,
  Value<String> treeSubType,
  Value<String> gardenId,
  Value<int> rowid,
});

final class $$GardenSectionsTableReferences
    extends BaseReferences<_$AppDatabase, $GardenSectionsTable, GardenSection> {
  $$GardenSectionsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $TreeTypesTable _treeTypeTable(_$AppDatabase db) =>
      db.treeTypes.createAlias(
          $_aliasNameGenerator(db.gardenSections.treeType, db.treeTypes.id));

  $$TreeTypesTableProcessedTableManager? get treeType {
    if ($_item.treeType == null) return null;
    final manager = $$TreeTypesTableTableManager($_db, $_db.treeTypes)
        .filter((f) => f.id($_item.treeType!));
    final item = $_typedResult.readTableOrNull(_treeTypeTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $TreeSubTypesTable _treeSubTypeTable(_$AppDatabase db) =>
      db.treeSubTypes.createAlias($_aliasNameGenerator(
          db.gardenSections.treeSubType, db.treeSubTypes.id));

  $$TreeSubTypesTableProcessedTableManager? get treeSubType {
    if ($_item.treeSubType == null) return null;
    final manager = $$TreeSubTypesTableTableManager($_db, $_db.treeSubTypes)
        .filter((f) => f.id($_item.treeSubType!));
    final item = $_typedResult.readTableOrNull(_treeSubTypeTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $GardensTable _gardenIdTable(_$AppDatabase db) =>
      db.gardens.createAlias(
          $_aliasNameGenerator(db.gardenSections.gardenId, db.gardens.id));

  $$GardensTableProcessedTableManager? get gardenId {
    if ($_item.gardenId == null) return null;
    final manager = $$GardensTableTableManager($_db, $_db.gardens)
        .filter((f) => f.id($_item.gardenId!));
    final item = $_typedResult.readTableOrNull(_gardenIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$SectionLinesTable, List<SectionLine>>
      _sectionLinesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.sectionLines,
              aliasName: $_aliasNameGenerator(
                  db.gardenSections.id, db.sectionLines.gardenSectionId));

  $$SectionLinesTableProcessedTableManager get sectionLinesRefs {
    final manager = $$SectionLinesTableTableManager($_db, $_db.sectionLines)
        .filter((f) => f.gardenSectionId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_sectionLinesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$GardenSectionsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $GardenSectionsTable> {
  $$GardenSectionsTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$TreeTypesTableFilterComposer get treeType {
    final $$TreeTypesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.treeType,
        referencedTable: $state.db.treeTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$TreeTypesTableFilterComposer(ComposerState(
                $state.db, $state.db.treeTypes, joinBuilder, parentComposers)));
    return composer;
  }

  $$TreeSubTypesTableFilterComposer get treeSubType {
    final $$TreeSubTypesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.treeSubType,
        referencedTable: $state.db.treeSubTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$TreeSubTypesTableFilterComposer(ComposerState($state.db,
                $state.db.treeSubTypes, joinBuilder, parentComposers)));
    return composer;
  }

  $$GardensTableFilterComposer get gardenId {
    final $$GardensTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.gardenId,
        referencedTable: $state.db.gardens,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$GardensTableFilterComposer(
            ComposerState(
                $state.db, $state.db.gardens, joinBuilder, parentComposers)));
    return composer;
  }

  ComposableFilter sectionLinesRefs(
      ComposableFilter Function($$SectionLinesTableFilterComposer f) f) {
    final $$SectionLinesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.sectionLines,
        getReferencedColumn: (t) => t.gardenSectionId,
        builder: (joinBuilder, parentComposers) =>
            $$SectionLinesTableFilterComposer(ComposerState($state.db,
                $state.db.sectionLines, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$GardenSectionsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $GardenSectionsTable> {
  $$GardenSectionsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$TreeTypesTableOrderingComposer get treeType {
    final $$TreeTypesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.treeType,
        referencedTable: $state.db.treeTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$TreeTypesTableOrderingComposer(ComposerState(
                $state.db, $state.db.treeTypes, joinBuilder, parentComposers)));
    return composer;
  }

  $$TreeSubTypesTableOrderingComposer get treeSubType {
    final $$TreeSubTypesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.treeSubType,
        referencedTable: $state.db.treeSubTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$TreeSubTypesTableOrderingComposer(ComposerState($state.db,
                $state.db.treeSubTypes, joinBuilder, parentComposers)));
    return composer;
  }

  $$GardensTableOrderingComposer get gardenId {
    final $$GardensTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.gardenId,
        referencedTable: $state.db.gardens,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$GardensTableOrderingComposer(ComposerState(
                $state.db, $state.db.gardens, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$GardenSectionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GardenSectionsTable,
    GardenSection,
    $$GardenSectionsTableFilterComposer,
    $$GardenSectionsTableOrderingComposer,
    $$GardenSectionsTableCreateCompanionBuilder,
    $$GardenSectionsTableUpdateCompanionBuilder,
    (GardenSection, $$GardenSectionsTableReferences),
    GardenSection,
    PrefetchHooks Function(
        {bool treeType,
        bool treeSubType,
        bool gardenId,
        bool sectionLinesRefs})> {
  $$GardenSectionsTableTableManager(
      _$AppDatabase db, $GardenSectionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$GardenSectionsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$GardenSectionsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> treeType = const Value.absent(),
            Value<String> treeSubType = const Value.absent(),
            Value<String> gardenId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              GardenSectionsCompanion(
            id: id,
            treeType: treeType,
            treeSubType: treeSubType,
            gardenId: gardenId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String treeType,
            required String treeSubType,
            required String gardenId,
            Value<int> rowid = const Value.absent(),
          }) =>
              GardenSectionsCompanion.insert(
            id: id,
            treeType: treeType,
            treeSubType: treeSubType,
            gardenId: gardenId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$GardenSectionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {treeType = false,
              treeSubType = false,
              gardenId = false,
              sectionLinesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (sectionLinesRefs) db.sectionLines],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (treeType) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.treeType,
                    referencedTable:
                        $$GardenSectionsTableReferences._treeTypeTable(db),
                    referencedColumn:
                        $$GardenSectionsTableReferences._treeTypeTable(db).id,
                  ) as T;
                }
                if (treeSubType) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.treeSubType,
                    referencedTable:
                        $$GardenSectionsTableReferences._treeSubTypeTable(db),
                    referencedColumn: $$GardenSectionsTableReferences
                        ._treeSubTypeTable(db)
                        .id,
                  ) as T;
                }
                if (gardenId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.gardenId,
                    referencedTable:
                        $$GardenSectionsTableReferences._gardenIdTable(db),
                    referencedColumn:
                        $$GardenSectionsTableReferences._gardenIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (sectionLinesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$GardenSectionsTableReferences
                            ._sectionLinesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$GardenSectionsTableReferences(db, table, p0)
                                .sectionLinesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.gardenSectionId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$GardenSectionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GardenSectionsTable,
    GardenSection,
    $$GardenSectionsTableFilterComposer,
    $$GardenSectionsTableOrderingComposer,
    $$GardenSectionsTableCreateCompanionBuilder,
    $$GardenSectionsTableUpdateCompanionBuilder,
    (GardenSection, $$GardenSectionsTableReferences),
    GardenSection,
    PrefetchHooks Function(
        {bool treeType,
        bool treeSubType,
        bool gardenId,
        bool sectionLinesRefs})>;
typedef $$SectionLinesTableCreateCompanionBuilder = SectionLinesCompanion
    Function({
  required String id,
  required String gardenSectionId,
  Value<int> rowid,
});
typedef $$SectionLinesTableUpdateCompanionBuilder = SectionLinesCompanion
    Function({
  Value<String> id,
  Value<String> gardenSectionId,
  Value<int> rowid,
});

final class $$SectionLinesTableReferences
    extends BaseReferences<_$AppDatabase, $SectionLinesTable, SectionLine> {
  $$SectionLinesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $GardenSectionsTable _gardenSectionIdTable(_$AppDatabase db) =>
      db.gardenSections.createAlias($_aliasNameGenerator(
          db.sectionLines.gardenSectionId, db.gardenSections.id));

  $$GardenSectionsTableProcessedTableManager? get gardenSectionId {
    if ($_item.gardenSectionId == null) return null;
    final manager = $$GardenSectionsTableTableManager($_db, $_db.gardenSections)
        .filter((f) => f.id($_item.gardenSectionId!));
    final item = $_typedResult.readTableOrNull(_gardenSectionIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$SectionLinesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $SectionLinesTable> {
  $$SectionLinesTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$GardenSectionsTableFilterComposer get gardenSectionId {
    final $$GardenSectionsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.gardenSectionId,
        referencedTable: $state.db.gardenSections,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$GardenSectionsTableFilterComposer(ComposerState($state.db,
                $state.db.gardenSections, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$SectionLinesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $SectionLinesTable> {
  $$SectionLinesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$GardenSectionsTableOrderingComposer get gardenSectionId {
    final $$GardenSectionsTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.gardenSectionId,
            referencedTable: $state.db.gardenSections,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$GardenSectionsTableOrderingComposer(ComposerState($state.db,
                    $state.db.gardenSections, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$SectionLinesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SectionLinesTable,
    SectionLine,
    $$SectionLinesTableFilterComposer,
    $$SectionLinesTableOrderingComposer,
    $$SectionLinesTableCreateCompanionBuilder,
    $$SectionLinesTableUpdateCompanionBuilder,
    (SectionLine, $$SectionLinesTableReferences),
    SectionLine,
    PrefetchHooks Function({bool gardenSectionId})> {
  $$SectionLinesTableTableManager(_$AppDatabase db, $SectionLinesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SectionLinesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SectionLinesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> gardenSectionId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SectionLinesCompanion(
            id: id,
            gardenSectionId: gardenSectionId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String gardenSectionId,
            Value<int> rowid = const Value.absent(),
          }) =>
              SectionLinesCompanion.insert(
            id: id,
            gardenSectionId: gardenSectionId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SectionLinesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({gardenSectionId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (gardenSectionId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.gardenSectionId,
                    referencedTable:
                        $$SectionLinesTableReferences._gardenSectionIdTable(db),
                    referencedColumn: $$SectionLinesTableReferences
                        ._gardenSectionIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$SectionLinesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SectionLinesTable,
    SectionLine,
    $$SectionLinesTableFilterComposer,
    $$SectionLinesTableOrderingComposer,
    $$SectionLinesTableCreateCompanionBuilder,
    $$SectionLinesTableUpdateCompanionBuilder,
    (SectionLine, $$SectionLinesTableReferences),
    SectionLine,
    PrefetchHooks Function({bool gardenSectionId})>;
typedef $$CultureTypesTableCreateCompanionBuilder = CultureTypesCompanion
    Function({
  required String id,
  required String name,
  Value<int> rowid,
});
typedef $$CultureTypesTableUpdateCompanionBuilder = CultureTypesCompanion
    Function({
  Value<String> id,
  Value<String> name,
  Value<int> rowid,
});

class $$CultureTypesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $CultureTypesTable> {
  $$CultureTypesTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$CultureTypesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $CultureTypesTable> {
  $$CultureTypesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$CultureTypesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CultureTypesTable,
    CultureType,
    $$CultureTypesTableFilterComposer,
    $$CultureTypesTableOrderingComposer,
    $$CultureTypesTableCreateCompanionBuilder,
    $$CultureTypesTableUpdateCompanionBuilder,
    (
      CultureType,
      BaseReferences<_$AppDatabase, $CultureTypesTable, CultureType>
    ),
    CultureType,
    PrefetchHooks Function()> {
  $$CultureTypesTableTableManager(_$AppDatabase db, $CultureTypesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CultureTypesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CultureTypesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CultureTypesCompanion(
            id: id,
            name: name,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            Value<int> rowid = const Value.absent(),
          }) =>
              CultureTypesCompanion.insert(
            id: id,
            name: name,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CultureTypesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CultureTypesTable,
    CultureType,
    $$CultureTypesTableFilterComposer,
    $$CultureTypesTableOrderingComposer,
    $$CultureTypesTableCreateCompanionBuilder,
    $$CultureTypesTableUpdateCompanionBuilder,
    (
      CultureType,
      BaseReferences<_$AppDatabase, $CultureTypesTable, CultureType>
    ),
    CultureType,
    PrefetchHooks Function()>;
typedef $$EquipementsTableCreateCompanionBuilder = EquipementsCompanion
    Function({
  required String id,
  required String name,
  required int quantity,
  required String gardenId,
  Value<int> rowid,
});
typedef $$EquipementsTableUpdateCompanionBuilder = EquipementsCompanion
    Function({
  Value<String> id,
  Value<String> name,
  Value<int> quantity,
  Value<String> gardenId,
  Value<int> rowid,
});

final class $$EquipementsTableReferences
    extends BaseReferences<_$AppDatabase, $EquipementsTable, Equipement> {
  $$EquipementsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $GardensTable _gardenIdTable(_$AppDatabase db) =>
      db.gardens.createAlias(
          $_aliasNameGenerator(db.equipements.gardenId, db.gardens.id));

  $$GardensTableProcessedTableManager? get gardenId {
    if ($_item.gardenId == null) return null;
    final manager = $$GardensTableTableManager($_db, $_db.gardens)
        .filter((f) => f.id($_item.gardenId!));
    final item = $_typedResult.readTableOrNull(_gardenIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$EquipementsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $EquipementsTable> {
  $$EquipementsTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get quantity => $state.composableBuilder(
      column: $state.table.quantity,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$GardensTableFilterComposer get gardenId {
    final $$GardensTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.gardenId,
        referencedTable: $state.db.gardens,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$GardensTableFilterComposer(
            ComposerState(
                $state.db, $state.db.gardens, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$EquipementsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $EquipementsTable> {
  $$EquipementsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get quantity => $state.composableBuilder(
      column: $state.table.quantity,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$GardensTableOrderingComposer get gardenId {
    final $$GardensTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.gardenId,
        referencedTable: $state.db.gardens,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$GardensTableOrderingComposer(ComposerState(
                $state.db, $state.db.gardens, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$EquipementsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $EquipementsTable,
    Equipement,
    $$EquipementsTableFilterComposer,
    $$EquipementsTableOrderingComposer,
    $$EquipementsTableCreateCompanionBuilder,
    $$EquipementsTableUpdateCompanionBuilder,
    (Equipement, $$EquipementsTableReferences),
    Equipement,
    PrefetchHooks Function({bool gardenId})> {
  $$EquipementsTableTableManager(_$AppDatabase db, $EquipementsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$EquipementsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$EquipementsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> quantity = const Value.absent(),
            Value<String> gardenId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              EquipementsCompanion(
            id: id,
            name: name,
            quantity: quantity,
            gardenId: gardenId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            required int quantity,
            required String gardenId,
            Value<int> rowid = const Value.absent(),
          }) =>
              EquipementsCompanion.insert(
            id: id,
            name: name,
            quantity: quantity,
            gardenId: gardenId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$EquipementsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({gardenId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (gardenId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.gardenId,
                    referencedTable:
                        $$EquipementsTableReferences._gardenIdTable(db),
                    referencedColumn:
                        $$EquipementsTableReferences._gardenIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$EquipementsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $EquipementsTable,
    Equipement,
    $$EquipementsTableFilterComposer,
    $$EquipementsTableOrderingComposer,
    $$EquipementsTableCreateCompanionBuilder,
    $$EquipementsTableUpdateCompanionBuilder,
    (Equipement, $$EquipementsTableReferences),
    Equipement,
    PrefetchHooks Function({bool gardenId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TreeTypesTableTableManager get treeTypes =>
      $$TreeTypesTableTableManager(_db, _db.treeTypes);
  $$TreeSubTypesTableTableManager get treeSubTypes =>
      $$TreeSubTypesTableTableManager(_db, _db.treeSubTypes);
  $$TreesTableTableManager get trees =>
      $$TreesTableTableManager(_db, _db.trees);
  $$TreeHistoryOptionsTableTableManager get treeHistoryOptions =>
      $$TreeHistoryOptionsTableTableManager(_db, _db.treeHistoryOptions);
  $$TreeHistoriesTableTableManager get treeHistories =>
      $$TreeHistoriesTableTableManager(_db, _db.treeHistories);
  $$SurfaceTypesTableTableManager get surfaceTypes =>
      $$SurfaceTypesTableTableManager(_db, _db.surfaceTypes);
  $$SurfacesTableTableManager get surfaces =>
      $$SurfacesTableTableManager(_db, _db.surfaces);
  $$PlantingModesTableTableManager get plantingModes =>
      $$PlantingModesTableTableManager(_db, _db.plantingModes);
  $$GpsCoordinatesTableTableManager get gpsCoordinates =>
      $$GpsCoordinatesTableTableManager(_db, _db.gpsCoordinates);
  $$GardensTableTableManager get gardens =>
      $$GardensTableTableManager(_db, _db.gardens);
  $$GardenSectionsTableTableManager get gardenSections =>
      $$GardenSectionsTableTableManager(_db, _db.gardenSections);
  $$SectionLinesTableTableManager get sectionLines =>
      $$SectionLinesTableTableManager(_db, _db.sectionLines);
  $$CultureTypesTableTableManager get cultureTypes =>
      $$CultureTypesTableTableManager(_db, _db.cultureTypes);
  $$EquipementsTableTableManager get equipements =>
      $$EquipementsTableTableManager(_db, _db.equipements);
}
