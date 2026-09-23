.class public Lcom/mycompany/app/main/MainDownSize;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:Ljava/net/HttpURLConnection;


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V
    .locals 15

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, v3, v4}, Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;->a(J)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    move-object/from16 v2, p1

    .line 16
    .line 17
    iput-object v2, p0, Lcom/mycompany/app/main/MainDownSize;->a:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    iput-boolean v2, p0, Lcom/mycompany/app/main/MainDownSize;->b:Z

    .line 21
    .line 22
    new-instance v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 23
    .line 24
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    move-object/from16 v6, p2

    .line 28
    .line 29
    iput-object v6, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 30
    .line 31
    move-object/from16 v7, p3

    .line 32
    .line 33
    iput-object v7, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v6}, Lcom/mycompany/app/main/MainDownSvc;->s(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    iput v6, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->I:I

    .line 40
    .line 41
    if-nez v6, :cond_1

    .line 42
    .line 43
    iget-object v2, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, v2, v3}, Lcom/mycompany/app/main/MainDownSize;->b(Ljava/lang/String;Ljava/lang/String;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    invoke-interface {v0, v2, v3}, Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;->a(J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    const/16 v7, 0xf

    .line 56
    .line 57
    if-ne v6, v7, :cond_6

    .line 58
    .line 59
    iget-object v2, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainDownSize;->b:Z

    .line 69
    .line 70
    if-nez v2, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object v2, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->M0(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget-object v6, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p0, v2, v6}, Lcom/mycompany/app/main/MainDownSize;->b(Ljava/lang/String;Ljava/lang/String;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v6

    .line 85
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainDownSize;->b:Z

    .line 86
    .line 87
    if-nez v2, :cond_4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    iget-object v2, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->N0(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget-object v5, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p0, v2, v5}, Lcom/mycompany/app/main/MainDownSize;->b(Ljava/lang/String;Ljava/lang/String;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v8

    .line 102
    add-long/2addr v8, v6

    .line 103
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainDownSize;->b:Z

    .line 104
    .line 105
    if-nez v2, :cond_5

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    move-wide v3, v8

    .line 109
    :goto_0
    invoke-interface {v0, v3, v4}, Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;->a(J)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_6
    const/16 v7, 0xe

    .line 114
    .line 115
    if-ne v6, v7, :cond_7

    .line 116
    .line 117
    invoke-interface {v0, v3, v4}, Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;->a(J)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_7
    const/16 v7, 0xd

    .line 122
    .line 123
    if-ne v6, v7, :cond_8

    .line 124
    .line 125
    invoke-interface {v0, v3, v4}, Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;->a(J)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_8
    new-instance v6, Lcom/mycompany/app/main/MainDownSize$1;

    .line 130
    .line 131
    invoke-direct {v6, v0}, Lcom/mycompany/app/main/MainDownSize$1;-><init>(Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_9

    .line 141
    .line 142
    invoke-virtual {v6, v3, v4}, Lcom/mycompany/app/main/MainDownSize$1;->a(J)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_9
    iget v0, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->I:I

    .line 147
    .line 148
    const/4 v3, 0x0

    .line 149
    if-ne v0, v2, :cond_b

    .line 150
    .line 151
    iget-object v0, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 152
    .line 153
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->M0(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/mycompany/app/down/DownParseM3u8;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    new-instance v4, Lcom/mycompany/app/down/DownParseM3u8;

    .line 162
    .line 163
    iget-object v7, p0, Lcom/mycompany/app/main/MainDownSize;->a:Landroid/content/Context;

    .line 164
    .line 165
    invoke-direct {v4, v7}, Lcom/mycompany/app/down/DownParseM3u8;-><init>(Landroid/content/Context;)V

    .line 166
    .line 167
    .line 168
    iget-object v7, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    if-eqz v8, :cond_a

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_a
    const-string v3, "m3fake:"

    .line 178
    .line 179
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    :goto_1
    iput-boolean v3, v4, Lcom/mycompany/app/down/DownParseM3u8;->c:Z

    .line 184
    .line 185
    iget-object v3, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 186
    .line 187
    new-instance v7, Lcom/mycompany/app/main/MainDownSize$3;

    .line 188
    .line 189
    invoke-direct {v7, p0, v4, v5, v6}, Lcom/mycompany/app/main/MainDownSize$3;-><init>(Lcom/mycompany/app/main/MainDownSize;Lcom/mycompany/app/down/DownParseM3u8;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v0, v3, v2, v7}, Lcom/mycompany/app/down/DownParseM3u8;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_b
    const/4 v2, 0x2

    .line 197
    const/4 v4, 0x0

    .line 198
    if-ne v0, v2, :cond_d

    .line 199
    .line 200
    iget-object v0, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 201
    .line 202
    invoke-static {v0}, Lcom/mycompany/app/down/DownParseM3u8;->l(Ljava/lang/String;)Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    if-nez v0, :cond_c

    .line 207
    .line 208
    invoke-virtual {p0, v5, v0, v4, v6}, Lcom/mycompany/app/main/MainDownSize;->c(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$M3u8Item;Ljava/util/List;Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :cond_c
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 213
    .line 214
    invoke-static {v2}, Lcom/mycompany/app/down/DownParseM3u8;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    new-instance v2, Lcom/mycompany/app/down/DownParseM3u8;

    .line 219
    .line 220
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSize;->a:Landroid/content/Context;

    .line 221
    .line 222
    invoke-direct {v2, v3}, Lcom/mycompany/app/down/DownParseM3u8;-><init>(Landroid/content/Context;)V

    .line 223
    .line 224
    .line 225
    iget-object v9, v0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 226
    .line 227
    iget-object v10, v5, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 228
    .line 229
    iget-object v12, v0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 230
    .line 231
    new-instance v13, Lcom/mycompany/app/main/MainDownSize$4;

    .line 232
    .line 233
    move-object v1, p0

    .line 234
    move-object v4, v0

    .line 235
    move-object v3, v5

    .line 236
    move-object v5, v6

    .line 237
    move-object v0, v13

    .line 238
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/main/MainDownSize$4;-><init>(Lcom/mycompany/app/main/MainDownSize;Lcom/mycompany/app/down/DownParseM3u8;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$M3u8Item;Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V

    .line 239
    .line 240
    .line 241
    const/4 v8, 0x0

    .line 242
    move-object v7, v2

    .line 243
    invoke-virtual/range {v7 .. v13}, Lcom/mycompany/app/down/DownParseM3u8;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :cond_d
    move-object v2, v5

    .line 248
    move-object v5, v6

    .line 249
    const/4 v6, 0x4

    .line 250
    if-ne v0, v6, :cond_f

    .line 251
    .line 252
    iget-object v0, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 253
    .line 254
    invoke-static {v0}, Lcom/mycompany/app/down/DownParseReddit;->a(Ljava/lang/String;)Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    if-eqz v0, :cond_e

    .line 259
    .line 260
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 261
    .line 262
    invoke-static {v3}, Lcom/mycompany/app/down/DownParseReddit;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    :cond_e
    :goto_2
    move-object v14, v4

    .line 267
    move-object v4, v0

    .line 268
    move-object v0, v14

    .line 269
    goto/16 :goto_3

    .line 270
    .line 271
    :cond_f
    const/4 v6, 0x6

    .line 272
    if-ne v0, v6, :cond_10

    .line 273
    .line 274
    iget-object v0, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 275
    .line 276
    invoke-static {v0}, Lcom/mycompany/app/down/DownParseKakao;->a(Ljava/lang/String;)Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    if-eqz v0, :cond_e

    .line 281
    .line 282
    iget-object v6, p0, Lcom/mycompany/app/main/MainDownSize;->a:Landroid/content/Context;

    .line 283
    .line 284
    iget-object v7, v0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 285
    .line 286
    iget-object v8, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 287
    .line 288
    iget-object v9, v0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->g:Ljava/lang/String;

    .line 289
    .line 290
    iget-object v10, v0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 291
    .line 292
    new-instance v12, Lcom/mycompany/app/main/MainDownSize$5;

    .line 293
    .line 294
    invoke-direct {v12, p0}, Lcom/mycompany/app/main/MainDownSize$5;-><init>(Lcom/mycompany/app/main/MainDownSize;)V

    .line 295
    .line 296
    .line 297
    const/4 v11, 0x0

    .line 298
    invoke-static/range {v6 .. v12}, Lcom/mycompany/app/down/DownParseKakao;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Ljava/util/ArrayList;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    goto :goto_2

    .line 303
    :cond_10
    const/16 v6, 0x8

    .line 304
    .line 305
    if-ne v0, v6, :cond_11

    .line 306
    .line 307
    iget-object v0, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 308
    .line 309
    invoke-static {v0}, Lcom/mycompany/app/down/DownParseDzen;->b(Ljava/lang/String;)Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    if-eqz v0, :cond_e

    .line 314
    .line 315
    iget-object v6, p0, Lcom/mycompany/app/main/MainDownSize;->a:Landroid/content/Context;

    .line 316
    .line 317
    iget-object v7, v0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 318
    .line 319
    iget-object v8, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 320
    .line 321
    iget-object v9, v0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->g:Ljava/lang/String;

    .line 322
    .line 323
    iget-object v10, v0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 324
    .line 325
    new-instance v12, Lcom/mycompany/app/main/MainDownSize$6;

    .line 326
    .line 327
    invoke-direct {v12, p0}, Lcom/mycompany/app/main/MainDownSize$6;-><init>(Lcom/mycompany/app/main/MainDownSize;)V

    .line 328
    .line 329
    .line 330
    const/4 v11, 0x0

    .line 331
    invoke-static/range {v6 .. v12}, Lcom/mycompany/app/down/DownParseDzen;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Ljava/util/ArrayList;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    goto :goto_2

    .line 336
    :cond_11
    const/16 v6, 0xa

    .line 337
    .line 338
    if-ne v0, v6, :cond_12

    .line 339
    .line 340
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSize;->a:Landroid/content/Context;

    .line 341
    .line 342
    iget-object v6, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 343
    .line 344
    iget-object v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 345
    .line 346
    invoke-static {v0, v6, v7}, Lcom/mycompany/app/down/DownParseVimeo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    if-eqz v0, :cond_e

    .line 351
    .line 352
    iget-object v4, v0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->j:Lcom/google/gson/JsonObject;

    .line 353
    .line 354
    iget-object v6, v0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->f:Ljava/lang/String;

    .line 355
    .line 356
    iget-object v7, v0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 357
    .line 358
    invoke-static {v4, v6, v7, v3}, Lcom/mycompany/app/down/DownParseVimeo;->d(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    goto :goto_2

    .line 363
    :cond_12
    const/16 v3, 0xb

    .line 364
    .line 365
    if-ne v0, v3, :cond_13

    .line 366
    .line 367
    iget-object v6, p0, Lcom/mycompany/app/main/MainDownSize;->a:Landroid/content/Context;

    .line 368
    .line 369
    iget-object v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 370
    .line 371
    iget-object v8, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 372
    .line 373
    new-instance v11, Lcom/mycompany/app/main/MainDownSize$7;

    .line 374
    .line 375
    invoke-direct {v11, p0}, Lcom/mycompany/app/main/MainDownSize$7;-><init>(Lcom/mycompany/app/main/MainDownSize;)V

    .line 376
    .line 377
    .line 378
    const/4 v9, 0x0

    .line 379
    const/4 v10, 0x0

    .line 380
    invoke-static/range {v6 .. v11}, Lcom/mycompany/app/down/DownParseTsfile;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;ZLcom/mycompany/app/main/MainUtil$LoopCancelListener;)Ljava/util/ArrayList;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    goto :goto_3

    .line 385
    :cond_13
    const/16 v3, 0xc

    .line 386
    .line 387
    if-ne v0, v3, :cond_14

    .line 388
    .line 389
    iget-object v6, p0, Lcom/mycompany/app/main/MainDownSize;->a:Landroid/content/Context;

    .line 390
    .line 391
    iget-object v7, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 392
    .line 393
    iget-object v8, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 394
    .line 395
    new-instance v11, Lcom/mycompany/app/main/MainDownSize$8;

    .line 396
    .line 397
    invoke-direct {v11, p0}, Lcom/mycompany/app/main/MainDownSize$8;-><init>(Lcom/mycompany/app/main/MainDownSize;)V

    .line 398
    .line 399
    .line 400
    const/4 v9, 0x0

    .line 401
    const/4 v10, 0x1

    .line 402
    invoke-static/range {v6 .. v11}, Lcom/mycompany/app/down/DownParseTsfile;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;ZLcom/mycompany/app/main/MainUtil$LoopCancelListener;)Ljava/util/ArrayList;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    goto :goto_3

    .line 407
    :cond_14
    move-object v0, v4

    .line 408
    :goto_3
    invoke-virtual {p0, v2, v4, v0, v5}, Lcom/mycompany/app/main/MainDownSize;->c(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$M3u8Item;Ljava/util/List;Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V

    .line 409
    .line 410
    .line 411
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)J
    .locals 11

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainDownSize;->b:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_1
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSize;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->J0()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v9

    .line 21
    const/4 v10, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    move-object v4, p1

    .line 26
    move-object v5, p2

    .line 27
    invoke-static/range {v3 .. v10}, Lcom/mycompany/app/main/MainUtil;->T3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSize;->c:Ljava/net/HttpURLConnection;

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_2
    const/4 p2, 0x1

    .line 37
    const/4 v0, 0x0

    .line 38
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSize;->c:Ljava/net/HttpURLConnection;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSize;->c:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    :catch_0
    move-object p1, v0

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    :goto_0
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_4

    .line 61
    .line 62
    const-string p2, "text/html"

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    .line 73
    const/16 p2, 0x18

    .line 74
    .line 75
    if-lt p1, p2, :cond_5

    .line 76
    .line 77
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSize;->c:Ljava/net/HttpURLConnection;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    .line 80
    .line 81
    .line 82
    move-result-wide p1

    .line 83
    goto :goto_2

    .line 84
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSize;->c:Ljava/net/HttpURLConnection;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    .line 87
    .line 88
    .line 89
    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 90
    int-to-long p1, p1

    .line 91
    goto :goto_2

    .line 92
    :catch_1
    :goto_1
    move-wide p1, v1

    .line 93
    :goto_2
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSize;->c:Ljava/net/HttpURLConnection;

    .line 94
    .line 95
    if-eqz v3, :cond_6

    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/mycompany/app/main/MainDownSize;->c:Ljava/net/HttpURLConnection;

    .line 101
    .line 102
    :cond_6
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainDownSize;->b:Z

    .line 103
    .line 104
    if-nez v0, :cond_7

    .line 105
    .line 106
    :goto_3
    return-wide v1

    .line 107
    :cond_7
    return-wide p1
.end method

.method public final c(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$M3u8Item;Ljava/util/List;Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V
    .locals 10

    .line 1
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    move-object v0, p4

    .line 12
    check-cast v0, Lcom/mycompany/app/main/MainDownSize$1;

    .line 13
    .line 14
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/main/MainDownSize$1;->a(J)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    if-eqz p3, :cond_1

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-nez v2, :cond_2

    .line 27
    .line 28
    move-object v0, p4

    .line 29
    check-cast v0, Lcom/mycompany/app/main/MainDownSize$1;

    .line 30
    .line 31
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/main/MainDownSize$1;->a(J)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainDownSize;->b:Z

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    move-object v0, p4

    .line 40
    check-cast v0, Lcom/mycompany/app/main/MainDownSize$1;

    .line 41
    .line 42
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/main/MainDownSize$1;->a(J)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    iget v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->I:I

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    const/4 v4, 0x0

    .line 50
    if-ne v2, v3, :cond_4

    .line 51
    .line 52
    if-eqz p2, :cond_8

    .line 53
    .line 54
    iget-object v2, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_8

    .line 61
    .line 62
    iget-object v2, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v2}, Lcom/mycompany/app/down/DownParseM3u8;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    new-instance v2, Lcom/mycompany/app/down/DownParseM3u8;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSize;->a:Landroid/content/Context;

    .line 71
    .line 72
    invoke-direct {v2, v3}, Lcom/mycompany/app/down/DownParseM3u8;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    iget-object v6, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 76
    .line 77
    move-object v8, v6

    .line 78
    iget-object v6, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 79
    .line 80
    move-object v9, v8

    .line 81
    iget-object v8, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v0, Lcom/mycompany/app/main/MainDownSize$9;

    .line 84
    .line 85
    move-object v1, p0

    .line 86
    move-object v3, p1

    .line 87
    move-object v4, p3

    .line 88
    move-object v5, p4

    .line 89
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/main/MainDownSize$9;-><init>(Lcom/mycompany/app/main/MainDownSize;Lcom/mycompany/app/down/DownParseM3u8;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/util/List;Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V

    .line 90
    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    move-object v3, v2

    .line 94
    move-object v5, v9

    .line 95
    move-object v9, v0

    .line 96
    invoke-virtual/range {v3 .. v9}, Lcom/mycompany/app/down/DownParseM3u8;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    const/4 v1, 0x4

    .line 101
    if-ne v2, v1, :cond_5

    .line 102
    .line 103
    if-eqz p2, :cond_8

    .line 104
    .line 105
    iget-object v0, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/mycompany/app/down/DownParseReddit;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    goto :goto_1

    .line 112
    :cond_5
    const/4 v1, 0x6

    .line 113
    if-ne v2, v1, :cond_6

    .line 114
    .line 115
    if-eqz p2, :cond_8

    .line 116
    .line 117
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSize;->a:Landroid/content/Context;

    .line 118
    .line 119
    move-object v2, v1

    .line 120
    iget-object v1, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 121
    .line 122
    move-object v3, v2

    .line 123
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 124
    .line 125
    move-object v4, v3

    .line 126
    iget-object v3, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->h:Ljava/lang/String;

    .line 127
    .line 128
    move-object v6, v4

    .line 129
    iget-object v4, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 130
    .line 131
    move-object v0, v6

    .line 132
    new-instance v6, Lcom/mycompany/app/main/MainDownSize$10;

    .line 133
    .line 134
    invoke-direct {v6, p0}, Lcom/mycompany/app/main/MainDownSize$10;-><init>(Lcom/mycompany/app/main/MainDownSize;)V

    .line 135
    .line 136
    .line 137
    move-object v5, p1

    .line 138
    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/down/DownParseKakao;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Ljava/util/ArrayList;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    goto :goto_1

    .line 143
    :cond_6
    const/16 v1, 0x8

    .line 144
    .line 145
    if-ne v2, v1, :cond_7

    .line 146
    .line 147
    if-eqz p2, :cond_8

    .line 148
    .line 149
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSize;->a:Landroid/content/Context;

    .line 150
    .line 151
    move-object v2, v1

    .line 152
    iget-object v1, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 153
    .line 154
    move-object v3, v2

    .line 155
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 156
    .line 157
    move-object v4, v3

    .line 158
    iget-object v3, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->h:Ljava/lang/String;

    .line 159
    .line 160
    move-object v6, v4

    .line 161
    iget-object v4, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 162
    .line 163
    move-object v0, v6

    .line 164
    new-instance v6, Lcom/mycompany/app/main/MainDownSize$11;

    .line 165
    .line 166
    invoke-direct {v6, p0}, Lcom/mycompany/app/main/MainDownSize$11;-><init>(Lcom/mycompany/app/main/MainDownSize;)V

    .line 167
    .line 168
    .line 169
    move-object v5, p1

    .line 170
    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/down/DownParseDzen;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Ljava/util/ArrayList;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    goto :goto_1

    .line 175
    :cond_7
    const/16 v1, 0xa

    .line 176
    .line 177
    if-ne v2, v1, :cond_8

    .line 178
    .line 179
    if-eqz p2, :cond_8

    .line 180
    .line 181
    iget-object v1, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->j:Lcom/google/gson/JsonObject;

    .line 182
    .line 183
    iget-object v0, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->f:Ljava/lang/String;

    .line 184
    .line 185
    const/4 v2, 0x1

    .line 186
    invoke-static {v1, v0, v4, v2}, Lcom/mycompany/app/down/DownParseVimeo;->d(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    :cond_8
    :goto_1
    invoke-virtual {p0, p1, p3, v4, p4}, Lcom/mycompany/app/main/MainDownSize;->d(Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/util/List;Ljava/util/List;Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V

    .line 191
    .line 192
    .line 193
    return-void
.end method

.method public final d(Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/util/List;Ljava/util/List;Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p4, Lcom/mycompany/app/main/MainDownSize$1;

    .line 12
    .line 13
    invoke-virtual {p4, v1, v2}, Lcom/mycompany/app/main/MainDownSize$1;->a(J)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v3, v0

    .line 26
    :goto_0
    if-nez v3, :cond_2

    .line 27
    .line 28
    check-cast p4, Lcom/mycompany/app/main/MainDownSize$1;

    .line 29
    .line 30
    invoke-virtual {p4, v1, v2}, Lcom/mycompany/app/main/MainDownSize$1;->a(J)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-boolean v4, p0, Lcom/mycompany/app/main/MainDownSize;->b:Z

    .line 35
    .line 36
    if-nez v4, :cond_3

    .line 37
    .line 38
    check-cast p4, Lcom/mycompany/app/main/MainDownSize$1;

    .line 39
    .line 40
    invoke-virtual {p4, v1, v2}, Lcom/mycompany/app/main/MainDownSize$1;->a(J)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    if-eqz p3, :cond_4

    .line 45
    .line 46
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    :cond_4
    iget-boolean v4, p0, Lcom/mycompany/app/main/MainDownSize;->b:Z

    .line 51
    .line 52
    if-nez v4, :cond_5

    .line 53
    .line 54
    check-cast p4, Lcom/mycompany/app/main/MainDownSize$1;

    .line 55
    .line 56
    invoke-virtual {p4, v1, v2}, Lcom/mycompany/app/main/MainDownSize$1;->a(J)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_5
    div-int/lit8 v4, v3, 0x2

    .line 61
    .line 62
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Ljava/lang/String;

    .line 67
    .line 68
    iget-object v4, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p0, p2, v4}, Lcom/mycompany/app/main/MainDownSize;->b(Ljava/lang/String;Ljava/lang/String;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    int-to-long v6, v3

    .line 75
    mul-long/2addr v4, v6

    .line 76
    iget-boolean p2, p0, Lcom/mycompany/app/main/MainDownSize;->b:Z

    .line 77
    .line 78
    if-nez p2, :cond_6

    .line 79
    .line 80
    check-cast p4, Lcom/mycompany/app/main/MainDownSize$1;

    .line 81
    .line 82
    invoke-virtual {p4, v1, v2}, Lcom/mycompany/app/main/MainDownSize$1;->a(J)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_6
    if-lez v0, :cond_7

    .line 87
    .line 88
    div-int/lit8 p2, v0, 0x2

    .line 89
    .line 90
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Ljava/lang/String;

    .line 95
    .line 96
    iget-object p1, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p0, p2, p1}, Lcom/mycompany/app/main/MainDownSize;->b(Ljava/lang/String;Ljava/lang/String;)J

    .line 99
    .line 100
    .line 101
    move-result-wide p1

    .line 102
    int-to-long v6, v0

    .line 103
    mul-long/2addr p1, v6

    .line 104
    add-long/2addr v4, p1

    .line 105
    :cond_7
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainDownSize;->b:Z

    .line 106
    .line 107
    if-nez p1, :cond_8

    .line 108
    .line 109
    check-cast p4, Lcom/mycompany/app/main/MainDownSize$1;

    .line 110
    .line 111
    invoke-virtual {p4, v1, v2}, Lcom/mycompany/app/main/MainDownSize$1;->a(J)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_8
    check-cast p4, Lcom/mycompany/app/main/MainDownSize$1;

    .line 116
    .line 117
    invoke-virtual {p4, v4, v5}, Lcom/mycompany/app/main/MainDownSize$1;->a(J)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSize;->a:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownSize;->a:Landroid/content/Context;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainDownSize;->b:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSize;->c:Ljava/net/HttpURLConnection;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v1, Lcom/mycompany/app/main/MainDownSize$2;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainDownSize$2;-><init>(Lcom/mycompany/app/main/MainDownSize;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
