.class public Lorg/apache/commons/lang3/reflect/TypeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;,
        Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;,
        Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;,
        Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;
    }
.end annotation


# static fields
.field public static final a:Lorg/apache/commons/lang3/AppendableJoiner;

.field public static final b:Lorg/apache/commons/lang3/AppendableJoiner;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, " & "

    .line 7
    .line 8
    iput-object v1, v0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->g:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Lkotlin/io/path/f;

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-direct {v1, v2}, Lkotlin/io/path/f;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->h:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->a()Lorg/apache/commons/lang3/AppendableJoiner;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lorg/apache/commons/lang3/reflect/TypeUtils;->a:Lorg/apache/commons/lang3/AppendableJoiner;

    .line 23
    .line 24
    new-instance v0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v1, ", "

    .line 30
    .line 31
    iput-object v1, v0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->g:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v2, Lkotlin/io/path/f;

    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    invoke-direct {v2, v3}, Lkotlin/io/path/f;-><init>(I)V

    .line 37
    .line 38
    .line 39
    iput-object v2, v0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->h:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    .line 40
    .line 41
    invoke-virtual {v0}, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->a()Lorg/apache/commons/lang3/AppendableJoiner;

    .line 42
    .line 43
    .line 44
    new-instance v0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "<"

    .line 50
    .line 51
    iput-object v2, v0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->c:Ljava/lang/String;

    .line 52
    .line 53
    const-string v2, ">"

    .line 54
    .line 55
    iput-object v2, v0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->f:Ljava/lang/String;

    .line 56
    .line 57
    iput-object v1, v0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->g:Ljava/lang/String;

    .line 58
    .line 59
    new-instance v1, Lkotlin/io/path/f;

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    invoke-direct {v1, v2}, Lkotlin/io/path/f;-><init>(I)V

    .line 63
    .line 64
    .line 65
    iput-object v1, v0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->h:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    .line 66
    .line 67
    invoke-virtual {v0}, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->a()Lorg/apache/commons/lang3/AppendableJoiner;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lorg/apache/commons/lang3/reflect/TypeUtils;->b:Lorg/apache/commons/lang3/AppendableJoiner;

    .line 72
    .line 73
    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->p(Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "[]"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    array-length v1, v0

    .line 38
    const/4 v2, 0x0

    .line 39
    move v3, v2

    .line 40
    :goto_0
    if-ge v3, v1, :cond_3

    .line 41
    .line 42
    aget-object v4, v0, v3

    .line 43
    .line 44
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    array-length v5, v4

    .line 49
    move v6, v2

    .line 50
    :goto_1
    if-ge v6, v5, :cond_2

    .line 51
    .line 52
    aget-object v7, v4, v6

    .line 53
    .line 54
    invoke-interface {v7}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string v0, "(cycle)"

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/Class;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const/16 v1, 0x2e

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    array-length v1, v1

    .line 132
    if-lez v1, :cond_5

    .line 133
    .line 134
    sget-object v1, Lorg/apache/commons/lang3/reflect/TypeUtils;->b:Lorg/apache/commons/lang3/AppendableJoiner;

    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {v1, v0, p0}, Lorg/apache/commons/lang3/AppendableJoiner;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0
.end method

.method public static b(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->c(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->c(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->e([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0

    .line 48
    :cond_0
    const/4 p0, 0x0

    .line 49
    return p0
.end method

.method public static c(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 14
    .line 15
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->b(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 26
    .line 27
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->c(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    return v1

    .line 48
    :cond_2
    return v2

    .line 49
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 54
    .line 55
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->d(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :cond_4
    return v2
.end method

.method public static d(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 7
    .line 8
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->g(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->g(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v0, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->e([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->h(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->h(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->e([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_0
    return v1
.end method

.method public static e([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    move v0, v2

    .line 7
    :goto_0
    array-length v1, p0

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    aget-object v1, p0, v0

    .line 11
    .line 12
    aget-object v3, p1, v0

    .line 13
    .line 14
    invoke-static {v1, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->c(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_2
    return v2
.end method

.method public static f(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v1, :cond_3

    .line 15
    .line 16
    aget-object v4, v0, v3

    .line 17
    .line 18
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    move-object v5, v4

    .line 23
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 24
    .line 25
    invoke-static {v5}, Lorg/apache/commons/lang3/reflect/TypeUtils;->i(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    instance-of v5, v4, Ljava/lang/Class;

    .line 31
    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    move-object v5, v4

    .line 35
    check-cast v5, Ljava/lang/Class;

    .line 36
    .line 37
    :goto_1
    invoke-static {v5, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->l(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    invoke-static {v2, v5}, Lorg/apache/commons/lang3/reflect/TypeUtils;->n(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    move-object v2, v4

    .line 50
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "Unexpected generic interface type found: "

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_3
    if-eqz v2, :cond_4

    .line 74
    .line 75
    return-object v2

    .line 76
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method

.method public static g(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .locals 2

    .line 1
    const-string v0, "wildcardType"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    array-length v0, p0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    new-array p0, p0, [Ljava/lang/reflect/Type;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    aput-object v1, p0, v0

    .line 19
    .line 20
    :cond_0
    return-object p0
.end method

.method public static h(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    const-string v0, "wildcardType"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->o([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static i(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Ljava/lang/Class;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Ljava/lang/Class;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Type of rawType: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public static j(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 5

    .line 1
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->i(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->l(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 22
    .line 23
    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->i(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->j(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-nez p2, :cond_2

    .line 33
    .line 34
    new-instance p2, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    move-object p2, v1

    .line 46
    :goto_0
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/4 v2, 0x0

    .line 55
    :goto_1
    array-length v3, v1

    .line 56
    if-ge v2, v3, :cond_3

    .line 57
    .line 58
    aget-object v3, p0, v2

    .line 59
    .line 60
    aget-object v4, v1, v2

    .line 61
    .line 62
    invoke-static {p2, v3, v3}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Ljava/lang/reflect/Type;

    .line 67
    .line 68
    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_4

    .line 79
    .line 80
    return-object p2

    .line 81
    :cond_4
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->f(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->k(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method

.method public static k(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    check-cast p0, Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->l(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    new-instance p0, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->c(Ljava/lang/Class;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :cond_2
    if-nez p2, :cond_3

    .line 38
    .line 39
    new-instance p2, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 48
    .line 49
    .line 50
    move-object p2, v0

    .line 51
    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    return-object p2

    .line 58
    :cond_4
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->f(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->k(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_5
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 72
    .line 73
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->j(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_6
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    .line 79
    .line 80
    if-eqz v0, :cond_8

    .line 81
    .line 82
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 83
    .line 84
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_7

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :cond_7
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->k(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :cond_8
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    if-eqz v0, :cond_a

    .line 107
    .line 108
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 109
    .line 110
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->h(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    array-length v0, p0

    .line 115
    :goto_1
    if-ge v1, v0, :cond_c

    .line 116
    .line 117
    aget-object v2, p0, v1

    .line 118
    .line 119
    invoke-static {v2, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->l(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_9

    .line 124
    .line 125
    invoke-static {v2, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->k(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0

    .line 130
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_a
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    .line 134
    .line 135
    if-eqz v0, :cond_d

    .line 136
    .line 137
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 138
    .line 139
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->o([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    array-length v0, p0

    .line 148
    :goto_2
    if-ge v1, v0, :cond_c

    .line 149
    .line 150
    aget-object v2, p0, v1

    .line 151
    .line 152
    invoke-static {v2, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->l(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_b

    .line 157
    .line 158
    invoke-static {v2, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->k(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    return-object p0

    .line 163
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_c
    :goto_3
    const/4 p0, 0x0

    .line 167
    return-object p0

    .line 168
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 169
    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v0, "found an unhandled type: "

    .line 173
    .line 174
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p1
.end method

.method public static l(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return v1

    .line 15
    :cond_1
    :goto_0
    return v0

    .line 16
    :cond_2
    if-nez p1, :cond_3

    .line 17
    .line 18
    return v1

    .line 19
    :cond_3
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    return v0

    .line 26
    :cond_4
    instance-of v2, p0, Ljava/lang/Class;

    .line 27
    .line 28
    if-eqz v2, :cond_5

    .line 29
    .line 30
    check-cast p0, Ljava/lang/Class;

    .line 31
    .line 32
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ClassUtils;->b(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_5
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    .line 38
    .line 39
    if-eqz v2, :cond_6

    .line 40
    .line 41
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 42
    .line 43
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->i(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->l(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_6
    instance-of v2, p0, Ljava/lang/reflect/TypeVariable;

    .line 53
    .line 54
    if-eqz v2, :cond_9

    .line 55
    .line 56
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    array-length v2, p0

    .line 63
    move v3, v1

    .line 64
    :goto_1
    if-ge v3, v2, :cond_8

    .line 65
    .line 66
    aget-object v4, p0, v3

    .line 67
    .line 68
    invoke-static {v4, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->l(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_7

    .line 73
    .line 74
    return v0

    .line 75
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_8
    return v1

    .line 79
    :cond_9
    instance-of v2, p0, Ljava/lang/reflect/GenericArrayType;

    .line 80
    .line 81
    if-eqz v2, :cond_c

    .line 82
    .line 83
    const-class v2, Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_b

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_a

    .line 96
    .line 97
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 98
    .line 99
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->l(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_a

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_a
    return v1

    .line 115
    :cond_b
    :goto_2
    return v0

    .line 116
    :cond_c
    instance-of p1, p0, Ljava/lang/reflect/WildcardType;

    .line 117
    .line 118
    if-eqz p1, :cond_d

    .line 119
    .line 120
    return v1

    .line 121
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v1, "found an unhandled type: "

    .line 126
    .line 127
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p1
.end method

.method public static m(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Z
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    return v0

    .line 8
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_2
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    .line 16
    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    move-object v1, p0

    .line 20
    check-cast v1, Ljava/lang/reflect/TypeVariable;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->o([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    array-length v2, v1

    .line 31
    move v3, v0

    .line 32
    :goto_0
    if-ge v3, v2, :cond_4

    .line 33
    .line 34
    aget-object v4, v1, v3

    .line 35
    .line 36
    invoke-static {v4, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->m(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    :goto_1
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    instance-of p1, p0, Ljava/lang/Class;

    .line 48
    .line 49
    if-nez p1, :cond_6

    .line 50
    .line 51
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    .line 52
    .line 53
    if-nez p1, :cond_6

    .line 54
    .line 55
    instance-of p1, p0, Ljava/lang/reflect/GenericArrayType;

    .line 56
    .line 57
    if-nez p1, :cond_6

    .line 58
    .line 59
    instance-of p1, p0, Ljava/lang/reflect/WildcardType;

    .line 60
    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    return v0

    .line 64
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v1, "found an unhandled type: "

    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_6
    return v0
.end method

.method public static n(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 9

    .line 1
    if-eqz p1, :cond_26

    .line 2
    .line 3
    instance-of v0, p1, Ljava/lang/Class;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_e

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_c

    .line 13
    .line 14
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 15
    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    goto/16 :goto_d

    .line 19
    .line 20
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    return v1

    .line 25
    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    goto/16 :goto_d

    .line 32
    .line 33
    :cond_3
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->i(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-static {p0, v0, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->k(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-nez p0, :cond_4

    .line 43
    .line 44
    goto/16 :goto_c

    .line 45
    .line 46
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_5

    .line 51
    .line 52
    goto/16 :goto_d

    .line 53
    .line 54
    :cond_5
    invoke-static {p1, v0, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->j(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_23

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Ljava/lang/reflect/TypeVariable;

    .line 77
    .line 78
    move-object v3, v2

    .line 79
    :goto_1
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/lang/reflect/Type;

    .line 84
    .line 85
    instance-of v5, v4, Ljava/lang/reflect/TypeVariable;

    .line 86
    .line 87
    if-eqz v5, :cond_8

    .line 88
    .line 89
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_7

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_7
    move-object v3, v4

    .line 97
    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_8
    :goto_2
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Ljava/lang/reflect/Type;

    .line 105
    .line 106
    instance-of v5, v3, Ljava/lang/reflect/TypeVariable;

    .line 107
    .line 108
    if-eqz v5, :cond_a

    .line 109
    .line 110
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_9

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_9
    move-object v2, v3

    .line 118
    check-cast v2, Ljava/lang/reflect/TypeVariable;

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_a
    :goto_3
    if-nez v4, :cond_b

    .line 122
    .line 123
    instance-of v2, v3, Ljava/lang/Class;

    .line 124
    .line 125
    if-eqz v2, :cond_b

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_b
    if-eqz v3, :cond_6

    .line 129
    .line 130
    if-eqz v4, :cond_6

    .line 131
    .line 132
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_6

    .line 137
    .line 138
    instance-of v2, v4, Ljava/lang/reflect/WildcardType;

    .line 139
    .line 140
    if-eqz v2, :cond_21

    .line 141
    .line 142
    invoke-static {v3, v4}, Lorg/apache/commons/lang3/reflect/TypeUtils;->n(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-nez v2, :cond_6

    .line 147
    .line 148
    goto/16 :goto_c

    .line 149
    .line 150
    :cond_c
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    .line 151
    .line 152
    const-string v2, "found an unhandled type: "

    .line 153
    .line 154
    if-eqz v0, :cond_16

    .line 155
    .line 156
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 157
    .line 158
    if-nez p0, :cond_d

    .line 159
    .line 160
    goto/16 :goto_d

    .line 161
    .line 162
    :cond_d
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_e

    .line 167
    .line 168
    goto/16 :goto_d

    .line 169
    .line 170
    :cond_e
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    instance-of v3, p0, Ljava/lang/Class;

    .line 175
    .line 176
    if-eqz v3, :cond_f

    .line 177
    .line 178
    check-cast p0, Ljava/lang/Class;

    .line 179
    .line 180
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_21

    .line 185
    .line 186
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->n(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    if-eqz p0, :cond_21

    .line 195
    .line 196
    goto/16 :goto_d

    .line 197
    .line 198
    :cond_f
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    .line 199
    .line 200
    if-eqz v3, :cond_10

    .line 201
    .line 202
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 203
    .line 204
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->n(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    return p0

    .line 213
    :cond_10
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    .line 214
    .line 215
    if-eqz v0, :cond_12

    .line 216
    .line 217
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 218
    .line 219
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->h(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    array-length v0, p0

    .line 224
    move v2, v1

    .line 225
    :goto_4
    if-ge v2, v0, :cond_21

    .line 226
    .line 227
    aget-object v3, p0, v2

    .line 228
    .line 229
    invoke-static {v3, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->n(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_11

    .line 234
    .line 235
    goto/16 :goto_d

    .line 236
    .line 237
    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_12
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    .line 241
    .line 242
    if-eqz v0, :cond_14

    .line 243
    .line 244
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 245
    .line 246
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->o([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    array-length v0, p0

    .line 255
    move v2, v1

    .line 256
    :goto_5
    if-ge v2, v0, :cond_21

    .line 257
    .line 258
    aget-object v3, p0, v2

    .line 259
    .line 260
    invoke-static {v3, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->n(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-eqz v3, :cond_13

    .line 265
    .line 266
    goto/16 :goto_d

    .line 267
    .line 268
    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 269
    .line 270
    goto :goto_5

    .line 271
    :cond_14
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    .line 272
    .line 273
    if-eqz p1, :cond_15

    .line 274
    .line 275
    return v1

    .line 276
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 277
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw p1

    .line 294
    :cond_16
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    .line 295
    .line 296
    if-eqz v0, :cond_24

    .line 297
    .line 298
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 299
    .line 300
    if-nez p0, :cond_17

    .line 301
    .line 302
    goto/16 :goto_d

    .line 303
    .line 304
    :cond_17
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-eqz v0, :cond_18

    .line 309
    .line 310
    goto/16 :goto_d

    .line 311
    .line 312
    :cond_18
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->h(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->g(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    .line 321
    .line 322
    if-eqz v2, :cond_1e

    .line 323
    .line 324
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 325
    .line 326
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->h(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->g(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    array-length v3, v0

    .line 335
    move v4, v1

    .line 336
    :goto_6
    if-ge v4, v3, :cond_1b

    .line 337
    .line 338
    aget-object v5, v0, v4

    .line 339
    .line 340
    array-length v6, v2

    .line 341
    move v7, v1

    .line 342
    :goto_7
    if-ge v7, v6, :cond_1a

    .line 343
    .line 344
    aget-object v8, v2, v7

    .line 345
    .line 346
    invoke-static {v8, v5}, Lorg/apache/commons/lang3/reflect/TypeUtils;->n(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 347
    .line 348
    .line 349
    move-result v8

    .line 350
    if-nez v8, :cond_19

    .line 351
    .line 352
    goto :goto_c

    .line 353
    :cond_19
    add-int/lit8 v7, v7, 0x1

    .line 354
    .line 355
    goto :goto_7

    .line 356
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    .line 357
    .line 358
    goto :goto_6

    .line 359
    :cond_1b
    array-length v0, p1

    .line 360
    move v2, v1

    .line 361
    :goto_8
    if-ge v2, v0, :cond_23

    .line 362
    .line 363
    aget-object v3, p1, v2

    .line 364
    .line 365
    array-length v4, p0

    .line 366
    move v5, v1

    .line 367
    :goto_9
    if-ge v5, v4, :cond_1d

    .line 368
    .line 369
    aget-object v6, p0, v5

    .line 370
    .line 371
    invoke-static {v3, v6}, Lorg/apache/commons/lang3/reflect/TypeUtils;->n(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    if-nez v6, :cond_1c

    .line 376
    .line 377
    goto :goto_c

    .line 378
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    .line 379
    .line 380
    goto :goto_9

    .line 381
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    .line 382
    .line 383
    goto :goto_8

    .line 384
    :cond_1e
    array-length v2, v0

    .line 385
    move v3, v1

    .line 386
    :goto_a
    if-ge v3, v2, :cond_20

    .line 387
    .line 388
    aget-object v4, v0, v3

    .line 389
    .line 390
    invoke-static {p0, v4}, Lorg/apache/commons/lang3/reflect/TypeUtils;->n(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    if-nez v4, :cond_1f

    .line 395
    .line 396
    goto :goto_c

    .line 397
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    .line 398
    .line 399
    goto :goto_a

    .line 400
    :cond_20
    array-length v0, p1

    .line 401
    move v2, v1

    .line 402
    :goto_b
    if-ge v2, v0, :cond_23

    .line 403
    .line 404
    aget-object v3, p1, v2

    .line 405
    .line 406
    :try_start_0
    invoke-static {v3, p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->n(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 407
    .line 408
    .line 409
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    if-nez v3, :cond_22

    .line 411
    .line 412
    :cond_21
    :goto_c
    return v1

    .line 413
    :cond_22
    add-int/lit8 v2, v2, 0x1

    .line 414
    .line 415
    goto :goto_b

    .line 416
    :catchall_0
    move-exception p0

    .line 417
    throw p0

    .line 418
    :cond_23
    :goto_d
    const/4 p0, 0x1

    .line 419
    return p0

    .line 420
    :cond_24
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    .line 421
    .line 422
    if-eqz v0, :cond_25

    .line 423
    .line 424
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .line 425
    .line 426
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->m(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Z

    .line 427
    .line 428
    .line 429
    move-result p0

    .line 430
    return p0

    .line 431
    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 432
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    throw p0

    .line 449
    :cond_26
    :goto_e
    check-cast p1, Ljava/lang/Class;

    .line 450
    .line 451
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->l(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    .line 452
    .line 453
    .line 454
    move-result p0

    .line 455
    return p0
.end method

.method public static o([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 8

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    new-array p0, p0, [Ljava/lang/reflect/Type;

    .line 7
    .line 8
    const-class v0, Ljava/lang/Object;

    .line 9
    .line 10
    aput-object v0, p0, v1

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    array-length v0, p0

    .line 14
    const/4 v2, 0x2

    .line 15
    if-ge v0, v2, :cond_1

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    array-length v2, p0

    .line 21
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 22
    .line 23
    .line 24
    array-length v2, p0

    .line 25
    move v3, v1

    .line 26
    :goto_0
    if-ge v3, v2, :cond_4

    .line 27
    .line 28
    aget-object v4, p0, v3

    .line 29
    .line 30
    array-length v5, p0

    .line 31
    move v6, v1

    .line 32
    :goto_1
    if-ge v6, v5, :cond_3

    .line 33
    .line 34
    aget-object v7, p0, v6

    .line 35
    .line 36
    if-eq v4, v7, :cond_2

    .line 37
    .line 38
    invoke-static {v7, v4}, Lorg/apache/commons/lang3/reflect/TypeUtils;->n(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->c:[Ljava/lang/reflect/Type;

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, [Ljava/lang/reflect/Type;

    .line 61
    .line 62
    return-object p0
.end method

.method public static p(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Ljava/lang/Class;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Ljava/lang/Class;

    .line 11
    .line 12
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->a(Ljava/lang/Class;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz v0, :cond_11

    .line 22
    .line 23
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Ljava/lang/Class;

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    instance-of v5, v3, Ljava/lang/Class;

    .line 51
    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    check-cast v3, Ljava/lang/Class;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :goto_0
    const/16 v3, 0x2e

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    array-length v4, v4

    .line 88
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, [Ljava/lang/reflect/Type;

    .line 93
    .line 94
    new-array v4, v1, [I

    .line 95
    .line 96
    move v5, v1

    .line 97
    :goto_2
    array-length v6, v3

    .line 98
    if-ge v5, v6, :cond_5

    .line 99
    .line 100
    aget-object v6, v3, v5

    .line 101
    .line 102
    instance-of v7, v6, Ljava/lang/reflect/TypeVariable;

    .line 103
    .line 104
    if-eqz v7, :cond_4

    .line 105
    .line 106
    check-cast v6, Ljava/lang/reflect/TypeVariable;

    .line 107
    .line 108
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-static {v6, p0}, Lorg/apache/commons/lang3/ArrayUtils;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_4

    .line 117
    .line 118
    if-eqz v4, :cond_3

    .line 119
    .line 120
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    add-int/lit8 v8, v6, 0x1

    .line 133
    .line 134
    invoke-static {v7, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    invoke-static {v4, v1, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_3
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 143
    .line 144
    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    :goto_3
    check-cast v7, [I

    .line 149
    .line 150
    array-length v4, v7

    .line 151
    sub-int/2addr v4, v2

    .line 152
    aput v5, v7, v4

    .line 153
    .line 154
    move-object v4, v7

    .line 155
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    array-length v3, v4

    .line 159
    sget-object v5, Lorg/apache/commons/lang3/reflect/TypeUtils;->b:Lorg/apache/commons/lang3/AppendableJoiner;

    .line 160
    .line 161
    if-lez v3, :cond_f

    .line 162
    .line 163
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    move v3, v1

    .line 168
    :goto_4
    array-length v6, v4

    .line 169
    if-ge v3, v6, :cond_6

    .line 170
    .line 171
    aget-object v6, p0, v3

    .line 172
    .line 173
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    new-array v7, v2, [Ljava/lang/Object;

    .line 178
    .line 179
    aput-object v6, v7, v1

    .line 180
    .line 181
    invoke-virtual {v5, v0, v7}, Lorg/apache/commons/lang3/AppendableJoiner;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    add-int/lit8 v3, v3, 0x1

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_6
    if-nez p0, :cond_7

    .line 188
    .line 189
    const/4 p0, 0x0

    .line 190
    goto :goto_7

    .line 191
    :cond_7
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    check-cast v4, [I

    .line 200
    .line 201
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 202
    .line 203
    .line 204
    invoke-static {v4}, Lorg/apache/commons/lang3/ArrayUtils;->b(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-nez v6, :cond_a

    .line 209
    .line 210
    array-length v6, v4

    .line 211
    move v7, v1

    .line 212
    move v8, v3

    .line 213
    :goto_5
    add-int/lit8 v6, v6, -0x1

    .line 214
    .line 215
    if-ltz v6, :cond_b

    .line 216
    .line 217
    aget v9, v4, v6

    .line 218
    .line 219
    if-ltz v9, :cond_9

    .line 220
    .line 221
    if-ge v9, v3, :cond_9

    .line 222
    .line 223
    if-lt v9, v8, :cond_8

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 227
    .line 228
    move v8, v9

    .line 229
    goto :goto_5

    .line 230
    :cond_9
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 231
    .line 232
    const-string v0, "Index: "

    .line 233
    .line 234
    const-string v1, ", Length: "

    .line 235
    .line 236
    invoke-static {v0, v9, v3, v1}, Landroidx/work/impl/workers/a;->s(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw p0

    .line 244
    :cond_a
    move v7, v1

    .line 245
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    sub-int v8, v3, v7

    .line 254
    .line 255
    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    if-ge v7, v3, :cond_e

    .line 260
    .line 261
    array-length v7, v4

    .line 262
    sub-int/2addr v7, v2

    .line 263
    :goto_6
    if-ltz v7, :cond_d

    .line 264
    .line 265
    aget v9, v4, v7

    .line 266
    .line 267
    sub-int/2addr v3, v9

    .line 268
    if-le v3, v2, :cond_c

    .line 269
    .line 270
    add-int/lit8 v3, v3, -0x1

    .line 271
    .line 272
    sub-int/2addr v8, v3

    .line 273
    add-int/lit8 v10, v9, 0x1

    .line 274
    .line 275
    invoke-static {p0, v10, v6, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    .line 277
    .line 278
    :cond_c
    add-int/lit8 v7, v7, -0x1

    .line 279
    .line 280
    move v3, v9

    .line 281
    goto :goto_6

    .line 282
    :cond_d
    if-lez v3, :cond_e

    .line 283
    .line 284
    invoke-static {p0, v1, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    .line 286
    .line 287
    :cond_e
    move-object p0, v6

    .line 288
    :goto_7
    check-cast p0, [Ljava/lang/Object;

    .line 289
    .line 290
    check-cast p0, [Ljava/lang/reflect/Type;

    .line 291
    .line 292
    array-length v1, p0

    .line 293
    if-lez v1, :cond_10

    .line 294
    .line 295
    invoke-virtual {v5, v0, p0}, Lorg/apache/commons/lang3/AppendableJoiner;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    goto :goto_8

    .line 299
    :cond_f
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    invoke-virtual {v5, v0, p0}, Lorg/apache/commons/lang3/AppendableJoiner;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    :cond_10
    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    return-object p0

    .line 311
    :cond_11
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    .line 312
    .line 313
    const-string v3, " extends "

    .line 314
    .line 315
    const-class v4, Ljava/lang/Object;

    .line 316
    .line 317
    sget-object v5, Lorg/apache/commons/lang3/reflect/TypeUtils;->a:Lorg/apache/commons/lang3/AppendableJoiner;

    .line 318
    .line 319
    if-eqz v0, :cond_16

    .line 320
    .line 321
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 322
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    const/16 v6, 0x3f

    .line 329
    .line 330
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    array-length v7, v6

    .line 342
    if-gt v7, v2, :cond_14

    .line 343
    .line 344
    array-length v7, v6

    .line 345
    if-ne v7, v2, :cond_12

    .line 346
    .line 347
    aget-object v7, v6, v1

    .line 348
    .line 349
    if-eqz v7, :cond_12

    .line 350
    .line 351
    goto :goto_9

    .line 352
    :cond_12
    array-length v6, p0

    .line 353
    if-gt v6, v2, :cond_13

    .line 354
    .line 355
    array-length v6, p0

    .line 356
    if-ne v6, v2, :cond_15

    .line 357
    .line 358
    aget-object v1, p0, v1

    .line 359
    .line 360
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    if-nez v1, :cond_15

    .line 365
    .line 366
    :cond_13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v5, v0, p0}, Lorg/apache/commons/lang3/AppendableJoiner;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    goto :goto_a

    .line 373
    :cond_14
    :goto_9
    const-string p0, " super "

    .line 374
    .line 375
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5, v0, v6}, Lorg/apache/commons/lang3/AppendableJoiner;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    :cond_15
    :goto_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p0

    .line 385
    return-object p0

    .line 386
    :cond_16
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    .line 387
    .line 388
    if-eqz v0, :cond_1a

    .line 389
    .line 390
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 391
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    array-length v6, p0

    .line 406
    if-lez v6, :cond_19

    .line 407
    .line 408
    array-length v6, p0

    .line 409
    if-ne v6, v2, :cond_17

    .line 410
    .line 411
    aget-object v2, p0, v1

    .line 412
    .line 413
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    if-nez v2, :cond_19

    .line 418
    .line 419
    :cond_17
    aget-object v1, p0, v1

    .line 420
    .line 421
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    .line 422
    .line 423
    if-eqz v2, :cond_18

    .line 424
    .line 425
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 426
    .line 427
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    instance-of v2, v1, Ljava/lang/Class;

    .line 432
    .line 433
    if-eqz v2, :cond_18

    .line 434
    .line 435
    check-cast v1, Ljava/lang/Class;

    .line 436
    .line 437
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    if-eqz v1, :cond_18

    .line 442
    .line 443
    goto :goto_b

    .line 444
    :cond_18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v5, v0, p0}, Lorg/apache/commons/lang3/AppendableJoiner;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    :cond_19
    :goto_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object p0

    .line 454
    return-object p0

    .line 455
    :cond_1a
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    .line 456
    .line 457
    if-eqz v0, :cond_1b

    .line 458
    .line 459
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 460
    .line 461
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 462
    .line 463
    .line 464
    move-result-object p0

    .line 465
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->p(Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object p0

    .line 469
    const-string v0, "[]"

    .line 470
    .line 471
    invoke-static {p0, v0}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object p0

    .line 475
    return-object p0

    .line 476
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 477
    .line 478
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 487
    .line 488
    .line 489
    move-result p0

    .line 490
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object p0

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 497
    .line 498
    .line 499
    move-result v4

    .line 500
    add-int/2addr v4, v2

    .line 501
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    add-int/2addr v2, v4

    .line 506
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    const/16 v1, 0x40

    .line 513
    .line 514
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object p0

    .line 524
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    throw v0
.end method
