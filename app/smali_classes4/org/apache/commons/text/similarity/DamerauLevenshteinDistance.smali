.class public Lorg/apache/commons/text/similarity/DamerauLevenshteinDistance;
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
    .locals 17

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
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_0
    if-nez v1, :cond_1

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_1
    if-le v1, v4, :cond_2

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    move-object v4, v3

    .line 43
    move-object v3, v2

    .line 44
    move-object v2, v4

    .line 45
    move v4, v1

    .line 46
    move v1, v0

    .line 47
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 48
    .line 49
    new-array v5, v0, [I

    .line 50
    .line 51
    new-array v6, v0, [I

    .line 52
    .line 53
    new-array v0, v0, [I

    .line 54
    .line 55
    const/4 v7, 0x0

    .line 56
    move v8, v7

    .line 57
    :goto_0
    if-gt v8, v1, :cond_3

    .line 58
    .line 59
    aput v8, v6, v8

    .line 60
    .line 61
    add-int/lit8 v8, v8, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 v8, 0x1

    .line 65
    move v9, v8

    .line 66
    :goto_1
    if-gt v9, v4, :cond_7

    .line 67
    .line 68
    aput v9, v5, v7

    .line 69
    .line 70
    move v10, v8

    .line 71
    :goto_2
    if-gt v10, v1, :cond_6

    .line 72
    .line 73
    add-int/lit8 v11, v9, -0x1

    .line 74
    .line 75
    invoke-virtual {v2, v11}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    add-int/lit8 v13, v10, -0x1

    .line 80
    .line 81
    invoke-virtual {v3, v13}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 82
    .line 83
    .line 84
    move-result-object v14

    .line 85
    if-ne v12, v14, :cond_4

    .line 86
    .line 87
    move v12, v7

    .line 88
    goto :goto_3

    .line 89
    :cond_4
    move v12, v8

    .line 90
    :goto_3
    aget v14, v6, v10

    .line 91
    .line 92
    add-int/2addr v14, v8

    .line 93
    aget v15, v5, v13

    .line 94
    .line 95
    add-int/2addr v15, v8

    .line 96
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    .line 97
    .line 98
    .line 99
    move-result v14

    .line 100
    aget v15, v6, v13

    .line 101
    .line 102
    add-int/2addr v15, v12

    .line 103
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    .line 104
    .line 105
    .line 106
    move-result v14

    .line 107
    aput v14, v5, v10

    .line 108
    .line 109
    if-le v9, v8, :cond_5

    .line 110
    .line 111
    if-le v10, v8, :cond_5

    .line 112
    .line 113
    invoke-virtual {v2, v11}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    add-int/lit8 v14, v10, -0x2

    .line 118
    .line 119
    invoke-virtual {v3, v14}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 120
    .line 121
    .line 122
    move-result-object v15

    .line 123
    if-ne v11, v15, :cond_5

    .line 124
    .line 125
    add-int/lit8 v11, v9, -0x2

    .line 126
    .line 127
    invoke-virtual {v2, v11}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    invoke-virtual {v3, v13}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    if-ne v11, v13, :cond_5

    .line 136
    .line 137
    aget v11, v5, v10

    .line 138
    .line 139
    aget v13, v0, v14

    .line 140
    .line 141
    add-int/2addr v13, v12

    .line 142
    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    aput v11, v5, v10

    .line 147
    .line 148
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 152
    .line 153
    move-object/from16 v16, v5

    .line 154
    .line 155
    move-object v5, v0

    .line 156
    move-object v0, v6

    .line 157
    move-object/from16 v6, v16

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_7
    aget v4, v6, v1

    .line 161
    .line 162
    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    return-object v0
.end method
