.class abstract Lcom/google/common/reflect/TypeVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/common/reflect/TypeVisitor;->a:Ljava/util/HashSet;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/reflect/Type;)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_7

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    if-eqz v2, :cond_6

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/common/reflect/TypeVisitor;->a:Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    :try_start_0
    instance-of v4, v2, Ljava/lang/reflect/TypeVariable;

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    move-object v4, v2

    .line 23
    check-cast v4, Ljava/lang/reflect/TypeVariable;

    .line 24
    .line 25
    invoke-virtual {p0, v4}, Lcom/google/common/reflect/TypeVisitor;->e(Ljava/lang/reflect/TypeVariable;)V

    .line 26
    .line 27
    .line 28
    goto :goto_2

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    instance-of v4, v2, Ljava/lang/reflect/WildcardType;

    .line 32
    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    move-object v4, v2

    .line 36
    check-cast v4, Ljava/lang/reflect/WildcardType;

    .line 37
    .line 38
    invoke-virtual {p0, v4}, Lcom/google/common/reflect/TypeVisitor;->f(Ljava/lang/reflect/WildcardType;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    instance-of v4, v2, Ljava/lang/reflect/ParameterizedType;

    .line 43
    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    move-object v4, v2

    .line 47
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 48
    .line 49
    invoke-virtual {p0, v4}, Lcom/google/common/reflect/TypeVisitor;->d(Ljava/lang/reflect/ParameterizedType;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    instance-of v4, v2, Ljava/lang/Class;

    .line 54
    .line 55
    if-eqz v4, :cond_4

    .line 56
    .line 57
    move-object v4, v2

    .line 58
    check-cast v4, Ljava/lang/Class;

    .line 59
    .line 60
    invoke-virtual {p0, v4}, Lcom/google/common/reflect/TypeVisitor;->b(Ljava/lang/Class;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    instance-of v4, v2, Ljava/lang/reflect/GenericArrayType;

    .line 65
    .line 66
    if-eqz v4, :cond_5

    .line 67
    .line 68
    move-object v4, v2

    .line 69
    check-cast v4, Ljava/lang/reflect/GenericArrayType;

    .line 70
    .line 71
    invoke-virtual {p0, v4}, Lcom/google/common/reflect/TypeVisitor;->c(Ljava/lang/reflect/GenericArrayType;)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v1, "Unknown type: "

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_7
    return-void
.end method

.method public b(Ljava/lang/Class;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljava/lang/reflect/GenericArrayType;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Ljava/lang/reflect/ParameterizedType;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e(Ljava/lang/reflect/TypeVariable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public f(Ljava/lang/reflect/WildcardType;)V
    .locals 0

    .line 1
    return-void
.end method
