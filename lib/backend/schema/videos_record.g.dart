// @dart=2.9

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideosRecord> _$videosRecordSerializer =
    new _$VideosRecordSerializer();

class _$VideosRecordSerializer implements StructuredSerializer<VideosRecord> {
  @override
  final Iterable<Type> types = const [VideosRecord, _$VideosRecord];
  @override
  final String wireName = 'VideosRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, VideosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.videoUrl;
    if (value != null) {
      result
        ..add('video_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  VideosRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'video_url':
          result.videoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$VideosRecord extends VideosRecord {
  @override
  final String videoUrl;
  @override
  final DocumentReference<Object> reference;

  factory _$VideosRecord([void Function(VideosRecordBuilder) updates]) =>
      (new VideosRecordBuilder()..update(updates)).build();

  _$VideosRecord._({this.videoUrl, this.reference}) : super._();

  @override
  VideosRecord rebuild(void Function(VideosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideosRecordBuilder toBuilder() => new VideosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideosRecord &&
        videoUrl == other.videoUrl &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, videoUrl.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VideosRecord')
          ..add('videoUrl', videoUrl)
          ..add('reference', reference))
        .toString();
  }
}

class VideosRecordBuilder
    implements Builder<VideosRecord, VideosRecordBuilder> {
  _$VideosRecord _$v;

  String _videoUrl;
  String get videoUrl => _$this._videoUrl;
  set videoUrl(String videoUrl) => _$this._videoUrl = videoUrl;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  VideosRecordBuilder() {
    VideosRecord._initializeBuilder(this);
  }

  VideosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _videoUrl = $v.videoUrl;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideosRecord;
  }

  @override
  void update(void Function(VideosRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VideosRecord build() {
    final _$result =
        _$v ?? new _$VideosRecord._(videoUrl: videoUrl, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
