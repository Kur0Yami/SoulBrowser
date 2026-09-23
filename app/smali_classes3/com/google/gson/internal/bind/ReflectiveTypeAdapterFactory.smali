.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field public final c:Lcom/google/gson/internal/ConstructorConstructor;

.field public final f:Lcom/google/gson/FieldNamingStrategy;

.field public final g:Lcom/google/gson/internal/Excluder;

.field public final h:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field public final i:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->c:Lcom/google/gson/internal/ConstructorConstructor;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->f:Lcom/google/gson/FieldNamingStrategy;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->g:Lcom/google/gson/internal/Excluder;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->h:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->i:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/lang/reflect/Member;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    :cond_0
    invoke-static {p0, p1}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->a(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const/4 p0, 0x1

    .line 23
    invoke-static {p1, p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->d(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance p1, Lcom/google/gson/JsonIOException;

    .line 28
    .line 29
    const-string v0, " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."

    .line 30
    .line 31
    invoke-static {p0, v0}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Class "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, " declares multiple JSON fields named \'"

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, "\'; conflict is caused by fields "

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Lcom/google/gson/internal/reflect/ReflectionHelper;->c(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, " and "

    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {p3}, Lcom/google/gson/internal/reflect/ReflectionHelper;->c(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p0, "\nSee "

    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p0, "duplicate-fields"

    .line 55
    .line 56
    const-string p1, "https://github.com/google/gson/blob/main/Troubleshooting.md#"

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 7

    .line 1
    iget-object v3, p2, Lcom/google/gson/reflect/TypeToken;->a:Ljava/lang/Class;

    .line 2
    .line 3
    const-class v0, Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    sget-object v0, Lcom/google/gson/internal/reflect/ReflectionHelper;->a:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Class;->isLocalClass()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    :cond_1
    new-instance p1, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 44
    .line 45
    invoke-static {v3}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->b(Ljava/lang/Class;)Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v1, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->h:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 50
    .line 51
    if-eq v0, v1, :cond_5

    .line 52
    .line 53
    sget-object v1, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->g:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    if-ne v0, v1, :cond_3

    .line 57
    .line 58
    move v4, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 v0, 0x0

    .line 61
    move v4, v0

    .line 62
    :goto_0
    invoke-static {v3}, Lcom/google/gson/internal/reflect/ReflectionHelper;->i(Ljava/lang/Class;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    new-instance v6, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;

    .line 69
    .line 70
    const/4 v5, 0x1

    .line 71
    move-object v0, p0

    .line 72
    move-object v1, p1

    .line 73
    move-object v2, p2

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->d(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {v6, v3, p1, v4}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;-><init>(Ljava/lang/Class;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;Z)V

    .line 79
    .line 80
    .line 81
    return-object v6

    .line 82
    :cond_4
    move-object v0, p0

    .line 83
    move-object v1, p1

    .line 84
    move p1, v2

    .line 85
    move-object v2, p2

    .line 86
    iget-object p2, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->c:Lcom/google/gson/internal/ConstructorConstructor;

    .line 87
    .line 88
    invoke-virtual {p2, v2, p1}, Lcom/google/gson/internal/ConstructorConstructor;->b(Lcom/google/gson/reflect/TypeToken;Z)Lcom/google/gson/internal/ObjectConstructor;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance p2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;

    .line 93
    .line 94
    const/4 v5, 0x0

    .line 95
    invoke-virtual/range {v0 .. v5}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->d(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-direct {p2, p1, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;-><init>(Lcom/google/gson/internal/ObjectConstructor;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;)V

    .line 100
    .line 101
    .line 102
    return-object p2

    .line 103
    :cond_5
    new-instance p1, Lcom/google/gson/JsonIOException;

    .line 104
    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v0, "ReflectionAccessFilter does not permit using reflection for "

    .line 108
    .line 109
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v0, ". Register a TypeAdapter for this type or adjust the access filter."

    .line 116
    .line 117
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1
.end method

.method public final d(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p3

    .line 4
    .line 5
    invoke-virtual {v7}, Ljava/lang/Class;->isInterface()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;->c:Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    move-object/from16 v10, p2

    .line 25
    .line 26
    move/from16 v1, p4

    .line 27
    .line 28
    move-object v11, v7

    .line 29
    :goto_0
    const-class v2, Ljava/lang/Object;

    .line 30
    .line 31
    if-eq v11, v2, :cond_19

    .line 32
    .line 33
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 34
    .line 35
    .line 36
    move-result-object v12

    .line 37
    const/4 v13, 0x1

    .line 38
    const/4 v14, 0x0

    .line 39
    if-eq v11, v7, :cond_2

    .line 40
    .line 41
    array-length v2, v12

    .line 42
    if-lez v2, :cond_2

    .line 43
    .line 44
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 45
    .line 46
    invoke-static {v11}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->b(Ljava/lang/Class;)Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget-object v2, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->h:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 51
    .line 52
    if-eq v1, v2, :cond_3

    .line 53
    .line 54
    sget-object v2, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->g:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 55
    .line 56
    if-ne v1, v2, :cond_1

    .line 57
    .line 58
    move v1, v13

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v1, v14

    .line 61
    :cond_2
    :goto_1
    move/from16 v18, v1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    new-instance v1, Lcom/google/gson/JsonIOException;

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v3, "ReflectionAccessFilter does not permit using reflection for "

    .line 69
    .line 70
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v3, " (supertype of "

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, "). Register a TypeAdapter for this type or adjust the access filter."

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v1

    .line 97
    :goto_2
    array-length v15, v12

    .line 98
    move v1, v14

    .line 99
    :goto_3
    if-ge v1, v15, :cond_18

    .line 100
    .line 101
    aget-object v2, v12, v1

    .line 102
    .line 103
    invoke-virtual {v0, v2, v13}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->e(Ljava/lang/reflect/Field;Z)Z

    .line 104
    .line 105
    .line 106
    move-result v24

    .line 107
    invoke-virtual {v0, v2, v14}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->e(Ljava/lang/reflect/Field;Z)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-nez v24, :cond_4

    .line 112
    .line 113
    if-nez v3, :cond_4

    .line 114
    .line 115
    move-object/from16 v3, p1

    .line 116
    .line 117
    move/from16 v27, v1

    .line 118
    .line 119
    move/from16 p2, v13

    .line 120
    .line 121
    move v2, v15

    .line 122
    goto/16 :goto_11

    .line 123
    .line 124
    :cond_4
    const-class v4, Lcom/google/gson/annotations/SerializedName;

    .line 125
    .line 126
    const/16 v25, 0x0

    .line 127
    .line 128
    if-eqz p5, :cond_9

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-eqz v5, :cond_5

    .line 139
    .line 140
    move/from16 v26, v14

    .line 141
    .line 142
    :goto_4
    move-object/from16 v19, v25

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_5
    invoke-static {v11, v2}, Lcom/google/gson/internal/reflect/ReflectionHelper;->e(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    if-nez v18, :cond_6

    .line 150
    .line 151
    invoke-static {v5}, Lcom/google/gson/internal/reflect/ReflectionHelper;->j(Ljava/lang/reflect/AccessibleObject;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    if-eqz v6, :cond_8

    .line 159
    .line 160
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    if-eqz v6, :cond_7

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_7
    invoke-static {v5, v14}, Lcom/google/gson/internal/reflect/ReflectionHelper;->d(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    new-instance v2, Lcom/google/gson/JsonIOException;

    .line 172
    .line 173
    const-string v3, "@SerializedName on "

    .line 174
    .line 175
    const-string v4, " is not supported"

    .line 176
    .line 177
    invoke-static {v3, v1, v4}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v2

    .line 185
    :cond_8
    :goto_5
    move/from16 v26, v3

    .line 186
    .line 187
    move-object/from16 v19, v5

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_9
    move/from16 v26, v3

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :goto_6
    if-nez v18, :cond_a

    .line 194
    .line 195
    if-nez v19, :cond_a

    .line 196
    .line 197
    invoke-static {v2}, Lcom/google/gson/internal/reflect/ReflectionHelper;->j(Ljava/lang/reflect/AccessibleObject;)V

    .line 198
    .line 199
    .line 200
    :cond_a
    iget-object v3, v10, Lcom/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    new-instance v6, Ljava/util/HashMap;

    .line 207
    .line 208
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-static {v3, v11, v5, v6}, Lcom/google/gson/internal/GsonTypes;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    check-cast v4, Lcom/google/gson/annotations/SerializedName;

    .line 220
    .line 221
    if-nez v4, :cond_b

    .line 222
    .line 223
    iget-object v4, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->f:Lcom/google/gson/FieldNamingStrategy;

    .line 224
    .line 225
    invoke-interface {v4, v2}, Lcom/google/gson/FieldNamingStrategy;->b(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-interface {v4}, Lcom/google/gson/FieldNamingStrategy;->a()V

    .line 230
    .line 231
    .line 232
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_b
    invoke-interface {v4}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-interface {v4}, Lcom/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    :goto_7
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    if-eqz v6, :cond_c

    .line 252
    .line 253
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    move/from16 p2, v13

    .line 258
    .line 259
    move-object v13, v4

    .line 260
    goto :goto_8

    .line 261
    :cond_c
    new-instance v6, Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 264
    .line 265
    .line 266
    move-result v16

    .line 267
    move/from16 p2, v13

    .line 268
    .line 269
    add-int/lit8 v13, v16, 0x1

    .line 270
    .line 271
    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 278
    .line 279
    .line 280
    move-object v13, v6

    .line 281
    :goto_8
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    move-object/from16 v16, v4

    .line 286
    .line 287
    check-cast v16, Ljava/lang/String;

    .line 288
    .line 289
    new-instance v4, Lcom/google/gson/reflect/TypeToken;

    .line 290
    .line 291
    invoke-direct {v4, v3}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 292
    .line 293
    .line 294
    iget-object v3, v4, Lcom/google/gson/reflect/TypeToken;->a:Ljava/lang/Class;

    .line 295
    .line 296
    if-eqz v3, :cond_d

    .line 297
    .line 298
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    if-eqz v3, :cond_d

    .line 303
    .line 304
    move/from16 v22, p2

    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_d
    move/from16 v22, v14

    .line 308
    .line 309
    :goto_9
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    if-eqz v5, :cond_e

    .line 318
    .line 319
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    if-eqz v3, :cond_e

    .line 324
    .line 325
    move/from16 v23, p2

    .line 326
    .line 327
    goto :goto_a

    .line 328
    :cond_e
    move/from16 v23, v14

    .line 329
    .line 330
    :goto_a
    const-class v3, Lcom/google/gson/annotations/JsonAdapter;

    .line 331
    .line 332
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    move-object v5, v3

    .line 337
    check-cast v5, Lcom/google/gson/annotations/JsonAdapter;

    .line 338
    .line 339
    if-eqz v5, :cond_f

    .line 340
    .line 341
    move-object/from16 v17, v2

    .line 342
    .line 343
    iget-object v2, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->c:Lcom/google/gson/internal/ConstructorConstructor;

    .line 344
    .line 345
    const/4 v6, 0x0

    .line 346
    move v3, v1

    .line 347
    iget-object v1, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->h:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 348
    .line 349
    move/from16 v27, v3

    .line 350
    .line 351
    move-object/from16 v3, p1

    .line 352
    .line 353
    invoke-virtual/range {v1 .. v6}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->b(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;Z)Lcom/google/gson/TypeAdapter;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    goto :goto_b

    .line 358
    :cond_f
    move-object/from16 v3, p1

    .line 359
    .line 360
    move/from16 v27, v1

    .line 361
    .line 362
    move-object/from16 v17, v2

    .line 363
    .line 364
    move-object/from16 v1, v25

    .line 365
    .line 366
    :goto_b
    if-eqz v1, :cond_10

    .line 367
    .line 368
    move/from16 v2, p2

    .line 369
    .line 370
    goto :goto_c

    .line 371
    :cond_10
    move v2, v14

    .line 372
    :goto_c
    if-nez v1, :cond_11

    .line 373
    .line 374
    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->b(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    :cond_11
    if-eqz v24, :cond_13

    .line 379
    .line 380
    if-eqz v2, :cond_12

    .line 381
    .line 382
    move-object v2, v1

    .line 383
    goto :goto_d

    .line 384
    :cond_12
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    .line 385
    .line 386
    iget-object v4, v4, Lcom/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    .line 387
    .line 388
    invoke-direct {v2, v3, v1, v4}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    .line 389
    .line 390
    .line 391
    :goto_d
    move-object/from16 v20, v2

    .line 392
    .line 393
    :goto_e
    move v2, v15

    .line 394
    goto :goto_f

    .line 395
    :cond_13
    move-object/from16 v20, v1

    .line 396
    .line 397
    goto :goto_e

    .line 398
    :goto_f
    new-instance v15, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;

    .line 399
    .line 400
    move-object/from16 v21, v1

    .line 401
    .line 402
    invoke-direct/range {v15 .. v23}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$2;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/reflect/Method;Lcom/google/gson/TypeAdapter;Lcom/google/gson/TypeAdapter;ZZ)V

    .line 403
    .line 404
    .line 405
    move-object/from16 v4, v16

    .line 406
    .line 407
    move-object/from16 v1, v17

    .line 408
    .line 409
    if-eqz v26, :cond_15

    .line 410
    .line 411
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 416
    .line 417
    .line 418
    move-result v6

    .line 419
    if-eqz v6, :cond_15

    .line 420
    .line 421
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v6

    .line 425
    check-cast v6, Ljava/lang/String;

    .line 426
    .line 427
    invoke-interface {v8, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v13

    .line 431
    check-cast v13, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 432
    .line 433
    if-nez v13, :cond_14

    .line 434
    .line 435
    goto :goto_10

    .line 436
    :cond_14
    iget-object v2, v13, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->b:Ljava/lang/reflect/Field;

    .line 437
    .line 438
    invoke-static {v7, v6, v2, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    .line 439
    .line 440
    .line 441
    throw v25

    .line 442
    :cond_15
    if-eqz v24, :cond_17

    .line 443
    .line 444
    invoke-interface {v9, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    check-cast v5, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 449
    .line 450
    if-nez v5, :cond_16

    .line 451
    .line 452
    goto :goto_11

    .line 453
    :cond_16
    iget-object v2, v5, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->b:Ljava/lang/reflect/Field;

    .line 454
    .line 455
    invoke-static {v7, v4, v2, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    .line 456
    .line 457
    .line 458
    throw v25

    .line 459
    :cond_17
    :goto_11
    add-int/lit8 v1, v27, 0x1

    .line 460
    .line 461
    move/from16 v13, p2

    .line 462
    .line 463
    move v15, v2

    .line 464
    goto/16 :goto_3

    .line 465
    .line 466
    :cond_18
    move-object/from16 v3, p1

    .line 467
    .line 468
    iget-object v1, v10, Lcom/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    .line 469
    .line 470
    invoke-virtual {v11}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    new-instance v4, Ljava/util/HashMap;

    .line 475
    .line 476
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 477
    .line 478
    .line 479
    invoke-static {v1, v11, v2, v4}, Lcom/google/gson/internal/GsonTypes;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    new-instance v10, Lcom/google/gson/reflect/TypeToken;

    .line 484
    .line 485
    invoke-direct {v10, v1}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 486
    .line 487
    .line 488
    iget-object v11, v10, Lcom/google/gson/reflect/TypeToken;->a:Ljava/lang/Class;

    .line 489
    .line 490
    move/from16 v1, v18

    .line 491
    .line 492
    goto/16 :goto_0

    .line 493
    .line 494
    :cond_19
    new-instance v1, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;

    .line 495
    .line 496
    new-instance v2, Ljava/util/ArrayList;

    .line 497
    .line 498
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 503
    .line 504
    .line 505
    invoke-direct {v1, v2, v8}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldsData;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 506
    .line 507
    .line 508
    return-object v1
.end method

.method public final e(Ljava/lang/reflect/Field;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->g:Lcom/google/gson/internal/Excluder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x88

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    and-int/2addr v1, v2

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    :goto_0
    move p1, v2

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1, p2}, Lcom/google/gson/internal/Excluder;->b(Ljava/lang/Class;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    if-eqz p2, :cond_3

    .line 37
    .line 38
    iget-object p2, v0, Lcom/google/gson/internal/Excluder;->c:Ljava/util/List;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-object p2, v0, Lcom/google/gson/internal/Excluder;->f:Ljava/util/List;

    .line 42
    .line 43
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_5

    .line 48
    .line 49
    new-instance v0, Lcom/google/gson/FieldAttributes;

    .line 50
    .line 51
    invoke-direct {v0, p1}, Lcom/google/gson/FieldAttributes;-><init>(Ljava/lang/reflect/Field;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_5

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Lcom/google/gson/ExclusionStrategy;

    .line 69
    .line 70
    invoke-interface {p2}, Lcom/google/gson/ExclusionStrategy;->b()Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_4

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    const/4 p1, 0x0

    .line 78
    :goto_2
    xor-int/2addr p1, v2

    .line 79
    return p1
.end method
