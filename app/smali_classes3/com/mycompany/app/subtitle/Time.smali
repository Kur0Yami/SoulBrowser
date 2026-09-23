.class public Lcom/mycompany/app/subtitle/Time;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_e

    .line 5
    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    const v0, 0xea60

    .line 15
    .line 16
    .line 17
    const v1, 0x36ee80

    .line 18
    .line 19
    .line 20
    const-string v2, ":"

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    const/4 v4, 0x3

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x1

    .line 26
    if-ne p1, v6, :cond_2

    .line 27
    .line 28
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    array-length p2, p1

    .line 33
    if-eq p2, v4, :cond_1

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_1
    aget-object p2, p1, v5

    .line 38
    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    aget-object v2, p1, v6

    .line 44
    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    aget-object p1, p1, v3

    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    mul-int/2addr p2, v1

    .line 56
    mul-int/2addr v2, v0

    .line 57
    add-int/2addr v2, p2

    .line 58
    mul-int/lit16 p1, p1, 0x3e8

    .line 59
    .line 60
    add-int/2addr p1, v2

    .line 61
    iput p1, p0, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    const/4 v7, -0x1

    .line 65
    if-ne p1, v3, :cond_5

    .line 66
    .line 67
    const/16 p1, 0x2e

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eq p1, v7, :cond_e

    .line 74
    .line 75
    add-int/lit8 v7, p1, 0x1

    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-lt v7, v8, :cond_3

    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :cond_3
    invoke-virtual {p2, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    array-length v2, p1

    .line 98
    if-eq v2, v4, :cond_4

    .line 99
    .line 100
    goto/16 :goto_2

    .line 101
    .line 102
    :cond_4
    aget-object v2, p1, v5

    .line 103
    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    aget-object v4, p1, v6

    .line 109
    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    aget-object p1, p1, v3

    .line 115
    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    mul-int/2addr v2, v1

    .line 125
    mul-int/2addr v4, v0

    .line 126
    add-int/2addr v4, v2

    .line 127
    mul-int/lit16 p1, p1, 0x3e8

    .line 128
    .line 129
    add-int/2addr p1, v4

    .line 130
    mul-int/lit8 p2, p2, 0xa

    .line 131
    .line 132
    add-int/2addr p2, p1

    .line 133
    iput p2, p0, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 134
    .line 135
    return-void

    .line 136
    :cond_5
    if-eq p1, v4, :cond_a

    .line 137
    .line 138
    const/4 v8, 0x4

    .line 139
    if-ne p1, v8, :cond_6

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_6
    const/4 v9, 0x5

    .line 143
    if-ne p1, v9, :cond_9

    .line 144
    .line 145
    const/16 p1, 0x2f

    .line 146
    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-eq p1, v7, :cond_e

    .line 152
    .line 153
    add-int/lit8 v7, p1, 0x1

    .line 154
    .line 155
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-lt v7, v9, :cond_7

    .line 160
    .line 161
    goto/16 :goto_2

    .line 162
    .line 163
    :cond_7
    invoke-virtual {p2, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    array-length v2, p1

    .line 176
    if-eq v2, v8, :cond_8

    .line 177
    .line 178
    goto/16 :goto_2

    .line 179
    .line 180
    :cond_8
    aget-object v2, p1, v5

    .line 181
    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    aget-object v5, p1, v6

    .line 187
    .line 188
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    aget-object v3, p1, v3

    .line 193
    .line 194
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    aget-object p1, p1, v4

    .line 199
    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    mul-int/2addr v2, v1

    .line 209
    mul-int/2addr v5, v0

    .line 210
    add-int/2addr v5, v2

    .line 211
    mul-int/lit16 v3, v3, 0x3e8

    .line 212
    .line 213
    add-int/2addr v3, v5

    .line 214
    mul-int/lit16 p1, p1, 0x3e8

    .line 215
    .line 216
    int-to-float p1, p1

    .line 217
    div-float/2addr p1, p2

    .line 218
    float-to-int p1, p1

    .line 219
    add-int/2addr v3, p1

    .line 220
    iput v3, p0, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 221
    .line 222
    return-void

    .line 223
    :cond_9
    const/4 v0, 0x6

    .line 224
    if-ne p1, v0, :cond_e

    .line 225
    .line 226
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    mul-int/lit8 p1, p1, 0x28

    .line 231
    .line 232
    iput p1, p0, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 233
    .line 234
    return-void

    .line 235
    :cond_a
    :goto_0
    if-ne p1, v4, :cond_b

    .line 236
    .line 237
    const-string p1, ","

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_b
    const-string p1, "."

    .line 241
    .line 242
    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    if-eq p1, v7, :cond_e

    .line 247
    .line 248
    add-int/lit8 v7, p1, 0x1

    .line 249
    .line 250
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    if-lt v7, v8, :cond_c

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_c
    invoke-virtual {p2, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    array-length v2, p1

    .line 270
    if-eq v2, v4, :cond_d

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_d
    aget-object v2, p1, v5

    .line 274
    .line 275
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    aget-object v4, p1, v6

    .line 280
    .line 281
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    aget-object p1, p1, v3

    .line 286
    .line 287
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    move-result p2

    .line 295
    mul-int/2addr v2, v1

    .line 296
    mul-int/2addr v4, v0

    .line 297
    add-int/2addr v4, v2

    .line 298
    mul-int/lit16 p1, p1, 0x3e8

    .line 299
    .line 300
    add-int/2addr p1, v4

    .line 301
    add-int/2addr p1, p2

    .line 302
    iput p1, p0, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 303
    .line 304
    :cond_e
    :goto_2
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 7
    .line 8
    const v2, 0x36ee80

    .line 9
    .line 10
    .line 11
    div-int/2addr v1, v2

    .line 12
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/16 v3, 0x30

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    if-ne v2, v4, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x3a

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v2, p0, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 37
    .line 38
    const v5, 0xea60

    .line 39
    .line 40
    .line 41
    div-int/2addr v2, v5

    .line 42
    rem-int/lit8 v2, v2, 0x3c

    .line 43
    .line 44
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-ne v5, v4, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget v1, p0, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 64
    .line 65
    div-int/lit16 v1, v1, 0x3e8

    .line 66
    .line 67
    rem-int/lit8 v1, v1, 0x3c

    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-ne v2, v4, :cond_2

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const/16 v1, 0x2e

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget v1, p0, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 91
    .line 92
    div-int/lit8 v1, v1, 0xa

    .line 93
    .line 94
    rem-int/lit8 v1, v1, 0x64

    .line 95
    .line 96
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-ne v2, v4, :cond_3

    .line 105
    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0
.end method
