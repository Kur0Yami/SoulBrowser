.class public Lcom/mycompany/app/down/DownParseList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/down/DownParseList$SortM3u8;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    const-string v0, "x"

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-gt v2, v3, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    :goto_0
    return v0

    .line 47
    :cond_2
    const-string p1, " ("

    .line 48
    .line 49
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, ")"

    .line 54
    .line 55
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    add-int/2addr p0, v0

    .line 68
    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    add-int/2addr p1, v0

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lt p1, v0, :cond_2

    .line 26
    .line 27
    :goto_0
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_2
    const/16 v0, 0x2c

    .line 30
    .line 31
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-le v0, p1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-gt v0, v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :goto_1
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->X6(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/down/DownParseList;->d:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mycompany/app/down/DownParseList;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-object p1, v1

    .line 11
    :goto_0
    if-eqz p1, :cond_2b

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_c

    .line 20
    .line 21
    :cond_0
    iget-boolean p2, p0, Lcom/mycompany/app/down/DownParseList;->a:Z

    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    goto/16 :goto_c

    .line 26
    .line 27
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const-string p3, "/"

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    :catch_1
    move-object v3, v1

    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    move v6, v0

    .line 44
    move-object v3, v1

    .line 45
    move-object v4, v3

    .line 46
    move-object v5, v4

    .line 47
    :goto_1
    if-ge v6, p2, :cond_12

    .line 48
    .line 49
    :try_start_2
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    add-int/lit8 v6, v6, 0x1

    .line 54
    .line 55
    check-cast v7, Ljava/lang/String;

    .line 56
    .line 57
    iget-boolean v8, p0, Lcom/mycompany/app/down/DownParseList;->a:Z

    .line 58
    .line 59
    if-nez v8, :cond_3

    .line 60
    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_4

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const-string v8, "#"

    .line 71
    .line 72
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-eqz v8, :cond_5

    .line 77
    .line 78
    move-object v4, v7

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_6

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_6
    const-string v8, "#EXT-X-STREAM-INF"

    .line 88
    .line 89
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-nez v8, :cond_7

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_7
    const-string v8, "RESOLUTION="

    .line 97
    .line 98
    invoke-static {v4, v8}, Lcom/mycompany/app/down/DownParseList;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-eqz v9, :cond_8

    .line 107
    .line 108
    const-string v8, "QUALITY="

    .line 109
    .line 110
    invoke-static {v4, v8}, Lcom/mycompany/app/down/DownParseList;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    if-eqz v9, :cond_8

    .line 119
    .line 120
    const-string v8, "BANDWIDTH="

    .line 121
    .line 122
    invoke-static {v4, v8}, Lcom/mycompany/app/down/DownParseList;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-eqz v9, :cond_8

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_8
    invoke-virtual {v7, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-eqz v9, :cond_9

    .line 138
    .line 139
    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-eqz v9, :cond_9

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_9
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-eqz v9, :cond_a

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_a
    if-eqz v3, :cond_e

    .line 158
    .line 159
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    if-eqz v9, :cond_b

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    move v10, v0

    .line 171
    :cond_c
    :goto_2
    if-ge v10, v9, :cond_e

    .line 172
    .line 173
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    add-int/lit8 v10, v10, 0x1

    .line 178
    .line 179
    check-cast v11, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 180
    .line 181
    if-nez v11, :cond_d

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_d
    iget-object v11, v11, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    if-eqz v11, :cond_c

    .line 191
    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :cond_e
    :goto_3
    invoke-static {v5, v8}, Lcom/mycompany/app/main/MainUtil;->S2(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 199
    .line 200
    .line 201
    move-result v10

    .line 202
    if-eqz v10, :cond_f

    .line 203
    .line 204
    move-object v9, v8

    .line 205
    :cond_f
    if-nez v5, :cond_10

    .line 206
    .line 207
    new-instance v5, Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .line 211
    .line 212
    :cond_10
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    new-instance v10, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 216
    .line 217
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 218
    .line 219
    .line 220
    iput-object v7, v10, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 221
    .line 222
    iput-object v9, v10, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->d:Ljava/lang/String;

    .line 223
    .line 224
    invoke-static {v8, v9}, Lcom/mycompany/app/down/DownParseList;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    iput v7, v10, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->e:I

    .line 229
    .line 230
    const-string v7, "AUDIO="

    .line 231
    .line 232
    invoke-static {v4, v7}, Lcom/mycompany/app/down/DownParseList;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    iput-object v7, v10, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->f:Ljava/lang/String;

    .line 237
    .line 238
    if-nez v3, :cond_11

    .line 239
    .line 240
    new-instance v7, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .line 244
    .line 245
    move-object v3, v7

    .line 246
    :cond_11
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 247
    .line 248
    .line 249
    goto/16 :goto_1

    .line 250
    .line 251
    :catch_2
    :cond_12
    :goto_4
    if-eqz v3, :cond_2b

    .line 252
    .line 253
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 254
    .line 255
    .line 256
    move-result p2

    .line 257
    if-eqz p2, :cond_13

    .line 258
    .line 259
    goto/16 :goto_c

    .line 260
    .line 261
    :cond_13
    new-instance p2, Lcom/mycompany/app/down/DownParseList$SortM3u8;

    .line 262
    .line 263
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 264
    .line 265
    .line 266
    :try_start_3
    invoke-static {v3, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 267
    .line 268
    .line 269
    :catch_3
    iget-boolean p2, p0, Lcom/mycompany/app/down/DownParseList;->a:Z

    .line 270
    .line 271
    if-nez p2, :cond_14

    .line 272
    .line 273
    goto/16 :goto_c

    .line 274
    .line 275
    :cond_14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 276
    .line 277
    .line 278
    move-result p2

    .line 279
    if-eqz p2, :cond_15

    .line 280
    .line 281
    :catch_4
    move-object v4, v1

    .line 282
    goto/16 :goto_8

    .line 283
    .line 284
    :cond_15
    :try_start_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 285
    .line 286
    .line 287
    move-result p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 288
    move v5, v0

    .line 289
    move-object v4, v1

    .line 290
    :goto_5
    if-ge v5, p2, :cond_22

    .line 291
    .line 292
    :try_start_5
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    add-int/lit8 v5, v5, 0x1

    .line 297
    .line 298
    check-cast v6, Ljava/lang/String;

    .line 299
    .line 300
    iget-boolean v7, p0, Lcom/mycompany/app/down/DownParseList;->a:Z

    .line 301
    .line 302
    if-nez v7, :cond_16

    .line 303
    .line 304
    goto/16 :goto_8

    .line 305
    .line 306
    :cond_16
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    if-eqz v7, :cond_17

    .line 311
    .line 312
    goto :goto_5

    .line 313
    :cond_17
    const-string v7, "#EXT-X-MEDIA"

    .line 314
    .line 315
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 316
    .line 317
    .line 318
    move-result v7

    .line 319
    if-nez v7, :cond_18

    .line 320
    .line 321
    goto :goto_5

    .line 322
    :cond_18
    const-string v7, "TYPE=AUDIO"

    .line 323
    .line 324
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    if-nez v7, :cond_19

    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_19
    const-string v7, "URI="

    .line 332
    .line 333
    invoke-static {v6, v7}, Lcom/mycompany/app/down/DownParseList;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 338
    .line 339
    .line 340
    move-result v8

    .line 341
    if-eqz v8, :cond_1a

    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_1a
    invoke-virtual {v7, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    if-eqz v8, :cond_1b

    .line 349
    .line 350
    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 355
    .line 356
    .line 357
    move-result v8

    .line 358
    if-eqz v8, :cond_1b

    .line 359
    .line 360
    goto :goto_5

    .line 361
    :cond_1b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 362
    .line 363
    .line 364
    move-result v8

    .line 365
    if-eqz v8, :cond_1c

    .line 366
    .line 367
    goto :goto_5

    .line 368
    :cond_1c
    if-eqz v4, :cond_20

    .line 369
    .line 370
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 371
    .line 372
    .line 373
    move-result v8

    .line 374
    if-eqz v8, :cond_1d

    .line 375
    .line 376
    goto :goto_7

    .line 377
    :cond_1d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 378
    .line 379
    .line 380
    move-result v8

    .line 381
    move v9, v0

    .line 382
    :cond_1e
    :goto_6
    if-ge v9, v8, :cond_20

    .line 383
    .line 384
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v10

    .line 388
    add-int/lit8 v9, v9, 0x1

    .line 389
    .line 390
    check-cast v10, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 391
    .line 392
    if-nez v10, :cond_1f

    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_1f
    iget-object v10, v10, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 396
    .line 397
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v10

    .line 401
    if-eqz v10, :cond_1e

    .line 402
    .line 403
    goto :goto_5

    .line 404
    :cond_20
    :goto_7
    new-instance v8, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 405
    .line 406
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 407
    .line 408
    .line 409
    iput-object v7, v8, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 410
    .line 411
    const-string v7, "GROUP-ID="

    .line 412
    .line 413
    invoke-static {v6, v7}, Lcom/mycompany/app/down/DownParseList;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    iput-object v6, v8, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->f:Ljava/lang/String;

    .line 418
    .line 419
    if-nez v4, :cond_21

    .line 420
    .line 421
    new-instance v6, Ljava/util/ArrayList;

    .line 422
    .line 423
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .line 425
    .line 426
    move-object v4, v6

    .line 427
    :cond_21
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 428
    .line 429
    .line 430
    goto/16 :goto_5

    .line 431
    .line 432
    :catch_5
    :cond_22
    :goto_8
    if-eqz v4, :cond_2a

    .line 433
    .line 434
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 435
    .line 436
    .line 437
    move-result p1

    .line 438
    if-eqz p1, :cond_23

    .line 439
    .line 440
    goto :goto_b

    .line 441
    :cond_23
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    check-cast p1, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 446
    .line 447
    if-eqz p1, :cond_24

    .line 448
    .line 449
    iget-object v1, p1, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 450
    .line 451
    :cond_24
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 452
    .line 453
    .line 454
    move-result p1

    .line 455
    move p2, v0

    .line 456
    :cond_25
    :goto_9
    if-ge p2, p1, :cond_2a

    .line 457
    .line 458
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object p3

    .line 462
    add-int/lit8 p2, p2, 0x1

    .line 463
    .line 464
    check-cast p3, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 465
    .line 466
    if-nez p3, :cond_26

    .line 467
    .line 468
    goto :goto_9

    .line 469
    :cond_26
    iput-object v1, p3, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 470
    .line 471
    iget-object v2, p3, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->f:Ljava/lang/String;

    .line 472
    .line 473
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    if-eqz v2, :cond_27

    .line 478
    .line 479
    goto :goto_9

    .line 480
    :cond_27
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    move v5, v0

    .line 485
    :cond_28
    :goto_a
    if-ge v5, v2, :cond_25

    .line 486
    .line 487
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    add-int/lit8 v5, v5, 0x1

    .line 492
    .line 493
    check-cast v6, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 494
    .line 495
    if-nez v6, :cond_29

    .line 496
    .line 497
    goto :goto_a

    .line 498
    :cond_29
    iget-object v7, p3, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->f:Ljava/lang/String;

    .line 499
    .line 500
    iget-object v8, v6, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->f:Ljava/lang/String;

    .line 501
    .line 502
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result v7

    .line 506
    if-eqz v7, :cond_28

    .line 507
    .line 508
    iget-object v2, v6, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 509
    .line 510
    iput-object v2, p3, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 511
    .line 512
    goto :goto_9

    .line 513
    :cond_2a
    :goto_b
    return-object v3

    .line 514
    :cond_2b
    :goto_c
    return-object v1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v5, 0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-object p2

    .line 15
    :cond_0
    const/4 p3, 0x1

    .line 16
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/mycompany/app/down/DownParseList;->c:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->R5(Ljava/net/HttpURLConnection;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iput-boolean p3, p0, Lcom/mycompany/app/down/DownParseList;->d:Z

    .line 33
    .line 34
    :catch_0
    move-object p3, p2

    .line 35
    move-object v1, p3

    .line 36
    move-object v3, v1

    .line 37
    move-object v4, v3

    .line 38
    goto/16 :goto_9

    .line 39
    .line 40
    :catch_1
    move-object p3, p2

    .line 41
    move-object v1, p3

    .line 42
    move-object v3, v1

    .line 43
    move-object v4, v3

    .line 44
    goto/16 :goto_8

    .line 45
    .line 46
    :cond_1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 47
    .line 48
    .line 49
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :try_start_1
    iput-boolean p3, p0, Lcom/mycompany/app/down/DownParseList;->b:Z

    .line 51
    .line 52
    const-string p3, "gzip"

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-eqz p3, :cond_2

    .line 63
    .line 64
    new-instance p3, Ljava/util/zip/GZIPInputStream;

    .line 65
    .line 66
    invoke-direct {p3, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 67
    .line 68
    .line 69
    :try_start_2
    new-instance v1, Ljava/io/InputStreamReader;

    .line 70
    .line 71
    invoke-direct {v1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 72
    .line 73
    .line 74
    goto :goto_4

    .line 75
    :catch_2
    move-object v1, p2

    .line 76
    :goto_0
    move-object v3, v1

    .line 77
    :goto_1
    move-object v4, v3

    .line 78
    goto :goto_7

    .line 79
    :catch_3
    move-object v1, p2

    .line 80
    :goto_2
    move-object v3, v1

    .line 81
    :goto_3
    move-object v4, v3

    .line 82
    :catch_4
    move-object p2, v0

    .line 83
    goto :goto_8

    .line 84
    :catch_5
    move-object p3, p2

    .line 85
    move-object v1, p3

    .line 86
    goto :goto_0

    .line 87
    :catch_6
    move-object p3, p2

    .line 88
    move-object v1, p3

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    :try_start_3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 91
    .line 92
    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 93
    .line 94
    .line 95
    move-object p3, p2

    .line 96
    :goto_4
    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    .line 97
    .line 98
    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 99
    .line 100
    .line 101
    move-object v4, p2

    .line 102
    :goto_5
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    if-eqz v5, :cond_3

    .line 107
    .line 108
    iget-boolean v6, p0, Lcom/mycompany/app/down/DownParseList;->a:Z

    .line 109
    .line 110
    if-nez v6, :cond_4

    .line 111
    .line 112
    :goto_6
    move-object v4, p2

    .line 113
    :catch_7
    :cond_3
    :goto_7
    move-object p2, v0

    .line 114
    goto :goto_9

    .line 115
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_5

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_5
    const-string v6, "#EXTINF"

    .line 127
    .line 128
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_6

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_6
    if-nez v4, :cond_7

    .line 136
    .line 137
    new-instance v6, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .line 141
    .line 142
    move-object v4, v6

    .line 143
    :cond_7
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 144
    .line 145
    .line 146
    goto :goto_5

    .line 147
    :catch_8
    move-object v3, p2

    .line 148
    goto :goto_1

    .line 149
    :catch_9
    move-object v3, p2

    .line 150
    goto :goto_3

    .line 151
    :goto_8
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->D6(Landroid/content/Context;)V

    .line 152
    .line 153
    .line 154
    :goto_9
    if-eqz v3, :cond_8

    .line 155
    .line 156
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    .line 157
    .line 158
    .line 159
    :catch_a
    :cond_8
    if-eqz v1, :cond_9

    .line 160
    .line 161
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    .line 162
    .line 163
    .line 164
    :catch_b
    :cond_9
    if-eqz p3, :cond_a

    .line 165
    .line 166
    :try_start_8
    invoke-virtual {p3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    .line 167
    .line 168
    .line 169
    :catch_c
    :cond_a
    if-eqz p2, :cond_b

    .line 170
    .line 171
    :try_start_9
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d

    .line 172
    .line 173
    .line 174
    :catch_d
    :cond_b
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 175
    .line 176
    .line 177
    return-object v4
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "m3fake:"

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :goto_0
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iput-boolean v2, p0, Lcom/mycompany/app/down/DownParseList;->c:Z

    .line 20
    .line 21
    :cond_1
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->M0(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iput-boolean v2, p0, Lcom/mycompany/app/down/DownParseList;->a:Z

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/mycompany/app/down/DownParseList;->b:Z

    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/mycompany/app/down/DownParseList;->e:Z

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/mycompany/app/down/DownParseList;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-boolean v1, p0, Lcom/mycompany/app/down/DownParseList;->d:Z

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    iget-boolean v1, p0, Lcom/mycompany/app/down/DownParseList;->b:Z

    .line 49
    .line 50
    if-nez v1, :cond_7

    .line 51
    .line 52
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    if-eqz p3, :cond_4

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    iget-boolean p3, p0, Lcom/mycompany/app/down/DownParseList;->a:Z

    .line 60
    .line 61
    if-nez p3, :cond_5

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_5
    sget-boolean p3, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 65
    .line 66
    invoke-virtual {p0, p1, p2, v3}, Lcom/mycompany/app/down/DownParseList;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-boolean p2, p0, Lcom/mycompany/app/down/DownParseList;->d:Z

    .line 71
    .line 72
    if-eqz p2, :cond_6

    .line 73
    .line 74
    :goto_1
    return-object v3

    .line 75
    :cond_6
    iget-boolean p2, p0, Lcom/mycompany/app/down/DownParseList;->b:Z

    .line 76
    .line 77
    iput-boolean p2, p0, Lcom/mycompany/app/down/DownParseList;->e:Z

    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_7
    :goto_2
    return-object v0
.end method
