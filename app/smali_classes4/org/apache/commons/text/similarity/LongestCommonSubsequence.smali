.class public Lorg/apache/commons/text/similarity/LongestCommonSubsequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/similarity/SimilarityScore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/similarity/SimilarityScore<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lorg/apache/commons/text/similarity/LongestCommonSubsequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->c:Lorg/apache/commons/text/similarity/LongestCommonSubsequence;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I
    .locals 10

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    new-array v4, v3, [I

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    aput v2, v4, v5

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput v3, v4, v2

    .line 19
    .line 20
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, [[I

    .line 27
    .line 28
    move v4, v5

    .line 29
    :goto_0
    if-gt v4, v0, :cond_2

    .line 30
    .line 31
    aget-object v6, v3, v2

    .line 32
    .line 33
    aget-object v7, v3, v5

    .line 34
    .line 35
    aput-object v7, v3, v2

    .line 36
    .line 37
    aput-object v6, v3, v5

    .line 38
    .line 39
    move v6, v5

    .line 40
    :goto_1
    if-gt v6, v1, :cond_1

    .line 41
    .line 42
    add-int/lit8 v7, v4, -0x1

    .line 43
    .line 44
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    add-int/lit8 v8, v6, -0x1

    .line 49
    .line 50
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    if-ne v7, v9, :cond_0

    .line 55
    .line 56
    aget-object v7, v3, v5

    .line 57
    .line 58
    aget-object v9, v3, v2

    .line 59
    .line 60
    aget v8, v9, v8

    .line 61
    .line 62
    add-int/2addr v8, v5

    .line 63
    aput v8, v7, v6

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_0
    aget-object v7, v3, v5

    .line 67
    .line 68
    aget v8, v7, v8

    .line 69
    .line 70
    aget-object v9, v3, v2

    .line 71
    .line 72
    aget v9, v9, v6

    .line 73
    .line 74
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    aput v8, v7, v6

    .line 79
    .line 80
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    aget-object p0, v3, v5

    .line 87
    .line 88
    return-object p0
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/CharSequence;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-ge v0, v1, :cond_1

    .line 19
    .line 20
    invoke-static {p2, p1}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    aget p1, p1, v0

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/text/similarity/LongestCommonSubsequence;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    aget p1, p1, v1

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string p2, "Inputs must not be null"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method
