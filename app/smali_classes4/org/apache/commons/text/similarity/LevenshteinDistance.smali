.class public Lorg/apache/commons/text/similarity/LevenshteinDistance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/similarity/EditDistance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/similarity/EditDistance<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Ljava/lang/CharSequence;

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    check-cast v1, Ljava/lang/CharSequence;

    .line 8
    .line 9
    new-instance v2, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;

    .line 15
    .line 16
    invoke-direct {v3, v1}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;-><init>(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    move v4, v1

    .line 30
    goto :goto_4

    .line 31
    :cond_0
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto :goto_4

    .line 34
    :cond_1
    if-le v4, v1, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    move v4, v1

    .line 41
    move v1, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move-object v15, v3

    .line 44
    move-object v3, v2

    .line 45
    move-object v2, v15

    .line 46
    :goto_0
    add-int/lit8 v0, v4, 0x1

    .line 47
    .line 48
    new-array v0, v0, [I

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    move v6, v5

    .line 52
    :goto_1
    if-gt v6, v4, :cond_3

    .line 53
    .line 54
    aput v6, v0, v6

    .line 55
    .line 56
    add-int/lit8 v6, v6, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const/4 v6, 0x1

    .line 60
    move v7, v6

    .line 61
    :goto_2
    if-gt v7, v1, :cond_5

    .line 62
    .line 63
    aget v8, v0, v5

    .line 64
    .line 65
    add-int/lit8 v9, v7, -0x1

    .line 66
    .line 67
    invoke-virtual {v2, v9}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    aput v7, v0, v5

    .line 72
    .line 73
    move v10, v6

    .line 74
    :goto_3
    if-gt v10, v4, :cond_4

    .line 75
    .line 76
    aget v11, v0, v10

    .line 77
    .line 78
    add-int/lit8 v12, v10, -0x1

    .line 79
    .line 80
    invoke-virtual {v3, v12}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 81
    .line 82
    .line 83
    move-result-object v13

    .line 84
    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v13

    .line 88
    xor-int/2addr v13, v6

    .line 89
    aget v12, v0, v12

    .line 90
    .line 91
    add-int/2addr v12, v6

    .line 92
    aget v14, v0, v10

    .line 93
    .line 94
    add-int/2addr v14, v6

    .line 95
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    add-int/2addr v8, v13

    .line 100
    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    aput v8, v0, v10

    .line 105
    .line 106
    add-int/lit8 v10, v10, 0x1

    .line 107
    .line 108
    move v8, v11

    .line 109
    goto :goto_3

    .line 110
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_5
    aget v4, v0, v4

    .line 114
    .line 115
    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    return-object v0
.end method
