.class public Lcom/mycompany/app/main/InitialSearch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/mycompany/app/main/InitialSearch;->a:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x3131s
        0x3132s
        0x3134s
        0x3137s
        0x3138s
        0x3139s
        0x3141s
        0x3142s
        0x3143s
        0x3145s
        0x3146s
        0x3147s
        0x3148s
        0x3149s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
    .end array-data
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    :cond_0
    move-object/from16 v17, v3

    .line 15
    .line 16
    goto/16 :goto_8

    .line 17
    .line 18
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    sub-int/2addr v5, v4

    .line 27
    if-gez v5, :cond_2

    .line 28
    .line 29
    return-object v3

    .line 30
    :cond_2
    const/4 v6, 0x0

    .line 31
    move-object v8, v3

    .line 32
    move v7, v6

    .line 33
    :goto_0
    if-gt v7, v5, :cond_d

    .line 34
    .line 35
    move v9, v6

    .line 36
    :goto_1
    if-ge v9, v4, :cond_a

    .line 37
    .line 38
    add-int v10, v9, v7

    .line 39
    .line 40
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v11

    .line 44
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v12

    .line 48
    const v13, 0xac00

    .line 49
    .line 50
    .line 51
    if-gt v13, v11, :cond_8

    .line 52
    .line 53
    const v14, 0xd7a3

    .line 54
    .line 55
    .line 56
    if-gt v11, v14, :cond_8

    .line 57
    .line 58
    move v14, v6

    .line 59
    :goto_2
    const/16 v15, 0x13

    .line 60
    .line 61
    if-ge v14, v15, :cond_8

    .line 62
    .line 63
    sget-object v16, Lcom/mycompany/app/main/InitialSearch;->a:[C

    .line 64
    .line 65
    move-object/from16 v17, v3

    .line 66
    .line 67
    aget-char v3, v16, v14

    .line 68
    .line 69
    if-ne v3, v12, :cond_7

    .line 70
    .line 71
    sub-int/2addr v11, v13

    .line 72
    div-int/lit16 v11, v11, 0x24c

    .line 73
    .line 74
    if-ltz v11, :cond_4

    .line 75
    .line 76
    if-lt v11, v15, :cond_3

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    aget-char v3, v16, v11

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_4
    :goto_3
    move v3, v6

    .line 83
    :goto_4
    if-ne v3, v12, :cond_6

    .line 84
    .line 85
    if-nez v8, :cond_5

    .line 86
    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    :cond_5
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_6
    move-object/from16 v8, v17

    .line 103
    .line 104
    goto :goto_7

    .line 105
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 106
    .line 107
    move-object/from16 v3, v17

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_8
    move-object/from16 v17, v3

    .line 111
    .line 112
    if-ne v11, v12, :cond_6

    .line 113
    .line 114
    if-nez v8, :cond_9

    .line 115
    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    :cond_9
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    goto :goto_5

    .line 129
    :goto_6
    move-object/from16 v3, v17

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_a
    move-object/from16 v17, v3

    .line 133
    .line 134
    :goto_7
    if-ne v9, v4, :cond_c

    .line 135
    .line 136
    if-nez v8, :cond_b

    .line 137
    .line 138
    return-object v17

    .line 139
    :cond_b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    return-object v0

    .line 144
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 145
    .line 146
    move-object/from16 v3, v17

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_d
    move-object/from16 v17, v3

    .line 150
    .line 151
    :goto_8
    return-object v17
.end method
