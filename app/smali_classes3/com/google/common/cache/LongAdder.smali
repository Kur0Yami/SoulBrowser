.class final Lcom/google/common/cache/LongAdder;
.super Lcom/google/common/cache/Striped64;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/common/cache/LongAddable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final add(J)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/Striped64;->c:[Lcom/google/common/cache/Striped64$Cell;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/google/common/cache/Striped64;->f:J

    .line 6
    .line 7
    add-long v3, v1, p1

    .line 8
    .line 9
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->b(JJ)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_12

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/google/common/cache/Striped64;->h:Ljava/lang/ThreadLocal;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, [I

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    array-length v5, v0

    .line 30
    if-lt v5, v4, :cond_1

    .line 31
    .line 32
    sub-int/2addr v5, v4

    .line 33
    aget v6, v2, v3

    .line 34
    .line 35
    and-int/2addr v5, v6

    .line 36
    aget-object v0, v0, v5

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-wide v5, v0, Lcom/google/common/cache/Striped64$Cell;->a:J

    .line 41
    .line 42
    add-long v7, v5, p1

    .line 43
    .line 44
    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/google/common/cache/Striped64$Cell;->a(JJ)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_12

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v0, v4

    .line 52
    :goto_0
    if-nez v2, :cond_3

    .line 53
    .line 54
    new-array v2, v4, [I

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object v1, Lcom/google/common/cache/Striped64;->i:Ljava/util/Random;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    move v1, v4

    .line 68
    :cond_2
    aput v1, v2, v3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    aget v1, v2, v3

    .line 72
    .line 73
    :goto_1
    move v5, v3

    .line 74
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/google/common/cache/Striped64;->c:[Lcom/google/common/cache/Striped64$Cell;

    .line 75
    .line 76
    if-eqz v6, :cond_f

    .line 77
    .line 78
    array-length v7, v6

    .line 79
    if-lez v7, :cond_f

    .line 80
    .line 81
    add-int/lit8 v8, v7, -0x1

    .line 82
    .line 83
    and-int/2addr v8, v1

    .line 84
    aget-object v8, v6, v8

    .line 85
    .line 86
    if-nez v8, :cond_7

    .line 87
    .line 88
    iget v6, p0, Lcom/google/common/cache/Striped64;->g:I

    .line 89
    .line 90
    if-nez v6, :cond_6

    .line 91
    .line 92
    new-instance v6, Lcom/google/common/cache/Striped64$Cell;

    .line 93
    .line 94
    invoke-direct {v6, p1, p2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    .line 95
    .line 96
    .line 97
    iget v7, p0, Lcom/google/common/cache/Striped64;->g:I

    .line 98
    .line 99
    if-nez v7, :cond_6

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->c()Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eqz v7, :cond_6

    .line 106
    .line 107
    :try_start_0
    iget-object v7, p0, Lcom/google/common/cache/Striped64;->c:[Lcom/google/common/cache/Striped64$Cell;

    .line 108
    .line 109
    if-eqz v7, :cond_5

    .line 110
    .line 111
    array-length v8, v7

    .line 112
    if-lez v8, :cond_5

    .line 113
    .line 114
    add-int/lit8 v8, v8, -0x1

    .line 115
    .line 116
    and-int/2addr v8, v1

    .line 117
    aget-object v9, v7, v8

    .line 118
    .line 119
    if-nez v9, :cond_5

    .line 120
    .line 121
    aput-object v6, v7, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .line 123
    move v6, v4

    .line 124
    goto :goto_3

    .line 125
    :catchall_0
    move-exception p1

    .line 126
    goto :goto_4

    .line 127
    :cond_5
    move v6, v3

    .line 128
    :goto_3
    iput v3, p0, Lcom/google/common/cache/Striped64;->g:I

    .line 129
    .line 130
    if-eqz v6, :cond_4

    .line 131
    .line 132
    goto/16 :goto_b

    .line 133
    .line 134
    :goto_4
    iput v3, p0, Lcom/google/common/cache/Striped64;->g:I

    .line 135
    .line 136
    throw p1

    .line 137
    :cond_6
    :goto_5
    move v5, v3

    .line 138
    goto :goto_8

    .line 139
    :cond_7
    if-nez v0, :cond_8

    .line 140
    .line 141
    move v0, v4

    .line 142
    goto :goto_8

    .line 143
    :cond_8
    iget-wide v9, v8, Lcom/google/common/cache/Striped64$Cell;->a:J

    .line 144
    .line 145
    add-long v11, v9, p1

    .line 146
    .line 147
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/common/cache/Striped64$Cell;->a(JJ)Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-eqz v8, :cond_9

    .line 152
    .line 153
    goto/16 :goto_b

    .line 154
    .line 155
    :cond_9
    sget v8, Lcom/google/common/cache/Striped64;->j:I

    .line 156
    .line 157
    if-ge v7, v8, :cond_6

    .line 158
    .line 159
    iget-object v8, p0, Lcom/google/common/cache/Striped64;->c:[Lcom/google/common/cache/Striped64$Cell;

    .line 160
    .line 161
    if-eq v8, v6, :cond_a

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_a
    if-nez v5, :cond_b

    .line 165
    .line 166
    move v5, v4

    .line 167
    goto :goto_8

    .line 168
    :cond_b
    iget v8, p0, Lcom/google/common/cache/Striped64;->g:I

    .line 169
    .line 170
    if-nez v8, :cond_e

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->c()Z

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-eqz v8, :cond_e

    .line 177
    .line 178
    :try_start_1
    iget-object v5, p0, Lcom/google/common/cache/Striped64;->c:[Lcom/google/common/cache/Striped64$Cell;

    .line 179
    .line 180
    if-ne v5, v6, :cond_d

    .line 181
    .line 182
    shl-int/lit8 v5, v7, 0x1

    .line 183
    .line 184
    new-array v5, v5, [Lcom/google/common/cache/Striped64$Cell;

    .line 185
    .line 186
    move v8, v3

    .line 187
    :goto_6
    if-ge v8, v7, :cond_c

    .line 188
    .line 189
    aget-object v9, v6, v8

    .line 190
    .line 191
    aput-object v9, v5, v8

    .line 192
    .line 193
    add-int/lit8 v8, v8, 0x1

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :catchall_1
    move-exception p1

    .line 197
    goto :goto_7

    .line 198
    :cond_c
    iput-object v5, p0, Lcom/google/common/cache/Striped64;->c:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    .line 200
    :cond_d
    iput v3, p0, Lcom/google/common/cache/Striped64;->g:I

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :goto_7
    iput v3, p0, Lcom/google/common/cache/Striped64;->g:I

    .line 205
    .line 206
    throw p1

    .line 207
    :cond_e
    :goto_8
    shl-int/lit8 v6, v1, 0xd

    .line 208
    .line 209
    xor-int/2addr v1, v6

    .line 210
    ushr-int/lit8 v6, v1, 0x11

    .line 211
    .line 212
    xor-int/2addr v1, v6

    .line 213
    shl-int/lit8 v6, v1, 0x5

    .line 214
    .line 215
    xor-int/2addr v1, v6

    .line 216
    aput v1, v2, v3

    .line 217
    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :cond_f
    iget v7, p0, Lcom/google/common/cache/Striped64;->g:I

    .line 221
    .line 222
    if-nez v7, :cond_11

    .line 223
    .line 224
    iget-object v7, p0, Lcom/google/common/cache/Striped64;->c:[Lcom/google/common/cache/Striped64$Cell;

    .line 225
    .line 226
    if-ne v7, v6, :cond_11

    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->c()Z

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    if-eqz v7, :cond_11

    .line 233
    .line 234
    :try_start_2
    iget-object v7, p0, Lcom/google/common/cache/Striped64;->c:[Lcom/google/common/cache/Striped64$Cell;

    .line 235
    .line 236
    if-ne v7, v6, :cond_10

    .line 237
    .line 238
    const/4 v6, 0x2

    .line 239
    new-array v6, v6, [Lcom/google/common/cache/Striped64$Cell;

    .line 240
    .line 241
    and-int/lit8 v7, v1, 0x1

    .line 242
    .line 243
    new-instance v8, Lcom/google/common/cache/Striped64$Cell;

    .line 244
    .line 245
    invoke-direct {v8, p1, p2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    .line 246
    .line 247
    .line 248
    aput-object v8, v6, v7

    .line 249
    .line 250
    iput-object v6, p0, Lcom/google/common/cache/Striped64;->c:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 251
    .line 252
    move v6, v4

    .line 253
    goto :goto_9

    .line 254
    :catchall_2
    move-exception p1

    .line 255
    goto :goto_a

    .line 256
    :cond_10
    move v6, v3

    .line 257
    :goto_9
    iput v3, p0, Lcom/google/common/cache/Striped64;->g:I

    .line 258
    .line 259
    if-eqz v6, :cond_4

    .line 260
    .line 261
    goto :goto_b

    .line 262
    :goto_a
    iput v3, p0, Lcom/google/common/cache/Striped64;->g:I

    .line 263
    .line 264
    throw p1

    .line 265
    :cond_11
    iget-wide v6, p0, Lcom/google/common/cache/Striped64;->f:J

    .line 266
    .line 267
    add-long v8, v6, p1

    .line 268
    .line 269
    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/google/common/cache/Striped64;->b(JJ)Z

    .line 270
    .line 271
    .line 272
    move-result v6

    .line 273
    if-eqz v6, :cond_4

    .line 274
    .line 275
    :cond_12
    :goto_b
    return-void
.end method

.method public final doubleValue()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->e()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-double v0, v0

    .line 6
    return-wide v0
.end method

.method public final e()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/Striped64;->f:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/google/common/cache/Striped64;->c:[Lcom/google/common/cache/Striped64$Cell;

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    const/4 v4, 0x0

    .line 9
    :goto_0
    if-ge v4, v3, :cond_1

    .line 10
    .line 11
    aget-object v5, v2, v4

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    iget-wide v5, v5, Lcom/google/common/cache/Striped64$Cell;->a:J

    .line 16
    .line 17
    add-long/2addr v0, v5

    .line 18
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-wide v0
.end method

.method public final floatValue()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->e()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-float v0, v0

    .line 6
    return v0
.end method

.method public final intValue()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->e()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-int v0, v0

    .line 6
    return v0
.end method

.method public final longValue()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->e()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->e()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
