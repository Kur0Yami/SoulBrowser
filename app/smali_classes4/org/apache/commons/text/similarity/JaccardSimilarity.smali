.class public Lorg/apache/commons/text/similarity/JaccardSimilarity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/similarity/SimilarityScore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/similarity/SimilarityScore<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lorg/apache/commons/text/similarity/JaccardSimilarity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/text/similarity/JaccardSimilarity;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/text/similarity/JaccardSimilarity;->c:Lorg/apache/commons/text/similarity/JaccardSimilarity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/commons/text/similarity/SimilarityInput;Lorg/apache/commons/text/similarity/SimilarityInput;)Ljava/lang/Double;
    .locals 8

    .line 1
    check-cast p1, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;

    .line 2
    .line 3
    iget-object v0, p1, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a:Ljava/lang/CharSequence;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    check-cast p2, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;

    .line 10
    .line 11
    iget-object v1, p2, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a:Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    if-eqz v0, :cond_4

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    move v6, v5

    .line 40
    :goto_0
    if-ge v6, v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1, v6}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 v6, v6, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    new-instance p1, Ljava/util/HashSet;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 55
    .line 56
    .line 57
    :goto_1
    if-ge v5, v1, :cond_3

    .line 58
    .line 59
    invoke-virtual {p2, v5}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    new-instance p2, Ljava/util/HashSet;

    .line 70
    .line 71
    invoke-direct {p2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    add-int/2addr p1, v0

    .line 86
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    sub-int/2addr p1, v0

    .line 91
    int-to-double v0, p1

    .line 92
    mul-double/2addr v0, v2

    .line 93
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    int-to-double p1, p1

    .line 98
    div-double/2addr v0, p1

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_4
    :goto_2
    const-wide/16 p1, 0x0

    .line 105
    .line 106
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    return-object p1
.end method

.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/CharSequence;

    .line 4
    .line 5
    new-instance v0, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;

    .line 11
    .line 12
    invoke-direct {p1, p2}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;-><init>(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/text/similarity/JaccardSimilarity;->a(Lorg/apache/commons/text/similarity/SimilarityInput;Lorg/apache/commons/text/similarity/SimilarityInput;)Ljava/lang/Double;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
