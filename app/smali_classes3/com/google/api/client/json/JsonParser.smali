.class public abstract Lcom/google/api/client/json/JsonParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final c:Ljava/util/WeakHashMap;

.field public static final f:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/api/client/json/JsonParser;->c:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/api/client/json/JsonParser;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    .line 15
    return-void
.end method

.method public static d(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 14

    .line 1
    sget-object v0, Lcom/google/api/client/json/JsonParser;->c:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    sget-object v2, Lcom/google/api/client/json/JsonParser;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lcom/google/api/client/util/ClassInfo;->getFieldInfos()Ljava/util/Collection;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_6

    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lcom/google/api/client/util/FieldInfo;

    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/google/api/client/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-class v5, Lcom/google/api/client/json/JsonPolymorphicTypeMap;

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Lcom/google/api/client/json/JsonPolymorphicTypeMap;

    .line 66
    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v7, 0x1

    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    move v1, v7

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move v1, v6

    .line 76
    :goto_1
    const-string v8, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s"

    .line 77
    .line 78
    new-array v9, v7, [Ljava/lang/Object;

    .line 79
    .line 80
    aput-object p0, v9, v6

    .line 81
    .line 82
    invoke-static {v1, v8, v9}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v1}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const-string v8, "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s"

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    const/4 v10, 0x2

    .line 100
    new-array v10, v10, [Ljava/lang/Object;

    .line 101
    .line 102
    aput-object p0, v10, v6

    .line 103
    .line 104
    aput-object v9, v10, v7

    .line 105
    .line 106
    invoke-static {v1, v8, v10}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v5}, Lcom/google/api/client/json/JsonPolymorphicTypeMap;->typeDefinitions()[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {}, Lcom/google/api/client/util/Sets;->newHashSet()Ljava/util/HashSet;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    array-length v8, v1

    .line 118
    if-lez v8, :cond_4

    .line 119
    .line 120
    move v8, v7

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    move v8, v6

    .line 123
    :goto_2
    const-string v9, "@JsonPolymorphicTypeMap must have at least one @TypeDef"

    .line 124
    .line 125
    invoke-static {v8, v9}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    array-length v8, v1

    .line 129
    move v9, v6

    .line 130
    :goto_3
    if-ge v9, v8, :cond_5

    .line 131
    .line 132
    aget-object v10, v1, v9

    .line 133
    .line 134
    invoke-interface {v10}, Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;->key()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    const-string v12, "Class contains two @TypeDef annotations with identical key: %s"

    .line 143
    .line 144
    invoke-interface {v10}, Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;->key()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    new-array v13, v7, [Ljava/lang/Object;

    .line 149
    .line 150
    aput-object v10, v13, v6

    .line 151
    .line 152
    invoke-static {v11, v12, v13}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    add-int/lit8 v9, v9, 0x1

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_5
    move-object v1, v4

    .line 159
    goto :goto_0

    .line 160
    :cond_6
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 164
    .line 165
    .line 166
    return-object v1

    .line 167
    :goto_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 168
    .line 169
    .line 170
    throw p0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 9

    .line 1
    instance-of v0, p1, Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/google/api/client/json/GenericJson;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->k()Lcom/google/api/client/json/JsonFactory;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/api/client/json/GenericJson;->setFactory(Lcom/google/api/client/json/JsonFactory;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->S()Lcom/google/api/client/json/JsonToken;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-class v3, Lcom/google/api/client/util/GenericData;

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    sget-object v4, Lcom/google/api/client/json/JsonToken;->i:Lcom/google/api/client/json/JsonToken;

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    const-class v7, Ljava/util/Map;

    .line 40
    .line 41
    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-eqz v7, :cond_1

    .line 46
    .line 47
    check-cast p1, Ljava/util/Map;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/google/api/client/util/Types;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->S()Lcom/google/api/client/json/JsonToken;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :goto_0
    if-ne v1, v4, :cond_6

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->u()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->v()Lcom/google/api/client/json/JsonToken;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v6, v0, p2, v5}, Lcom/google/api/client/json/JsonParser;->F(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->v()Lcom/google/api/client/json/JsonToken;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    :goto_1
    if-ne v0, v4, :cond_6

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->u()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->v()Lcom/google/api/client/json/JsonToken;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v0}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/google/api/client/util/FieldInfo;->isFinal()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/google/api/client/util/FieldInfo;->isPrimitive()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    const-string p2, "final array/object fields are not supported"

    .line 109
    .line 110
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/google/api/client/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/google/api/client/util/FieldInfo;->getGenericType()Ljava/lang/reflect/Type;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual {p0, v0, v8, p2, v5}, Lcom/google/api/client/json/JsonParser;->F(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, p1, v0}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_4
    if-eqz v3, :cond_5

    .line 145
    .line 146
    move-object v1, p1

    .line 147
    check-cast v1, Lcom/google/api/client/util/GenericData;

    .line 148
    .line 149
    invoke-virtual {p0, v6, v6, p2, v5}, Lcom/google/api/client/json/JsonParser;->F(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-virtual {v1, v0, v7}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_5
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->G()Lcom/google/api/client/json/JsonParser;

    .line 158
    .line 159
    .line 160
    :goto_3
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->v()Lcom/google/api/client/json/JsonToken;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    goto :goto_1

    .line 165
    :cond_6
    return-void
.end method

.method public final B(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/json/JsonParser;->z(Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 7
    .line 8
    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public final F(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    const-string v3, "unexpected JSON node type: "

    .line 8
    .line 9
    const-string v4, "expected numeric type but got "

    .line 10
    .line 11
    move-object/from16 v5, p2

    .line 12
    .line 13
    invoke-static {v0, v5}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    instance-of v6, v5, Ljava/lang/Class;

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    move-object v6, v5

    .line 23
    check-cast v6, Ljava/lang/Class;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v6, v7

    .line 27
    :goto_0
    instance-of v8, v5, Ljava/lang/reflect/ParameterizedType;

    .line 28
    .line 29
    if-eqz v8, :cond_1

    .line 30
    .line 31
    move-object v6, v5

    .line 32
    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    .line 33
    .line 34
    invoke-static {v6}, Lcom/google/api/client/util/Types;->getRawClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    :cond_1
    const-class v8, Ljava/lang/Void;

    .line 39
    .line 40
    if-ne v6, v8, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->G()Lcom/google/api/client/json/JsonParser;

    .line 43
    .line 44
    .line 45
    return-object v7

    .line 46
    :cond_2
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->f()Lcom/google/api/client/json/JsonToken;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 51
    .line 52
    .line 53
    move-result v9
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const-class v10, Lcom/google/api/client/json/JsonString;

    .line 55
    .line 56
    const-class v11, Ljava/lang/Double;

    .line 57
    .line 58
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 59
    .line 60
    const-class v13, Ljava/lang/Float;

    .line 61
    .line 62
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 63
    .line 64
    const-class v15, Ljava/util/Collection;

    .line 65
    .line 66
    const-class v7, Ljava/util/Map;

    .line 67
    .line 68
    move/from16 v16, v9

    .line 69
    .line 70
    const/16 v17, 0x0

    .line 71
    .line 72
    const/4 v9, 0x1

    .line 73
    packed-switch v16, :pswitch_data_0

    .line 74
    .line 75
    .line 76
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    goto/16 :goto_1b

    .line 96
    .line 97
    :pswitch_0
    if-eqz v6, :cond_4

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_3

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    move/from16 v9, v17

    .line 107
    .line 108
    :cond_4
    :goto_1
    const-string v3, "primitive number field but found a JSON null"

    .line 109
    .line 110
    invoke-static {v9, v3}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    if-eqz v6, :cond_6

    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    and-int/lit16 v3, v3, 0x600

    .line 120
    .line 121
    if-eqz v3, :cond_6

    .line 122
    .line 123
    invoke-static {v6, v15}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_5

    .line 128
    .line 129
    invoke-static {v5}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    return-object v0

    .line 142
    :cond_5
    invoke-static {v6, v7}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_6

    .line 147
    .line 148
    invoke-static {v6}, Lcom/google/api/client/util/Data;->newMapInstance(Ljava/lang/Class;)Ljava/util/Map;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    return-object v0

    .line 161
    :cond_6
    invoke-static {v0, v5}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    return-object v0

    .line 170
    :pswitch_1
    if-eqz v5, :cond_8

    .line 171
    .line 172
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 173
    .line 174
    if-eq v6, v0, :cond_8

    .line 175
    .line 176
    if-eqz v6, :cond_7

    .line 177
    .line 178
    const-class v0, Ljava/lang/Boolean;

    .line 179
    .line 180
    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_7

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_7
    move/from16 v0, v17

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_8
    :goto_2
    move v0, v9

    .line 191
    :goto_3
    const-string v3, "expected type Boolean or boolean but got %s"

    .line 192
    .line 193
    new-array v4, v9, [Ljava/lang/Object;

    .line 194
    .line 195
    aput-object v5, v4, v17

    .line 196
    .line 197
    invoke-static {v0, v3, v4}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    sget-object v0, Lcom/google/api/client/json/JsonToken;->m:Lcom/google/api/client/json/JsonToken;

    .line 201
    .line 202
    if-ne v8, v0, :cond_9

    .line 203
    .line 204
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 205
    .line 206
    return-object v0

    .line 207
    :cond_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 208
    .line 209
    return-object v0

    .line 210
    :pswitch_2
    if-eqz v2, :cond_b

    .line 211
    .line 212
    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-nez v0, :cond_a

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_a
    move/from16 v9, v17

    .line 220
    .line 221
    :cond_b
    :goto_4
    const-string v0, "number type formatted as a JSON number cannot use @JsonString annotation"

    .line 222
    .line 223
    invoke-static {v9, v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    if-eqz v6, :cond_1a

    .line 227
    .line 228
    const-class v0, Ljava/math/BigDecimal;

    .line 229
    .line 230
    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_c

    .line 235
    .line 236
    goto/16 :goto_b

    .line 237
    .line 238
    :cond_c
    const-class v0, Ljava/math/BigInteger;

    .line 239
    .line 240
    if-ne v6, v0, :cond_d

    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->a()Ljava/math/BigInteger;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    return-object v0

    .line 247
    :cond_d
    if-eq v6, v11, :cond_19

    .line 248
    .line 249
    if-ne v6, v12, :cond_e

    .line 250
    .line 251
    goto :goto_a

    .line 252
    :cond_e
    const-class v0, Ljava/lang/Long;

    .line 253
    .line 254
    if-eq v6, v0, :cond_18

    .line 255
    .line 256
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 257
    .line 258
    if-ne v6, v0, :cond_f

    .line 259
    .line 260
    goto :goto_9

    .line 261
    :cond_f
    if-eq v6, v13, :cond_17

    .line 262
    .line 263
    if-ne v6, v14, :cond_10

    .line 264
    .line 265
    goto :goto_8

    .line 266
    :cond_10
    const-class v0, Ljava/lang/Integer;

    .line 267
    .line 268
    if-eq v6, v0, :cond_16

    .line 269
    .line 270
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 271
    .line 272
    if-ne v6, v0, :cond_11

    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_11
    const-class v0, Ljava/lang/Short;

    .line 276
    .line 277
    if-eq v6, v0, :cond_15

    .line 278
    .line 279
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 280
    .line 281
    if-ne v6, v0, :cond_12

    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_12
    const-class v0, Ljava/lang/Byte;

    .line 285
    .line 286
    if-eq v6, v0, :cond_14

    .line 287
    .line 288
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 289
    .line 290
    if-ne v6, v0, :cond_13

    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 294
    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw v0

    .line 311
    :cond_14
    :goto_5
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->b()B

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    return-object v0

    .line 320
    :cond_15
    :goto_6
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->o()S

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    return-object v0

    .line 329
    :cond_16
    :goto_7
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->m()I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    return-object v0

    .line 338
    :cond_17
    :goto_8
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->l()F

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    return-object v0

    .line 347
    :cond_18
    :goto_9
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->n()J

    .line 348
    .line 349
    .line 350
    move-result-wide v3

    .line 351
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    return-object v0

    .line 356
    :cond_19
    :goto_a
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->j()D

    .line 357
    .line 358
    .line 359
    move-result-wide v3

    .line 360
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    return-object v0

    .line 365
    :cond_1a
    :goto_b
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->i()Ljava/math/BigDecimal;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    return-object v0

    .line 370
    :pswitch_3
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->u()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 379
    .line 380
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    if-eq v6, v14, :cond_1b

    .line 385
    .line 386
    if-eq v6, v13, :cond_1b

    .line 387
    .line 388
    if-eq v6, v12, :cond_1b

    .line 389
    .line 390
    if-ne v6, v11, :cond_1c

    .line 391
    .line 392
    :cond_1b
    const-string v3, "nan"

    .line 393
    .line 394
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-nez v3, :cond_1f

    .line 399
    .line 400
    const-string v3, "infinity"

    .line 401
    .line 402
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    if-nez v3, :cond_1f

    .line 407
    .line 408
    const-string v3, "-infinity"

    .line 409
    .line 410
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-nez v0, :cond_1f

    .line 415
    .line 416
    :cond_1c
    if-eqz v6, :cond_1e

    .line 417
    .line 418
    const-class v0, Ljava/lang/Number;

    .line 419
    .line 420
    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    if-eqz v0, :cond_1e

    .line 425
    .line 426
    if-eqz v2, :cond_1d

    .line 427
    .line 428
    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    if-eqz v0, :cond_1d

    .line 433
    .line 434
    goto :goto_c

    .line 435
    :cond_1d
    move/from16 v9, v17

    .line 436
    .line 437
    :cond_1e
    :goto_c
    const-string v0, "number field formatted as a JSON string must use the @JsonString annotation"

    .line 438
    .line 439
    invoke-static {v9, v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    :cond_1f
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->u()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-static {v5, v0}, Lcom/google/api/client/util/Data;->parsePrimitiveValue(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    return-object v0

    .line 451
    :pswitch_4
    invoke-static {v5}, Lcom/google/api/client/util/Types;->isArray(Ljava/lang/reflect/Type;)Z

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    xor-int/2addr v3, v9

    .line 456
    const-string v4, "expected object or map type but got %s"

    .line 457
    .line 458
    new-array v8, v9, [Ljava/lang/Object;

    .line 459
    .line 460
    aput-object v5, v8, v17

    .line 461
    .line 462
    invoke-static {v3, v4, v8}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    if-eqz p4, :cond_20

    .line 466
    .line 467
    invoke-static {v6}, Lcom/google/api/client/json/JsonParser;->d(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    goto :goto_d

    .line 472
    :cond_20
    const/4 v3, 0x0

    .line 473
    :goto_d
    if-eqz v6, :cond_21

    .line 474
    .line 475
    invoke-static {v6, v7}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 476
    .line 477
    .line 478
    move-result v4

    .line 479
    if-eqz v4, :cond_21

    .line 480
    .line 481
    move v4, v9

    .line 482
    goto :goto_e

    .line 483
    :cond_21
    move/from16 v4, v17

    .line 484
    .line 485
    :goto_e
    if-eqz v3, :cond_22

    .line 486
    .line 487
    new-instance v8, Lcom/google/api/client/json/GenericJson;

    .line 488
    .line 489
    invoke-direct {v8}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 490
    .line 491
    .line 492
    goto :goto_10

    .line 493
    :cond_22
    if-nez v4, :cond_24

    .line 494
    .line 495
    if-nez v6, :cond_23

    .line 496
    .line 497
    goto :goto_f

    .line 498
    :cond_23
    invoke-static {v6}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v8

    .line 502
    goto :goto_10

    .line 503
    :cond_24
    :goto_f
    invoke-static {v6}, Lcom/google/api/client/util/Data;->newMapInstance(Ljava/lang/Class;)Ljava/util/Map;

    .line 504
    .line 505
    .line 506
    move-result-object v8

    .line 507
    :goto_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 508
    .line 509
    .line 510
    move-result v10

    .line 511
    if-eqz v5, :cond_25

    .line 512
    .line 513
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    :cond_25
    if-eqz v4, :cond_28

    .line 517
    .line 518
    const-class v4, Lcom/google/api/client/util/GenericData;

    .line 519
    .line 520
    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 521
    .line 522
    .line 523
    move-result v4

    .line 524
    if-nez v4, :cond_28

    .line 525
    .line 526
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 527
    .line 528
    .line 529
    move-result v4

    .line 530
    if-eqz v4, :cond_26

    .line 531
    .line 532
    invoke-static {v5}, Lcom/google/api/client/util/Types;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    goto :goto_11

    .line 537
    :cond_26
    const/4 v4, 0x0

    .line 538
    :goto_11
    if-eqz v4, :cond_28

    .line 539
    .line 540
    move-object v3, v8

    .line 541
    check-cast v3, Ljava/util/Map;

    .line 542
    .line 543
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->S()Lcom/google/api/client/json/JsonToken;

    .line 544
    .line 545
    .line 546
    move-result-object v5

    .line 547
    :goto_12
    sget-object v6, Lcom/google/api/client/json/JsonToken;->i:Lcom/google/api/client/json/JsonToken;

    .line 548
    .line 549
    if-ne v5, v6, :cond_27

    .line 550
    .line 551
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->u()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->v()Lcom/google/api/client/json/JsonToken;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v1, v2, v4, v0, v9}, Lcom/google/api/client/json/JsonParser;->F(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v6

    .line 562
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->v()Lcom/google/api/client/json/JsonToken;

    .line 566
    .line 567
    .line 568
    move-result-object v5

    .line 569
    goto :goto_12

    .line 570
    :cond_27
    return-object v8

    .line 571
    :cond_28
    invoke-virtual {v1, v8, v0}, Lcom/google/api/client/json/JsonParser;->A(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 572
    .line 573
    .line 574
    if-eqz v5, :cond_29

    .line 575
    .line 576
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    :cond_29
    if-nez v3, :cond_2a

    .line 580
    .line 581
    return-object v8

    .line 582
    :cond_2a
    move-object v4, v8

    .line 583
    check-cast v4, Lcom/google/api/client/json/GenericJson;

    .line 584
    .line 585
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v5

    .line 589
    invoke-virtual {v4, v5}, Lcom/google/api/client/util/GenericData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v4

    .line 593
    if-eqz v4, :cond_2b

    .line 594
    .line 595
    move v5, v9

    .line 596
    goto :goto_13

    .line 597
    :cond_2b
    move/from16 v5, v17

    .line 598
    .line 599
    :goto_13
    const-string v6, "No value specified for @JsonPolymorphicTypeMap field"

    .line 600
    .line 601
    invoke-static {v5, v6}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v4

    .line 608
    const-class v5, Lcom/google/api/client/json/JsonPolymorphicTypeMap;

    .line 609
    .line 610
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    check-cast v3, Lcom/google/api/client/json/JsonPolymorphicTypeMap;

    .line 615
    .line 616
    invoke-interface {v3}, Lcom/google/api/client/json/JsonPolymorphicTypeMap;->typeDefinitions()[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    array-length v5, v3

    .line 621
    move/from16 v6, v17

    .line 622
    .line 623
    :goto_14
    if-ge v6, v5, :cond_2d

    .line 624
    .line 625
    aget-object v7, v3, v6

    .line 626
    .line 627
    invoke-interface {v7}, Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;->key()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v10

    .line 631
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result v10

    .line 635
    if-eqz v10, :cond_2c

    .line 636
    .line 637
    invoke-interface {v7}, Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;->ref()Ljava/lang/Class;

    .line 638
    .line 639
    .line 640
    move-result-object v7

    .line 641
    goto :goto_15

    .line 642
    :cond_2c
    add-int/lit8 v6, v6, 0x1

    .line 643
    .line 644
    goto :goto_14

    .line 645
    :cond_2d
    const/4 v7, 0x0

    .line 646
    :goto_15
    if-eqz v7, :cond_2e

    .line 647
    .line 648
    goto :goto_16

    .line 649
    :cond_2e
    move/from16 v9, v17

    .line 650
    .line 651
    :goto_16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 654
    .line 655
    .line 656
    const-string v5, "No TypeDef annotation found with key: "

    .line 657
    .line 658
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v3

    .line 668
    invoke-static {v9, v3}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->k()Lcom/google/api/client/json/JsonFactory;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    invoke-virtual {v3, v8}, Lcom/google/api/client/json/JsonFactory;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v4

    .line 679
    invoke-virtual {v3, v4}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;

    .line 680
    .line 681
    .line 682
    move-result-object v3

    .line 683
    invoke-virtual {v3}, Lcom/google/api/client/json/JsonParser;->Q()Lcom/google/api/client/json/JsonToken;

    .line 684
    .line 685
    .line 686
    move/from16 v4, v17

    .line 687
    .line 688
    invoke-virtual {v3, v2, v7, v0, v4}, Lcom/google/api/client/json/JsonParser;->F(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    return-object v0

    .line 693
    :pswitch_5
    invoke-static {v5}, Lcom/google/api/client/util/Types;->isArray(Ljava/lang/reflect/Type;)Z

    .line 694
    .line 695
    .line 696
    move-result v3

    .line 697
    if-eqz v5, :cond_30

    .line 698
    .line 699
    if-nez v3, :cond_30

    .line 700
    .line 701
    if-eqz v6, :cond_2f

    .line 702
    .line 703
    invoke-static {v6, v15}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 704
    .line 705
    .line 706
    move-result v4

    .line 707
    if-eqz v4, :cond_2f

    .line 708
    .line 709
    goto :goto_17

    .line 710
    :cond_2f
    const/4 v4, 0x0

    .line 711
    goto :goto_18

    .line 712
    :cond_30
    :goto_17
    move v4, v9

    .line 713
    :goto_18
    const-string v7, "expected collection or array type but got %s"

    .line 714
    .line 715
    new-array v8, v9, [Ljava/lang/Object;

    .line 716
    .line 717
    const/16 v17, 0x0

    .line 718
    .line 719
    aput-object v5, v8, v17

    .line 720
    .line 721
    invoke-static {v4, v7, v8}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 722
    .line 723
    .line 724
    invoke-static {v5}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    .line 725
    .line 726
    .line 727
    move-result-object v4

    .line 728
    if-eqz v3, :cond_31

    .line 729
    .line 730
    invoke-static {v5}, Lcom/google/api/client/util/Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 731
    .line 732
    .line 733
    move-result-object v7

    .line 734
    goto :goto_19

    .line 735
    :cond_31
    if-eqz v6, :cond_32

    .line 736
    .line 737
    const-class v7, Ljava/lang/Iterable;

    .line 738
    .line 739
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 740
    .line 741
    .line 742
    move-result v6

    .line 743
    if-eqz v6, :cond_32

    .line 744
    .line 745
    invoke-static {v5}, Lcom/google/api/client/util/Types;->getIterableParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 746
    .line 747
    .line 748
    move-result-object v7

    .line 749
    goto :goto_19

    .line 750
    :cond_32
    const/4 v7, 0x0

    .line 751
    :goto_19
    invoke-static {v0, v7}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 752
    .line 753
    .line 754
    move-result-object v5

    .line 755
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->S()Lcom/google/api/client/json/JsonToken;

    .line 756
    .line 757
    .line 758
    move-result-object v6

    .line 759
    :goto_1a
    sget-object v7, Lcom/google/api/client/json/JsonToken;->f:Lcom/google/api/client/json/JsonToken;

    .line 760
    .line 761
    if-eq v6, v7, :cond_33

    .line 762
    .line 763
    invoke-virtual {v1, v2, v5, v0, v9}, Lcom/google/api/client/json/JsonParser;->F(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v6

    .line 767
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->v()Lcom/google/api/client/json/JsonToken;

    .line 771
    .line 772
    .line 773
    move-result-object v6

    .line 774
    goto :goto_1a

    .line 775
    :cond_33
    if-eqz v3, :cond_34

    .line 776
    .line 777
    invoke-static {v0, v5}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    invoke-static {v4, v0}, Lcom/google/api/client/util/Types;->toArray(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 785
    return-object v0

    .line 786
    :cond_34
    return-object v4

    .line 787
    :goto_1b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 788
    .line 789
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->e()Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v4

    .line 796
    if-eqz v4, :cond_35

    .line 797
    .line 798
    const-string v5, "key "

    .line 799
    .line 800
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    :cond_35
    if-eqz v2, :cond_37

    .line 807
    .line 808
    if-eqz v4, :cond_36

    .line 809
    .line 810
    const-string v4, ", "

    .line 811
    .line 812
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    :cond_36
    const-string v4, "field "

    .line 816
    .line 817
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    :cond_37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 824
    .line 825
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v3

    .line 829
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 830
    .line 831
    .line 832
    throw v2

    .line 833
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract G()Lcom/google/api/client/json/JsonParser;
.end method

.method public final L(Ljava/util/Set;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->S()Lcom/google/api/client/json/JsonToken;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    sget-object v1, Lcom/google/api/client/json/JsonToken;->i:Lcom/google/api/client/json/JsonToken;

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->u()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->v()Lcom/google/api/client/json/JsonToken;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->G()Lcom/google/api/client/json/JsonParser;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->v()Lcom/google/api/client/json/JsonToken;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method

.method public final Q()Lcom/google/api/client/json/JsonToken;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->f()Lcom/google/api/client/json/JsonToken;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->v()Lcom/google/api/client/json/JsonToken;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    :goto_0
    const-string v2, "no JSON input found"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final S()Lcom/google/api/client/json/JsonToken;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->Q()Lcom/google/api/client/json/JsonToken;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->v()Lcom/google/api/client/json/JsonToken;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/google/api/client/json/JsonToken;->i:Lcom/google/api/client/json/JsonToken;

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    sget-object v1, Lcom/google/api/client/json/JsonToken;->h:Lcom/google/api/client/json/JsonToken;

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 31
    :goto_1
    invoke-static {v1, v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_3
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->v()Lcom/google/api/client/json/JsonToken;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public abstract a()Ljava/math/BigInteger;
.end method

.method public abstract b()B
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Lcom/google/api/client/json/JsonToken;
.end method

.method public abstract i()Ljava/math/BigDecimal;
.end method

.method public abstract j()D
.end method

.method public abstract k()Lcom/google/api/client/json/JsonFactory;
.end method

.method public abstract l()F
.end method

.method public abstract m()I
.end method

.method public abstract n()J
.end method

.method public abstract o()S
.end method

.method public abstract u()Ljava/lang/String;
.end method

.method public abstract v()Lcom/google/api/client/json/JsonToken;
.end method

.method public final z(Ljava/lang/reflect/Type;Z)Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    const-class v0, Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->Q()Lcom/google/api/client/json/JsonToken;

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/google/api/client/json/JsonParser;->F(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-object p1

    .line 32
    :goto_1
    if-eqz p2, :cond_2

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 35
    .line 36
    .line 37
    :cond_2
    throw p1
.end method
