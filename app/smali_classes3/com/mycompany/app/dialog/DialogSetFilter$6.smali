.class Lcom/mycompany/app/dialog/DialogSetFilter$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetFilter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFilter$6;->c:Lcom/mycompany/app/dialog/DialogSetFilter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFilter$6;->c:Lcom/mycompany/app/dialog/DialogSetFilter;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->d0:Z

    .line 4
    .line 5
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->e0:[Z

    .line 6
    .line 7
    const-string v2, "/"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    array-length v5, v1

    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_0
    array-length v1, v1

    .line 18
    move v5, v3

    .line 19
    move-object v6, v4

    .line 20
    :goto_0
    if-ge v5, v1, :cond_3

    .line 21
    .line 22
    iget-object v7, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->e0:[Z

    .line 23
    .line 24
    aget-boolean v7, v7, v5

    .line 25
    .line 26
    if-nez v7, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    if-nez v6, :cond_2

    .line 30
    .line 31
    new-instance v6, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    if-nez v6, :cond_4

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    goto :goto_4

    .line 54
    :cond_5
    :goto_3
    move-object v1, v4

    .line 55
    :goto_4
    if-eqz v0, :cond_6

    .line 56
    .line 57
    sget-object v5, Lcom/mycompany/app/pref/PrefAlbum;->t:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v5, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_7

    .line 64
    .line 65
    sput-object v1, Lcom/mycompany/app/pref/PrefAlbum;->t:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v5, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->b0:Landroid/content/Context;

    .line 68
    .line 69
    const-string v6, "mAdguardAdd2"

    .line 70
    .line 71
    invoke-static {v3, v5, v6, v1}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_5

    .line 75
    :cond_6
    sget-object v5, Lcom/mycompany/app/pref/PrefAlbum;->s:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v5, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_7

    .line 82
    .line 83
    sput-object v1, Lcom/mycompany/app/pref/PrefAlbum;->s:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v5, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->b0:Landroid/content/Context;

    .line 86
    .line 87
    const-string v6, "mFilterAdd4"

    .line 88
    .line 89
    invoke-static {v3, v5, v6, v1}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_7
    :goto_5
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->c0:Lcom/mycompany/app/dialog/DialogSetFilter$SetFilterListener;

    .line 93
    .line 94
    if-eqz v1, :cond_1d

    .line 95
    .line 96
    sget-object v5, Lcom/mycompany/app/dialog/DialogSetFilter;->p0:[[Ljava/lang/String;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->b0:Landroid/content/Context;

    .line 99
    .line 100
    if-nez p1, :cond_8

    .line 101
    .line 102
    goto/16 :goto_f

    .line 103
    .line 104
    :cond_8
    invoke-static {p1}, Lcom/mycompany/app/data/book/DataBookFilter;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object p1, p1, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 109
    .line 110
    const/4 v6, 0x1

    .line 111
    if-eqz p1, :cond_9

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-nez v7, :cond_9

    .line 118
    .line 119
    move v7, v6

    .line 120
    goto :goto_6

    .line 121
    :cond_9
    move v7, v3

    .line 122
    :goto_6
    const-string v8, ""

    .line 123
    .line 124
    if-eqz v0, :cond_12

    .line 125
    .line 126
    sget-object v0, Lcom/mycompany/app/pref/PrefAlbum;->t:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_a

    .line 133
    .line 134
    goto/16 :goto_f

    .line 135
    .line 136
    :cond_a
    sget-object v0, Lcom/mycompany/app/pref/PrefAlbum;->t:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_11

    .line 143
    .line 144
    array-length v2, v0

    .line 145
    if-nez v2, :cond_b

    .line 146
    .line 147
    goto :goto_a

    .line 148
    :cond_b
    array-length v2, v0

    .line 149
    move v5, v3

    .line 150
    :goto_7
    if-ge v5, v2, :cond_1c

    .line 151
    .line 152
    aget-object v6, v0, v5

    .line 153
    .line 154
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->H6(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    invoke-static {v6}, Lcom/mycompany/app/dialog/DialogSetFilter;->C(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-eqz v9, :cond_c

    .line 167
    .line 168
    goto :goto_9

    .line 169
    :cond_c
    if-nez v4, :cond_d

    .line 170
    .line 171
    new-instance v4, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .line 175
    .line 176
    :cond_d
    if-eqz v7, :cond_10

    .line 177
    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    :cond_e
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    if-eqz v10, :cond_10

    .line 187
    .line 188
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    check-cast v10, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 193
    .line 194
    if-nez v10, :cond_f

    .line 195
    .line 196
    goto :goto_8

    .line 197
    :cond_f
    iget-object v10, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    if-eqz v10, :cond_e

    .line 204
    .line 205
    goto :goto_9

    .line 206
    :cond_10
    new-instance v9, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 207
    .line 208
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 209
    .line 210
    .line 211
    iput-object v8, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 212
    .line 213
    sget-object v8, Lcom/mycompany/app/dialog/DialogSetFilter;->q0:[[Ljava/lang/String;

    .line 214
    .line 215
    aget-object v6, v8, v6

    .line 216
    .line 217
    aget-object v6, v6, v3

    .line 218
    .line 219
    iput-object v6, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 220
    .line 221
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_11
    :goto_a
    sput-object v8, Lcom/mycompany/app/pref/PrefAlbum;->t:Ljava/lang/String;

    .line 228
    .line 229
    goto/16 :goto_f

    .line 230
    .line 231
    :cond_12
    sget-object v0, Lcom/mycompany/app/pref/PrefAlbum;->s:Ljava/lang/String;

    .line 232
    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_13

    .line 238
    .line 239
    goto :goto_f

    .line 240
    :cond_13
    sget-object v0, Lcom/mycompany/app/pref/PrefAlbum;->s:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-eqz v0, :cond_1b

    .line 247
    .line 248
    array-length v2, v0

    .line 249
    if-nez v2, :cond_14

    .line 250
    .line 251
    goto :goto_e

    .line 252
    :cond_14
    array-length v2, v0

    .line 253
    move v8, v3

    .line 254
    :goto_b
    if-ge v8, v2, :cond_1c

    .line 255
    .line 256
    aget-object v9, v0, v8

    .line 257
    .line 258
    invoke-static {v9}, Lcom/mycompany/app/main/MainUtil;->H6(Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result v9

    .line 262
    if-ltz v9, :cond_1a

    .line 263
    .line 264
    const/16 v10, 0x2c

    .line 265
    .line 266
    if-lt v9, v10, :cond_15

    .line 267
    .line 268
    goto :goto_d

    .line 269
    :cond_15
    if-nez v4, :cond_16

    .line 270
    .line 271
    new-instance v4, Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .line 275
    .line 276
    :cond_16
    aget-object v10, v5, v9

    .line 277
    .line 278
    aget-object v10, v10, v6

    .line 279
    .line 280
    if-eqz v7, :cond_19

    .line 281
    .line 282
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object v11

    .line 286
    :cond_17
    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v12

    .line 290
    if-eqz v12, :cond_19

    .line 291
    .line 292
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v12

    .line 296
    check-cast v12, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 297
    .line 298
    if-nez v12, :cond_18

    .line 299
    .line 300
    goto :goto_c

    .line 301
    :cond_18
    iget-object v12, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v12

    .line 307
    if-eqz v12, :cond_17

    .line 308
    .line 309
    goto :goto_d

    .line 310
    :cond_19
    new-instance v11, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 311
    .line 312
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 313
    .line 314
    .line 315
    iput-object v10, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 316
    .line 317
    aget-object v9, v5, v9

    .line 318
    .line 319
    aget-object v9, v9, v3

    .line 320
    .line 321
    iput-object v9, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 322
    .line 323
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    :cond_1a
    :goto_d
    add-int/lit8 v8, v8, 0x1

    .line 327
    .line 328
    goto :goto_b

    .line 329
    :cond_1b
    :goto_e
    sput-object v8, Lcom/mycompany/app/pref/PrefAlbum;->s:Ljava/lang/String;

    .line 330
    .line 331
    :cond_1c
    :goto_f
    invoke-interface {v1, v4}, Lcom/mycompany/app/dialog/DialogSetFilter$SetFilterListener;->a(Ljava/util/ArrayList;)V

    .line 332
    .line 333
    .line 334
    :cond_1d
    return-void
.end method
