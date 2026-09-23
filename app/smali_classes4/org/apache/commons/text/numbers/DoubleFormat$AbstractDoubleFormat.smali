.class abstract Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/DoubleFunction;
.implements Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/numbers/DoubleFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractDoubleFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/DoubleFunction<",
        "Ljava/lang/String;",
        ">;",
        "Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    throw p1
.end method


# virtual methods
.method public abstract a(Lorg/apache/commons/text/numbers/ParsedDecimal;)Ljava/lang/String;
.end method

.method public final apply(D)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_16

    .line 6
    .line 7
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_16

    .line 12
    .line 13
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_15

    .line 18
    .line 19
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_15

    .line 24
    .line 25
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x0

    .line 34
    aget-char v0, p1, p2

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    const/16 v2, 0x2d

    .line 38
    .line 39
    if-ne v0, v2, :cond_0

    .line 40
    .line 41
    move v0, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v0, p2

    .line 44
    :goto_0
    array-length v3, p1

    .line 45
    sub-int/2addr v3, v0

    .line 46
    sub-int/2addr v3, v1

    .line 47
    new-array v3, v3, [I

    .line 48
    .line 49
    move v5, p2

    .line 50
    move v6, v5

    .line 51
    move v7, v6

    .line 52
    move v8, v7

    .line 53
    move v4, v0

    .line 54
    :goto_1
    array-length v9, p1

    .line 55
    const/16 v10, 0x30

    .line 56
    .line 57
    if-ge v4, v9, :cond_7

    .line 58
    .line 59
    aget-char v9, p1, v4

    .line 60
    .line 61
    const/16 v11, 0x2e

    .line 62
    .line 63
    if-ne v9, v11, :cond_1

    .line 64
    .line 65
    move v8, v1

    .line 66
    move v6, v5

    .line 67
    goto :goto_3

    .line 68
    :cond_1
    const/16 v11, 0x45

    .line 69
    .line 70
    if-ne v9, v11, :cond_2

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_2
    if-ne v9, v10, :cond_4

    .line 74
    .line 75
    if-lez v5, :cond_3

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    if-eqz v8, :cond_6

    .line 79
    .line 80
    add-int/lit8 v6, v6, -0x1

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, -0x30

    .line 84
    .line 85
    add-int/lit8 v10, v5, 0x1

    .line 86
    .line 87
    aput v9, v3, v5

    .line 88
    .line 89
    if-lez v9, :cond_5

    .line 90
    .line 91
    move v7, v10

    .line 92
    :cond_5
    move v5, v10

    .line 93
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_7
    :goto_4
    if-lez v5, :cond_d

    .line 97
    .line 98
    array-length v5, p1

    .line 99
    if-ge v4, v5, :cond_b

    .line 100
    .line 101
    add-int/lit8 v5, v4, 0x1

    .line 102
    .line 103
    aget-char v8, p1, v5

    .line 104
    .line 105
    if-ne v8, v2, :cond_8

    .line 106
    .line 107
    move v2, v1

    .line 108
    goto :goto_5

    .line 109
    :cond_8
    move v2, p2

    .line 110
    :goto_5
    if-eqz v2, :cond_9

    .line 111
    .line 112
    add-int/lit8 v5, v4, 0x2

    .line 113
    .line 114
    :cond_9
    move v4, p2

    .line 115
    :goto_6
    array-length v8, p1

    .line 116
    if-ge v5, v8, :cond_a

    .line 117
    .line 118
    mul-int/lit8 v4, v4, 0xa

    .line 119
    .line 120
    aget-char v8, p1, v5

    .line 121
    .line 122
    sub-int/2addr v8, v10

    .line 123
    add-int/2addr v4, v8

    .line 124
    add-int/lit8 v5, v5, 0x1

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_a
    if-eqz v2, :cond_c

    .line 128
    .line 129
    neg-int v4, v4

    .line 130
    goto :goto_7

    .line 131
    :cond_b
    move v4, p2

    .line 132
    :cond_c
    :goto_7
    add-int/2addr v4, v6

    .line 133
    sub-int/2addr v4, v7

    .line 134
    new-instance p1, Lorg/apache/commons/text/numbers/ParsedDecimal;

    .line 135
    .line 136
    invoke-direct {p1, v0, v3, v7, v4}, Lorg/apache/commons/text/numbers/ParsedDecimal;-><init>(Z[III)V

    .line 137
    .line 138
    .line 139
    goto :goto_8

    .line 140
    :cond_d
    new-instance p1, Lorg/apache/commons/text/numbers/ParsedDecimal;

    .line 141
    .line 142
    filled-new-array {p2}, [I

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-direct {p1, v0, v2, v1, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;-><init>(Z[III)V

    .line 147
    .line 148
    .line 149
    :goto_8
    iget v0, p1, Lorg/apache/commons/text/numbers/ParsedDecimal;->d:I

    .line 150
    .line 151
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    iget v2, p1, Lorg/apache/commons/text/numbers/ParsedDecimal;->d:I

    .line 156
    .line 157
    if-le v0, v2, :cond_14

    .line 158
    .line 159
    iget v3, p1, Lorg/apache/commons/text/numbers/ParsedDecimal;->c:I

    .line 160
    .line 161
    add-int/2addr v2, v3

    .line 162
    iget-object v4, p1, Lorg/apache/commons/text/numbers/ParsedDecimal;->b:[I

    .line 163
    .line 164
    if-ge v0, v2, :cond_12

    .line 165
    .line 166
    sub-int/2addr v2, v0

    .line 167
    if-lez v2, :cond_14

    .line 168
    .line 169
    if-ge v2, v3, :cond_14

    .line 170
    .line 171
    invoke-virtual {p1, v2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->d(I)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_11

    .line 176
    .line 177
    iget v0, p1, Lorg/apache/commons/text/numbers/ParsedDecimal;->c:I

    .line 178
    .line 179
    sub-int/2addr v0, v2

    .line 180
    sub-int/2addr v2, v1

    .line 181
    :goto_9
    if-ltz v2, :cond_f

    .line 182
    .line 183
    aget v3, v4, v2

    .line 184
    .line 185
    add-int/2addr v3, v1

    .line 186
    const/16 v5, 0xa

    .line 187
    .line 188
    if-ge v3, v5, :cond_e

    .line 189
    .line 190
    aput v3, v4, v2

    .line 191
    .line 192
    goto :goto_a

    .line 193
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 194
    .line 195
    add-int/lit8 v2, v2, -0x1

    .line 196
    .line 197
    goto :goto_9

    .line 198
    :cond_f
    :goto_a
    if-gez v2, :cond_10

    .line 199
    .line 200
    iget v2, p1, Lorg/apache/commons/text/numbers/ParsedDecimal;->d:I

    .line 201
    .line 202
    add-int/2addr v2, v0

    .line 203
    aput v1, v4, p2

    .line 204
    .line 205
    iput v1, p1, Lorg/apache/commons/text/numbers/ParsedDecimal;->c:I

    .line 206
    .line 207
    iput v2, p1, Lorg/apache/commons/text/numbers/ParsedDecimal;->d:I

    .line 208
    .line 209
    goto :goto_b

    .line 210
    :cond_10
    iget p2, p1, Lorg/apache/commons/text/numbers/ParsedDecimal;->c:I

    .line 211
    .line 212
    sub-int/2addr p2, v0

    .line 213
    invoke-virtual {p1, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->g(I)V

    .line 214
    .line 215
    .line 216
    goto :goto_b

    .line 217
    :cond_11
    invoke-virtual {p1, v2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->g(I)V

    .line 218
    .line 219
    .line 220
    goto :goto_b

    .line 221
    :cond_12
    if-ne v0, v2, :cond_13

    .line 222
    .line 223
    invoke-virtual {p1, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->d(I)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_13

    .line 228
    .line 229
    aput v1, v4, p2

    .line 230
    .line 231
    iput v1, p1, Lorg/apache/commons/text/numbers/ParsedDecimal;->c:I

    .line 232
    .line 233
    iput v0, p1, Lorg/apache/commons/text/numbers/ParsedDecimal;->d:I

    .line 234
    .line 235
    goto :goto_b

    .line 236
    :cond_13
    aput p2, v4, p2

    .line 237
    .line 238
    iput v1, p1, Lorg/apache/commons/text/numbers/ParsedDecimal;->c:I

    .line 239
    .line 240
    iput p2, p1, Lorg/apache/commons/text/numbers/ParsedDecimal;->d:I

    .line 241
    .line 242
    :cond_14
    :goto_b
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->a(Lorg/apache/commons/text/numbers/ParsedDecimal;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    return-object p1

    .line 247
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 248
    .line 249
    const-string p2, "Double is not finite"

    .line 250
    .line 251
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p1

    .line 255
    :cond_16
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_18

    .line 260
    .line 261
    const-wide/16 v0, 0x0

    .line 262
    .line 263
    cmpl-double p1, p1, v0

    .line 264
    .line 265
    if-lez p1, :cond_17

    .line 266
    .line 267
    goto :goto_c

    .line 268
    :cond_17
    const-string p1, "\u0000null"

    .line 269
    .line 270
    return-object p1

    .line 271
    :cond_18
    :goto_c
    const/4 p1, 0x0

    .line 272
    return-object p1
.end method
