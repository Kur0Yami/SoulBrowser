.class abstract enum Lcom/google/common/reflect/Types$JavaVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "JavaVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/reflect/Types$JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/google/common/reflect/Types$JavaVersion$2;

.field public static final f:Lcom/google/common/reflect/Types$JavaVersion;

.field public static final synthetic g:[Lcom/google/common/reflect/Types$JavaVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/common/reflect/Types$JavaVersion$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/reflect/Types$JavaVersion$1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/common/reflect/Types$JavaVersion$2;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/common/reflect/Types$JavaVersion$2;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v1, Lcom/google/common/reflect/Types$JavaVersion;->c:Lcom/google/common/reflect/Types$JavaVersion$2;

    .line 12
    .line 13
    new-instance v2, Lcom/google/common/reflect/Types$JavaVersion$3;

    .line 14
    .line 15
    invoke-direct {v2}, Lcom/google/common/reflect/Types$JavaVersion$3;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lcom/google/common/reflect/Types$JavaVersion$4;

    .line 19
    .line 20
    invoke-direct {v3}, Lcom/google/common/reflect/Types$JavaVersion$4;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x4

    .line 24
    new-array v4, v4, [Lcom/google/common/reflect/Types$JavaVersion;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    aput-object v0, v4, v5

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    aput-object v1, v4, v6

    .line 31
    .line 32
    const/4 v6, 0x2

    .line 33
    aput-object v2, v4, v6

    .line 34
    .line 35
    const/4 v6, 0x3

    .line 36
    aput-object v3, v4, v6

    .line 37
    .line 38
    sput-object v4, Lcom/google/common/reflect/Types$JavaVersion;->g:[Lcom/google/common/reflect/Types$JavaVersion;

    .line 39
    .line 40
    const-class v4, Ljava/lang/reflect/AnnotatedElement;

    .line 41
    .line 42
    const-class v6, Ljava/lang/reflect/TypeVariable;

    .line 43
    .line 44
    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string v6, "%s isn\'t parameterized"

    .line 49
    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    const-class v0, Lcom/google/common/reflect/Types$JavaVersion$5;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    .line 59
    .line 60
    invoke-static {v6, v0, v1}, Lcom/google/common/base/Preconditions;->c(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 61
    .line 62
    .line 63
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aget-object v0, v0, v5

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "java.util.Map.java.util.Map"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    sput-object v2, Lcom/google/common/reflect/Types$JavaVersion;->f:Lcom/google/common/reflect/Types$JavaVersion;

    .line 84
    .line 85
    return-void

    .line 86
    :cond_0
    sput-object v3, Lcom/google/common/reflect/Types$JavaVersion;->f:Lcom/google/common/reflect/Types$JavaVersion;

    .line 87
    .line 88
    return-void

    .line 89
    :cond_1
    const-class v2, Lcom/google/common/reflect/Types$JavaVersion$6;

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    .line 96
    .line 97
    invoke-static {v6, v2, v3}, Lcom/google/common/base/Preconditions;->c(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 98
    .line 99
    .line 100
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 101
    .line 102
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    aget-object v2, v2, v5

    .line 107
    .line 108
    instance-of v2, v2, Ljava/lang/Class;

    .line 109
    .line 110
    if-eqz v2, :cond_2

    .line 111
    .line 112
    sput-object v1, Lcom/google/common/reflect/Types$JavaVersion;->f:Lcom/google/common/reflect/Types$JavaVersion;

    .line 113
    .line 114
    return-void

    .line 115
    :cond_2
    sput-object v0, Lcom/google/common/reflect/Types$JavaVersion;->f:Lcom/google/common/reflect/Types$JavaVersion;

    .line 116
    .line 117
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/reflect/Types$JavaVersion;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/reflect/Types$JavaVersion;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/reflect/Types$JavaVersion;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/reflect/Types$JavaVersion;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->g:[Lcom/google/common/reflect/Types$JavaVersion;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/reflect/Types$JavaVersion;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/reflect/Types$JavaVersion;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method

.method public b(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/reflect/Types;->a:Lcom/google/common/base/Joiner;

    .line 2
    .line 3
    instance-of v0, p1, Ljava/lang/Class;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Class;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final c([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_0

    .line 8
    .line 9
    aget-object v3, p1, v2

    .line 10
    .line 11
    invoke-virtual {p0, v3}, Lcom/google/common/reflect/Types$JavaVersion;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->f()Lcom/google/common/collect/ImmutableList;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public abstract d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method
