.class public Lcom/mycompany/app/main/MainListAdapter;
.super Lcom/mycompany/app/expand/ExpandListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainListAdapter$ListMoreListener;,
        Lcom/mycompany/app/main/MainListAdapter$ListRectListener;,
        Lcom/mycompany/app/main/MainListAdapter$ListHeadListener;,
        Lcom/mycompany/app/main/MainListAdapter$GroupHolder;,
        Lcom/mycompany/app/main/MainListAdapter$ChildHolder;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/util/regex/Pattern;

.field public C:Z

.field public d:Landroid/content/Context;

.field public e:I

.field public f:Z

.field public g:Lcom/mycompany/app/fragment/FragmentExpandView;

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:[Z

.field public k:[I

.field public l:[Z

.field public m:I

.field public n:I

.field public o:Z

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Ljava/lang/String;

.field public t:Z

.field public u:I

.field public v:Lcom/mycompany/app/main/MainListLoader;

.field public w:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public x:Lcom/mycompany/app/main/MainListAdapter$ListMoreListener;

.field public y:Lcom/mycompany/app/main/MainListAdapter$ListRectListener;

.field public z:Lcom/mycompany/app/main/MainListAdapter$ListHeadListener;


# virtual methods
.method public final A(ILandroid/view/View;Lcom/mycompany/app/main/MainListAdapter$ChildHolder;Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    iget v4, v0, Lcom/mycompany/app/main/MainListAdapter;->e:I

    .line 10
    .line 11
    if-eqz v1, :cond_15

    .line 12
    .line 13
    iget-object v5, v0, Lcom/mycompany/app/main/MainListAdapter;->v:Lcom/mycompany/app/main/MainListLoader;

    .line 14
    .line 15
    if-nez v5, :cond_0

    .line 16
    .line 17
    goto/16 :goto_6

    .line 18
    .line 19
    :cond_0
    const/4 v5, 0x3

    .line 20
    const/16 v6, 0x20

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    const/4 v8, 0x0

    .line 24
    const/16 v9, 0x12

    .line 25
    .line 26
    if-ne v4, v6, :cond_2

    .line 27
    .line 28
    iget v10, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 29
    .line 30
    const/16 v11, 0x8

    .line 31
    .line 32
    if-ne v10, v11, :cond_1

    .line 33
    .line 34
    move v10, v7

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v10, v8

    .line 37
    :goto_0
    iget-object v11, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 38
    .line 39
    invoke-virtual {v11, v8}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 40
    .line 41
    .line 42
    iget v11, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 43
    .line 44
    if-eq v11, v5, :cond_6

    .line 45
    .line 46
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 47
    .line 48
    iget v2, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 49
    .line 50
    iget v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 51
    .line 52
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    if-ne v4, v9, :cond_3

    .line 57
    .line 58
    iget v10, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 59
    .line 60
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_black_24:I

    .line 61
    .line 62
    if-ne v10, v11, :cond_5

    .line 63
    .line 64
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 65
    .line 66
    iget v2, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 67
    .line 68
    invoke-virtual {v1, v2, v10}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    const/16 v10, 0x23

    .line 73
    .line 74
    if-ne v4, v10, :cond_4

    .line 75
    .line 76
    iget v10, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 77
    .line 78
    if-eqz v10, :cond_5

    .line 79
    .line 80
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 81
    .line 82
    iget v2, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 83
    .line 84
    invoke-virtual {v1, v10, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    const/16 v10, 0x24

    .line 89
    .line 90
    if-ne v4, v10, :cond_5

    .line 91
    .line 92
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 93
    .line 94
    iget v2, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 95
    .line 96
    iget v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 97
    .line 98
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter;->r()Ljava/util/regex/Pattern;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_5
    move v10, v8

    .line 109
    :cond_6
    iget-boolean v11, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 110
    .line 111
    if-eqz v11, :cond_7

    .line 112
    .line 113
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 114
    .line 115
    iget v2, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 116
    .line 117
    invoke-virtual {v1, v8, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_7
    iget v11, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 122
    .line 123
    const/16 v12, 0xb

    .line 124
    .line 125
    const/4 v13, 0x4

    .line 126
    if-eq v11, v7, :cond_8

    .line 127
    .line 128
    const/4 v14, 0x2

    .line 129
    if-eq v11, v14, :cond_8

    .line 130
    .line 131
    if-eq v11, v5, :cond_8

    .line 132
    .line 133
    if-eq v11, v13, :cond_8

    .line 134
    .line 135
    const/4 v5, 0x5

    .line 136
    if-eq v11, v5, :cond_8

    .line 137
    .line 138
    const/4 v5, 0x6

    .line 139
    if-eq v11, v5, :cond_8

    .line 140
    .line 141
    if-eq v11, v12, :cond_8

    .line 142
    .line 143
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 144
    .line 145
    iget v2, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 146
    .line 147
    iget v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 148
    .line 149
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_8
    new-instance v5, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 154
    .line 155
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 156
    .line 157
    .line 158
    if-ne v11, v12, :cond_a

    .line 159
    .line 160
    const/16 v12, 0x2a

    .line 161
    .line 162
    if-ne v4, v12, :cond_9

    .line 163
    .line 164
    const/16 v12, 0x28

    .line 165
    .line 166
    iput v12, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 167
    .line 168
    iget-object v12, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 169
    .line 170
    iput-object v12, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 171
    .line 172
    iget-wide v14, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->E:J

    .line 173
    .line 174
    iput-wide v14, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_9
    iput v4, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 178
    .line 179
    iget-object v12, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 180
    .line 181
    iput-object v12, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 182
    .line 183
    iget-wide v14, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 184
    .line 185
    iput-wide v14, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 186
    .line 187
    :goto_1
    iput v11, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 188
    .line 189
    iget-object v11, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 190
    .line 191
    iput-object v11, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 192
    .line 193
    iget v11, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 194
    .line 195
    iput v11, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 196
    .line 197
    iget v11, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 198
    .line 199
    iput v11, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 200
    .line 201
    iget v11, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 202
    .line 203
    iput v11, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_a
    move-object v5, v3

    .line 207
    :goto_2
    iput-boolean v10, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->O:Z

    .line 208
    .line 209
    iget-object v11, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    if-eqz v11, :cond_c

    .line 216
    .line 217
    if-ne v4, v9, :cond_b

    .line 218
    .line 219
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 220
    .line 221
    iget v2, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 222
    .line 223
    iget v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 224
    .line 225
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter;->r()Ljava/util/regex/Pattern;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :cond_b
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 236
    .line 237
    iget v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 238
    .line 239
    iget v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 240
    .line 241
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :cond_c
    invoke-static {v5}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    invoke-static {v11}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 250
    .line 251
    .line 252
    move-result v12

    .line 253
    if-eqz v12, :cond_13

    .line 254
    .line 255
    iget-object v1, v0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 256
    .line 257
    if-nez v1, :cond_d

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_d
    iget v1, v1, Lcom/mycompany/app/fragment/FragmentExpandView;->h:I

    .line 261
    .line 262
    if-eqz v1, :cond_e

    .line 263
    .line 264
    move v8, v7

    .line 265
    :cond_e
    :goto_3
    if-eqz v8, :cond_10

    .line 266
    .line 267
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 268
    .line 269
    invoke-virtual {v1}, Landroid/view/View;->isActivated()Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-nez v1, :cond_10

    .line 274
    .line 275
    if-ne v4, v9, :cond_f

    .line 276
    .line 277
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 278
    .line 279
    iget v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 280
    .line 281
    iget v12, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 282
    .line 283
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter;->r()Ljava/util/regex/Pattern;

    .line 286
    .line 287
    .line 288
    move-result-object v14

    .line 289
    invoke-virtual {v1, v9, v12, v3, v14}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 290
    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_f
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 294
    .line 295
    iget v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 296
    .line 297
    iget v9, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 298
    .line 299
    invoke-virtual {v1, v3, v9}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 300
    .line 301
    .line 302
    :goto_4
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 303
    .line 304
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundImage;->s()V

    .line 305
    .line 306
    .line 307
    :cond_10
    iget v1, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 308
    .line 309
    if-ne v1, v13, :cond_11

    .line 310
    .line 311
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 312
    .line 313
    const v3, -0x70708

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 317
    .line 318
    .line 319
    :cond_11
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 320
    .line 321
    iget-object v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 322
    .line 323
    invoke-virtual {v1, v3, v8}, Lcom/mycompany/app/view/MyRoundImage;->r(Ljava/lang/String;Z)V

    .line 324
    .line 325
    .line 326
    if-ne v4, v6, :cond_12

    .line 327
    .line 328
    if-eqz v10, :cond_12

    .line 329
    .line 330
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 331
    .line 332
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 333
    .line 334
    .line 335
    :cond_12
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 336
    .line 337
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :cond_13
    if-ne v4, v9, :cond_14

    .line 342
    .line 343
    iget-object v2, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 344
    .line 345
    iget v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 346
    .line 347
    iget v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 348
    .line 349
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 350
    .line 351
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter;->r()Ljava/util/regex/Pattern;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    invoke-virtual {v2, v4, v6, v3, v7}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 356
    .line 357
    .line 358
    goto :goto_5

    .line 359
    :cond_14
    iget-object v2, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 360
    .line 361
    iget v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 362
    .line 363
    iget v4, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 364
    .line 365
    invoke-virtual {v2, v3, v4}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 366
    .line 367
    .line 368
    :goto_5
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/expand/ExpandListAdapter;->e(I)Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    if-nez v2, :cond_15

    .line 373
    .line 374
    iget-object v2, v0, Lcom/mycompany/app/main/MainListAdapter;->v:Lcom/mycompany/app/main/MainListLoader;

    .line 375
    .line 376
    invoke-virtual {v2, v5, v1}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 377
    .line 378
    .line 379
    :cond_15
    :goto_6
    return-void
.end method

.method public final B(IZ)Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/mycompany/app/main/MainListAdapter;->e:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-nez p2, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/mycompany/app/main/MainListAdapter;->p:I

    .line 12
    .line 13
    if-ne p2, p1, :cond_1

    .line 14
    .line 15
    :goto_0
    return v2

    .line 16
    :cond_1
    iput p1, p0, Lcom/mycompany/app/main/MainListAdapter;->p:I

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    move p2, v2

    .line 23
    :goto_1
    if-ge p2, p1, :cond_11

    .line 24
    .line 25
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 26
    .line 27
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    goto/16 :goto_8

    .line 34
    .line 35
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    goto/16 :goto_8

    .line 42
    .line 43
    :cond_3
    instance-of v3, v1, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 44
    .line 45
    const v4, -0xbbcca

    .line 46
    .line 47
    .line 48
    const v5, -0x50506

    .line 49
    .line 50
    .line 51
    const/high16 v6, -0x1000000

    .line 52
    .line 53
    if-eqz v3, :cond_8

    .line 54
    .line 55
    check-cast v1, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 56
    .line 57
    iget v3, v1, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->m:I

    .line 58
    .line 59
    iget v7, p0, Lcom/mycompany/app/main/MainListAdapter;->p:I

    .line 60
    .line 61
    invoke-virtual {p0, v7}, Lcom/mycompany/app/main/MainListAdapter;->l(I)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-ne v3, v7, :cond_6

    .line 66
    .line 67
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefUtil;->b(I)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_4

    .line 72
    .line 73
    iget-object v1, v1, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_8

    .line 79
    .line 80
    :cond_4
    iget-object v1, v1, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 83
    .line 84
    if-eqz v3, :cond_5

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    move v5, v6

    .line 88
    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_8

    .line 92
    .line 93
    :cond_6
    iget-object v1, v1, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 94
    .line 95
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 96
    .line 97
    if-eqz v3, :cond_7

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_7
    move v5, v6

    .line 101
    :goto_3
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_8

    .line 105
    .line 106
    :cond_8
    instance-of v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 107
    .line 108
    if-eqz v3, :cond_10

    .line 109
    .line 110
    check-cast v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 111
    .line 112
    iget v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    .line 113
    .line 114
    iget v7, p0, Lcom/mycompany/app/main/MainListAdapter;->p:I

    .line 115
    .line 116
    if-ne v3, v7, :cond_9

    .line 117
    .line 118
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefUtil;->b(I)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_9

    .line 123
    .line 124
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    .line 126
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_9
    iget-boolean v3, p0, Lcom/mycompany/app/main/MainListAdapter;->r:Z

    .line 131
    .line 132
    if-eqz v3, :cond_b

    .line 133
    .line 134
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 135
    .line 136
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 137
    .line 138
    if-eqz v4, :cond_a

    .line 139
    .line 140
    const v6, -0x3e3e3f

    .line 141
    .line 142
    .line 143
    :cond_a
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_b
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 148
    .line 149
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 150
    .line 151
    if-eqz v4, :cond_c

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_c
    move v5, v6

    .line 155
    :goto_4
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    .line 157
    .line 158
    :goto_5
    iget-object v3, p0, Lcom/mycompany/app/main/MainListAdapter;->x:Lcom/mycompany/app/main/MainListAdapter$ListMoreListener;

    .line 159
    .line 160
    if-eqz v3, :cond_f

    .line 161
    .line 162
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 163
    .line 164
    iget-boolean v4, p0, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 165
    .line 166
    const/4 v5, 0x4

    .line 167
    if-eqz v4, :cond_d

    .line 168
    .line 169
    move v4, v5

    .line 170
    goto :goto_6

    .line 171
    :cond_d
    move v4, v2

    .line 172
    :goto_6
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 176
    .line 177
    iget v4, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    .line 178
    .line 179
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 187
    .line 188
    new-instance v4, Lcom/mycompany/app/main/MainListAdapter$11;

    .line 189
    .line 190
    invoke-direct {v4, p0}, Lcom/mycompany/app/main/MainListAdapter$11;-><init>(Lcom/mycompany/app/main/MainListAdapter;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->r:Lcom/mycompany/app/view/MySwitchView;

    .line 197
    .line 198
    if-eqz v1, :cond_10

    .line 199
    .line 200
    iget-boolean v3, p0, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 201
    .line 202
    if-eqz v3, :cond_e

    .line 203
    .line 204
    goto :goto_7

    .line 205
    :cond_e
    move v5, v2

    .line 206
    :goto_7
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_8

    .line 210
    :cond_f
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 211
    .line 212
    const/16 v4, 0x8

    .line 213
    .line 214
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->r:Lcom/mycompany/app/view/MySwitchView;

    .line 218
    .line 219
    if-eqz v1, :cond_10

    .line 220
    .line 221
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 222
    .line 223
    .line 224
    :cond_10
    :goto_8
    add-int/lit8 p2, p2, 0x1

    .line 225
    .line 226
    goto/16 :goto_1

    .line 227
    .line 228
    :cond_11
    const/4 p1, 0x1

    .line 229
    return p1
.end method

.method public final C()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_5

    .line 12
    .line 13
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    instance-of v3, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 30
    .line 31
    if-eqz v3, :cond_4

    .line 32
    .line 33
    check-cast v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 34
    .line 35
    iget-boolean v3, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->x:Z

    .line 36
    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->c:Lcom/mycompany/app/view/MySelectView;

    .line 40
    .line 41
    iget v2, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Lcom/mycompany/app/view/MySelectView;->c(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    iget-object v2, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->c:Lcom/mycompany/app/view/MySelectView;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/mycompany/app/view/MySelectView;->b()V

    .line 50
    .line 51
    .line 52
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    :goto_2
    return-void
.end method

.method public final D(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_5

    .line 12
    .line 13
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    instance-of v3, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 30
    .line 31
    if-eqz v3, :cond_4

    .line 32
    .line 33
    check-cast v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 34
    .line 35
    iget v3, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    .line 36
    .line 37
    if-ne v3, p1, :cond_3

    .line 38
    .line 39
    iget-object v2, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->c:Lcom/mycompany/app/view/MySelectView;

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Lcom/mycompany/app/view/MySelectView;->c(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    iget-object v2, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->c:Lcom/mycompany/app/view/MySelectView;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/mycompany/app/view/MySelectView;->b()V

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
    :goto_2
    return-void
.end method

.method public final c(Landroid/view/View;II)Landroid/view/View;
    .locals 26

    move-object/from16 v0, p0

    .line 1
    iget-object v3, v0, Lcom/mycompany/app/main/MainListAdapter;->d:Landroid/content/Context;

    iget v6, v0, Lcom/mycompany/app/main/MainListAdapter;->e:I

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/16 v11, 0x20

    const/4 v13, 0x4

    const/4 v15, -0x1

    const/16 v7, 0x8

    if-nez v5, :cond_e

    const/high16 v5, 0x41400000    # 12.0f

    const/4 v12, -0x2

    const/4 v14, 0x6

    if-ne v6, v11, :cond_2

    if-nez v3, :cond_1

    move/from16 v24, v6

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 3
    :cond_1
    new-instance v11, Lcom/mycompany/app/view/MyListChild;

    invoke-direct {v11, v3}, Lcom/mycompany/app/view/MyListChild;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v15, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    sget v4, Lnet/kaki87/soul2/testing/R$id;->main_down_ftext:I

    .line 6
    sget v12, Lnet/kaki87/soul2/testing/R$id;->main_down_button:I

    .line 7
    new-instance v8, Lcom/mycompany/app/view/MySelectView;

    invoke-direct {v8, v3}, Lcom/mycompany/app/view/MySelectView;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v8, v7}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 9
    invoke-static {v15, v15, v14, v4}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    .line 10
    invoke-virtual {v9, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 11
    invoke-virtual {v11, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v14, 0x42a00000    # 80.0f

    .line 13
    invoke-static {v3, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v14

    float-to-int v14, v14

    .line 14
    invoke-virtual {v11, v9, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 15
    new-instance v7, Lcom/mycompany/app/view/MyRoundImage;

    invoke-direct {v7, v3}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 16
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 17
    invoke-static {v3, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    .line 18
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 19
    invoke-virtual {v7, v10}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 20
    invoke-virtual {v7, v13}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 21
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v13, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 22
    iput v2, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 23
    invoke-virtual {v9, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    new-instance v13, Lcom/mycompany/app/view/MyRoundImage;

    invoke-direct {v13, v3}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {v13, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 26
    invoke-virtual {v13, v10}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 27
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 28
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 29
    invoke-virtual {v9, v13, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    const/16 v5, 0x10

    .line 32
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 33
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v10, v15, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 34
    invoke-virtual {v2, v14}, Landroid/view/View;->setMinimumHeight(I)V

    .line 35
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x1

    invoke-direct {v10, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 36
    invoke-virtual {v10, v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v5, 0x42a80000    # 84.0f

    .line 37
    invoke-static {v3, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 38
    invoke-virtual {v11, v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v10, 0x0

    .line 40
    invoke-direct {v5, v3, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    sget v14, Lnet/kaki87/soul2/testing/R$id;->main_down_name:I

    .line 42
    invoke-virtual {v5, v14}, Landroid/view/View;->setId(I)V

    const/4 v15, 0x1

    .line 43
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v10, 0x41800000    # 16.0f

    .line 44
    invoke-virtual {v5, v15, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v10, -0x2

    .line 45
    invoke-virtual {v2, v5, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 46
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v15, 0x0

    .line 47
    invoke-direct {v10, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    sget v15, Lnet/kaki87/soul2/testing/R$id;->main_down_date:I

    .line 49
    invoke-virtual {v10, v15}, Landroid/view/View;->setId(I)V

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v0, 0x41600000    # 14.0f

    .line 51
    invoke-virtual {v10, v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    move/from16 v24, v6

    const/4 v0, -0x2

    const/4 v1, 0x3

    .line 52
    invoke-static {v0, v0, v1, v14}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    .line 53
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 54
    invoke-virtual {v2, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v6, 0x0

    .line 56
    invoke-direct {v0, v3, v6}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v6, 0x1

    .line 57
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object/from16 v19, v10

    const/high16 v10, 0x41600000    # 14.0f

    .line 58
    invoke-virtual {v0, v6, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v10, -0x2

    .line 59
    invoke-static {v10, v10, v1, v14}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    const/16 v1, 0x11

    .line 60
    invoke-virtual {v6, v1, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 61
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 62
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 63
    invoke-virtual {v2, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v1, Lcom/mycompany/app/view/MyProgressBar;

    invoke-direct {v1, v3}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 65
    sget v6, Lnet/kaki87/soul2/testing/R$id;->main_down_prog:I

    .line 66
    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    const/16 v10, 0x64

    .line 67
    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MyProgressBar;->setMax(I)V

    const/16 v10, 0x8

    .line 68
    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 69
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    move-object/from16 v21, v0

    const/4 v0, -0x1

    invoke-direct {v10, v0, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    .line 70
    invoke-virtual {v10, v0, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 71
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 72
    invoke-virtual {v2, v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v15, 0x0

    .line 74
    invoke-direct {v0, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    sget v10, Lnet/kaki87/soul2/testing/R$id;->main_down_percent:I

    .line 76
    invoke-virtual {v0, v10}, Landroid/view/View;->setId(I)V

    const/high16 v14, 0x41400000    # 12.0f

    const/4 v15, 0x1

    .line 77
    invoke-virtual {v0, v15, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/16 v14, 0x8

    .line 78
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 79
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v14, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v15, 0x3

    .line 80
    invoke-virtual {v14, v15, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v15, 0x15

    .line 81
    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    invoke-virtual {v2, v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v15, 0x0

    .line 84
    invoke-direct {v14, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v15, 0x1

    .line 85
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object/from16 v25, v0

    const/high16 v0, 0x41400000    # 12.0f

    .line 86
    invoke-virtual {v14, v15, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/16 v0, 0x8

    .line 87
    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v18, v1

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v15, -0x2

    .line 88
    invoke-static {v1, v15, v0, v6}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v6, 0x10

    .line 89
    invoke-virtual {v0, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 90
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 91
    invoke-virtual {v2, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v0, v12}, Landroid/view/View;->setId(I)V

    .line 94
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v15, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0x15

    .line 95
    invoke-virtual {v6, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x6

    .line 96
    invoke-virtual {v6, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v10, 0x8

    .line 97
    invoke-virtual {v6, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 98
    invoke-virtual {v11, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 100
    sget v4, Lnet/kaki87/soul2/testing/R$id;->main_down_pause:I

    .line 101
    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 102
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 104
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v12, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 105
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    iput v15, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 106
    invoke-virtual {v0, v1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v12, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 109
    invoke-virtual {v12, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 110
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v15, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x11

    .line 111
    invoke-virtual {v15, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 112
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    iput v4, v15, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 113
    invoke-virtual {v0, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v4, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v10, 0x8

    .line 116
    invoke-virtual {v4, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 117
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 118
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    iput v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 119
    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v6, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 121
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object v11, v6, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->a:Lcom/mycompany/app/view/MyListChild;

    .line 123
    iput-object v8, v6, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->c:Lcom/mycompany/app/view/MySelectView;

    .line 124
    iput-object v9, v6, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->d:Landroid/widget/FrameLayout;

    .line 125
    iput-object v7, v6, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 126
    iput-object v13, v6, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 127
    iput-object v2, v6, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->g:Landroid/widget/RelativeLayout;

    .line 128
    iput-object v5, v6, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v2, v19

    .line 129
    iput-object v2, v6, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v2, v21

    .line 130
    iput-object v2, v6, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    iput-object v0, v6, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->n:Landroid/view/ViewGroup;

    .line 132
    iput-object v4, v6, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    move-object/from16 v0, v18

    .line 133
    iput-object v0, v6, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    .line 134
    iput-object v14, v6, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v0, v25

    .line 135
    iput-object v0, v6, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 136
    iput-object v1, v6, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 137
    iput-object v12, v6, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    :goto_1
    move-object v5, v6

    goto/16 :goto_8

    :cond_2
    move/from16 v24, v6

    const/16 v0, 0x12

    if-eq v6, v0, :cond_3

    const/16 v0, 0x13

    if-eq v6, v0, :cond_3

    const/16 v0, 0x14

    if-eq v6, v0, :cond_3

    const/16 v15, 0x15

    if-eq v6, v15, :cond_3

    const/16 v0, 0x16

    if-eq v6, v0, :cond_3

    const/16 v0, 0x18

    if-eq v6, v0, :cond_3

    const/16 v0, 0x1c

    if-eq v6, v0, :cond_3

    const/16 v0, 0x1d

    if-eq v6, v0, :cond_3

    const/16 v0, 0x1e

    if-eq v6, v0, :cond_3

    const/16 v0, 0x1f

    if-eq v6, v0, :cond_3

    const/16 v0, 0x24

    if-eq v6, v0, :cond_3

    const/16 v0, 0x2a

    if-ne v6, v0, :cond_4

    :cond_3
    move/from16 v24, v6

    goto/16 :goto_6

    :cond_4
    const/16 v0, 0x23

    if-ne v6, v0, :cond_6

    if-nez v3, :cond_5

    move/from16 v24, v6

    const/4 v4, 0x0

    goto/16 :goto_2

    .line 138
    :cond_5
    new-instance v0, Lcom/mycompany/app/view/MyListChild;

    invoke-direct {v0, v3}, Lcom/mycompany/app/view/MyListChild;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v15, -0x2

    invoke-direct {v1, v2, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    sget v1, Lnet/kaki87/soul2/testing/R$id;->main_search_ftext:I

    .line 141
    sget v4, Lnet/kaki87/soul2/testing/R$id;->main_search_button:I

    .line 142
    new-instance v5, Lcom/mycompany/app/view/MySelectView;

    invoke-direct {v5, v3}, Lcom/mycompany/app/view/MySelectView;-><init>(Landroid/content/Context;)V

    const/16 v10, 0x8

    .line 143
    invoke-virtual {v5, v10}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    const/4 v7, 0x6

    .line 144
    invoke-static {v2, v2, v7, v1}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v8

    .line 145
    invoke-virtual {v8, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 146
    invoke-virtual {v0, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 148
    sget v7, Lcom/mycompany/app/main/MainApp;->h1:I

    invoke-virtual {v0, v2, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 149
    new-instance v7, Lcom/mycompany/app/view/MyRoundImage;

    invoke-direct {v7, v3}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x42000000    # 32.0f

    .line 150
    invoke-static {v3, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v8

    float-to-int v8, v8

    int-to-float v9, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 151
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 152
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    invoke-virtual {v7, v11}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 153
    invoke-virtual {v7, v9}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    const/4 v11, 0x4

    .line 154
    invoke-virtual {v7, v11}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 155
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x11

    .line 156
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 157
    invoke-virtual {v2, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v11, Lcom/mycompany/app/view/MyRoundImage;

    invoke-direct {v11, v3}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 160
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    invoke-virtual {v11, v10}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 161
    invoke-virtual {v11, v9}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 162
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 163
    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 164
    invoke-virtual {v2, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v8, Landroid/widget/RelativeLayout;

    invoke-direct {v8, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {v8, v1}, Landroid/view/View;->setId(I)V

    const/16 v9, 0x10

    .line 167
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 168
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    const/4 v15, 0x0

    invoke-virtual {v8, v15, v10, v15, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 169
    sget v10, Lcom/mycompany/app/main/MainApp;->h1:I

    invoke-virtual {v8, v10}, Landroid/view/View;->setMinimumHeight(I)V

    .line 170
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v15, -0x2

    invoke-direct {v10, v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 171
    invoke-virtual {v10, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 172
    sget v9, Lcom/mycompany/app/main/MainApp;->h1:I

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 173
    invoke-virtual {v0, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v10, 0x0

    .line 175
    invoke-direct {v9, v3, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    sget v12, Lnet/kaki87/soul2/testing/R$id;->main_search_name:I

    .line 177
    invoke-virtual {v9, v12}, Landroid/view/View;->setId(I)V

    const/4 v13, 0x1

    .line 178
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v14, 0x41800000    # 16.0f

    .line 179
    invoke-virtual {v9, v13, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 180
    invoke-virtual {v8, v9, v15, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 181
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 182
    invoke-direct {v14, v3, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    sget v10, Lnet/kaki87/soul2/testing/R$id;->main_search_date:I

    .line 184
    invoke-virtual {v14, v10}, Landroid/view/View;->setId(I)V

    .line 185
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    move/from16 v24, v6

    const/4 v6, 0x0

    invoke-virtual {v14, v6, v6, v15, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 186
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 187
    invoke-virtual {v14, v13, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v6, 0x3

    const/4 v15, -0x2

    .line 188
    invoke-static {v15, v15, v6, v12}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v13

    .line 189
    sget v6, Lcom/mycompany/app/main/MainApp;->G1:I

    iput v6, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 190
    invoke-virtual {v8, v14, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v13, 0x0

    .line 192
    invoke-direct {v6, v3, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v13, 0x1

    .line 193
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object/from16 v19, v14

    const/high16 v14, 0x41600000    # 14.0f

    .line 194
    invoke-virtual {v6, v13, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v13, 0x3

    .line 195
    invoke-static {v15, v15, v13, v12}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v12

    const/16 v13, 0x11

    .line 196
    invoke-virtual {v12, v13, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 197
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    iput v10, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 198
    invoke-virtual {v8, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 200
    invoke-virtual {v10, v4}, Landroid/view/View;->setId(I)V

    .line 201
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    invoke-virtual {v10, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 202
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v4, v15, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0x15

    .line 203
    invoke-virtual {v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v12, 0x6

    .line 204
    invoke-virtual {v4, v12, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v14, 0x8

    .line 205
    invoke-virtual {v4, v14, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 206
    invoke-virtual {v0, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 208
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 209
    invoke-virtual {v1, v14}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 210
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v4, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 211
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 212
    invoke-virtual {v10, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v4, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 214
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object v0, v4, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->a:Lcom/mycompany/app/view/MyListChild;

    .line 216
    iput-object v5, v4, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->c:Lcom/mycompany/app/view/MySelectView;

    .line 217
    iput-object v2, v4, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->d:Landroid/widget/FrameLayout;

    .line 218
    iput-object v7, v4, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 219
    iput-object v11, v4, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 220
    iput-object v8, v4, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->g:Landroid/widget/RelativeLayout;

    .line 221
    iput-object v9, v4, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v0, v19

    .line 222
    iput-object v0, v4, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 223
    iput-object v6, v4, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 224
    iput-object v10, v4, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->n:Landroid/view/ViewGroup;

    .line 225
    iput-object v1, v4, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    :goto_2
    move-object v5, v4

    goto/16 :goto_8

    :cond_6
    const/16 v0, 0x19

    if-eq v6, v0, :cond_7

    const/16 v0, 0x1a

    if-eq v6, v0, :cond_7

    const/16 v0, 0x1b

    if-ne v6, v0, :cond_8

    :cond_7
    move/from16 v24, v6

    goto/16 :goto_4

    :cond_8
    if-nez v3, :cond_9

    move/from16 v24, v6

    const/4 v2, 0x0

    goto/16 :goto_3

    .line 226
    :cond_9
    new-instance v0, Lcom/mycompany/app/view/MyListChild;

    invoke-direct {v0, v3}, Lcom/mycompany/app/view/MyListChild;-><init>(Landroid/content/Context;)V

    .line 227
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    const/4 v15, -0x2

    invoke-direct {v1, v12, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    sget v1, Lnet/kaki87/soul2/testing/R$id;->main_child_ftext:I

    .line 229
    sget v2, Lnet/kaki87/soul2/testing/R$id;->main_child_button:I

    .line 230
    new-instance v4, Lcom/mycompany/app/view/MySelectView;

    invoke-direct {v4, v3}, Lcom/mycompany/app/view/MySelectView;-><init>(Landroid/content/Context;)V

    const/16 v10, 0x8

    .line 231
    invoke-virtual {v4, v10}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    const/4 v7, 0x6

    .line 232
    invoke-static {v12, v12, v7, v1}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    .line 233
    invoke-virtual {v5, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 234
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x42a00000    # 80.0f

    .line 236
    invoke-static {v3, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    .line 237
    invoke-virtual {v0, v5, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 238
    new-instance v8, Lcom/mycompany/app/view/MyRoundImage;

    invoke-direct {v8, v3}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 239
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v14, 0x41400000    # 12.0f

    .line 240
    invoke-static {v3, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v10

    .line 241
    invoke-virtual {v8, v10}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    const/4 v11, 0x4

    .line 242
    invoke-virtual {v8, v11}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 243
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    sget v12, Lcom/mycompany/app/main/MainApp;->i1:I

    invoke-direct {v11, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x11

    .line 244
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 245
    invoke-virtual {v5, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance v11, Lcom/mycompany/app/view/MyRoundImage;

    invoke-direct {v11, v3}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 247
    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 248
    invoke-virtual {v11, v10}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 249
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    sget v10, Lcom/mycompany/app/main/MainApp;->i1:I

    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 250
    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 251
    invoke-virtual {v5, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    new-instance v9, Landroid/widget/RelativeLayout;

    invoke-direct {v9, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 253
    invoke-virtual {v9, v1}, Landroid/view/View;->setId(I)V

    const/16 v10, 0x10

    .line 254
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 255
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v12, v15, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 256
    invoke-virtual {v9, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 257
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v15, -0x2

    invoke-direct {v7, v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 258
    invoke-virtual {v7, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v10, 0x42a80000    # 84.0f

    .line 259
    invoke-static {v3, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 260
    invoke-virtual {v0, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v15, 0x0

    .line 262
    invoke-direct {v7, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 263
    sget v10, Lnet/kaki87/soul2/testing/R$id;->main_child_name:I

    .line 264
    invoke-virtual {v7, v10}, Landroid/view/View;->setId(I)V

    const/4 v13, 0x1

    .line 265
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v14, 0x41800000    # 16.0f

    .line 266
    invoke-virtual {v7, v13, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v14, -0x2

    .line 267
    invoke-virtual {v9, v7, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 268
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 269
    invoke-direct {v12, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 270
    sget v15, Lnet/kaki87/soul2/testing/R$id;->main_child_date:I

    .line 271
    invoke-virtual {v12, v15}, Landroid/view/View;->setId(I)V

    .line 272
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    move/from16 v24, v6

    const/high16 v6, 0x41600000    # 14.0f

    .line 273
    invoke-virtual {v12, v13, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v6, 0x3

    .line 274
    invoke-static {v14, v14, v6, v10}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v13

    .line 275
    sget v6, Lcom/mycompany/app/main/MainApp;->G1:I

    iput v6, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 276
    invoke-virtual {v9, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v13, 0x0

    .line 278
    invoke-direct {v6, v3, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v13, 0x1

    .line 279
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object/from16 v19, v12

    const/high16 v12, 0x41600000    # 14.0f

    .line 280
    invoke-virtual {v6, v13, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v13, 0x3

    .line 281
    invoke-static {v14, v14, v13, v10}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v10

    const/16 v12, 0x11

    .line 282
    invoke-virtual {v10, v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 283
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    iput v12, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 284
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 285
    invoke-virtual {v9, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 287
    invoke-virtual {v10, v2}, Landroid/view/View;->setId(I)V

    .line 288
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    invoke-virtual {v10, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 289
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v15, -0x2

    invoke-direct {v2, v15, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0x15

    .line 290
    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v12, 0x6

    .line 291
    invoke-virtual {v2, v12, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v14, 0x8

    .line 292
    invoke-virtual {v2, v14, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 293
    invoke-virtual {v0, v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 295
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 296
    invoke-virtual {v1, v14}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 297
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v2, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 298
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 299
    invoke-virtual {v10, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    new-instance v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 301
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object v0, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->a:Lcom/mycompany/app/view/MyListChild;

    .line 303
    iput-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->c:Lcom/mycompany/app/view/MySelectView;

    .line 304
    iput-object v5, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->d:Landroid/widget/FrameLayout;

    .line 305
    iput-object v8, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 306
    iput-object v11, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 307
    iput-object v9, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->g:Landroid/widget/RelativeLayout;

    .line 308
    iput-object v7, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v0, v19

    .line 309
    iput-object v0, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 310
    iput-object v6, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 311
    iput-object v10, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->n:Landroid/view/ViewGroup;

    .line 312
    iput-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    :goto_3
    move-object v5, v2

    goto/16 :goto_8

    :goto_4
    if-nez v3, :cond_a

    const/4 v11, 0x0

    goto/16 :goto_5

    .line 313
    :cond_a
    new-instance v0, Lcom/mycompany/app/view/MyListChild;

    invoke-direct {v0, v3}, Lcom/mycompany/app/view/MyListChild;-><init>(Landroid/content/Context;)V

    .line 314
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    const/4 v15, -0x2

    invoke-direct {v1, v12, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    sget v1, Lnet/kaki87/soul2/testing/R$id;->main_filter_ftext:I

    .line 316
    sget v2, Lnet/kaki87/soul2/testing/R$id;->main_filter_button:I

    .line 317
    new-instance v4, Lcom/mycompany/app/view/MySelectView;

    invoke-direct {v4, v3}, Lcom/mycompany/app/view/MySelectView;-><init>(Landroid/content/Context;)V

    const/16 v10, 0x8

    .line 318
    invoke-virtual {v4, v10}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    const/4 v7, 0x6

    .line 319
    invoke-static {v12, v12, v7, v1}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    .line 320
    invoke-virtual {v5, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 321
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 323
    sget v6, Lcom/mycompany/app/main/MainApp;->h1:I

    invoke-virtual {v0, v5, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 324
    new-instance v6, Lcom/mycompany/app/view/MyRoundImage;

    invoke-direct {v6, v3}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x41c00000    # 24.0f

    .line 325
    invoke-static {v3, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    int-to-float v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 326
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 327
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 328
    invoke-virtual {v6, v8}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    const/4 v11, 0x4

    .line 329
    invoke-virtual {v6, v11}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 330
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x11

    .line 331
    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 332
    invoke-virtual {v5, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    new-instance v10, Lcom/mycompany/app/view/MyRoundImage;

    invoke-direct {v10, v3}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 334
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 335
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    invoke-virtual {v10, v9}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 336
    invoke-virtual {v10, v8}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 337
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 338
    iput v12, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 339
    invoke-virtual {v5, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 341
    invoke-virtual {v7, v1}, Landroid/view/View;->setId(I)V

    const/16 v9, 0x10

    .line 342
    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 343
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    const/4 v15, 0x0

    invoke-virtual {v7, v15, v8, v15, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 344
    sget v8, Lcom/mycompany/app/main/MainApp;->h1:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setMinimumHeight(I)V

    .line 345
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v15, -0x2

    invoke-direct {v8, v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 346
    invoke-virtual {v8, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 347
    sget v9, Lcom/mycompany/app/main/MainApp;->h1:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 348
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 349
    invoke-virtual {v0, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v15, 0x0

    .line 351
    invoke-direct {v8, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 352
    sget v9, Lnet/kaki87/soul2/testing/R$id;->main_filter_name:I

    .line 353
    invoke-virtual {v8, v9}, Landroid/view/View;->setId(I)V

    const/4 v13, 0x1

    .line 354
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v14, 0x41800000    # 16.0f

    .line 355
    invoke-virtual {v8, v13, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v14, -0x2

    .line 356
    invoke-virtual {v7, v8, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 357
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 358
    invoke-direct {v11, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 359
    sget v12, Lnet/kaki87/soul2/testing/R$id;->main_filter_date:I

    .line 360
    invoke-virtual {v11, v12}, Landroid/view/View;->setId(I)V

    .line 361
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v15, 0x41600000    # 14.0f

    .line 362
    invoke-virtual {v11, v13, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v15, 0x3

    .line 363
    invoke-static {v14, v14, v15, v9}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v13

    .line 364
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    iput v14, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 365
    invoke-virtual {v7, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    new-instance v13, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v14, 0x0

    .line 367
    invoke-direct {v13, v3, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v14, 0x1

    .line 368
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object/from16 v18, v11

    const/high16 v11, 0x41600000    # 14.0f

    .line 369
    invoke-virtual {v13, v14, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v14, -0x2

    .line 370
    invoke-static {v14, v14, v15, v9}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    const/16 v11, 0x11

    .line 371
    invoke-virtual {v9, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 372
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    iput v11, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 373
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 374
    invoke-virtual {v7, v13, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 376
    invoke-virtual {v9, v2}, Landroid/view/View;->setId(I)V

    .line 377
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    invoke-virtual {v9, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 378
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v15, -0x2

    invoke-direct {v2, v15, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0x15

    .line 379
    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v12, 0x6

    .line 380
    invoke-virtual {v2, v12, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v14, 0x8

    .line 381
    invoke-virtual {v2, v14, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 382
    invoke-virtual {v0, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    new-instance v1, Lcom/mycompany/app/view/MySwitchView;

    invoke-direct {v1, v3}, Lcom/mycompany/app/view/MySwitchView;-><init>(Landroid/content/Context;)V

    .line 384
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 385
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v2, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 386
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 387
    invoke-virtual {v9, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 389
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 390
    invoke-virtual {v2, v14}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 391
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v11, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 392
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 393
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 394
    invoke-virtual {v9, v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    new-instance v11, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 396
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object v0, v11, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->a:Lcom/mycompany/app/view/MyListChild;

    .line 398
    iput-object v4, v11, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->c:Lcom/mycompany/app/view/MySelectView;

    .line 399
    iput-object v5, v11, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->d:Landroid/widget/FrameLayout;

    .line 400
    iput-object v6, v11, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 401
    iput-object v10, v11, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 402
    iput-object v7, v11, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->g:Landroid/widget/RelativeLayout;

    .line 403
    iput-object v8, v11, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v0, v18

    .line 404
    iput-object v0, v11, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 405
    iput-object v13, v11, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 406
    iput-object v9, v11, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->n:Landroid/view/ViewGroup;

    .line 407
    iput-object v2, v11, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 408
    iput-object v1, v11, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->r:Lcom/mycompany/app/view/MySwitchView;

    :goto_5
    move-object v5, v11

    goto/16 :goto_8

    :goto_6
    const/4 v0, 0x0

    if-nez v3, :cond_b

    goto/16 :goto_7

    .line 409
    :cond_b
    new-instance v1, Lcom/mycompany/app/view/MyListChild;

    invoke-direct {v1, v3}, Lcom/mycompany/app/view/MyListChild;-><init>(Landroid/content/Context;)V

    .line 410
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    sget v2, Lnet/kaki87/soul2/testing/R$id;->main_small_ftext:I

    .line 412
    sget v6, Lnet/kaki87/soul2/testing/R$id;->main_small_button:I

    .line 413
    new-instance v7, Lcom/mycompany/app/view/MySelectView;

    invoke-direct {v7, v3}, Lcom/mycompany/app/view/MySelectView;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x8

    .line 414
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    const/4 v9, 0x6

    .line 415
    invoke-static {v4, v4, v9, v2}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v10

    .line 416
    invoke-virtual {v10, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 417
    invoke-virtual {v1, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 419
    sget v11, Lcom/mycompany/app/main/MainApp;->h1:I

    invoke-virtual {v1, v10, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 420
    new-instance v11, Lcom/mycompany/app/view/MyRoundImage;

    invoke-direct {v11, v3}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    const/high16 v12, 0x41c00000    # 24.0f

    .line 421
    invoke-static {v3, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v12

    float-to-int v12, v12

    int-to-float v13, v12

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    .line 422
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 423
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    invoke-virtual {v11, v15}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 424
    invoke-virtual {v11, v13}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    const/4 v15, 0x4

    .line 425
    invoke-virtual {v11, v15}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 426
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v15, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x11

    .line 427
    iput v8, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 428
    invoke-virtual {v10, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    new-instance v15, Lcom/mycompany/app/view/MyRoundImage;

    invoke-direct {v15, v3}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 430
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 431
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    invoke-virtual {v15, v14}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 432
    invoke-virtual {v15, v13}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 433
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v13, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 434
    iput v8, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 435
    invoke-virtual {v10, v15, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    new-instance v12, Landroid/widget/RelativeLayout;

    invoke-direct {v12, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 437
    invoke-virtual {v12, v2}, Landroid/view/View;->setId(I)V

    const/16 v13, 0x10

    .line 438
    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 439
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    const/4 v9, 0x0

    invoke-virtual {v12, v9, v14, v9, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 440
    sget v14, Lcom/mycompany/app/main/MainApp;->h1:I

    invoke-virtual {v12, v14}, Landroid/view/View;->setMinimumHeight(I)V

    .line 441
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v14, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 442
    invoke-virtual {v14, v13, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 443
    sget v13, Lcom/mycompany/app/main/MainApp;->h1:I

    invoke-virtual {v14, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 444
    invoke-virtual {v1, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    new-instance v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 446
    invoke-direct {v13, v3, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 447
    sget v14, Lnet/kaki87/soul2/testing/R$id;->main_small_name:I

    .line 448
    invoke-virtual {v13, v14}, Landroid/view/View;->setId(I)V

    const/4 v4, 0x1

    .line 449
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v8, 0x41800000    # 16.0f

    .line 450
    invoke-virtual {v13, v4, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 451
    invoke-virtual {v12, v13, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 452
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 453
    invoke-direct {v8, v3, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 454
    sget v0, Lnet/kaki87/soul2/testing/R$id;->main_small_date:I

    .line 455
    invoke-virtual {v8, v0}, Landroid/view/View;->setId(I)V

    .line 456
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    invoke-virtual {v8, v9, v9, v5, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 457
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v5, 0x41600000    # 14.0f

    .line 458
    invoke-virtual {v8, v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v9, 0x3

    const/4 v5, -0x2

    .line 459
    invoke-static {v5, v5, v9, v14}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    .line 460
    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 461
    invoke-virtual {v12, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v5, 0x0

    .line 463
    invoke-direct {v4, v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v5, 0x1

    .line 464
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object/from16 v23, v8

    const/high16 v8, 0x41600000    # 14.0f

    .line 465
    invoke-virtual {v4, v5, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v5, -0x2

    .line 466
    invoke-static {v5, v5, v9, v14}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v8

    const/16 v9, 0x11

    .line 467
    invoke-virtual {v8, v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 468
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 469
    invoke-virtual {v12, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 471
    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    .line 472
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    invoke-virtual {v0, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 473
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v6, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x15

    .line 474
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v5, 0x6

    .line 475
    invoke-virtual {v6, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0x8

    .line 476
    invoke-virtual {v6, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 477
    invoke-virtual {v1, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 479
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 480
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 481
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 482
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 483
    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    new-instance v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 485
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 486
    iput-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->a:Lcom/mycompany/app/view/MyListChild;

    .line 487
    iput-object v7, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->c:Lcom/mycompany/app/view/MySelectView;

    .line 488
    iput-object v10, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->d:Landroid/widget/FrameLayout;

    .line 489
    iput-object v11, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 490
    iput-object v15, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 491
    iput-object v12, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->g:Landroid/widget/RelativeLayout;

    .line 492
    iput-object v13, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, v23

    .line 493
    iput-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 494
    iput-object v4, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 495
    iput-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->n:Landroid/view/ViewGroup;

    .line 496
    iput-object v2, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    move-object v0, v5

    :goto_7
    move-object v5, v0

    :goto_8
    if-nez v5, :cond_c

    return-object p1

    .line 497
    :cond_c
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->a:Lcom/mycompany/app/view/MyListChild;

    if-nez v0, :cond_d

    return-object v0

    .line 498
    :cond_d
    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    goto :goto_9

    :cond_e
    move/from16 v24, v6

    move-object/from16 v2, p1

    .line 499
    :goto_9
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    const v6, -0xbbcca

    const v7, -0x9e9e9f

    const v8, -0x3e3e3f

    if-eqz v0, :cond_13

    .line 500
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, -0xc0c0c1

    if-eqz v0, :cond_f

    .line 501
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 502
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 503
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_dark_24:I

    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 504
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_18:I

    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 505
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 506
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    :cond_f
    move/from16 v9, v24

    const/16 v0, 0x1a

    if-ne v9, v0, :cond_10

    .line 507
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 508
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 509
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_18:I

    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    goto :goto_a

    :cond_10
    const/16 v0, 0x1f

    if-ne v9, v0, :cond_11

    .line 510
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    const v4, -0x4e3a0c

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 511
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 512
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_18:I

    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    goto :goto_a

    :cond_11
    const/16 v0, 0x2a

    if-ne v9, v0, :cond_12

    .line 513
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 514
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 515
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_18:I

    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    goto :goto_a

    .line 516
    :cond_12
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 517
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 518
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_24:I

    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 519
    :goto_a
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    goto/16 :goto_c

    :cond_13
    move/from16 v9, v24

    .line 520
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, -0x1f1f20

    if-eqz v0, :cond_14

    .line 521
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 522
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 523
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_black_24:I

    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 524
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_18:I

    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 525
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 526
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    :cond_14
    const/16 v0, 0x1a

    if-ne v9, v0, :cond_15

    .line 527
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 528
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 529
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_18:I

    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    goto :goto_b

    :cond_15
    const/16 v0, 0x1f

    if-ne v9, v0, :cond_16

    .line 530
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    const v4, -0xc0ae4b

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 531
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 532
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_18:I

    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    goto :goto_b

    :cond_16
    const/16 v0, 0x2a

    if-ne v9, v0, :cond_17

    .line 533
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 534
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 535
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_18:I

    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    goto :goto_b

    .line 536
    :cond_17
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 537
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 538
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_24:I

    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 539
    :goto_b
    iget-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 540
    :goto_c
    move-object v0, v2

    check-cast v0, Lcom/mycompany/app/view/MyListChild;

    iput-object v0, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->b:Lcom/mycompany/app/view/MyListChild;

    move-object/from16 v0, p0

    .line 541
    iget-object v1, v0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    const-wide/16 v10, -0x1

    if-eqz v1, :cond_18

    iget-object v4, v0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    if-eqz v4, :cond_18

    if-ltz p2, :cond_18

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v4, p2

    if-lt v4, v1, :cond_19

    :cond_18
    move-object v3, v5

    const/4 v12, -0x1

    const/4 v15, 0x0

    goto/16 :goto_2c

    .line 542
    :cond_19
    iget-object v1, v0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    if-nez v1, :cond_1a

    const/4 v12, -0x1

    .line 543
    iput v12, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->t:I

    .line 544
    iput v12, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->u:I

    .line 545
    iput v12, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    .line 546
    iput-wide v10, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->w:J

    const/4 v15, 0x0

    .line 547
    iput-boolean v15, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->x:Z

    .line 548
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->c:Lcom/mycompany/app/view/MySelectView;

    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    const/4 v13, 0x0

    .line 549
    invoke-virtual {v2, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 550
    invoke-virtual {v2, v15}, Landroid/view/View;->setActivated(Z)V

    return-object v2

    .line 551
    :cond_1a
    iget v12, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->e:I

    add-int v12, v12, p3

    if-ltz v12, :cond_1b

    .line 552
    iget-object v13, v0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lt v12, v13, :cond_1c

    :cond_1b
    move-object v3, v5

    move-wide/from16 v22, v10

    const/4 v12, -0x1

    goto/16 :goto_2b

    .line 553
    :cond_1c
    iget-object v13, v0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mycompany/app/main/MainItem$ChildItem;

    if-nez v13, :cond_1d

    const/4 v15, -0x1

    .line 554
    iput v15, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->t:I

    .line 555
    iput v15, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->u:I

    .line 556
    iput v15, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    .line 557
    iput-wide v10, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->w:J

    const/4 v15, 0x0

    .line 558
    iput-boolean v15, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->x:Z

    .line 559
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->c:Lcom/mycompany/app/view/MySelectView;

    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    const/4 v13, 0x0

    .line 560
    invoke-virtual {v2, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 561
    invoke-virtual {v2, v15}, Landroid/view/View;->setActivated(Z)V

    return-object v2

    :cond_1d
    const/4 v15, 0x0

    .line 562
    iget v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    iput v14, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->s:I

    const/high16 v17, -0x1000000

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    if-ne v14, v8, :cond_21

    const/4 v8, -0x1

    .line 563
    iput v8, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->t:I

    .line 564
    iput v8, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->u:I

    .line 565
    iput v8, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    .line 566
    iput-wide v10, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->w:J

    .line 567
    iput-boolean v15, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->x:Z

    .line 568
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->c:Lcom/mycompany/app/view/MySelectView;

    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 569
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 571
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 572
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 573
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    if-eqz v1, :cond_1e

    .line 575
    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 576
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 578
    :cond_1e
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->n:Landroid/view/ViewGroup;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 579
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->b:Lcom/mycompany/app/view/MyListChild;

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v15}, Lcom/mycompany/app/view/MyListChild;->b(ZZ)V

    .line 580
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    const/4 v11, 0x4

    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 581
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    invoke-virtual {v1, v15}, Landroid/view/View;->setActivated(Z)V

    .line 582
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    invoke-virtual {v1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 583
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    invoke-virtual {v1, v15}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 584
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    iget v3, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    invoke-virtual {v1, v15, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 585
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v3, :cond_1f

    const v17, -0x50506

    :cond_1f
    move/from16 v3, v17

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 587
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v1, :cond_20

    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    goto :goto_d

    :cond_20
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    :goto_d
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v15, 0x0

    .line 588
    invoke-virtual {v2, v15}, Landroid/view/View;->setActivated(Z)V

    return-object v2

    .line 589
    :cond_21
    iput v4, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->t:I

    move/from16 v8, p3

    .line 590
    iput v8, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->u:I

    .line 591
    iput v12, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    .line 592
    iget-boolean v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    iput-boolean v14, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->x:Z

    .line 593
    iget-object v14, v0, Lcom/mycompany/app/main/MainListAdapter;->l:[Z

    if-eqz v14, :cond_23

    if-ltz v12, :cond_23

    array-length v15, v14

    if-lt v12, v15, :cond_22

    goto :goto_e

    .line 594
    :cond_22
    iget v15, v0, Lcom/mycompany/app/main/MainListAdapter;->n:I

    if-ge v12, v15, :cond_24

    :cond_23
    :goto_e
    const/4 v15, 0x0

    goto :goto_f

    .line 595
    :cond_24
    aget-boolean v14, v14, v12

    move v15, v14

    .line 596
    :goto_f
    iget-boolean v14, v0, Lcom/mycompany/app/main/MainListAdapter;->f:Z

    if-nez v14, :cond_29

    .line 597
    invoke-static {v9}, Lcom/mycompany/app/pref/PrefUtil;->a(I)Z

    move-result v14

    if-eqz v14, :cond_28

    .line 598
    iget-object v14, v0, Lcom/mycompany/app/main/MainListAdapter;->A:Ljava/lang/String;

    move-wide/from16 v22, v10

    .line 599
    iget-wide v10, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    cmp-long v10, v10, v22

    if-eqz v10, :cond_25

    iget-wide v10, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    cmp-long v10, v10, v22

    if-nez v10, :cond_26

    .line 600
    :cond_25
    iget-object v10, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/mycompany/app/main/MainUri;->f(Landroid/content/Context;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 601
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->f()J

    move-result-wide v10

    iput-wide v10, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 602
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->g()J

    move-result-wide v10

    iput-wide v10, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 603
    :cond_26
    iget-object v3, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 604
    iget-wide v10, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    invoke-static {v10, v11}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 605
    :cond_27
    iget-wide v10, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 606
    const-string v3, "yyyy.MM.dd"

    invoke-static {v10, v11, v14, v3}, Lcom/mycompany/app/main/MainUtil;->y1(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 607
    iput-object v3, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    goto :goto_10

    :cond_28
    move-wide/from16 v22, v10

    goto :goto_10

    :cond_29
    move-wide/from16 v22, v10

    const/16 v3, 0x20

    if-ne v9, v3, :cond_2a

    .line 608
    iget-wide v10, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    iput-wide v10, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->w:J

    .line 609
    :cond_2a
    :goto_10
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->c:Lcom/mycompany/app/view/MySelectView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2b

    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->c:Lcom/mycompany/app/view/MySelectView;

    invoke-virtual {v3}, Lcom/mycompany/app/view/MySelectView;->getChildPos()I

    move-result v3

    iget v10, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    if-eq v3, v10, :cond_2b

    .line 610
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->c:Lcom/mycompany/app/view/MySelectView;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    goto :goto_11

    :cond_2b
    const/16 v10, 0x8

    .line 611
    :goto_11
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->d:Landroid/widget/FrameLayout;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 612
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 613
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 614
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 615
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->n:Landroid/view/ViewGroup;

    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 617
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 618
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->r:Lcom/mycompany/app/view/MySwitchView;

    if-eqz v3, :cond_2c

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 619
    :cond_2c
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    if-eqz v3, :cond_2d

    .line 620
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 621
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 622
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 623
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 624
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    goto :goto_12

    .line 625
    :cond_2d
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_2e

    .line 626
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 627
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 628
    iget-object v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->m:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 629
    :cond_2e
    :goto_12
    iget-object v3, v0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v10, 0x2

    if-ge v3, v10, :cond_2f

    .line 630
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->b:Lcom/mycompany/app/view/MyListChild;

    const/4 v11, 0x0

    invoke-virtual {v1, v11, v11}, Lcom/mycompany/app/view/MyListChild;->b(ZZ)V

    goto :goto_15

    .line 631
    :cond_2f
    iget-object v3, v0, Lcom/mycompany/app/main/MainListAdapter;->z:Lcom/mycompany/app/main/MainListAdapter$ListHeadListener;

    if-eqz v3, :cond_31

    check-cast v3, Lcom/mycompany/app/main/MainListView$73;

    .line 632
    iget-object v3, v3, Lcom/mycompany/app/main/MainListView$73;->a:Lcom/mycompany/app/main/MainListView;

    iget v3, v3, Lcom/mycompany/app/main/MainListView;->s:I

    if-ne v4, v3, :cond_31

    :cond_30
    const/4 v3, 0x0

    goto :goto_13

    :cond_31
    if-nez v8, :cond_30

    const/4 v3, 0x1

    .line 633
    :goto_13
    iget v1, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    const/16 v20, 0x1

    add-int/lit8 v1, v1, -0x1

    if-ne v8, v1, :cond_32

    const/4 v1, 0x1

    goto :goto_14

    :cond_32
    const/4 v1, 0x0

    .line 634
    :goto_14
    iget-object v8, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->b:Lcom/mycompany/app/view/MyListChild;

    invoke-virtual {v8, v3, v1}, Lcom/mycompany/app/view/MyListChild;->b(ZZ)V

    :goto_15
    if-eqz v15, :cond_34

    .line 635
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    invoke-virtual {v1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 636
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v3, :cond_33

    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    :goto_16
    const/4 v11, 0x0

    goto :goto_17

    :cond_33
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    goto :goto_16

    :goto_17
    invoke-virtual {v1, v11, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 637
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 638
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/view/View;->setActivated(Z)V

    .line 639
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    goto :goto_18

    :cond_34
    const/4 v8, 0x4

    const/4 v11, 0x0

    const/4 v14, 0x1

    .line 640
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 641
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    invoke-virtual {v1, v11}, Landroid/view/View;->setActivated(Z)V

    .line 642
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    invoke-virtual {v1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 643
    iget-object v1, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    :goto_18
    const/16 v1, 0x17

    if-ne v9, v1, :cond_35

    move-object v3, v5

    .line 644
    iget-object v5, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    move v1, v4

    move-object v4, v13

    invoke-virtual/range {v0 .. v5}, Lcom/mycompany/app/main/MainListAdapter;->z(ILandroid/view/View;Lcom/mycompany/app/main/MainListAdapter$ChildHolder;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;)V

    move-object/from16 v0, p0

    goto :goto_19

    :cond_35
    move-object v3, v5

    move-object v4, v13

    const/16 v0, 0x1b

    if-ne v9, v0, :cond_36

    .line 645
    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mycompany/app/main/MainListAdapter;->z(ILandroid/view/View;Lcom/mycompany/app/main/MainListAdapter$ChildHolder;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;)V

    goto :goto_19

    :cond_36
    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 646
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mycompany/app/main/MainListAdapter;->A(ILandroid/view/View;Lcom/mycompany/app/main/MainListAdapter$ChildHolder;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 647
    :goto_19
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListAdapter;->r:Z

    if-eqz v1, :cond_38

    iget-object v1, v0, Lcom/mycompany/app/main/MainListAdapter;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 648
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v1, :cond_37

    const/4 v1, -0x1

    goto :goto_1a

    :cond_37
    move v1, v6

    .line 649
    :goto_1a
    iget-object v5, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v7, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    iget-object v10, v0, Lcom/mycompany/app/main/MainListAdapter;->s:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v7, v1, v11, v10}, Lcom/mycompany/app/main/MainUtil;->t6(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v7

    sget-object v10, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_1c

    :cond_38
    const/16 v1, 0x1b

    if-ne v9, v1, :cond_3a

    .line 650
    iget-object v1, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 651
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->x:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 652
    :cond_39
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 653
    :cond_3a
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1b
    const/4 v1, 0x0

    const/4 v14, 0x0

    .line 654
    :goto_1c
    iget-object v5, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v9}, Lcom/mycompany/app/pref/PrefUtil;->c(I)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 655
    iget v5, v0, Lcom/mycompany/app/main/MainListAdapter;->p:I

    if-ne v12, v5, :cond_3b

    invoke-static {v9}, Lcom/mycompany/app/pref/PrefUtil;->b(I)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 656
    iget-object v5, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1e

    .line 657
    :cond_3b
    iget-boolean v5, v0, Lcom/mycompany/app/main/MainListAdapter;->r:Z

    if-eqz v5, :cond_3d

    .line 658
    iget-object v5, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v7, :cond_3c

    const v7, -0x3e3e3f

    goto :goto_1d

    :cond_3c
    move/from16 v7, v17

    :goto_1d
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1e

    .line 659
    :cond_3d
    iget-object v5, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v7, :cond_3e

    const v17, -0x50506

    :cond_3e
    move/from16 v7, v17

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1e
    const/16 v5, 0x18

    if-eq v9, v5, :cond_3f

    const/16 v5, 0x1f

    if-eq v9, v5, :cond_3f

    const/16 v5, 0x2a

    if-eq v9, v5, :cond_3f

    .line 660
    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 661
    iget-wide v10, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    cmp-long v5, v10, v22

    if-eqz v5, :cond_3f

    iget-object v5, v0, Lcom/mycompany/app/main/MainListAdapter;->A:Ljava/lang/String;

    .line 662
    const/16 v7, 0x12

    if-ne v9, v7, :cond_hist_fmt_only

    const-string v7, "yyyy.MM.dd HH:mm:ss"

    goto :goto_hist_fmt

    :cond_hist_fmt_only
    const-string v7, "yyyy.MM.dd"

    :goto_hist_fmt
    invoke-static {v10, v11, v5, v7}, Lcom/mycompany/app/main/MainUtil;->y1(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 663
    iput-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    :cond_3f
    const/16 v5, 0xd

    if-eq v9, v5, :cond_40

    const/16 v5, 0x20

    if-ne v9, v5, :cond_41

    .line 664
    :cond_40
    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 665
    iget-wide v10, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    cmp-long v5, v10, v22

    if-eqz v5, :cond_41

    invoke-static {v10, v11}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 666
    :cond_41
    invoke-static {v9}, Lcom/mycompany/app/pref/PrefUtil;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 667
    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 668
    iget v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_black_24:I

    if-ne v5, v7, :cond_42

    .line 669
    iget-object v5, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v7, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1f
    const/16 v5, 0x19

    goto :goto_20

    .line 670
    :cond_42
    iget-object v5, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v7, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f

    :goto_20
    if-ne v9, v5, :cond_45

    .line 671
    iget-wide v10, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    const-wide/16 v16, -0x4d2

    cmp-long v5, v10, v16

    if-nez v5, :cond_43

    .line 672
    iget-object v5, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_22

    .line 673
    :cond_43
    iget-object v5, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v7, :cond_44

    const v7, -0x3e3e3f

    goto :goto_21

    :cond_44
    const v7, -0x9e9e9f

    :goto_21
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 674
    :cond_45
    :goto_22
    iget-object v5, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 675
    :cond_46
    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 676
    iget v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_black_24:I

    if-ne v5, v7, :cond_47

    .line 677
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_23
    const/16 v5, 0x19

    goto :goto_24

    :cond_47
    if-eqz v14, :cond_49

    const/16 v5, 0x12

    if-eq v9, v5, :cond_48

    const/16 v5, 0x17

    if-eq v9, v5, :cond_48

    const/16 v5, 0x2a

    if-ne v9, v5, :cond_49

    .line 678
    :cond_48
    iget-object v5, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v7, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    iget-object v10, v0, Lcom/mycompany/app/main/MainListAdapter;->s:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v7, v1, v11, v10}, Lcom/mycompany/app/main/MainUtil;->t6(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_23

    .line 679
    :cond_49
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    :goto_24
    if-ne v9, v5, :cond_4c

    .line 680
    iget-wide v10, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    const-wide/16 v13, 0x0

    cmp-long v1, v10, v13

    if-gtz v1, :cond_4a

    .line 681
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_26

    .line 682
    :cond_4a
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v5, :cond_4b

    const v7, -0x3e3e3f

    goto :goto_25

    :cond_4b
    const v7, -0x9e9e9f

    :goto_25
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 683
    :cond_4c
    :goto_26
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_27

    :cond_4d
    const/4 v11, 0x0

    .line 684
    :goto_27
    iget-object v1, v0, Lcom/mycompany/app/main/MainListAdapter;->x:Lcom/mycompany/app/main/MainListAdapter$ListMoreListener;

    if-eqz v1, :cond_4f

    .line 685
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->n:Landroid/view/ViewGroup;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 686
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->n:Landroid/view/ViewGroup;

    new-instance v5, Lcom/mycompany/app/main/MainListAdapter$5;

    invoke-direct {v5, v0}, Lcom/mycompany/app/main/MainListAdapter$5;-><init>(Lcom/mycompany/app/main/MainListAdapter;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 687
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    iget-boolean v5, v0, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    if-eqz v5, :cond_4e

    move v5, v8

    goto :goto_28

    :cond_4e
    const/4 v5, 0x0

    :goto_28
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 688
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 689
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    new-instance v5, Lcom/mycompany/app/main/MainListAdapter$6;

    invoke-direct {v5, v0}, Lcom/mycompany/app/main/MainListAdapter$6;-><init>(Lcom/mycompany/app/main/MainListAdapter;)V

    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4f
    const/16 v5, 0x20

    if-ne v9, v5, :cond_50

    .line 690
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/main/MainListAdapter;->x(Lcom/mycompany/app/main/MainListAdapter$ChildHolder;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 691
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    new-instance v5, Lcom/mycompany/app/main/MainListAdapter$7;

    invoke-direct {v5, v0, v3, v4}, Lcom/mycompany/app/main/MainListAdapter$7;-><init>(Lcom/mycompany/app/main/MainListAdapter;Lcom/mycompany/app/main/MainListAdapter$ChildHolder;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 693
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    new-instance v5, Lcom/mycompany/app/main/MainListAdapter$8;

    invoke-direct {v5, v0}, Lcom/mycompany/app/main/MainListAdapter$8;-><init>(Lcom/mycompany/app/main/MainListAdapter;)V

    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    :cond_50
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->r:Lcom/mycompany/app/view/MySwitchView;

    if-eqz v1, :cond_52

    .line 695
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 696
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->r:Lcom/mycompany/app/view/MySwitchView;

    iget-boolean v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    const/4 v11, 0x0

    invoke-virtual {v1, v5, v11}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 697
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->r:Lcom/mycompany/app/view/MySwitchView;

    iget-boolean v5, v0, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    if-eqz v5, :cond_51

    move v13, v8

    goto :goto_29

    :cond_51
    const/4 v13, 0x0

    :goto_29
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 698
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->r:Lcom/mycompany/app/view/MySwitchView;

    new-instance v5, Lcom/mycompany/app/main/MainListAdapter$9;

    invoke-direct {v5, v0, v3, v4}, Lcom/mycompany/app/main/MainListAdapter$9;-><init>(Lcom/mycompany/app/main/MainListAdapter;Lcom/mycompany/app/main/MainListAdapter$ChildHolder;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    :cond_52
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v1, :cond_53

    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    goto :goto_2a

    :cond_53
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    :goto_2a
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 700
    invoke-virtual {v2, v15}, Landroid/view/View;->setActivated(Z)V

    return-object v2

    .line 701
    :goto_2b
    iput v12, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->t:I

    .line 702
    iput v12, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->u:I

    .line 703
    iput v12, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    move-wide/from16 v4, v22

    .line 704
    iput-wide v4, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->w:J

    const/4 v15, 0x0

    .line 705
    iput-boolean v15, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->x:Z

    .line 706
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->c:Lcom/mycompany/app/view/MySelectView;

    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    const/4 v13, 0x0

    .line 707
    invoke-virtual {v2, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 708
    invoke-virtual {v2, v15}, Landroid/view/View;->setActivated(Z)V

    return-object v2

    .line 709
    :goto_2c
    iput v12, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->t:I

    .line 710
    iput v12, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->u:I

    .line 711
    iput v12, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    const-wide/16 v4, -0x1

    .line 712
    iput-wide v4, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->w:J

    .line 713
    iput-boolean v15, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->x:Z

    .line 714
    iget-object v1, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->c:Lcom/mycompany/app/view/MySelectView;

    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    const/4 v13, 0x0

    .line 715
    invoke-virtual {v2, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 716
    invoke-virtual {v2, v15}, Landroid/view/View;->setActivated(Z)V

    return-object v2
.end method

.method public final d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 21
    .line 22
    iget p1, p1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 23
    .line 24
    return p1

    .line 25
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public final f(Landroid/view/View;Lcom/mycompany/app/main/MainListAdapter$ChildHolder;Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    iget v0, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->s:I

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_1
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne p3, v0, :cond_3

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_3
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 24
    .line 25
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 26
    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 33
    .line 34
    :goto_0
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 36
    .line 37
    .line 38
    if-eqz p3, :cond_5

    .line 39
    .line 40
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 41
    .line 42
    iget-object v1, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->L(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_1

    .line 49
    :cond_5
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 50
    .line 51
    iget-object v1, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->L(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :goto_1
    if-eqz v0, :cond_6

    .line 58
    .line 59
    new-instance v1, Lcom/mycompany/app/main/MainListAdapter$13;

    .line 60
    .line 61
    invoke-direct {v1, p0, p1, p2}, Lcom/mycompany/app/main/MainListAdapter$13;-><init>(Lcom/mycompany/app/main/MainListAdapter;Landroid/view/View;Lcom/mycompany/app/main/MainListAdapter$ChildHolder;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 65
    .line 66
    .line 67
    :cond_6
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 68
    .line 69
    if-eqz p2, :cond_7

    .line 70
    .line 71
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_7
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 75
    .line 76
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p3}, Landroid/view/View;->setActivated(Z)V

    .line 80
    .line 81
    .line 82
    :cond_8
    :goto_3
    return-void
.end method

.method public final g(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v3, v1

    .line 13
    :goto_0
    if-ge v2, v0, :cond_5

    .line 14
    .line 15
    iget-object v3, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    instance-of v5, v4, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 32
    .line 33
    if-nez v5, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    check-cast v4, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 37
    .line 38
    iget v5, v4, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->m:I

    .line 39
    .line 40
    if-ne v5, p1, :cond_4

    .line 41
    .line 42
    move-object v1, v4

    .line 43
    goto :goto_2

    .line 44
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    :goto_2
    invoke-virtual {p0, v3, v1, p2}, Lcom/mycompany/app/main/MainListAdapter;->h(Landroid/view/View;Lcom/mycompany/app/main/MainListAdapter$GroupHolder;Z)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final getChild(II)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getChildId(II)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainListAdapter;->p(I)Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getGroupCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final getGroupId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/main/MainListAdapter;->d:Landroid/content/Context;

    .line 6
    .line 7
    iget v3, v0, Lcom/mycompany/app/main/MainListAdapter;->e:I

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, -0x1

    .line 11
    const/16 v8, 0x8

    .line 12
    .line 13
    if-nez p3, :cond_3

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    move-object/from16 v17, v2

    .line 18
    .line 19
    move/from16 v16, v3

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    new-instance v9, Lcom/mycompany/app/view/MyLineRelative;

    .line 25
    .line 26
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 30
    .line 31
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyLineRelative;->b(I)V

    .line 32
    .line 33
    .line 34
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    const/4 v11, -0x2

    .line 37
    invoke-direct {v10, v5, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    sget v10, Lnet/kaki87/soul2/testing/R$id;->main_group_ftext:I

    .line 44
    .line 45
    new-instance v12, Lcom/mycompany/app/view/MySelectView;

    .line 46
    .line 47
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MySelectView;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v12, v8}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    const/4 v13, 0x6

    .line 54
    invoke-static {v5, v5, v13, v10}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    invoke-virtual {v13, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    new-instance v13, Landroid/view/View;

    .line 65
    .line 66
    invoke-direct {v13, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v13, v8}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 73
    .line 74
    invoke-virtual {v9, v13, v5, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 75
    .line 76
    .line 77
    new-instance v14, Landroid/widget/FrameLayout;

    .line 78
    .line 79
    invoke-direct {v14, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v14, v8}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 86
    .line 87
    invoke-virtual {v9, v14, v15, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 88
    .line 89
    .line 90
    new-instance v15, Lcom/mycompany/app/view/MyRoundImage;

    .line 91
    .line 92
    invoke-direct {v15, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    sget v8, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 96
    .line 97
    int-to-float v8, v8

    .line 98
    invoke-virtual {v15, v8}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 99
    .line 100
    .line 101
    const v8, -0x616162

    .line 102
    .line 103
    .line 104
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_white_24:I

    .line 105
    .line 106
    invoke-virtual {v15, v8, v7}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v15, v4}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 113
    .line 114
    sget v8, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 115
    .line 116
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 117
    .line 118
    .line 119
    const/16 v8, 0x11

    .line 120
    .line 121
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 122
    .line 123
    invoke-virtual {v14, v15, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    new-instance v7, Lcom/mycompany/app/view/MyButtonCheck;

    .line 127
    .line 128
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    sget v4, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 132
    .line 133
    int-to-float v4, v4

    .line 134
    sget v6, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 135
    .line 136
    int-to-float v6, v6

    .line 137
    invoke-virtual {v7, v4, v6}, Lcom/mycompany/app/view/MyButtonCheck;->o(FF)V

    .line 138
    .line 139
    .line 140
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_folder_white_24:I

    .line 141
    .line 142
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_white_24:I

    .line 143
    .line 144
    invoke-virtual {v7, v4, v6}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 145
    .line 146
    .line 147
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 148
    .line 149
    sget v6, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 150
    .line 151
    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 152
    .line 153
    .line 154
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 155
    .line 156
    invoke-virtual {v14, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    .line 158
    .line 159
    new-instance v4, Landroid/widget/RelativeLayout;

    .line 160
    .line 161
    invoke-direct {v4, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v10}, Landroid/view/View;->setId(I)V

    .line 165
    .line 166
    .line 167
    const/16 v6, 0x10

    .line 168
    .line 169
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 170
    .line 171
    .line 172
    sget v6, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 173
    .line 174
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 175
    .line 176
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 177
    .line 178
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 179
    .line 180
    invoke-virtual {v4, v6, v8, v10, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 181
    .line 182
    .line 183
    sget v5, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 184
    .line 185
    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 186
    .line 187
    .line 188
    const/4 v5, -0x1

    .line 189
    invoke-virtual {v9, v4, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 190
    .line 191
    .line 192
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 193
    .line 194
    const/4 v6, 0x0

    .line 195
    invoke-direct {v5, v2, v6}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    .line 197
    .line 198
    sget v8, Lnet/kaki87/soul2/testing/R$id;->main_group_name:I

    .line 199
    .line 200
    invoke-virtual {v5, v8}, Landroid/view/View;->setId(I)V

    .line 201
    .line 202
    .line 203
    const/4 v10, 0x1

    .line 204
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 205
    .line 206
    .line 207
    const/high16 v6, 0x41800000    # 16.0f

    .line 208
    .line 209
    invoke-virtual {v5, v10, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, v5, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 213
    .line 214
    .line 215
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 216
    .line 217
    const/4 v11, 0x0

    .line 218
    invoke-direct {v6, v2, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 222
    .line 223
    .line 224
    const/high16 v11, 0x41600000    # 14.0f

    .line 225
    .line 226
    invoke-virtual {v6, v10, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 227
    .line 228
    .line 229
    const/16 v10, 0x8

    .line 230
    .line 231
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 235
    .line 236
    const/4 v10, -0x2

    .line 237
    invoke-direct {v11, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 238
    .line 239
    .line 240
    const/4 v10, 0x3

    .line 241
    invoke-virtual {v11, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 242
    .line 243
    .line 244
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 245
    .line 246
    iput v8, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 247
    .line 248
    invoke-virtual {v4, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    .line 250
    .line 251
    new-instance v8, Landroid/widget/FrameLayout;

    .line 252
    .line 253
    invoke-direct {v8, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 254
    .line 255
    .line 256
    const/16 v10, 0x8

    .line 257
    .line 258
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 262
    .line 263
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 264
    .line 265
    move/from16 v16, v3

    .line 266
    .line 267
    sget v3, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 268
    .line 269
    invoke-direct {v10, v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 270
    .line 271
    .line 272
    const/16 v3, 0x15

    .line 273
    .line 274
    invoke-virtual {v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v9, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    .line 279
    .line 280
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 281
    .line 282
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 283
    .line 284
    .line 285
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 286
    .line 287
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 288
    .line 289
    .line 290
    const/16 v10, 0x8

    .line 291
    .line 292
    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 296
    .line 297
    sget v10, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 298
    .line 299
    invoke-virtual {v8, v3, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 300
    .line 301
    .line 302
    new-instance v10, Lcom/mycompany/app/view/MyButtonCheck;

    .line 303
    .line 304
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 305
    .line 306
    .line 307
    const/16 v11, 0x8

    .line 308
    .line 309
    invoke-virtual {v10, v11}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 310
    .line 311
    .line 312
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 313
    .line 314
    move-object/from16 v17, v2

    .line 315
    .line 316
    sget v2, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 317
    .line 318
    invoke-virtual {v8, v10, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 319
    .line 320
    .line 321
    new-instance v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 322
    .line 323
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 324
    .line 325
    .line 326
    iput-object v9, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->a:Lcom/mycompany/app/view/MyLineRelative;

    .line 327
    .line 328
    iput-object v12, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->b:Lcom/mycompany/app/view/MySelectView;

    .line 329
    .line 330
    iput-object v13, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->c:Landroid/view/View;

    .line 331
    .line 332
    iput-object v14, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->d:Landroid/widget/FrameLayout;

    .line 333
    .line 334
    iput-object v15, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 335
    .line 336
    iput-object v7, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->f:Lcom/mycompany/app/view/MyButtonCheck;

    .line 337
    .line 338
    iput-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->g:Landroid/widget/RelativeLayout;

    .line 339
    .line 340
    iput-object v5, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 341
    .line 342
    iput-object v6, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 343
    .line 344
    iput-object v8, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->j:Landroid/widget/FrameLayout;

    .line 345
    .line 346
    iput-object v3, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 347
    .line 348
    iput-object v10, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->l:Lcom/mycompany/app/view/MyButtonCheck;

    .line 349
    .line 350
    :goto_0
    if-nez v2, :cond_1

    .line 351
    .line 352
    return-object p3

    .line 353
    :cond_1
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->a:Lcom/mycompany/app/view/MyLineRelative;

    .line 354
    .line 355
    if-nez v3, :cond_2

    .line 356
    .line 357
    return-object v3

    .line 358
    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    goto :goto_1

    .line 362
    :cond_3
    move-object/from16 v17, v2

    .line 363
    .line 364
    move/from16 v16, v3

    .line 365
    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    check-cast v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 371
    .line 372
    if-nez v2, :cond_4

    .line 373
    .line 374
    return-object p3

    .line 375
    :cond_4
    move-object/from16 v3, p3

    .line 376
    .line 377
    :goto_1
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 378
    .line 379
    const v5, -0x50506

    .line 380
    .line 381
    .line 382
    if-eqz v4, :cond_5

    .line 383
    .line 384
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 385
    .line 386
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 387
    .line 388
    .line 389
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 390
    .line 391
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_24:I

    .line 392
    .line 393
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 394
    .line 395
    .line 396
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 397
    .line 398
    const v6, -0xc0c0c1

    .line 399
    .line 400
    .line 401
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 402
    .line 403
    .line 404
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->l:Lcom/mycompany/app/view/MyButtonCheck;

    .line 405
    .line 406
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 407
    .line 408
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 409
    .line 410
    invoke-virtual {v4, v7, v8}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 411
    .line 412
    .line 413
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->l:Lcom/mycompany/app/view/MyButtonCheck;

    .line 414
    .line 415
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 416
    .line 417
    .line 418
    goto :goto_2

    .line 419
    :cond_5
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 420
    .line 421
    const v6, -0x9e9e9f

    .line 422
    .line 423
    .line 424
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 425
    .line 426
    .line 427
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 428
    .line 429
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_24:I

    .line 430
    .line 431
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 432
    .line 433
    .line 434
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 435
    .line 436
    const/high16 v6, 0x21000000

    .line 437
    .line 438
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 439
    .line 440
    .line 441
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->l:Lcom/mycompany/app/view/MyButtonCheck;

    .line 442
    .line 443
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 444
    .line 445
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 446
    .line 447
    invoke-virtual {v4, v7, v8}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 448
    .line 449
    .line 450
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->l:Lcom/mycompany/app/view/MyButtonCheck;

    .line 451
    .line 452
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 453
    .line 454
    .line 455
    :goto_2
    iget-object v4, v0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 456
    .line 457
    const/4 v6, 0x0

    .line 458
    if-eqz v4, :cond_6

    .line 459
    .line 460
    if-ltz v1, :cond_6

    .line 461
    .line 462
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    if-lt v1, v4, :cond_7

    .line 467
    .line 468
    :cond_6
    const/4 v7, -0x1

    .line 469
    goto/16 :goto_b

    .line 470
    .line 471
    :cond_7
    iget-object v4, v0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 472
    .line 473
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    check-cast v4, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 478
    .line 479
    if-nez v4, :cond_8

    .line 480
    .line 481
    const/4 v7, -0x1

    .line 482
    iput v7, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->m:I

    .line 483
    .line 484
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->b:Lcom/mycompany/app/view/MySelectView;

    .line 485
    .line 486
    const/16 v10, 0x8

    .line 487
    .line 488
    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 489
    .line 490
    .line 491
    const/4 v11, 0x0

    .line 492
    invoke-virtual {v3, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v3, v6}, Landroid/view/View;->setActivated(Z)V

    .line 496
    .line 497
    .line 498
    return-object v3

    .line 499
    :cond_8
    const/16 v10, 0x8

    .line 500
    .line 501
    iget-object v7, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->c:Landroid/view/View;

    .line 502
    .line 503
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 504
    .line 505
    .line 506
    iget-object v7, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->d:Landroid/widget/FrameLayout;

    .line 507
    .line 508
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 509
    .line 510
    .line 511
    iget-object v7, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->g:Landroid/widget/RelativeLayout;

    .line 512
    .line 513
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 514
    .line 515
    .line 516
    iget-object v7, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->j:Landroid/widget/FrameLayout;

    .line 517
    .line 518
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 519
    .line 520
    .line 521
    iget-object v7, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 522
    .line 523
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 524
    .line 525
    .line 526
    iget-object v7, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 527
    .line 528
    invoke-virtual {v7, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 529
    .line 530
    .line 531
    iget-object v7, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->l:Lcom/mycompany/app/view/MyButtonCheck;

    .line 532
    .line 533
    invoke-virtual {v7, v10}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 534
    .line 535
    .line 536
    iget v7, v4, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 537
    .line 538
    const/4 v8, 0x1

    .line 539
    if-ne v7, v8, :cond_9

    .line 540
    .line 541
    const/4 v7, -0x1

    .line 542
    iput v7, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->m:I

    .line 543
    .line 544
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->b:Lcom/mycompany/app/view/MySelectView;

    .line 545
    .line 546
    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 547
    .line 548
    .line 549
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->c:Landroid/view/View;

    .line 550
    .line 551
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 552
    .line 553
    .line 554
    const/4 v11, 0x0

    .line 555
    invoke-virtual {v3, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v3, v6}, Landroid/view/View;->setActivated(Z)V

    .line 559
    .line 560
    .line 561
    return-object v3

    .line 562
    :cond_9
    const/4 v11, 0x0

    .line 563
    iput v1, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->m:I

    .line 564
    .line 565
    iget-object v7, v4, Lcom/mycompany/app/main/MainItem$GroupItem;->b:Ljava/lang/String;

    .line 566
    .line 567
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 568
    .line 569
    .line 570
    move-result v7

    .line 571
    if-eqz v7, :cond_a

    .line 572
    .line 573
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->b:Lcom/mycompany/app/view/MySelectView;

    .line 574
    .line 575
    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v3, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v3, v6}, Landroid/view/View;->setActivated(Z)V

    .line 582
    .line 583
    .line 584
    return-object v3

    .line 585
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/main/MainListAdapter;->u(I)Z

    .line 586
    .line 587
    .line 588
    move-result v7

    .line 589
    iget-object v8, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->b:Lcom/mycompany/app/view/MySelectView;

    .line 590
    .line 591
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 592
    .line 593
    .line 594
    move-result v8

    .line 595
    if-nez v8, :cond_b

    .line 596
    .line 597
    iget-object v8, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->b:Lcom/mycompany/app/view/MySelectView;

    .line 598
    .line 599
    invoke-virtual {v8}, Lcom/mycompany/app/view/MySelectView;->getChildPos()I

    .line 600
    .line 601
    .line 602
    move-result v8

    .line 603
    iget v9, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->m:I

    .line 604
    .line 605
    if-eq v8, v9, :cond_b

    .line 606
    .line 607
    iget-object v8, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->b:Lcom/mycompany/app/view/MySelectView;

    .line 608
    .line 609
    const/16 v10, 0x8

    .line 610
    .line 611
    invoke-virtual {v8, v10}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 612
    .line 613
    .line 614
    :cond_b
    iget-object v8, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->d:Landroid/widget/FrameLayout;

    .line 615
    .line 616
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 617
    .line 618
    .line 619
    iget-object v8, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->f:Lcom/mycompany/app/view/MyButtonCheck;

    .line 620
    .line 621
    const/high16 v9, -0x1000000

    .line 622
    .line 623
    invoke-virtual {v8, v9}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorColor(I)V

    .line 624
    .line 625
    .line 626
    iget v8, v0, Lcom/mycompany/app/main/MainListAdapter;->u:I

    .line 627
    .line 628
    if-ne v8, v1, :cond_c

    .line 629
    .line 630
    const/4 v8, -0x1

    .line 631
    iput v8, v0, Lcom/mycompany/app/main/MainListAdapter;->u:I

    .line 632
    .line 633
    iget-object v8, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->f:Lcom/mycompany/app/view/MyButtonCheck;

    .line 634
    .line 635
    const/4 v10, 0x1

    .line 636
    xor-int/lit8 v11, p2, 0x1

    .line 637
    .line 638
    invoke-virtual {v8, v11, v10}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 639
    .line 640
    .line 641
    goto :goto_3

    .line 642
    :cond_c
    const/4 v10, 0x1

    .line 643
    iget-object v8, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->f:Lcom/mycompany/app/view/MyButtonCheck;

    .line 644
    .line 645
    xor-int/lit8 v11, p2, 0x1

    .line 646
    .line 647
    invoke-virtual {v8, v11, v6}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 648
    .line 649
    .line 650
    :goto_3
    const/high16 v8, 0x3f800000    # 1.0f

    .line 651
    .line 652
    if-eqz v7, :cond_d

    .line 653
    .line 654
    iget-object v10, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->f:Lcom/mycompany/app/view/MyButtonCheck;

    .line 655
    .line 656
    const/4 v11, 0x4

    .line 657
    invoke-virtual {v10, v11}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 658
    .line 659
    .line 660
    iget-object v10, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 661
    .line 662
    invoke-virtual {v10, v8}, Landroid/view/View;->setScaleX(F)V

    .line 663
    .line 664
    .line 665
    iget-object v8, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 666
    .line 667
    invoke-virtual {v8, v6}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 668
    .line 669
    .line 670
    goto :goto_4

    .line 671
    :cond_d
    const/4 v11, 0x4

    .line 672
    iget-object v10, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 673
    .line 674
    invoke-virtual {v10, v11}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 675
    .line 676
    .line 677
    iget-object v10, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->f:Lcom/mycompany/app/view/MyButtonCheck;

    .line 678
    .line 679
    invoke-virtual {v10, v8}, Landroid/view/View;->setScaleX(F)V

    .line 680
    .line 681
    .line 682
    iget-object v8, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->f:Lcom/mycompany/app/view/MyButtonCheck;

    .line 683
    .line 684
    invoke-virtual {v8, v6}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 685
    .line 686
    .line 687
    :goto_4
    iget-object v8, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->g:Landroid/widget/RelativeLayout;

    .line 688
    .line 689
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 690
    .line 691
    .line 692
    iget-object v8, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 693
    .line 694
    iget-object v10, v4, Lcom/mycompany/app/main/MainItem$GroupItem;->b:Ljava/lang/String;

    .line 695
    .line 696
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    .line 698
    .line 699
    iget-object v8, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 700
    .line 701
    invoke-static/range {v16 .. v16}, Lcom/mycompany/app/pref/PrefUtil;->c(I)Z

    .line 702
    .line 703
    .line 704
    move-result v10

    .line 705
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 706
    .line 707
    .line 708
    iget v8, v0, Lcom/mycompany/app/main/MainListAdapter;->p:I

    .line 709
    .line 710
    invoke-virtual {v0, v8}, Lcom/mycompany/app/main/MainListAdapter;->l(I)I

    .line 711
    .line 712
    .line 713
    move-result v8

    .line 714
    if-ne v1, v8, :cond_10

    .line 715
    .line 716
    invoke-static/range {v16 .. v16}, Lcom/mycompany/app/pref/PrefUtil;->b(I)Z

    .line 717
    .line 718
    .line 719
    move-result v8

    .line 720
    if-eqz v8, :cond_e

    .line 721
    .line 722
    iget-object v5, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 723
    .line 724
    const v8, -0xbbcca

    .line 725
    .line 726
    .line 727
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 728
    .line 729
    .line 730
    goto :goto_7

    .line 731
    :cond_e
    iget-object v8, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 732
    .line 733
    sget-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 734
    .line 735
    if-eqz v10, :cond_f

    .line 736
    .line 737
    goto :goto_5

    .line 738
    :cond_f
    move v5, v9

    .line 739
    :goto_5
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 740
    .line 741
    .line 742
    goto :goto_7

    .line 743
    :cond_10
    iget-object v8, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 744
    .line 745
    sget-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 746
    .line 747
    if-eqz v10, :cond_11

    .line 748
    .line 749
    goto :goto_6

    .line 750
    :cond_11
    move v5, v9

    .line 751
    :goto_6
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 752
    .line 753
    .line 754
    :goto_7
    invoke-static/range {v16 .. v16}, Lcom/mycompany/app/pref/PrefUtil;->a(I)Z

    .line 755
    .line 756
    .line 757
    move-result v5

    .line 758
    if-eqz v5, :cond_13

    .line 759
    .line 760
    iget-object v5, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 761
    .line 762
    new-instance v8, Ljava/lang/StringBuilder;

    .line 763
    .line 764
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    .line 766
    .line 767
    iget v9, v4, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 768
    .line 769
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    iget v4, v4, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 773
    .line 774
    const/4 v10, 0x1

    .line 775
    if-le v4, v10, :cond_12

    .line 776
    .line 777
    sget v4, Lnet/kaki87/soul2/testing/R$string;->items:I

    .line 778
    .line 779
    :goto_8
    move-object/from16 v9, v17

    .line 780
    .line 781
    goto :goto_9

    .line 782
    :cond_12
    sget v4, Lnet/kaki87/soul2/testing/R$string;->item:I

    .line 783
    .line 784
    goto :goto_8

    .line 785
    :goto_9
    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v4

    .line 789
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v4

    .line 796
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    .line 798
    .line 799
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 800
    .line 801
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 802
    .line 803
    .line 804
    :cond_13
    iget-object v4, v0, Lcom/mycompany/app/main/MainListAdapter;->x:Lcom/mycompany/app/main/MainListAdapter$ListMoreListener;

    .line 805
    .line 806
    if-nez v4, :cond_14

    .line 807
    .line 808
    iget-object v4, v0, Lcom/mycompany/app/main/MainListAdapter;->y:Lcom/mycompany/app/main/MainListAdapter$ListRectListener;

    .line 809
    .line 810
    if-eqz v4, :cond_18

    .line 811
    .line 812
    :cond_14
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->j:Landroid/widget/FrameLayout;

    .line 813
    .line 814
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 815
    .line 816
    .line 817
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->j:Landroid/widget/FrameLayout;

    .line 818
    .line 819
    new-instance v5, Lcom/mycompany/app/main/MainListAdapter$2;

    .line 820
    .line 821
    invoke-direct {v5, v0}, Lcom/mycompany/app/main/MainListAdapter$2;-><init>(Lcom/mycompany/app/main/MainListAdapter;)V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 825
    .line 826
    .line 827
    iget-object v4, v0, Lcom/mycompany/app/main/MainListAdapter;->x:Lcom/mycompany/app/main/MainListAdapter$ListMoreListener;

    .line 828
    .line 829
    if-eqz v4, :cond_16

    .line 830
    .line 831
    iget-boolean v4, v0, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 832
    .line 833
    if-nez v4, :cond_15

    .line 834
    .line 835
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 836
    .line 837
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 838
    .line 839
    .line 840
    :cond_15
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 841
    .line 842
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 843
    .line 844
    .line 845
    move-result-object v5

    .line 846
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 847
    .line 848
    .line 849
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 850
    .line 851
    new-instance v5, Lcom/mycompany/app/main/MainListAdapter$3;

    .line 852
    .line 853
    invoke-direct {v5, v0}, Lcom/mycompany/app/main/MainListAdapter$3;-><init>(Lcom/mycompany/app/main/MainListAdapter;)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 857
    .line 858
    .line 859
    :cond_16
    iget-object v4, v0, Lcom/mycompany/app/main/MainListAdapter;->y:Lcom/mycompany/app/main/MainListAdapter$ListRectListener;

    .line 860
    .line 861
    if-eqz v4, :cond_18

    .line 862
    .line 863
    iget-boolean v4, v0, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 864
    .line 865
    if-eqz v4, :cond_17

    .line 866
    .line 867
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->l:Lcom/mycompany/app/view/MyButtonCheck;

    .line 868
    .line 869
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 870
    .line 871
    .line 872
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->l:Lcom/mycompany/app/view/MyButtonCheck;

    .line 873
    .line 874
    invoke-virtual {v4, v7, v6}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 875
    .line 876
    .line 877
    :cond_17
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->l:Lcom/mycompany/app/view/MyButtonCheck;

    .line 878
    .line 879
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 880
    .line 881
    .line 882
    move-result-object v1

    .line 883
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 884
    .line 885
    .line 886
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->l:Lcom/mycompany/app/view/MyButtonCheck;

    .line 887
    .line 888
    new-instance v2, Lcom/mycompany/app/main/MainListAdapter$4;

    .line 889
    .line 890
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainListAdapter$4;-><init>(Lcom/mycompany/app/main/MainListAdapter;)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 894
    .line 895
    .line 896
    :cond_18
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 897
    .line 898
    if-eqz v1, :cond_19

    .line 899
    .line 900
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 901
    .line 902
    goto :goto_a

    .line 903
    :cond_19
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 904
    .line 905
    :goto_a
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {v3, v7}, Landroid/view/View;->setActivated(Z)V

    .line 909
    .line 910
    .line 911
    return-object v3

    .line 912
    :goto_b
    iput v7, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->m:I

    .line 913
    .line 914
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->b:Lcom/mycompany/app/view/MySelectView;

    .line 915
    .line 916
    const/16 v10, 0x8

    .line 917
    .line 918
    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 919
    .line 920
    .line 921
    const/4 v11, 0x0

    .line 922
    invoke-virtual {v3, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 923
    .line 924
    .line 925
    invoke-virtual {v3, v6}, Landroid/view/View;->setActivated(Z)V

    .line 926
    .line 927
    .line 928
    return-object v3
.end method

.method public final h(Landroid/view/View;Lcom/mycompany/app/main/MainListAdapter$GroupHolder;Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    if-eqz p2, :cond_5

    .line 4
    .line 5
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne p3, v0, :cond_1

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_1
    if-eqz p3, :cond_2

    .line 18
    .line 19
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->f:Lcom/mycompany/app/view/MyButtonCheck;

    .line 20
    .line 21
    iget-object v1, p2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->L(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 29
    .line 30
    iget-object v1, p2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->f:Lcom/mycompany/app/view/MyButtonCheck;

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->L(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    if-eqz v0, :cond_3

    .line 37
    .line 38
    new-instance v1, Lcom/mycompany/app/main/MainListAdapter$12;

    .line 39
    .line 40
    invoke-direct {v1, p0, p1, p2}, Lcom/mycompany/app/main/MainListAdapter$12;-><init>(Lcom/mycompany/app/main/MainListAdapter;Landroid/view/View;Lcom/mycompany/app/main/MainListAdapter$GroupHolder;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-object p2, p2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->l:Lcom/mycompany/app/view/MyButtonCheck;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p2, p3, v0}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 50
    .line 51
    .line 52
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 53
    .line 54
    if-eqz p2, :cond_4

    .line 55
    .line 56
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 60
    .line 61
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p3}, Landroid/view/View;->setActivated(Z)V

    .line 65
    .line 66
    .line 67
    :cond_5
    :goto_2
    return-void
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Ljava/util/ArrayList;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_d

    .line 5
    .line 6
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->j:[Z

    .line 13
    .line 14
    if-eqz v2, :cond_d

    .line 15
    .line 16
    array-length v2, v2

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq v2, v0, :cond_1

    .line 22
    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->l:[Z

    .line 26
    .line 27
    if-eqz v0, :cond_d

    .line 28
    .line 29
    array-length v0, v0

    .line 30
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eq v0, v2, :cond_2

    .line 37
    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_2
    iget v0, p0, Lcom/mycompany/app/main/MainListAdapter;->m:I

    .line 41
    .line 42
    if-lez v0, :cond_d

    .line 43
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListAdapter;->s()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_c

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 76
    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    iget-wide v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 81
    .line 82
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_c

    .line 101
    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 107
    .line 108
    if-eqz v2, :cond_6

    .line 109
    .line 110
    iget-object v3, p0, Lcom/mycompany/app/main/MainListAdapter;->k:[I

    .line 111
    .line 112
    iget v4, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 113
    .line 114
    aget v3, v3, v4

    .line 115
    .line 116
    if-nez v3, :cond_7

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    iget v4, p0, Lcom/mycompany/app/main/MainListAdapter;->n:I

    .line 120
    .line 121
    add-int/2addr v3, v4

    .line 122
    iget v5, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 123
    .line 124
    const/4 v6, 0x0

    .line 125
    if-ne v3, v5, :cond_8

    .line 126
    .line 127
    const/4 v3, 0x1

    .line 128
    goto :goto_2

    .line 129
    :cond_8
    move v3, v6

    .line 130
    :goto_2
    iget v5, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->e:I

    .line 131
    .line 132
    add-int/2addr v5, v4

    .line 133
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    iget v5, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->e:I

    .line 138
    .line 139
    iget v2, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 140
    .line 141
    add-int/2addr v5, v2

    .line 142
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    :goto_3
    if-ge v4, v2, :cond_6

    .line 153
    .line 154
    iget-object v5, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 155
    .line 156
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 161
    .line 162
    if-eqz v5, :cond_b

    .line 163
    .line 164
    iget v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 165
    .line 166
    if-eqz v6, :cond_9

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_9
    if-nez v3, :cond_a

    .line 170
    .line 171
    iget-object v6, p0, Lcom/mycompany/app/main/MainListAdapter;->l:[Z

    .line 172
    .line 173
    aget-boolean v6, v6, v4

    .line 174
    .line 175
    if-eqz v6, :cond_b

    .line 176
    .line 177
    :cond_a
    iget-wide v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 178
    .line 179
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    :cond_b
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_c
    return-object v0

    .line 190
    :cond_d
    :goto_5
    return-object v1
.end method

.method public final isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final j()Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_b

    .line 5
    .line 6
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->j:[Z

    .line 13
    .line 14
    if-eqz v2, :cond_b

    .line 15
    .line 16
    array-length v2, v2

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq v2, v0, :cond_1

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->l:[Z

    .line 26
    .line 27
    if-eqz v0, :cond_b

    .line 28
    .line 29
    array-length v0, v0

    .line 30
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eq v0, v2, :cond_2

    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_2
    iget v0, p0, Lcom/mycompany/app/main/MainListAdapter;->m:I

    .line 41
    .line 42
    if-lez v0, :cond_b

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListAdapter;->s()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iget v0, p0, Lcom/mycompany/app/main/MainListAdapter;->n:I

    .line 51
    .line 52
    if-lez v0, :cond_3

    .line 53
    .line 54
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0

    .line 65
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_a

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 95
    .line 96
    if-eqz v2, :cond_5

    .line 97
    .line 98
    iget-object v3, p0, Lcom/mycompany/app/main/MainListAdapter;->k:[I

    .line 99
    .line 100
    iget v4, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 101
    .line 102
    aget v3, v3, v4

    .line 103
    .line 104
    if-nez v3, :cond_6

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_6
    iget v4, p0, Lcom/mycompany/app/main/MainListAdapter;->n:I

    .line 108
    .line 109
    add-int/2addr v3, v4

    .line 110
    iget v5, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 111
    .line 112
    if-ne v3, v5, :cond_7

    .line 113
    .line 114
    iget-object v3, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 115
    .line 116
    iget v2, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->e:I

    .line 117
    .line 118
    add-int/2addr v4, v2

    .line 119
    add-int/2addr v2, v5

    .line 120
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    invoke-interface {v3, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_7
    iget v3, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->e:I

    .line 137
    .line 138
    add-int/2addr v3, v4

    .line 139
    const/4 v4, 0x0

    .line 140
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    iget v4, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->e:I

    .line 145
    .line 146
    iget v2, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 147
    .line 148
    add-int/2addr v4, v2

    .line 149
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 150
    .line 151
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    :goto_1
    if-ge v3, v2, :cond_5

    .line 160
    .line 161
    iget-object v4, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    check-cast v4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 168
    .line 169
    if-eqz v4, :cond_9

    .line 170
    .line 171
    iget v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 172
    .line 173
    if-eqz v5, :cond_8

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_8
    iget-object v5, p0, Lcom/mycompany/app/main/MainListAdapter;->l:[Z

    .line 177
    .line 178
    aget-boolean v5, v5, v3

    .line 179
    .line 180
    if-eqz v5, :cond_9

    .line 181
    .line 182
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    :cond_9
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_a
    return-object v0

    .line 189
    :cond_b
    :goto_3
    return-object v1
.end method

.method public final k()Ljava/util/ArrayList;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_d

    .line 5
    .line 6
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->j:[Z

    .line 13
    .line 14
    if-eqz v2, :cond_d

    .line 15
    .line 16
    array-length v2, v2

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq v2, v0, :cond_1

    .line 22
    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->l:[Z

    .line 26
    .line 27
    if-eqz v0, :cond_d

    .line 28
    .line 29
    array-length v0, v0

    .line 30
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eq v0, v2, :cond_2

    .line 37
    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_2
    iget v0, p0, Lcom/mycompany/app/main/MainListAdapter;->m:I

    .line 41
    .line 42
    if-lez v0, :cond_d

    .line 43
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListAdapter;->s()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_c

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 76
    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_c

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 103
    .line 104
    if-eqz v2, :cond_6

    .line 105
    .line 106
    iget-object v3, p0, Lcom/mycompany/app/main/MainListAdapter;->k:[I

    .line 107
    .line 108
    iget v4, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 109
    .line 110
    aget v3, v3, v4

    .line 111
    .line 112
    if-nez v3, :cond_7

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_7
    iget v4, p0, Lcom/mycompany/app/main/MainListAdapter;->n:I

    .line 116
    .line 117
    add-int/2addr v3, v4

    .line 118
    iget v5, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 119
    .line 120
    const/4 v6, 0x0

    .line 121
    if-ne v3, v5, :cond_8

    .line 122
    .line 123
    const/4 v3, 0x1

    .line 124
    goto :goto_2

    .line 125
    :cond_8
    move v3, v6

    .line 126
    :goto_2
    iget v5, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->e:I

    .line 127
    .line 128
    add-int/2addr v5, v4

    .line 129
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    iget v5, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->e:I

    .line 134
    .line 135
    iget v2, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 136
    .line 137
    add-int/2addr v5, v2

    .line 138
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 139
    .line 140
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    :goto_3
    if-ge v4, v2, :cond_6

    .line 149
    .line 150
    iget-object v5, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 151
    .line 152
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    check-cast v5, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 157
    .line 158
    if-eqz v5, :cond_b

    .line 159
    .line 160
    iget v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 161
    .line 162
    if-eqz v6, :cond_9

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_9
    if-nez v3, :cond_a

    .line 166
    .line 167
    iget-object v6, p0, Lcom/mycompany/app/main/MainListAdapter;->l:[Z

    .line 168
    .line 169
    aget-boolean v6, v6, v4

    .line 170
    .line 171
    if-eqz v6, :cond_b

    .line 172
    .line 173
    :cond_a
    iget-object v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    :cond_b
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_c
    return-object v0

    .line 182
    :cond_d
    :goto_5
    return-object v1
.end method

.method public final l(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    if-ltz p1, :cond_2

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lt p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 27
    .line 28
    return p1

    .line 29
    :cond_2
    :goto_0
    return v1
.end method

.method public final m(I)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public final n(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_8

    .line 12
    .line 13
    if-ltz p1, :cond_8

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lt p1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    add-int/2addr p1, v1

    .line 32
    return p1

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    return v0

    .line 45
    :cond_2
    iget-boolean v1, p0, Lcom/mycompany/app/main/MainListAdapter;->o:Z

    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 50
    .line 51
    return p1

    .line 52
    :cond_3
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 53
    .line 54
    iget v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 55
    .line 56
    add-int/2addr v1, v2

    .line 57
    :goto_0
    iget v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 58
    .line 59
    if-ge v0, v2, :cond_7

    .line 60
    .line 61
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-lt v0, v2, :cond_4

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 77
    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    iget v3, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 81
    .line 82
    if-nez v3, :cond_5

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    iget-object v3, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 86
    .line 87
    invoke-virtual {v3, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_6

    .line 92
    .line 93
    iget v2, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 94
    .line 95
    add-int/2addr v1, v2

    .line 96
    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_7
    :goto_2
    return v1

    .line 100
    :cond_8
    :goto_3
    const/4 p1, -0x1

    .line 101
    return p1
.end method

.method public final o()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lcom/mycompany/app/main/MainListAdapter;->n:I

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public final p(I)Lcom/mycompany/app/main/MainItem$GroupItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public final q(I)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    if-ltz p1, :cond_3

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lt p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 22
    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    iget v0, p1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget p1, p1, Lcom/mycompany/app/main/MainItem$GroupItem;->e:I

    .line 31
    .line 32
    add-int/2addr v0, p1

    .line 33
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-ltz p1, :cond_3

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-le v0, v2, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v1, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_3
    :goto_0
    return-object v1
.end method

.method public final r()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->B:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "\\p{Punct}"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->B:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->B:Ljava/util/regex/Pattern;

    .line 14
    .line 15
    return-object v0
.end method

.method public final s()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v2, p0, Lcom/mycompany/app/main/MainListAdapter;->m:I

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v3, p0, Lcom/mycompany/app/main/MainListAdapter;->n:I

    .line 14
    .line 15
    sub-int/2addr v0, v3

    .line 16
    if-ne v2, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_1
    return v1
.end method

.method public final t(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-ltz p1, :cond_2

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    return p1

    .line 31
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 32
    return p1
.end method

.method public final u(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->j:[Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    if-lt p1, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    aget-boolean p1, v0, p1

    .line 12
    .line 13
    return p1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public final v(IZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_12

    .line 4
    .line 5
    if-ltz p1, :cond_12

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->l:[Z

    .line 16
    .line 17
    if-eqz v0, :cond_12

    .line 18
    .line 19
    if-ltz p1, :cond_12

    .line 20
    .line 21
    array-length v0, v0

    .line 22
    if-lt p1, v0, :cond_1

    .line 23
    .line 24
    goto/16 :goto_7

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 33
    .line 34
    if-eqz v0, :cond_12

    .line 35
    .line 36
    iget v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    goto/16 :goto_7

    .line 41
    .line 42
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter;->l:[Z

    .line 43
    .line 44
    aget-boolean v2, v1, p1

    .line 45
    .line 46
    if-ne v2, p2, :cond_3

    .line 47
    .line 48
    goto/16 :goto_7

    .line 49
    .line 50
    :cond_3
    aput-boolean p2, v1, p1

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    iget v2, p0, Lcom/mycompany/app/main/MainListAdapter;->m:I

    .line 56
    .line 57
    iget-object v3, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-ge v2, v3, :cond_5

    .line 64
    .line 65
    iget v2, p0, Lcom/mycompany/app/main/MainListAdapter;->m:I

    .line 66
    .line 67
    add-int/2addr v2, v1

    .line 68
    iput v2, p0, Lcom/mycompany/app/main/MainListAdapter;->m:I

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    iget v2, p0, Lcom/mycompany/app/main/MainListAdapter;->m:I

    .line 72
    .line 73
    if-lez v2, :cond_5

    .line 74
    .line 75
    sub-int/2addr v2, v1

    .line 76
    iput v2, p0, Lcom/mycompany/app/main/MainListAdapter;->m:I

    .line 77
    .line 78
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_6
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    const/4 v4, 0x0

    .line 89
    move v5, v3

    .line 90
    move-object v6, v4

    .line 91
    :goto_1
    if-ge v5, v2, :cond_b

    .line 92
    .line 93
    iget-object v6, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 94
    .line 95
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    if-nez v6, :cond_7

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    if-nez v7, :cond_8

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_8
    instance-of v8, v7, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 110
    .line 111
    if-nez v8, :cond_9

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_9
    check-cast v7, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 115
    .line 116
    iget v8, v7, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    .line 117
    .line 118
    if-ne v8, p1, :cond_a

    .line 119
    .line 120
    move-object v4, v7

    .line 121
    goto :goto_3

    .line 122
    :cond_a
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_b
    :goto_3
    invoke-virtual {p0, v6, v4, p2}, Lcom/mycompany/app/main/MainListAdapter;->f(Landroid/view/View;Lcom/mycompany/app/main/MainListAdapter$ChildHolder;Z)V

    .line 126
    .line 127
    .line 128
    :goto_4
    iget p1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 129
    .line 130
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 131
    .line 132
    if-eqz v0, :cond_12

    .line 133
    .line 134
    if-ltz p1, :cond_12

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-lt p1, v0, :cond_c

    .line 141
    .line 142
    goto :goto_7

    .line 143
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 150
    .line 151
    if-eqz v0, :cond_12

    .line 152
    .line 153
    iget v0, v0, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 154
    .line 155
    if-nez v0, :cond_d

    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_d
    if-eqz p2, :cond_e

    .line 159
    .line 160
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->k:[I

    .line 161
    .line 162
    aget v4, v2, p1

    .line 163
    .line 164
    if-ge v4, v0, :cond_f

    .line 165
    .line 166
    add-int/2addr v4, v1

    .line 167
    aput v4, v2, p1

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_e
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->k:[I

    .line 171
    .line 172
    aget v4, v2, p1

    .line 173
    .line 174
    if-lez v4, :cond_f

    .line 175
    .line 176
    sub-int/2addr v4, v1

    .line 177
    aput v4, v2, p1

    .line 178
    .line 179
    :cond_f
    :goto_5
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->k:[I

    .line 180
    .line 181
    aget v2, v2, p1

    .line 182
    .line 183
    if-ne v2, v0, :cond_10

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_10
    move v1, v3

    .line 187
    :goto_6
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->j:[Z

    .line 188
    .line 189
    aget-boolean v2, v0, p1

    .line 190
    .line 191
    if-ne v2, v1, :cond_11

    .line 192
    .line 193
    goto :goto_7

    .line 194
    :cond_11
    aput-boolean v1, v0, p1

    .line 195
    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/main/MainListAdapter;->g(IZ)V

    .line 197
    .line 198
    .line 199
    :cond_12
    :goto_7
    return-void
.end method

.method public final w(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_d

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_8

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->j:[Z

    .line 23
    .line 24
    if-eqz v0, :cond_d

    .line 25
    .line 26
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->l:[Z

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_1
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->b([ZZ)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->l:[Z

    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->b([ZZ)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_5

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget v3, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 61
    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    iget-object v4, p0, Lcom/mycompany/app/main/MainListAdapter;->k:[I

    .line 66
    .line 67
    iget v2, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    iget v5, p0, Lcom/mycompany/app/main/MainListAdapter;->n:I

    .line 72
    .line 73
    sub-int/2addr v3, v5

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    move v3, v1

    .line 76
    :goto_1
    aput v3, v4, v2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    if-eqz p1, :cond_6

    .line 80
    .line 81
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iget v2, p0, Lcom/mycompany/app/main/MainListAdapter;->n:I

    .line 88
    .line 89
    sub-int/2addr v0, v2

    .line 90
    goto :goto_2

    .line 91
    :cond_6
    move v0, v1

    .line 92
    :goto_2
    iget v2, p0, Lcom/mycompany/app/main/MainListAdapter;->m:I

    .line 93
    .line 94
    if-ne v0, v2, :cond_7

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_7
    iput v0, p0, Lcom/mycompany/app/main/MainListAdapter;->m:I

    .line 98
    .line 99
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    :goto_3
    if-ge v1, v0, :cond_d

    .line 106
    .line 107
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-nez v2, :cond_9

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    if-nez v3, :cond_a

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_a
    instance-of v4, v3, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 124
    .line 125
    if-eqz v4, :cond_b

    .line 126
    .line 127
    check-cast v3, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 128
    .line 129
    invoke-virtual {p0, v2, v3, p1}, Lcom/mycompany/app/main/MainListAdapter;->h(Landroid/view/View;Lcom/mycompany/app/main/MainListAdapter$GroupHolder;Z)V

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_b
    instance-of v4, v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 134
    .line 135
    if-eqz v4, :cond_c

    .line 136
    .line 137
    check-cast v3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 138
    .line 139
    invoke-virtual {p0, v2, v3, p1}, Lcom/mycompany/app/main/MainListAdapter;->f(Landroid/view/View;Lcom/mycompany/app/main/MainListAdapter$ChildHolder;Z)V

    .line 140
    .line 141
    .line 142
    :cond_c
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_d
    :goto_5
    return-void
.end method

.method public final x(Lcom/mycompany/app/main/MainListAdapter$ChildHolder;Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 25

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
    iget-object v3, v0, Lcom/mycompany/app/main/MainListAdapter;->d:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    const/4 v6, 0x0

    .line 16
    if-eq v4, v5, :cond_1

    .line 17
    .line 18
    iput-boolean v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->N:Z

    .line 19
    .line 20
    :cond_1
    const/4 v7, 0x3

    .line 21
    const/4 v8, 0x4

    .line 22
    const/16 v9, 0x8

    .line 23
    .line 24
    if-ne v4, v7, :cond_d

    .line 25
    .line 26
    iget-object v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_2

    .line 33
    .line 34
    iget-object v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_a

    .line 41
    .line 42
    :cond_2
    iget-object v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_5

    .line 49
    .line 50
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->d1:Z

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    :goto_0
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    .line 76
    .line 77
    invoke-virtual {v2, v9}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 91
    .line 92
    invoke-virtual {v2, v9}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 96
    .line 97
    invoke-virtual {v2, v9}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 101
    .line 102
    iget-boolean v3, v0, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 103
    .line 104
    if-eqz v3, :cond_4

    .line 105
    .line 106
    move v6, v8

    .line 107
    :cond_4
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    sget v2, Lnet/kaki87/soul2/testing/R$string;->down_fail:I

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_5
    iget-wide v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 119
    .line 120
    const-wide/16 v10, -0x1

    .line 121
    .line 122
    cmp-long v4, v4, v10

    .line 123
    .line 124
    if-eqz v4, :cond_6

    .line 125
    .line 126
    iget-wide v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 127
    .line 128
    cmp-long v4, v4, v10

    .line 129
    .line 130
    if-nez v4, :cond_7

    .line 131
    .line 132
    :cond_6
    iget-object v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUri;->f(Landroid/content/Context;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    if-eqz v3, :cond_7

    .line 139
    .line 140
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->f()J

    .line 141
    .line 142
    .line 143
    move-result-wide v4

    .line 144
    iput-wide v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 145
    .line 146
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->g()J

    .line 147
    .line 148
    .line 149
    move-result-wide v3

    .line 150
    iput-wide v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 151
    .line 152
    :cond_7
    iget-wide v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 153
    .line 154
    cmp-long v5, v3, v10

    .line 155
    .line 156
    if-eqz v5, :cond_8

    .line 157
    .line 158
    iget-object v5, v0, Lcom/mycompany/app/main/MainListAdapter;->A:Ljava/lang/String;

    .line 159
    .line 160
    const-string v7, "yyyy.MM.dd"

    .line 161
    .line 162
    invoke-static {v3, v4, v5, v7}, Lcom/mycompany/app/main/MainUtil;->y1(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    iput-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 167
    .line 168
    :cond_8
    iget-wide v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 169
    .line 170
    cmp-long v5, v3, v10

    .line 171
    .line 172
    if-eqz v5, :cond_9

    .line 173
    .line 174
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    iput-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 179
    .line 180
    :cond_9
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->Z0(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 181
    .line 182
    .line 183
    :cond_a
    sget-boolean v3, Lcom/mycompany/app/pref/PrefList;->d1:Z

    .line 184
    .line 185
    if-eqz v3, :cond_b

    .line 186
    .line 187
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 188
    .line 189
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 193
    .line 194
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_b
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 199
    .line 200
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 204
    .line 205
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    :goto_1
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    .line 209
    .line 210
    invoke-virtual {v3, v9}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 214
    .line 215
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 216
    .line 217
    .line 218
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 219
    .line 220
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 224
    .line 225
    invoke-virtual {v3, v9}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 226
    .line 227
    .line 228
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 229
    .line 230
    invoke-virtual {v3, v9}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 231
    .line 232
    .line 233
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 234
    .line 235
    iget-boolean v4, v0, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 236
    .line 237
    if-eqz v4, :cond_c

    .line 238
    .line 239
    move v6, v8

    .line 240
    :cond_c
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 244
    .line 245
    iget-object v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    iget-object v1, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 251
    .line 252
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_d
    const/4 v7, 0x5

    .line 259
    if-ne v4, v7, :cond_10

    .line 260
    .line 261
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->d1:Z

    .line 262
    .line 263
    if-eqz v2, :cond_e

    .line 264
    .line 265
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 266
    .line 267
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 271
    .line 272
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 273
    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_e
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 277
    .line 278
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .line 280
    .line 281
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 282
    .line 283
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .line 285
    .line 286
    :goto_2
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    .line 287
    .line 288
    invoke-virtual {v2, v9}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 289
    .line 290
    .line 291
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 292
    .line 293
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 294
    .line 295
    .line 296
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 297
    .line 298
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 299
    .line 300
    .line 301
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 302
    .line 303
    invoke-virtual {v2, v9}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 304
    .line 305
    .line 306
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 307
    .line 308
    invoke-virtual {v2, v9}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 309
    .line 310
    .line 311
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 312
    .line 313
    iget-boolean v3, v0, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 314
    .line 315
    if-eqz v3, :cond_f

    .line 316
    .line 317
    move v6, v8

    .line 318
    :cond_f
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 319
    .line 320
    .line 321
    iget-object v1, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 322
    .line 323
    sget v2, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 324
    .line 325
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :cond_10
    const/high16 v7, 0x42c80000    # 100.0f

    .line 330
    .line 331
    const/4 v10, 0x0

    .line 332
    const/4 v11, 0x1

    .line 333
    const-wide/16 v12, 0x0

    .line 334
    .line 335
    if-ne v4, v8, :cond_16

    .line 336
    .line 337
    iget-wide v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 338
    .line 339
    cmp-long v5, v3, v12

    .line 340
    .line 341
    if-nez v5, :cond_12

    .line 342
    .line 343
    iget-wide v14, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 344
    .line 345
    cmp-long v8, v14, v12

    .line 346
    .line 347
    if-lez v8, :cond_12

    .line 348
    .line 349
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    .line 350
    .line 351
    invoke-virtual {v3, v11, v6}, Lcom/mycompany/app/view/MyProgressBar;->h(ZZ)V

    .line 352
    .line 353
    .line 354
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 355
    .line 356
    iget-wide v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 357
    .line 358
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    .line 364
    .line 365
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 366
    .line 367
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 368
    .line 369
    if-eqz v3, :cond_11

    .line 370
    .line 371
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_stop_dark_24:I

    .line 372
    .line 373
    goto :goto_3

    .line 374
    :cond_11
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_stop_black_24:I

    .line 375
    .line 376
    :goto_3
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 377
    .line 378
    .line 379
    goto :goto_5

    .line 380
    :cond_12
    if-lez v5, :cond_13

    .line 381
    .line 382
    iget-wide v12, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 383
    .line 384
    long-to-float v5, v12

    .line 385
    mul-float/2addr v5, v7

    .line 386
    long-to-float v3, v3

    .line 387
    div-float v10, v5, v3

    .line 388
    .line 389
    :cond_13
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    .line 390
    .line 391
    invoke-virtual {v3, v6, v6}, Lcom/mycompany/app/view/MyProgressBar;->h(ZZ)V

    .line 392
    .line 393
    .line 394
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    .line 395
    .line 396
    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 397
    .line 398
    .line 399
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 400
    .line 401
    iget-wide v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 402
    .line 403
    iget-wide v7, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 404
    .line 405
    invoke-static {v4, v5, v7, v8}, Lcom/mycompany/app/main/MainUtil;->e1(JJ)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    .line 411
    .line 412
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 413
    .line 414
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 415
    .line 416
    if-eqz v3, :cond_14

    .line 417
    .line 418
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_18:I

    .line 419
    .line 420
    goto :goto_4

    .line 421
    :cond_14
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_18:I

    .line 422
    .line 423
    :goto_4
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 424
    .line 425
    .line 426
    :goto_5
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 427
    .line 428
    sget v3, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 429
    .line 430
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 431
    .line 432
    .line 433
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 434
    .line 435
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 436
    .line 437
    .line 438
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 439
    .line 440
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 441
    .line 442
    .line 443
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    .line 444
    .line 445
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 446
    .line 447
    .line 448
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 449
    .line 450
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 451
    .line 452
    .line 453
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 454
    .line 455
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 456
    .line 457
    .line 458
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 459
    .line 460
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 461
    .line 462
    .line 463
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 464
    .line 465
    invoke-virtual {v2, v11}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 466
    .line 467
    .line 468
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 469
    .line 470
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 471
    .line 472
    if-eqz v3, :cond_15

    .line 473
    .line 474
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_dark_24:I

    .line 475
    .line 476
    goto :goto_6

    .line 477
    :cond_15
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 478
    .line 479
    :goto_6
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 480
    .line 481
    .line 482
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 483
    .line 484
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 485
    .line 486
    .line 487
    iget-object v1, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 488
    .line 489
    invoke-virtual {v1, v9}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 490
    .line 491
    .line 492
    return-void

    .line 493
    :cond_16
    if-ne v4, v5, :cond_1d

    .line 494
    .line 495
    iget-wide v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 496
    .line 497
    cmp-long v5, v3, v12

    .line 498
    .line 499
    if-nez v5, :cond_18

    .line 500
    .line 501
    iget-wide v14, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 502
    .line 503
    cmp-long v8, v14, v12

    .line 504
    .line 505
    if-lez v8, :cond_18

    .line 506
    .line 507
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    .line 508
    .line 509
    invoke-virtual {v3, v11, v6}, Lcom/mycompany/app/view/MyProgressBar;->h(ZZ)V

    .line 510
    .line 511
    .line 512
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 513
    .line 514
    iget-wide v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 515
    .line 516
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    .line 522
    .line 523
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 524
    .line 525
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 526
    .line 527
    if-eqz v4, :cond_17

    .line 528
    .line 529
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_stop_dark_24:I

    .line 530
    .line 531
    goto :goto_7

    .line 532
    :cond_17
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_stop_black_24:I

    .line 533
    .line 534
    :goto_7
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 535
    .line 536
    .line 537
    goto :goto_9

    .line 538
    :cond_18
    if-lez v5, :cond_19

    .line 539
    .line 540
    iget-wide v12, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 541
    .line 542
    long-to-float v5, v12

    .line 543
    mul-float/2addr v5, v7

    .line 544
    long-to-float v3, v3

    .line 545
    div-float v10, v5, v3

    .line 546
    .line 547
    :cond_19
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    .line 548
    .line 549
    invoke-virtual {v3, v6, v6}, Lcom/mycompany/app/view/MyProgressBar;->h(ZZ)V

    .line 550
    .line 551
    .line 552
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    .line 553
    .line 554
    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 555
    .line 556
    .line 557
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 558
    .line 559
    iget-wide v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 560
    .line 561
    iget-wide v7, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 562
    .line 563
    invoke-static {v4, v5, v7, v8}, Lcom/mycompany/app/main/MainUtil;->e1(JJ)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v4

    .line 567
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    .line 569
    .line 570
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 571
    .line 572
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 573
    .line 574
    if-eqz v4, :cond_1a

    .line 575
    .line 576
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_18:I

    .line 577
    .line 578
    goto :goto_8

    .line 579
    :cond_1a
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_18:I

    .line 580
    .line 581
    :goto_8
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 582
    .line 583
    .line 584
    :goto_9
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 585
    .line 586
    iget-boolean v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->N:Z

    .line 587
    .line 588
    if-eqz v2, :cond_1b

    .line 589
    .line 590
    sget v2, Lnet/kaki87/soul2/testing/R$string;->reserved:I

    .line 591
    .line 592
    goto :goto_a

    .line 593
    :cond_1b
    sget v2, Lnet/kaki87/soul2/testing/R$string;->paused:I

    .line 594
    .line 595
    :goto_a
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 596
    .line 597
    .line 598
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 599
    .line 600
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 601
    .line 602
    .line 603
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 604
    .line 605
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 606
    .line 607
    .line 608
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    .line 609
    .line 610
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 611
    .line 612
    .line 613
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 614
    .line 615
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 616
    .line 617
    .line 618
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 619
    .line 620
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 621
    .line 622
    .line 623
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 624
    .line 625
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 626
    .line 627
    .line 628
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 629
    .line 630
    invoke-virtual {v2, v11}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 631
    .line 632
    .line 633
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 634
    .line 635
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 636
    .line 637
    if-eqz v3, :cond_1c

    .line 638
    .line 639
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_dark_24:I

    .line 640
    .line 641
    goto :goto_b

    .line 642
    :cond_1c
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 643
    .line 644
    :goto_b
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 645
    .line 646
    .line 647
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 648
    .line 649
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 650
    .line 651
    .line 652
    iget-object v1, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 653
    .line 654
    invoke-virtual {v1, v9}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 655
    .line 656
    .line 657
    return-void

    .line 658
    :cond_1d
    iget-wide v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 659
    .line 660
    cmp-long v8, v4, v12

    .line 661
    .line 662
    const-string v14, ""

    .line 663
    .line 664
    move v15, v7

    .line 665
    move/from16 v16, v8

    .line 666
    .line 667
    if-nez v8, :cond_1f

    .line 668
    .line 669
    iget-wide v7, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 670
    .line 671
    cmp-long v7, v7, v12

    .line 672
    .line 673
    if-lez v7, :cond_1f

    .line 674
    .line 675
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    .line 676
    .line 677
    invoke-virtual {v3, v11, v11}, Lcom/mycompany/app/view/MyProgressBar;->h(ZZ)V

    .line 678
    .line 679
    .line 680
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 681
    .line 682
    iget-wide v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 683
    .line 684
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    .line 690
    .line 691
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 692
    .line 693
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    .line 695
    .line 696
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 697
    .line 698
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 699
    .line 700
    if-eqz v3, :cond_1e

    .line 701
    .line 702
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_stop_dark_24:I

    .line 703
    .line 704
    goto :goto_c

    .line 705
    :cond_1e
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_stop_black_24:I

    .line 706
    .line 707
    :goto_c
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 708
    .line 709
    .line 710
    goto/16 :goto_10

    .line 711
    .line 712
    :cond_1f
    if-lez v16, :cond_27

    .line 713
    .line 714
    iget-wide v7, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 715
    .line 716
    long-to-float v10, v7

    .line 717
    mul-float/2addr v10, v15

    .line 718
    long-to-float v4, v4

    .line 719
    div-float/2addr v10, v4

    .line 720
    iget-wide v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->E:J

    .line 721
    .line 722
    sub-long/2addr v7, v4

    .line 723
    cmp-long v4, v7, v12

    .line 724
    .line 725
    if-lez v4, :cond_27

    .line 726
    .line 727
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 728
    .line 729
    .line 730
    move-result-wide v4

    .line 731
    iget-wide v7, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->D:J

    .line 732
    .line 733
    sub-long/2addr v4, v7

    .line 734
    iget-wide v7, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 735
    .line 736
    iget-wide v14, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->E:J

    .line 737
    .line 738
    sub-long/2addr v7, v14

    .line 739
    mul-long/2addr v7, v4

    .line 740
    long-to-float v7, v7

    .line 741
    move-wide/from16 v16, v12

    .line 742
    .line 743
    iget-wide v12, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 744
    .line 745
    sub-long/2addr v12, v14

    .line 746
    long-to-float v8, v12

    .line 747
    div-float/2addr v7, v8

    .line 748
    float-to-long v7, v7

    .line 749
    sub-long/2addr v7, v4

    .line 750
    if-nez v3, :cond_20

    .line 751
    .line 752
    const/4 v4, 0x0

    .line 753
    :goto_d
    move-object v14, v4

    .line 754
    goto/16 :goto_e

    .line 755
    .line 756
    :cond_20
    cmp-long v4, v7, v16

    .line 757
    .line 758
    if-gtz v4, :cond_21

    .line 759
    .line 760
    new-instance v4, Ljava/lang/StringBuilder;

    .line 761
    .line 762
    const-string v5, "0"

    .line 763
    .line 764
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    sget v5, Lnet/kaki87/soul2/testing/R$string;->time_s:I

    .line 768
    .line 769
    invoke-static {v5, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v4

    .line 773
    goto :goto_d

    .line 774
    :cond_21
    const-wide/16 v4, 0x3e8

    .line 775
    .line 776
    div-long v12, v7, v4

    .line 777
    .line 778
    cmp-long v14, v12, v16

    .line 779
    .line 780
    if-nez v14, :cond_22

    .line 781
    .line 782
    new-instance v4, Ljava/lang/StringBuilder;

    .line 783
    .line 784
    const-string v5, "1"

    .line 785
    .line 786
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    sget v5, Lnet/kaki87/soul2/testing/R$string;->time_s:I

    .line 790
    .line 791
    invoke-static {v5, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v4

    .line 795
    goto :goto_d

    .line 796
    :cond_22
    const-wide/32 v14, 0xea60

    .line 797
    .line 798
    .line 799
    move-wide/from16 v18, v4

    .line 800
    .line 801
    div-long v4, v7, v14

    .line 802
    .line 803
    cmp-long v20, v4, v16

    .line 804
    .line 805
    if-nez v20, :cond_23

    .line 806
    .line 807
    new-instance v4, Ljava/lang/StringBuilder;

    .line 808
    .line 809
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    sget v5, Lnet/kaki87/soul2/testing/R$string;->time_s:I

    .line 816
    .line 817
    invoke-static {v5, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v4

    .line 821
    goto :goto_d

    .line 822
    :cond_23
    const-wide/32 v20, 0x36ee80

    .line 823
    .line 824
    .line 825
    div-long v12, v7, v20

    .line 826
    .line 827
    cmp-long v22, v12, v16

    .line 828
    .line 829
    move-wide/from16 v23, v14

    .line 830
    .line 831
    const-string v14, " "

    .line 832
    .line 833
    if-nez v22, :cond_24

    .line 834
    .line 835
    rem-long v7, v7, v23

    .line 836
    .line 837
    new-instance v12, Ljava/lang/StringBuilder;

    .line 838
    .line 839
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 843
    .line 844
    .line 845
    sget v4, Lnet/kaki87/soul2/testing/R$string;->time_m:I

    .line 846
    .line 847
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v4

    .line 851
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    div-long v7, v7, v18

    .line 858
    .line 859
    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    sget v4, Lnet/kaki87/soul2/testing/R$string;->time_s:I

    .line 863
    .line 864
    invoke-static {v4, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v4

    .line 868
    goto :goto_d

    .line 869
    :cond_24
    const-wide/32 v4, 0x5265c00

    .line 870
    .line 871
    .line 872
    div-long v4, v7, v4

    .line 873
    .line 874
    cmp-long v4, v4, v16

    .line 875
    .line 876
    if-nez v4, :cond_25

    .line 877
    .line 878
    rem-long v7, v7, v20

    .line 879
    .line 880
    new-instance v4, Ljava/lang/StringBuilder;

    .line 881
    .line 882
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    sget v5, Lnet/kaki87/soul2/testing/R$string;->time_h:I

    .line 889
    .line 890
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v5

    .line 894
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    div-long v7, v7, v23

    .line 901
    .line 902
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    sget v5, Lnet/kaki87/soul2/testing/R$string;->time_m:I

    .line 906
    .line 907
    invoke-static {v5, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v4

    .line 911
    goto/16 :goto_d

    .line 912
    .line 913
    :cond_25
    const-wide/16 v4, 0x3e7

    .line 914
    .line 915
    cmp-long v7, v12, v4

    .line 916
    .line 917
    if-lez v7, :cond_26

    .line 918
    .line 919
    move-wide v12, v4

    .line 920
    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 921
    .line 922
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 923
    .line 924
    .line 925
    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    sget v5, Lnet/kaki87/soul2/testing/R$string;->time_h:I

    .line 929
    .line 930
    invoke-static {v5, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v4

    .line 934
    goto/16 :goto_d

    .line 935
    .line 936
    :goto_e
    iget-boolean v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 937
    .line 938
    if-eqz v4, :cond_27

    .line 939
    .line 940
    new-instance v4, Ljava/lang/StringBuilder;

    .line 941
    .line 942
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 943
    .line 944
    .line 945
    sget v5, Lnet/kaki87/soul2/testing/R$string;->finishing:I

    .line 946
    .line 947
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v3

    .line 951
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    .line 953
    .line 954
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v14

    .line 961
    :cond_27
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    .line 962
    .line 963
    invoke-virtual {v3, v6, v6}, Lcom/mycompany/app/view/MyProgressBar;->h(ZZ)V

    .line 964
    .line 965
    .line 966
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    .line 967
    .line 968
    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 969
    .line 970
    .line 971
    iget-object v3, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 972
    .line 973
    iget-wide v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 974
    .line 975
    iget-wide v7, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 976
    .line 977
    invoke-static {v4, v5, v7, v8}, Lcom/mycompany/app/main/MainUtil;->e1(JJ)Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v2

    .line 981
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 982
    .line 983
    .line 984
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 985
    .line 986
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    .line 988
    .line 989
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 990
    .line 991
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 992
    .line 993
    if-eqz v3, :cond_28

    .line 994
    .line 995
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_18:I

    .line 996
    .line 997
    goto :goto_f

    .line 998
    :cond_28
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_18:I

    .line 999
    .line 1000
    :goto_f
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1001
    .line 1002
    .line 1003
    :goto_10
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1004
    .line 1005
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1006
    .line 1007
    .line 1008
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1009
    .line 1010
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    .line 1012
    .line 1013
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->k:Lcom/mycompany/app/view/MyProgressBar;

    .line 1014
    .line 1015
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 1016
    .line 1017
    .line 1018
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1019
    .line 1020
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    .line 1022
    .line 1023
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1024
    .line 1025
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1026
    .line 1027
    .line 1028
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 1029
    .line 1030
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 1031
    .line 1032
    .line 1033
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 1034
    .line 1035
    invoke-virtual {v2, v11}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 1036
    .line 1037
    .line 1038
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 1039
    .line 1040
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1041
    .line 1042
    if-eqz v3, :cond_29

    .line 1043
    .line 1044
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_dark_24:I

    .line 1045
    .line 1046
    goto :goto_11

    .line 1047
    :cond_29
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_black_24:I

    .line 1048
    .line 1049
    :goto_11
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1050
    .line 1051
    .line 1052
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 1053
    .line 1054
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 1055
    .line 1056
    .line 1057
    iget-object v1, v1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 1058
    .line 1059
    invoke-virtual {v1, v9}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 1060
    .line 1061
    .line 1062
    return-void
.end method

.method public final y(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    if-ltz p1, :cond_9

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lt p1, v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->j:[Z

    .line 22
    .line 23
    if-eqz v0, :cond_9

    .line 24
    .line 25
    if-ltz p1, :cond_9

    .line 26
    .line 27
    array-length v0, v0

    .line 28
    if-lt p1, v0, :cond_2

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 38
    .line 39
    if-eqz v0, :cond_9

    .line 40
    .line 41
    iget v1, v0, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 42
    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter;->j:[Z

    .line 47
    .line 48
    aget-boolean v2, v1, p1

    .line 49
    .line 50
    if-ne v2, p2, :cond_4

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    aput-boolean p2, v1, p1

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/main/MainListAdapter;->g(IZ)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter;->k:[I

    .line 59
    .line 60
    aget v2, v1, p1

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    if-eqz p2, :cond_5

    .line 64
    .line 65
    iget v4, v0, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 66
    .line 67
    iget v5, p0, Lcom/mycompany/app/main/MainListAdapter;->n:I

    .line 68
    .line 69
    sub-int/2addr v4, v5

    .line 70
    goto :goto_0

    .line 71
    :cond_5
    move v4, v3

    .line 72
    :goto_0
    aput v4, v1, p1

    .line 73
    .line 74
    iget v1, p0, Lcom/mycompany/app/main/MainListAdapter;->m:I

    .line 75
    .line 76
    sub-int/2addr v4, v2

    .line 77
    add-int/2addr v4, v1

    .line 78
    iput v4, p0, Lcom/mycompany/app/main/MainListAdapter;->m:I

    .line 79
    .line 80
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter;->l:[Z

    .line 81
    .line 82
    iget v2, v0, Lcom/mycompany/app/main/MainItem$GroupItem;->e:I

    .line 83
    .line 84
    iget v0, v0, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 85
    .line 86
    invoke-static {v1, v2, v0, p2}, Lcom/mycompany/app/main/MainUtil;->a([ZIIZ)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    :goto_1
    if-ge v3, v0, :cond_9

    .line 96
    .line 97
    iget-object v1, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-nez v1, :cond_6

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-nez v2, :cond_7

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    instance-of v4, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 114
    .line 115
    if-eqz v4, :cond_8

    .line 116
    .line 117
    check-cast v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 118
    .line 119
    iget v4, v2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->t:I

    .line 120
    .line 121
    if-ne v4, p1, :cond_8

    .line 122
    .line 123
    invoke-virtual {p0, v1, v2, p2}, Lcom/mycompany/app/main/MainListAdapter;->f(Landroid/view/View;Lcom/mycompany/app/main/MainListAdapter$ChildHolder;Z)V

    .line 124
    .line 125
    .line 126
    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_9
    :goto_3
    return-void
.end method

.method public final z(ILandroid/view/View;Lcom/mycompany/app/main/MainListAdapter$ChildHolder;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_8

    .line 2
    .line 3
    iget-object p2, p0, Lcom/mycompany/app/main/MainListAdapter;->v:Lcom/mycompany/app/main/MainListLoader;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iget-object p2, p3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 10
    .line 11
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    iget-object p1, p3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 21
    .line 22
    iget p2, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 23
    .line 24
    iget p3, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 25
    .line 26
    invoke-virtual {p1, p2, p3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/4 p2, 0x2

    .line 31
    invoke-static {p2, p5}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x1

    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget p1, p1, Lcom/mycompany/app/fragment/FragmentExpandView;->h:I

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 65
    :goto_1
    if-eqz v2, :cond_4

    .line 66
    .line 67
    iget-object p1, p3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_4

    .line 74
    .line 75
    iget-object p1, p3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 76
    .line 77
    iget p2, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 78
    .line 79
    iget p5, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 80
    .line 81
    invoke-virtual {p1, p2, p5}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyRoundImage;->s()V

    .line 87
    .line 88
    .line 89
    :cond_4
    iget-object p1, p3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 90
    .line 91
    iget-object p2, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, p2, v2}, Lcom/mycompany/app/view/MyRoundImage;->r(Ljava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_5
    iget-object v0, p3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 103
    .line 104
    iget v1, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 105
    .line 106
    iget v3, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 107
    .line 108
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Lcom/mycompany/app/expand/ExpandListAdapter;->e(I)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_6
    new-instance p1, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 121
    .line 122
    .line 123
    const/4 v0, 0x7

    .line 124
    iput v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 125
    .line 126
    iput-object p5, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 127
    .line 128
    iput-object p5, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 129
    .line 130
    iget p4, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 131
    .line 132
    iput p4, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 133
    .line 134
    iput p2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 135
    .line 136
    iget-object p2, p0, Lcom/mycompany/app/main/MainListAdapter;->w:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 137
    .line 138
    if-nez p2, :cond_7

    .line 139
    .line 140
    new-instance p2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 141
    .line 142
    invoke-direct {p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-boolean v2, p2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 146
    .line 147
    sget-object p4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 148
    .line 149
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a()V

    .line 150
    .line 151
    .line 152
    new-instance p4, Lcom/nostra13/universalimageloader/core/display/NoneBitmapDisplayer;

    .line 153
    .line 154
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-object p4, p2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 158
    .line 159
    new-instance p4, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 160
    .line 161
    invoke-direct {p4, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 162
    .line 163
    .line 164
    iput-object p4, p0, Lcom/mycompany/app/main/MainListAdapter;->w:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 165
    .line 166
    :cond_7
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    iget-object p3, p3, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 171
    .line 172
    iget-object p4, p0, Lcom/mycompany/app/main/MainListAdapter;->w:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 173
    .line 174
    new-instance p5, Lcom/mycompany/app/main/MainListAdapter$10;

    .line 175
    .line 176
    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 180
    .line 181
    .line 182
    :cond_8
    :goto_2
    return-void
.end method
