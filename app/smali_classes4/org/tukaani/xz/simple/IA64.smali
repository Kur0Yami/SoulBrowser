.class public final Lorg/tukaani/xz/simple/IA64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# static fields
.field public static final b:[I


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/tukaani/xz/simple/IA64;->b:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x6
        0x6
        0x0
        0x0
        0x7
        0x7
        0x4
        0x4
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final a([BII)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    add-int v1, p2, p3

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    move/from16 v3, p2

    .line 9
    .line 10
    :goto_0
    if-gt v3, v1, :cond_5

    .line 11
    .line 12
    aget-byte v4, p1, v3

    .line 13
    .line 14
    and-int/lit8 v4, v4, 0x1f

    .line 15
    .line 16
    sget-object v5, Lorg/tukaani/xz/simple/IA64;->b:[I

    .line 17
    .line 18
    aget v4, v5, v4

    .line 19
    .line 20
    const/4 v6, 0x5

    .line 21
    const/4 v7, 0x0

    .line 22
    :goto_1
    const/4 v8, 0x3

    .line 23
    if-ge v7, v8, :cond_4

    .line 24
    .line 25
    ushr-int v8, v4, v7

    .line 26
    .line 27
    const/4 v9, 0x1

    .line 28
    and-int/2addr v8, v9

    .line 29
    if-nez v8, :cond_0

    .line 30
    .line 31
    move/from16 p3, v2

    .line 32
    .line 33
    move/from16 v16, v6

    .line 34
    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_0
    ushr-int/lit8 v8, v6, 0x3

    .line 38
    .line 39
    and-int/lit8 v10, v6, 0x7

    .line 40
    .line 41
    const-wide/16 v11, 0x0

    .line 42
    .line 43
    move/from16 p3, v2

    .line 44
    .line 45
    move-wide v14, v11

    .line 46
    const/4 v13, 0x0

    .line 47
    :goto_2
    const/4 v2, 0x6

    .line 48
    if-ge v13, v2, :cond_1

    .line 49
    .line 50
    add-int v2, v3, v8

    .line 51
    .line 52
    add-int/2addr v2, v13

    .line 53
    aget-byte v2, p1, v2

    .line 54
    .line 55
    move/from16 v16, v6

    .line 56
    .line 57
    int-to-long v5, v2

    .line 58
    const-wide/16 v17, 0xff

    .line 59
    .line 60
    and-long v5, v5, v17

    .line 61
    .line 62
    mul-int/lit8 v2, v13, 0x8

    .line 63
    .line 64
    shl-long/2addr v5, v2

    .line 65
    or-long/2addr v14, v5

    .line 66
    add-int/lit8 v13, v13, 0x1

    .line 67
    .line 68
    move/from16 v6, v16

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    move/from16 v16, v6

    .line 72
    .line 73
    ushr-long v5, v14, v10

    .line 74
    .line 75
    const/16 v13, 0x25

    .line 76
    .line 77
    ushr-long v17, v5, v13

    .line 78
    .line 79
    const-wide/16 v19, 0xf

    .line 80
    .line 81
    and-long v17, v17, v19

    .line 82
    .line 83
    const-wide/16 v19, 0x5

    .line 84
    .line 85
    cmp-long v13, v17, v19

    .line 86
    .line 87
    if-nez v13, :cond_3

    .line 88
    .line 89
    const/16 v13, 0x9

    .line 90
    .line 91
    ushr-long v17, v5, v13

    .line 92
    .line 93
    const-wide/16 v19, 0x7

    .line 94
    .line 95
    and-long v17, v17, v19

    .line 96
    .line 97
    cmp-long v11, v17, v11

    .line 98
    .line 99
    if-eqz v11, :cond_2

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_2
    const/16 v11, 0xd

    .line 103
    .line 104
    ushr-long v12, v5, v11

    .line 105
    .line 106
    const-wide/32 v17, 0xfffff

    .line 107
    .line 108
    .line 109
    and-long v12, v12, v17

    .line 110
    .line 111
    long-to-int v12, v12

    .line 112
    const/16 v13, 0x24

    .line 113
    .line 114
    move/from16 v19, v9

    .line 115
    .line 116
    move/from16 v20, v10

    .line 117
    .line 118
    ushr-long v9, v5, v13

    .line 119
    .line 120
    long-to-int v9, v9

    .line 121
    and-int/lit8 v9, v9, 0x1

    .line 122
    .line 123
    shl-int/lit8 v9, v9, 0x14

    .line 124
    .line 125
    or-int/2addr v9, v12

    .line 126
    shl-int/lit8 v9, v9, 0x4

    .line 127
    .line 128
    iget v10, v0, Lorg/tukaani/xz/simple/IA64;->a:I

    .line 129
    .line 130
    add-int/2addr v10, v3

    .line 131
    sub-int v10, v10, p2

    .line 132
    .line 133
    sub-int/2addr v9, v10

    .line 134
    ushr-int/lit8 v9, v9, 0x4

    .line 135
    .line 136
    const-wide v12, -0x11ffffe001L

    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    and-long/2addr v5, v12

    .line 142
    int-to-long v9, v9

    .line 143
    and-long v12, v9, v17

    .line 144
    .line 145
    shl-long v11, v12, v11

    .line 146
    .line 147
    or-long/2addr v5, v11

    .line 148
    const-wide/32 v11, 0x100000

    .line 149
    .line 150
    .line 151
    and-long/2addr v9, v11

    .line 152
    shl-long v9, v9, p3

    .line 153
    .line 154
    or-long/2addr v5, v9

    .line 155
    shl-int v9, v19, v20

    .line 156
    .line 157
    add-int/lit8 v9, v9, -0x1

    .line 158
    .line 159
    int-to-long v9, v9

    .line 160
    and-long/2addr v9, v14

    .line 161
    shl-long v5, v5, v20

    .line 162
    .line 163
    or-long/2addr v5, v9

    .line 164
    const/4 v9, 0x0

    .line 165
    :goto_3
    if-ge v9, v2, :cond_3

    .line 166
    .line 167
    add-int v10, v3, v8

    .line 168
    .line 169
    add-int/2addr v10, v9

    .line 170
    mul-int/lit8 v11, v9, 0x8

    .line 171
    .line 172
    ushr-long v11, v5, v11

    .line 173
    .line 174
    long-to-int v11, v11

    .line 175
    int-to-byte v11, v11

    .line 176
    aput-byte v11, p1, v10

    .line 177
    .line 178
    add-int/lit8 v9, v9, 0x1

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_3
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 182
    .line 183
    add-int/lit8 v6, v16, 0x29

    .line 184
    .line 185
    move/from16 v2, p3

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :cond_4
    move/from16 p3, v2

    .line 190
    .line 191
    add-int/lit8 v3, v3, 0x10

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_5
    sub-int v3, v3, p2

    .line 196
    .line 197
    iget v1, v0, Lorg/tukaani/xz/simple/IA64;->a:I

    .line 198
    .line 199
    add-int/2addr v1, v3

    .line 200
    iput v1, v0, Lorg/tukaani/xz/simple/IA64;->a:I

    .line 201
    .line 202
    return v3
.end method
