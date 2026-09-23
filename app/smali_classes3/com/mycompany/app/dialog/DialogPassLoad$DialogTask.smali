.class Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogPassLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPassLoad;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogPassLoad;->z0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 24
    .line 25
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogPassLoad;->A0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogPassLoad;->C0:Z

    .line 29
    .line 30
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogPassLoad;->x0:Z

    .line 31
    .line 32
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassLoad;->s0:Lcom/mycompany/app/view/MyCoverView;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    sget v2, Lnet/kaki87/soul2/testing/R$string;->loading:I

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassLoad;->e0:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    const/16 v2, 0x8

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    sget v1, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 75
    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_13

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 14
    .line 15
    if-eqz v1, :cond_31

    .line 16
    .line 17
    iget-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_13

    .line 22
    .line 23
    :cond_1
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->y0:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    if-nez v2, :cond_1e

    .line 27
    .line 28
    const-string v2, "UTF-8"

    .line 29
    .line 30
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;->f:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_2

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    goto/16 :goto_a

    .line 40
    .line 41
    :cond_2
    :try_start_0
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->a0:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 52
    .line 53
    .line 54
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 55
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    .line 56
    .line 57
    new-instance v8, Ljava/io/InputStreamReader;

    .line 58
    .line 59
    invoke-direct {v8, v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 63
    .line 64
    .line 65
    const/4 v2, -0x1

    .line 66
    move v10, v2

    .line 67
    move v11, v10

    .line 68
    move v12, v11

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v9, 0x0

    .line 71
    :cond_3
    :goto_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    if-eqz v13, :cond_1b

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogPassLoad;->D()Z

    .line 78
    .line 79
    .line 80
    move-result v14

    .line 81
    if-eqz v14, :cond_4

    .line 82
    .line 83
    goto/16 :goto_9

    .line 84
    .line 85
    :cond_4
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v14

    .line 89
    if-eqz v14, :cond_5

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    if-nez v14, :cond_6

    .line 97
    .line 98
    :goto_1
    const/4 v4, 0x0

    .line 99
    goto :goto_5

    .line 100
    :cond_6
    const/16 v15, 0x2c

    .line 101
    .line 102
    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(I)I

    .line 103
    .line 104
    .line 105
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 106
    if-ne v3, v2, :cond_7

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 110
    .line 111
    const/16 v16, 0x0

    .line 112
    .line 113
    :goto_2
    if-lez v3, :cond_c

    .line 114
    .line 115
    if-ge v3, v14, :cond_c

    .line 116
    .line 117
    :try_start_3
    invoke-virtual {v13, v15, v3}, Ljava/lang/String;->indexOf(II)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-ne v4, v2, :cond_8

    .line 122
    .line 123
    invoke-virtual {v13, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    goto :goto_3

    .line 128
    :cond_8
    if-le v4, v3, :cond_9

    .line 129
    .line 130
    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    goto :goto_3

    .line 135
    :cond_9
    const/4 v3, 0x0

    .line 136
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v17

    .line 140
    if-eqz v17, :cond_a

    .line 141
    .line 142
    const-string v3, " "

    .line 143
    .line 144
    :cond_a
    if-nez v16, :cond_b

    .line 145
    .line 146
    new-instance v17, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 149
    .line 150
    .line 151
    move-object/from16 v15, v17

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_b
    move-object/from16 v15, v16

    .line 155
    .line 156
    :goto_4
    :try_start_4
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 157
    .line 158
    .line 159
    add-int/lit8 v3, v4, 0x1

    .line 160
    .line 161
    move-object/from16 v16, v15

    .line 162
    .line 163
    const/16 v15, 0x2c

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :catch_0
    move-object/from16 v16, v15

    .line 167
    .line 168
    :catch_1
    :cond_c
    move-object/from16 v4, v16

    .line 169
    .line 170
    :goto_5
    if-nez v4, :cond_d

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_d
    :try_start_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    const/4 v13, 0x3

    .line 178
    if-ge v3, v13, :cond_e

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_e
    if-nez v9, :cond_15

    .line 182
    .line 183
    const/4 v13, 0x0

    .line 184
    :goto_6
    if-ge v13, v3, :cond_14

    .line 185
    .line 186
    invoke-static {v13, v4}, Lcom/mycompany/app/dialog/DialogPassLoad;->C(ILjava/util/ArrayList;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v14

    .line 190
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v15

    .line 194
    if-eqz v15, :cond_f

    .line 195
    .line 196
    goto :goto_7

    .line 197
    :cond_f
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 198
    .line 199
    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v14

    .line 203
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v15

    .line 207
    if-eqz v15, :cond_10

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_10
    const-string v15, "url"

    .line 211
    .line 212
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v15

    .line 216
    if-eqz v15, :cond_11

    .line 217
    .line 218
    move v10, v13

    .line 219
    goto :goto_7

    .line 220
    :cond_11
    const-string v15, "username"

    .line 221
    .line 222
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v15

    .line 226
    if-eqz v15, :cond_12

    .line 227
    .line 228
    move v11, v13

    .line 229
    goto :goto_7

    .line 230
    :cond_12
    const-string v15, "password"

    .line 231
    .line 232
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v14

    .line 236
    if-eqz v14, :cond_13

    .line 237
    .line 238
    move v12, v13

    .line 239
    :cond_13
    :goto_7
    add-int/lit8 v13, v13, 0x1

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_14
    if-eq v10, v2, :cond_3

    .line 243
    .line 244
    if-eq v11, v2, :cond_3

    .line 245
    .line 246
    if-eq v12, v2, :cond_3

    .line 247
    .line 248
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    add-int/lit8 v9, v3, 0x1

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_15
    if-ge v3, v9, :cond_16

    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_16
    invoke-static {v10, v4}, Lcom/mycompany/app/dialog/DialogPassLoad;->C(ILjava/util/ArrayList;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 269
    .line 270
    .line 271
    move-result v13

    .line 272
    if-eqz v13, :cond_17

    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_17
    invoke-static {v11, v4}, Lcom/mycompany/app/dialog/DialogPassLoad;->C(ILjava/util/ArrayList;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v13

    .line 280
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 281
    .line 282
    .line 283
    move-result v14

    .line 284
    if-eqz v14, :cond_18

    .line 285
    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :cond_18
    invoke-static {v12, v4}, Lcom/mycompany/app/dialog/DialogPassLoad;->C(ILjava/util/ArrayList;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 293
    .line 294
    .line 295
    move-result v14

    .line 296
    if-eqz v14, :cond_19

    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :cond_19
    new-instance v14, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 301
    .line 302
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 303
    .line 304
    .line 305
    iput-object v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 306
    .line 307
    iput-object v13, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 308
    .line 309
    iput-object v4, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 310
    .line 311
    invoke-static {v3, v5}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    iput-object v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 316
    .line 317
    if-nez v8, :cond_1a

    .line 318
    .line 319
    new-instance v3, Ljava/util/ArrayList;

    .line 320
    .line 321
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .line 323
    .line 324
    move-object v8, v3

    .line 325
    :cond_1a
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 326
    .line 327
    .line 328
    goto/16 :goto_0

    .line 329
    .line 330
    :catch_2
    :goto_8
    const/4 v7, 0x0

    .line 331
    const/4 v8, 0x0

    .line 332
    goto :goto_9

    .line 333
    :catch_3
    const/4 v6, 0x0

    .line 334
    goto :goto_8

    .line 335
    :catch_4
    :cond_1b
    :goto_9
    if-eqz v7, :cond_1c

    .line 336
    .line 337
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 338
    .line 339
    .line 340
    :catch_5
    :cond_1c
    if-eqz v6, :cond_1d

    .line 341
    .line 342
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 343
    .line 344
    .line 345
    :catch_6
    :cond_1d
    :goto_a
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->y0:Ljava/util/ArrayList;

    .line 346
    .line 347
    if-eqz v8, :cond_31

    .line 348
    .line 349
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-eqz v2, :cond_1e

    .line 354
    .line 355
    goto/16 :goto_13

    .line 356
    .line 357
    :cond_1e
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->a0:Landroid/content/Context;

    .line 358
    .line 359
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->y0:Ljava/util/ArrayList;

    .line 360
    .line 361
    if-nez v6, :cond_1f

    .line 362
    .line 363
    goto/16 :goto_12

    .line 364
    .line 365
    :cond_1f
    if-eqz v2, :cond_30

    .line 366
    .line 367
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    if-eqz v3, :cond_20

    .line 372
    .line 373
    goto/16 :goto_12

    .line 374
    .line 375
    :cond_20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    const/4 v4, 0x0

    .line 380
    :goto_b
    if-ge v4, v3, :cond_30

    .line 381
    .line 382
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v7

    .line 386
    add-int/lit8 v4, v4, 0x1

    .line 387
    .line 388
    move-object v12, v7

    .line 389
    check-cast v12, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 390
    .line 391
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogPassLoad;->D()Z

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    if-eqz v7, :cond_21

    .line 396
    .line 397
    goto/16 :goto_12

    .line 398
    .line 399
    :cond_21
    if-nez v12, :cond_22

    .line 400
    .line 401
    goto :goto_b

    .line 402
    :cond_22
    iget v7, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 403
    .line 404
    if-ne v7, v5, :cond_23

    .line 405
    .line 406
    goto :goto_b

    .line 407
    :cond_23
    const/4 v8, 0x2

    .line 408
    if-nez v7, :cond_2d

    .line 409
    .line 410
    iget-object v7, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 411
    .line 412
    iget-object v9, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 413
    .line 414
    sget-object v10, Lcom/mycompany/app/db/book/DbBookPass;->c:Lcom/mycompany/app/db/book/DbBookPass;

    .line 415
    .line 416
    const-string v10, "https://"

    .line 417
    .line 418
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 419
    .line 420
    .line 421
    move-result v11

    .line 422
    if-nez v11, :cond_28

    .line 423
    .line 424
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 425
    .line 426
    .line 427
    move-result v11

    .line 428
    if-eqz v11, :cond_24

    .line 429
    .line 430
    goto/16 :goto_f

    .line 431
    .line 432
    :cond_24
    sget-boolean v11, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 433
    .line 434
    if-eqz v11, :cond_25

    .line 435
    .line 436
    const-string v11, "1"

    .line 437
    .line 438
    goto :goto_c

    .line 439
    :cond_25
    const-string v11, "0"

    .line 440
    .line 441
    :goto_c
    filled-new-array {v11, v7, v9}, [Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v21

    .line 445
    :try_start_8
    invoke-static {v6}, Lcom/mycompany/app/db/book/DbBookPass;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPass;

    .line 446
    .line 447
    .line 448
    move-result-object v7

    .line 449
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 450
    .line 451
    .line 452
    move-result-object v17

    .line 453
    const-string v18, "DbBookPass_table"

    .line 454
    .line 455
    const-string v20, "_secret=? AND _path=? AND _user_val=?"

    .line 456
    .line 457
    const/16 v22, 0x0

    .line 458
    .line 459
    const/16 v19, 0x0

    .line 460
    .line 461
    invoke-static/range {v17 .. v22}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 462
    .line 463
    .line 464
    move-result-object v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 465
    if-eqz v7, :cond_26

    .line 466
    .line 467
    :try_start_9
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 468
    .line 469
    .line 470
    move-result v9

    .line 471
    if-eqz v9, :cond_26

    .line 472
    .line 473
    const-string v9, "_path"

    .line 474
    .line 475
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 476
    .line 477
    .line 478
    move-result v9

    .line 479
    const-string v11, "_user_val"

    .line 480
    .line 481
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 482
    .line 483
    .line 484
    move-result v11

    .line 485
    const-string v13, "_pass_val"

    .line 486
    .line 487
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    move-result v13

    .line 491
    const-string v14, "_rsv1"

    .line 492
    .line 493
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    move-result v14

    .line 497
    new-instance v15, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 498
    .line 499
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 500
    .line 501
    .line 502
    :try_start_a
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v9

    .line 506
    iput-object v9, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 507
    .line 508
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v9

    .line 512
    iput-object v9, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 513
    .line 514
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v9

    .line 518
    iput-object v9, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 519
    .line 520
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v9

    .line 524
    iput-object v9, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 525
    .line 526
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 527
    .line 528
    .line 529
    move-result v9

    .line 530
    if-eqz v9, :cond_27

    .line 531
    .line 532
    new-instance v9, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    iget-object v10, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 538
    .line 539
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v9

    .line 546
    iput-object v9, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 547
    .line 548
    goto :goto_e

    .line 549
    :catch_7
    :cond_26
    :goto_d
    const/4 v15, 0x0

    .line 550
    goto :goto_e

    .line 551
    :catch_8
    const/4 v7, 0x0

    .line 552
    goto :goto_d

    .line 553
    :catch_9
    :cond_27
    :goto_e
    if-eqz v7, :cond_29

    .line 554
    .line 555
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 556
    .line 557
    .line 558
    goto :goto_10

    .line 559
    :cond_28
    :goto_f
    const/4 v15, 0x0

    .line 560
    :cond_29
    :goto_10
    if-eqz v15, :cond_2d

    .line 561
    .line 562
    iget v7, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->w0:I

    .line 563
    .line 564
    if-nez v7, :cond_2b

    .line 565
    .line 566
    iget-object v7, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 567
    .line 568
    iget-object v8, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 569
    .line 570
    invoke-static {v7, v8}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result v7

    .line 574
    if-eqz v7, :cond_2a

    .line 575
    .line 576
    iput v5, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 577
    .line 578
    goto/16 :goto_b

    .line 579
    .line 580
    :cond_2a
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->z0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 581
    .line 582
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->A0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 583
    .line 584
    goto :goto_12

    .line 585
    :cond_2b
    if-ne v7, v5, :cond_2c

    .line 586
    .line 587
    iput v5, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 588
    .line 589
    goto/16 :goto_b

    .line 590
    .line 591
    :cond_2c
    iput v8, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 592
    .line 593
    :cond_2d
    iget-object v7, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 594
    .line 595
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->O1(Ljava/lang/String;)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v7

    .line 599
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->n4(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 600
    .line 601
    .line 602
    move-result-object v9

    .line 603
    invoke-static {v9}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 604
    .line 605
    .line 606
    move-result v10

    .line 607
    if-nez v10, :cond_2e

    .line 608
    .line 609
    iget-object v9, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 610
    .line 611
    invoke-static {v6, v9}, Lcom/mycompany/app/db/book/DbBookPass;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 612
    .line 613
    .line 614
    move-result-object v9

    .line 615
    invoke-static {v9}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 616
    .line 617
    .line 618
    move-result v10

    .line 619
    if-eqz v10, :cond_2e

    .line 620
    .line 621
    invoke-static {v7, v9}, Lcom/mycompany/app/main/MainUtil;->V7(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 622
    .line 623
    .line 624
    :cond_2e
    iget v7, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 625
    .line 626
    if-ne v7, v8, :cond_2f

    .line 627
    .line 628
    iget-object v7, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 629
    .line 630
    move-object v8, v9

    .line 631
    iget-object v9, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 632
    .line 633
    iget-object v10, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 634
    .line 635
    iget-object v11, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 636
    .line 637
    invoke-static/range {v6 .. v11}, Lcom/mycompany/app/db/book/DbBookPass;->i(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    goto :goto_11

    .line 641
    :cond_2f
    move-object v8, v9

    .line 642
    iget-object v7, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 643
    .line 644
    iget-object v9, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 645
    .line 646
    iget-object v10, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 647
    .line 648
    iget-object v11, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 649
    .line 650
    invoke-static/range {v6 .. v11}, Lcom/mycompany/app/db/book/DbBookPass;->f(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 651
    .line 652
    .line 653
    :goto_11
    iput v5, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 654
    .line 655
    goto/16 :goto_b

    .line 656
    .line 657
    :cond_30
    :goto_12
    iput-boolean v5, v0, Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;->g:Z

    .line 658
    .line 659
    :cond_31
    :goto_13
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->v0:Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->z0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->A0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->a0:Landroid/content/Context;

    .line 23
    .line 24
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPassLoad;->dismiss()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final e()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->v0:Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPassLoad;->D()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->a0:Landroid/content/Context;

    .line 25
    .line 26
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPassLoad;->dismiss()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogPassLoad$DialogTask;->g:Z

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    const/4 v4, 0x0

    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->x0:Z

    .line 42
    .line 43
    iput v4, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->w0:I

    .line 44
    .line 45
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->y0:Ljava/util/ArrayList;

    .line 46
    .line 47
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->z0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 48
    .line 49
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->A0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->s0:Lcom/mycompany/app/view/MyCoverView;

    .line 52
    .line 53
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    .line 58
    sget v2, Lnet/kaki87/soul2/testing/R$string;->no_password:I

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    sget v2, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->z0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 80
    .line 81
    if-eqz v2, :cond_7

    .line 82
    .line 83
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->A0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 84
    .line 85
    if-eqz v2, :cond_7

    .line 86
    .line 87
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    if-nez v2, :cond_4

    .line 90
    .line 91
    :goto_0
    return-void

    .line 92
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->s0:Lcom/mycompany/app/view/MyCoverView;

    .line 93
    .line 94
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 95
    .line 96
    .line 97
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    const/16 v5, 0x8

    .line 100
    .line 101
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->e0:Landroid/widget/LinearLayout;

    .line 105
    .line 106
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 110
    .line 111
    invoke-virtual {v2, v4, v4}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 112
    .line 113
    .line 114
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    const/16 v5, 0x81

    .line 117
    .line 118
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 119
    .line 120
    .line 121
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 122
    .line 123
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 128
    .line 129
    .line 130
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 131
    .line 132
    invoke-virtual {v2, v4, v4}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 133
    .line 134
    .line 135
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 136
    .line 137
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 138
    .line 139
    .line 140
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 147
    .line 148
    .line 149
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->z0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 152
    .line 153
    iget-object v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 159
    .line 160
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->z0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 161
    .line 162
    iget-object v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 168
    .line 169
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->z0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 170
    .line 171
    iget-object v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 177
    .line 178
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->A0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 179
    .line 180
    iget-object v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->f0:Lcom/mycompany/app/view/MyRoundImage;

    .line 186
    .line 187
    if-nez v2, :cond_5

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_5
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->z0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 191
    .line 192
    const v6, -0x70708

    .line 193
    .line 194
    .line 195
    if-nez v5, :cond_6

    .line 196
    .line 197
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 198
    .line 199
    invoke-virtual {v2, v6, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_6
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 204
    .line 205
    iget-object v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v2, v6, v7, v5, v1}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 208
    .line 209
    .line 210
    new-instance v1, Lcom/mycompany/app/dialog/DialogPassLoad$10;

    .line 211
    .line 212
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogPassLoad$10;-><init>(Lcom/mycompany/app/dialog/DialogPassLoad;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 216
    .line 217
    .line 218
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 219
    .line 220
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 224
    .line 225
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 226
    .line 227
    .line 228
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 229
    .line 230
    sget v2, Lnet/kaki87/soul2/testing/R$string;->overwrite:I

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->a0:Landroid/content/Context;

    .line 240
    .line 241
    sget v2, Lnet/kaki87/soul2/testing/R$string;->success:I

    .line 242
    .line 243
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPassLoad;->dismiss()V

    .line 247
    .line 248
    .line 249
    return-void
.end method
