.class Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogBackupLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V
    .locals 4

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogBackupLoad;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogBackupLoad;->H0:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;->f:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogBackupLoad;->K0:Z

    .line 26
    .line 27
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogBackupLoad;->L0:Z

    .line 28
    .line 29
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogBackupLoad;->M0:Z

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {p1, v1}, Lcom/mycompany/app/dialog/DialogBackupLoad;->L(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogBackupLoad;->e0:Landroidx/core/widget/NestedScrollView;

    .line 36
    .line 37
    const/16 v3, 0x8

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    sget v2, Lnet/kaki87/soul2/testing/R$string;->loading:I

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->M(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Lcom/mycompany/app/dialog/DialogBackupLoad;->I(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogBackupLoad;->E0:Lcom/mycompany/app/view/MyLineText;

    .line 51
    .line 52
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 32

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_48

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    move-object v2, v0

    .line 14
    check-cast v2, Lcom/mycompany/app/dialog/DialogBackupLoad;

    .line 15
    .line 16
    if-eqz v2, :cond_7a

    .line 17
    .line 18
    iget-boolean v0, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto/16 :goto_48

    .line 23
    .line 24
    :cond_1
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x1

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    :goto_0
    move v0, v4

    .line 31
    goto/16 :goto_7

    .line 32
    .line 33
    :cond_2
    iget-object v6, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->I0:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-nez v6, :cond_3

    .line 40
    .line 41
    new-instance v6, Ljava/io/File;

    .line 42
    .line 43
    iget-object v7, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->I0:Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_3

    .line 53
    .line 54
    move v0, v5

    .line 55
    goto/16 :goto_7

    .line 56
    .line 57
    :cond_3
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->m0(Landroid/content/Context;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    iget-object v7, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->c0:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 69
    .line 70
    iget-object v8, v1, Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;->f:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v7, :cond_b

    .line 73
    .line 74
    invoke-virtual {v7, v8, v4}, Lcom/mycompany/app/gdrive/GdriveManager;->c(Ljava/lang/String;Z)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-nez v8, :cond_6

    .line 83
    .line 84
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_5

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    iget-object v8, v7, Lcom/mycompany/app/gdrive/GdriveManager;->b:Lcom/google/api/services/drive/Drive;

    .line 92
    .line 93
    if-nez v8, :cond_7

    .line 94
    .line 95
    :cond_6
    :goto_1
    move v0, v4

    .line 96
    goto :goto_6

    .line 97
    :cond_7
    :try_start_0
    invoke-virtual {v8}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    invoke-virtual {v8, v0}, Lcom/google/api/services/drive/Drive$Files;->get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Files$Get;->executeMediaAsInputStream()Ljava/io/InputStream;

    .line 106
    .line 107
    .line 108
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 109
    :try_start_1
    invoke-static {v6, v4}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 110
    .line 111
    .line 112
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    const/16 v0, 0x2000

    .line 114
    .line 115
    :try_start_2
    new-array v10, v0, [B

    .line 116
    .line 117
    :goto_2
    invoke-virtual {v8, v10, v4, v0}, Ljava/io/InputStream;->read([BII)I

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    const/4 v12, -0x1

    .line 122
    if-eq v11, v12, :cond_8

    .line 123
    .line 124
    invoke-virtual {v9, v10, v4, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 125
    .line 126
    .line 127
    iget-wide v12, v7, Lcom/mycompany/app/gdrive/GdriveManager;->c:J

    .line 128
    .line 129
    int-to-long v14, v11

    .line 130
    add-long/2addr v12, v14

    .line 131
    iput-wide v12, v7, Lcom/mycompany/app/gdrive/GdriveManager;->c:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catch_0
    move-exception v0

    .line 135
    goto :goto_4

    .line 136
    :cond_8
    move v0, v5

    .line 137
    goto :goto_5

    .line 138
    :catch_1
    move-exception v0

    .line 139
    :goto_3
    const/4 v9, 0x0

    .line 140
    goto :goto_4

    .line 141
    :catch_2
    move-exception v0

    .line 142
    const/4 v8, 0x0

    .line 143
    goto :goto_3

    .line 144
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-nez v7, :cond_9

    .line 153
    .line 154
    const-string v7, "downloadQuotaExceeded"

    .line 155
    .line 156
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    :cond_9
    move v0, v4

    .line 160
    :goto_5
    if-eqz v9, :cond_a

    .line 161
    .line 162
    :try_start_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 163
    .line 164
    .line 165
    :catch_3
    :cond_a
    if-eqz v8, :cond_c

    .line 166
    .line 167
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 168
    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_b
    invoke-static {v0, v8, v6}, Lcom/mycompany/app/main/MainUtil;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    :catch_4
    :cond_c
    :goto_6
    if-eqz v0, :cond_d

    .line 176
    .line 177
    iput-object v6, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->I0:Ljava/lang/String;

    .line 178
    .line 179
    :cond_d
    :goto_7
    if-eqz v0, :cond_7a

    .line 180
    .line 181
    iget-boolean v0, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 182
    .line 183
    if-eqz v0, :cond_e

    .line 184
    .line 185
    goto/16 :goto_48

    .line 186
    .line 187
    :cond_e
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 188
    .line 189
    iget-object v6, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->I0:Ljava/lang/String;

    .line 190
    .line 191
    invoke-static {v0, v6}, Lcom/mycompany/app/compress/CompressUtilZip;->V(Landroid/content/Context;Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    xor-int/lit8 v6, v0, 0x1

    .line 196
    .line 197
    iput-boolean v6, v1, Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;->g:Z

    .line 198
    .line 199
    if-eqz v0, :cond_7a

    .line 200
    .line 201
    iget-boolean v0, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 202
    .line 203
    if-eqz v0, :cond_f

    .line 204
    .line 205
    goto/16 :goto_48

    .line 206
    .line 207
    :cond_f
    const/4 v0, 0x2

    .line 208
    invoke-static {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad;->B(Lcom/mycompany/app/dialog/DialogBackupLoad;I)Z

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    iget-boolean v7, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 213
    .line 214
    if-eqz v7, :cond_10

    .line 215
    .line 216
    goto/16 :goto_48

    .line 217
    .line 218
    :cond_10
    const/4 v7, 0x3

    .line 219
    if-nez v6, :cond_15

    .line 220
    .line 221
    invoke-static {v2, v7}, Lcom/mycompany/app/dialog/DialogBackupLoad;->B(Lcom/mycompany/app/dialog/DialogBackupLoad;I)Z

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    iget-boolean v8, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 226
    .line 227
    if-eqz v8, :cond_11

    .line 228
    .line 229
    goto/16 :goto_48

    .line 230
    .line 231
    :cond_11
    if-nez v6, :cond_14

    .line 232
    .line 233
    invoke-static {v2, v4}, Lcom/mycompany/app/dialog/DialogBackupLoad;->B(Lcom/mycompany/app/dialog/DialogBackupLoad;I)Z

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    iget-boolean v8, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 238
    .line 239
    if-eqz v8, :cond_12

    .line 240
    .line 241
    goto/16 :goto_48

    .line 242
    .line 243
    :cond_12
    if-nez v6, :cond_13

    .line 244
    .line 245
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->I0:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->D2(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-static {v0, v2}, Lcom/mycompany/app/compress/CompressUtilZip2;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    xor-int/2addr v0, v5

    .line 256
    iput-boolean v0, v1, Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;->g:Z

    .line 257
    .line 258
    return-void

    .line 259
    :cond_13
    move v6, v4

    .line 260
    goto :goto_8

    .line 261
    :cond_14
    move v6, v7

    .line 262
    goto :goto_8

    .line 263
    :cond_15
    move v6, v0

    .line 264
    :goto_8
    iget-object v8, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->J0:Ljava/lang/String;

    .line 265
    .line 266
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 267
    .line 268
    .line 269
    move-result v8

    .line 270
    if-nez v8, :cond_7a

    .line 271
    .line 272
    new-instance v8, Ljava/io/File;

    .line 273
    .line 274
    iget-object v9, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->J0:Ljava/lang/String;

    .line 275
    .line 276
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    if-nez v8, :cond_16

    .line 284
    .line 285
    goto/16 :goto_48

    .line 286
    .line 287
    :cond_16
    new-instance v8, Ljava/io/File;

    .line 288
    .line 289
    iget-object v9, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->J0:Ljava/lang/String;

    .line 290
    .line 291
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    if-eqz v8, :cond_7a

    .line 299
    .line 300
    array-length v9, v8

    .line 301
    if-nez v9, :cond_17

    .line 302
    .line 303
    goto/16 :goto_48

    .line 304
    .line 305
    :cond_17
    const-string v9, "DbTabThumb.db"

    .line 306
    .line 307
    const-string v10, "DbBookWeb.db"

    .line 308
    .line 309
    const-string v11, "DbBookSearch.db"

    .line 310
    .line 311
    const-string v12, "DbBookQuick.db"

    .line 312
    .line 313
    const-string v13, "DbBookPass.db"

    .line 314
    .line 315
    const-string v14, "DbBookIcon.db"

    .line 316
    .line 317
    const-string v15, "DbBookScript.db"

    .line 318
    .line 319
    if-eqz v6, :cond_39

    .line 320
    .line 321
    new-instance v3, Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .line 325
    .line 326
    sget-object v17, Lcom/mycompany/app/dialog/DialogBackupSave;->X0:[Ljava/lang/String;

    .line 327
    .line 328
    move v0, v4

    .line 329
    :goto_9
    const/16 v4, 0x13

    .line 330
    .line 331
    if-ge v0, v4, :cond_18

    .line 332
    .line 333
    aget-object v4, v17, v0

    .line 334
    .line 335
    move/from16 v19, v5

    .line 336
    .line 337
    new-instance v5, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;

    .line 338
    .line 339
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 340
    .line 341
    .line 342
    iput-object v4, v5, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;->a:Ljava/lang/String;

    .line 343
    .line 344
    new-instance v7, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    .line 345
    .line 346
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v7, v4}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    iput-object v4, v5, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;->b:Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    add-int/lit8 v0, v0, 0x1

    .line 359
    .line 360
    move/from16 v5, v19

    .line 361
    .line 362
    const/4 v7, 0x3

    .line 363
    goto :goto_9

    .line 364
    :cond_18
    move/from16 v19, v5

    .line 365
    .line 366
    sget-object v0, Lcom/mycompany/app/dialog/DialogBackupSave;->Y0:[Ljava/lang/String;

    .line 367
    .line 368
    const/4 v4, 0x0

    .line 369
    :goto_a
    const/16 v5, 0x8

    .line 370
    .line 371
    if-ge v4, v5, :cond_19

    .line 372
    .line 373
    aget-object v5, v0, v4

    .line 374
    .line 375
    new-instance v7, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;

    .line 376
    .line 377
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 378
    .line 379
    .line 380
    iput-object v5, v7, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;->a:Ljava/lang/String;

    .line 381
    .line 382
    move-object/from16 v17, v0

    .line 383
    .line 384
    new-instance v0, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    .line 385
    .line 386
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v5}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    iput-object v0, v7, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;->b:Ljava/lang/String;

    .line 394
    .line 395
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    add-int/lit8 v4, v4, 0x1

    .line 399
    .line 400
    move-object/from16 v0, v17

    .line 401
    .line 402
    goto :goto_a

    .line 403
    :cond_19
    const/4 v0, 0x3

    .line 404
    if-ne v6, v0, :cond_38

    .line 405
    .line 406
    array-length v4, v8

    .line 407
    if-nez v4, :cond_1a

    .line 408
    .line 409
    goto/16 :goto_19

    .line 410
    .line 411
    :cond_1a
    array-length v4, v8

    .line 412
    add-int/lit8 v4, v4, 0x1

    .line 413
    .line 414
    if-ne v6, v0, :cond_36

    .line 415
    .line 416
    array-length v0, v8

    .line 417
    const/4 v5, 0x0

    .line 418
    :goto_b
    if-ge v5, v0, :cond_35

    .line 419
    .line 420
    aget-object v7, v8, v5

    .line 421
    .line 422
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v7

    .line 426
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 427
    .line 428
    .line 429
    move-result v17

    .line 430
    if-eqz v17, :cond_1b

    .line 431
    .line 432
    move/from16 v17, v0

    .line 433
    .line 434
    move-object/from16 v21, v3

    .line 435
    .line 436
    move/from16 v20, v4

    .line 437
    .line 438
    goto/16 :goto_17

    .line 439
    .line 440
    :cond_1b
    move/from16 v17, v0

    .line 441
    .line 442
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    move/from16 v20, v4

    .line 447
    .line 448
    const/4 v4, 0x0

    .line 449
    :goto_c
    if-ge v4, v0, :cond_1d

    .line 450
    .line 451
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v21

    .line 455
    add-int/lit8 v4, v4, 0x1

    .line 456
    .line 457
    move/from16 v22, v0

    .line 458
    .line 459
    move-object/from16 v0, v21

    .line 460
    .line 461
    check-cast v0, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;

    .line 462
    .line 463
    move-object/from16 v21, v3

    .line 464
    .line 465
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;->b:Ljava/lang/String;

    .line 466
    .line 467
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    if-eqz v3, :cond_1c

    .line 472
    .line 473
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;->a:Ljava/lang/String;

    .line 474
    .line 475
    goto :goto_d

    .line 476
    :cond_1c
    move-object/from16 v3, v21

    .line 477
    .line 478
    move/from16 v0, v22

    .line 479
    .line 480
    goto :goto_c

    .line 481
    :cond_1d
    move-object/from16 v21, v3

    .line 482
    .line 483
    const/4 v0, 0x0

    .line 484
    :goto_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 485
    .line 486
    .line 487
    move-result v3

    .line 488
    if-eqz v3, :cond_1e

    .line 489
    .line 490
    goto/16 :goto_17

    .line 491
    .line 492
    :cond_1e
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    if-eqz v3, :cond_22

    .line 497
    .line 498
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 499
    .line 500
    sget-object v3, Lcom/mycompany/app/db/book/DbBookScript;->c:Lcom/mycompany/app/db/book/DbBookScript;

    .line 501
    .line 502
    if-nez v0, :cond_1f

    .line 503
    .line 504
    :goto_e
    const/4 v3, 0x0

    .line 505
    goto :goto_10

    .line 506
    :cond_1f
    :try_start_5
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 511
    .line 512
    .line 513
    move-result-object v22

    .line 514
    const-string v23, "DbBookScript_table"

    .line 515
    .line 516
    const/16 v26, 0x0

    .line 517
    .line 518
    const/16 v27, 0x0

    .line 519
    .line 520
    const/16 v24, 0x0

    .line 521
    .line 522
    const/16 v25, 0x0

    .line 523
    .line 524
    invoke-static/range {v22 .. v27}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 525
    .line 526
    .line 527
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 528
    if-eqz v0, :cond_20

    .line 529
    .line 530
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 531
    .line 532
    .line 533
    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 534
    goto :goto_f

    .line 535
    :catch_5
    const/4 v0, 0x0

    .line 536
    :catch_6
    :cond_20
    const/4 v3, 0x0

    .line 537
    :goto_f
    if-eqz v0, :cond_21

    .line 538
    .line 539
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 540
    .line 541
    .line 542
    :cond_21
    :goto_10
    add-int v4, v20, v3

    .line 543
    .line 544
    goto/16 :goto_18

    .line 545
    .line 546
    :cond_22
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    if-eqz v3, :cond_25

    .line 551
    .line 552
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 553
    .line 554
    sget-object v3, Lcom/mycompany/app/db/book/DbBookIcon;->c:Lcom/mycompany/app/db/book/DbBookIcon;

    .line 555
    .line 556
    if-nez v0, :cond_23

    .line 557
    .line 558
    goto :goto_e

    .line 559
    :cond_23
    :try_start_7
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookIcon;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookIcon;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 564
    .line 565
    .line 566
    move-result-object v22

    .line 567
    const-string v23, "DbBookIcon_table"

    .line 568
    .line 569
    const/16 v26, 0x0

    .line 570
    .line 571
    const/16 v27, 0x0

    .line 572
    .line 573
    const/16 v24, 0x0

    .line 574
    .line 575
    const/16 v25, 0x0

    .line 576
    .line 577
    invoke-static/range {v22 .. v27}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 578
    .line 579
    .line 580
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 581
    if-eqz v0, :cond_24

    .line 582
    .line 583
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 584
    .line 585
    .line 586
    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 587
    goto :goto_11

    .line 588
    :catch_7
    const/4 v0, 0x0

    .line 589
    :catch_8
    :cond_24
    const/4 v3, 0x0

    .line 590
    :goto_11
    if-eqz v0, :cond_21

    .line 591
    .line 592
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 593
    .line 594
    .line 595
    goto :goto_10

    .line 596
    :cond_25
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v3

    .line 600
    if-eqz v3, :cond_28

    .line 601
    .line 602
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 603
    .line 604
    sget-object v3, Lcom/mycompany/app/db/book/DbBookPass;->c:Lcom/mycompany/app/db/book/DbBookPass;

    .line 605
    .line 606
    if-nez v0, :cond_26

    .line 607
    .line 608
    goto :goto_e

    .line 609
    :cond_26
    :try_start_9
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookPass;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPass;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 614
    .line 615
    .line 616
    move-result-object v22

    .line 617
    const-string v23, "DbBookPass_table"

    .line 618
    .line 619
    const/16 v26, 0x0

    .line 620
    .line 621
    const/16 v27, 0x0

    .line 622
    .line 623
    const/16 v24, 0x0

    .line 624
    .line 625
    const/16 v25, 0x0

    .line 626
    .line 627
    invoke-static/range {v22 .. v27}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 628
    .line 629
    .line 630
    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 631
    if-eqz v0, :cond_27

    .line 632
    .line 633
    :try_start_a
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 634
    .line 635
    .line 636
    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 637
    goto :goto_12

    .line 638
    :catch_9
    const/4 v0, 0x0

    .line 639
    :catch_a
    :cond_27
    const/4 v3, 0x0

    .line 640
    :goto_12
    if-eqz v0, :cond_21

    .line 641
    .line 642
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 643
    .line 644
    .line 645
    goto :goto_10

    .line 646
    :cond_28
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v3

    .line 650
    if-eqz v3, :cond_2b

    .line 651
    .line 652
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 653
    .line 654
    sget-object v3, Lcom/mycompany/app/db/book/DbBookQuick;->c:Lcom/mycompany/app/db/book/DbBookQuick;

    .line 655
    .line 656
    if-nez v0, :cond_29

    .line 657
    .line 658
    goto/16 :goto_e

    .line 659
    .line 660
    :cond_29
    :try_start_b
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookQuick;->i(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookQuick;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 665
    .line 666
    .line 667
    move-result-object v22

    .line 668
    const-string v23, "DbBookQuick_table"

    .line 669
    .line 670
    const/16 v26, 0x0

    .line 671
    .line 672
    const/16 v27, 0x0

    .line 673
    .line 674
    const/16 v24, 0x0

    .line 675
    .line 676
    const/16 v25, 0x0

    .line 677
    .line 678
    invoke-static/range {v22 .. v27}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 679
    .line 680
    .line 681
    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 682
    if-eqz v0, :cond_2a

    .line 683
    .line 684
    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 685
    .line 686
    .line 687
    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 688
    goto :goto_13

    .line 689
    :catch_b
    const/4 v0, 0x0

    .line 690
    :catch_c
    :cond_2a
    const/4 v3, 0x0

    .line 691
    :goto_13
    if-eqz v0, :cond_21

    .line 692
    .line 693
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 694
    .line 695
    .line 696
    goto/16 :goto_10

    .line 697
    .line 698
    :cond_2b
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 699
    .line 700
    .line 701
    move-result v3

    .line 702
    if-eqz v3, :cond_2e

    .line 703
    .line 704
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 705
    .line 706
    sget-object v3, Lcom/mycompany/app/db/book/DbBookSearch;->c:Lcom/mycompany/app/db/book/DbBookSearch;

    .line 707
    .line 708
    if-nez v0, :cond_2c

    .line 709
    .line 710
    goto/16 :goto_e

    .line 711
    .line 712
    :cond_2c
    :try_start_d
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookSearch;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookSearch;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 717
    .line 718
    .line 719
    move-result-object v22

    .line 720
    const-string v23, "DbBookSearch_table"

    .line 721
    .line 722
    const/16 v26, 0x0

    .line 723
    .line 724
    const/16 v27, 0x0

    .line 725
    .line 726
    const/16 v24, 0x0

    .line 727
    .line 728
    const/16 v25, 0x0

    .line 729
    .line 730
    invoke-static/range {v22 .. v27}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 731
    .line 732
    .line 733
    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 734
    if-eqz v0, :cond_2d

    .line 735
    .line 736
    :try_start_e
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 737
    .line 738
    .line 739
    move-result v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 740
    goto :goto_14

    .line 741
    :catch_d
    const/4 v0, 0x0

    .line 742
    :catch_e
    :cond_2d
    const/4 v3, 0x0

    .line 743
    :goto_14
    if-eqz v0, :cond_21

    .line 744
    .line 745
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 746
    .line 747
    .line 748
    goto/16 :goto_10

    .line 749
    .line 750
    :cond_2e
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v3

    .line 754
    if-eqz v3, :cond_31

    .line 755
    .line 756
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 757
    .line 758
    sget-object v3, Lcom/mycompany/app/db/book/DbBookWeb;->c:Lcom/mycompany/app/db/book/DbBookWeb;

    .line 759
    .line 760
    if-nez v0, :cond_2f

    .line 761
    .line 762
    goto/16 :goto_e

    .line 763
    .line 764
    :cond_2f
    :try_start_f
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 769
    .line 770
    .line 771
    move-result-object v22

    .line 772
    const-string v23, "DbBookWeb_table"

    .line 773
    .line 774
    const/16 v26, 0x0

    .line 775
    .line 776
    const/16 v27, 0x0

    .line 777
    .line 778
    const/16 v24, 0x0

    .line 779
    .line 780
    const/16 v25, 0x0

    .line 781
    .line 782
    invoke-static/range {v22 .. v27}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 783
    .line 784
    .line 785
    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 786
    if-eqz v0, :cond_30

    .line 787
    .line 788
    :try_start_10
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 789
    .line 790
    .line 791
    move-result v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 792
    goto :goto_15

    .line 793
    :catch_f
    const/4 v0, 0x0

    .line 794
    :catch_10
    :cond_30
    const/4 v3, 0x0

    .line 795
    :goto_15
    if-eqz v0, :cond_21

    .line 796
    .line 797
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 798
    .line 799
    .line 800
    goto/16 :goto_10

    .line 801
    .line 802
    :cond_31
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 803
    .line 804
    .line 805
    move-result v0

    .line 806
    if-eqz v0, :cond_34

    .line 807
    .line 808
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 809
    .line 810
    sget-object v3, Lcom/mycompany/app/db/book/DbTabThumb;->c:Lcom/mycompany/app/db/book/DbTabThumb;

    .line 811
    .line 812
    if-nez v0, :cond_32

    .line 813
    .line 814
    goto/16 :goto_e

    .line 815
    .line 816
    :cond_32
    :try_start_11
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbTabThumb;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbTabThumb;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 821
    .line 822
    .line 823
    move-result-object v22

    .line 824
    const-string v23, "DbTabThumb_table"

    .line 825
    .line 826
    const/16 v26, 0x0

    .line 827
    .line 828
    const/16 v27, 0x0

    .line 829
    .line 830
    const/16 v24, 0x0

    .line 831
    .line 832
    const/16 v25, 0x0

    .line 833
    .line 834
    invoke-static/range {v22 .. v27}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 835
    .line 836
    .line 837
    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 838
    if-eqz v0, :cond_33

    .line 839
    .line 840
    :try_start_12
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 841
    .line 842
    .line 843
    move-result v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    .line 844
    goto :goto_16

    .line 845
    :catch_11
    const/4 v0, 0x0

    .line 846
    :catch_12
    :cond_33
    const/4 v3, 0x0

    .line 847
    :goto_16
    if-eqz v0, :cond_21

    .line 848
    .line 849
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 850
    .line 851
    .line 852
    goto/16 :goto_10

    .line 853
    .line 854
    :cond_34
    :goto_17
    move/from16 v4, v20

    .line 855
    .line 856
    :goto_18
    add-int/lit8 v5, v5, 0x1

    .line 857
    .line 858
    move/from16 v0, v17

    .line 859
    .line 860
    move-object/from16 v3, v21

    .line 861
    .line 862
    goto/16 :goto_b

    .line 863
    .line 864
    :cond_35
    move/from16 v20, v4

    .line 865
    .line 866
    :cond_36
    move-object/from16 v21, v3

    .line 867
    .line 868
    iput v4, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->R0:I

    .line 869
    .line 870
    iget-object v0, v2, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 871
    .line 872
    if-nez v0, :cond_37

    .line 873
    .line 874
    goto :goto_1a

    .line 875
    :cond_37
    new-instance v3, Lcom/mycompany/app/dialog/DialogBackupLoad$18;

    .line 876
    .line 877
    invoke-direct {v3, v2}, Lcom/mycompany/app/dialog/DialogBackupLoad$18;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 878
    .line 879
    .line 880
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 881
    .line 882
    .line 883
    goto :goto_1a

    .line 884
    :cond_38
    :goto_19
    move-object/from16 v21, v3

    .line 885
    .line 886
    :goto_1a
    move-object/from16 v3, v21

    .line 887
    .line 888
    goto :goto_1b

    .line 889
    :cond_39
    move/from16 v19, v5

    .line 890
    .line 891
    const/4 v3, 0x0

    .line 892
    :goto_1b
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 893
    .line 894
    move/from16 v4, v19

    .line 895
    .line 896
    invoke-static {v2, v0, v8, v4}, Lcom/mycompany/app/dialog/DialogBackupLoad;->C(Lcom/mycompany/app/dialog/DialogBackupLoad;Landroid/content/Context;[Ljava/io/File;Z)V

    .line 897
    .line 898
    .line 899
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 900
    .line 901
    const/4 v4, 0x0

    .line 902
    invoke-static {v2, v0, v8, v4}, Lcom/mycompany/app/dialog/DialogBackupLoad;->C(Lcom/mycompany/app/dialog/DialogBackupLoad;Landroid/content/Context;[Ljava/io/File;Z)V

    .line 903
    .line 904
    .line 905
    if-nez v6, :cond_40

    .line 906
    .line 907
    :try_start_13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 908
    .line 909
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 910
    .line 911
    .line 912
    iget-object v3, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->J0:Ljava/lang/String;

    .line 913
    .line 914
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    const-string v3, "/"

    .line 918
    .line 919
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    new-instance v3, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    .line 923
    .line 924
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 925
    .line 926
    .line 927
    const-string v5, "db_file"

    .line 928
    .line 929
    invoke-virtual {v3, v5}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v3

    .line 933
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object v0

    .line 940
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->a1(Ljava/lang/String;)Ljava/io/InputStream;

    .line 941
    .line 942
    .line 943
    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_15

    .line 944
    :try_start_14
    new-instance v3, Ljava/io/BufferedReader;

    .line 945
    .line 946
    new-instance v5, Ljava/io/InputStreamReader;

    .line 947
    .line 948
    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 949
    .line 950
    .line 951
    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    .line 952
    .line 953
    .line 954
    :try_start_15
    new-instance v5, Ljava/util/ArrayList;

    .line 955
    .line 956
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 957
    .line 958
    .line 959
    move-object v6, v5

    .line 960
    const/4 v5, 0x0

    .line 961
    :goto_1c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v7

    .line 965
    if-eqz v7, :cond_3c

    .line 966
    .line 967
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->F()Z

    .line 968
    .line 969
    .line 970
    move-result v8

    .line 971
    if-eqz v8, :cond_3a

    .line 972
    .line 973
    goto :goto_1d

    .line 974
    :cond_3a
    const-string v8, "||"

    .line 975
    .line 976
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 977
    .line 978
    .line 979
    move-result v8

    .line 980
    if-eqz v8, :cond_3b

    .line 981
    .line 982
    iget-object v8, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 983
    .line 984
    invoke-virtual {v2, v8, v5, v6}, Lcom/mycompany/app/dialog/DialogBackupLoad;->K(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 985
    .line 986
    .line 987
    const/4 v5, 0x2

    .line 988
    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v6

    .line 992
    new-instance v5, Ljava/util/ArrayList;

    .line 993
    .line 994
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 995
    .line 996
    .line 997
    move-object/from16 v31, v6

    .line 998
    .line 999
    move-object v6, v5

    .line 1000
    move-object/from16 v5, v31

    .line 1001
    .line 1002
    goto :goto_1c

    .line 1003
    :catch_13
    move-object/from16 v16, v3

    .line 1004
    .line 1005
    move-object v3, v0

    .line 1006
    goto :goto_1f

    .line 1007
    :cond_3b
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    .line 1009
    .line 1010
    goto :goto_1c

    .line 1011
    :cond_3c
    :goto_1d
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->F()Z

    .line 1012
    .line 1013
    .line 1014
    move-result v7

    .line 1015
    if-nez v7, :cond_3d

    .line 1016
    .line 1017
    iget-object v7, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 1018
    .line 1019
    invoke-virtual {v2, v7, v5, v6}, Lcom/mycompany/app/dialog/DialogBackupLoad;->K(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_13

    .line 1020
    .line 1021
    .line 1022
    :cond_3d
    const/4 v4, 0x1

    .line 1023
    goto :goto_20

    .line 1024
    :catch_14
    move-object v3, v0

    .line 1025
    :goto_1e
    const/16 v16, 0x0

    .line 1026
    .line 1027
    goto :goto_1f

    .line 1028
    :catch_15
    const/4 v3, 0x0

    .line 1029
    goto :goto_1e

    .line 1030
    :goto_1f
    move-object v0, v3

    .line 1031
    move-object/from16 v3, v16

    .line 1032
    .line 1033
    :goto_20
    if-eqz v3, :cond_3e

    .line 1034
    .line 1035
    :try_start_16
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    .line 1036
    .line 1037
    .line 1038
    :catch_16
    :cond_3e
    if-eqz v0, :cond_3f

    .line 1039
    .line 1040
    :try_start_17
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    .line 1041
    .line 1042
    .line 1043
    :catch_17
    :cond_3f
    iput-boolean v4, v1, Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;->h:Z

    .line 1044
    .line 1045
    goto/16 :goto_47

    .line 1046
    .line 1047
    :cond_40
    const/4 v5, 0x2

    .line 1048
    if-ne v6, v5, :cond_49

    .line 1049
    .line 1050
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 1051
    .line 1052
    array-length v5, v8

    .line 1053
    if-nez v5, :cond_41

    .line 1054
    .line 1055
    # Mode 2 still extracts J0; always attempt website-data restore.
    goto/16 :cond_77

    .line 1056
    :cond_41
    array-length v5, v8

    .line 1057
    move v6, v4

    .line 1058
    :goto_21
    if-ge v6, v5, :cond_48

    .line 1059
    .line 1060
    aget-object v7, v8, v6

    .line 1061
    .line 1062
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v9

    .line 1066
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1067
    .line 1068
    .line 1069
    move-result v10

    .line 1070
    if-eqz v10, :cond_42

    .line 1071
    .line 1072
    goto :goto_23

    .line 1073
    :cond_42
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1074
    .line 1075
    .line 1076
    move-result v10

    .line 1077
    move v11, v4

    .line 1078
    :cond_43
    if-ge v11, v10, :cond_44

    .line 1079
    .line 1080
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v12

    .line 1084
    add-int/lit8 v11, v11, 0x1

    .line 1085
    .line 1086
    check-cast v12, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;

    .line 1087
    .line 1088
    iget-object v13, v12, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;->b:Ljava/lang/String;

    .line 1089
    .line 1090
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1091
    .line 1092
    .line 1093
    move-result v13

    .line 1094
    if-eqz v13, :cond_43

    .line 1095
    .line 1096
    iget-object v9, v12, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;->a:Ljava/lang/String;

    .line 1097
    .line 1098
    goto :goto_22

    .line 1099
    :cond_44
    const/4 v9, 0x0

    .line 1100
    :goto_22
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v10

    .line 1104
    if-eqz v10, :cond_45

    .line 1105
    .line 1106
    goto :goto_23

    .line 1107
    :cond_45
    invoke-virtual {v0, v9}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v9

    .line 1111
    if-nez v9, :cond_46

    .line 1112
    .line 1113
    goto :goto_23

    .line 1114
    :cond_46
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 1115
    .line 1116
    .line 1117
    move-result v10

    .line 1118
    if-eqz v10, :cond_47

    .line 1119
    .line 1120
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1121
    .line 1122
    .line 1123
    :cond_47
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v7

    .line 1127
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v9

    .line 1131
    invoke-static {v7, v9}, Lcom/mycompany/app/main/MainUtil;->u(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1132
    .line 1133
    .line 1134
    const/4 v7, 0x1

    .line 1135
    iput-boolean v7, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->L0:Z

    .line 1136
    .line 1137
    :goto_23
    add-int/lit8 v6, v6, 0x1

    .line 1138
    .line 1139
    goto :goto_21

    .line 1140
    :cond_48
    # After mode-2 pref restore, run website-data restore (was skipped when D2(2) succeeded).
    goto/16 :cond_77

    .line 1141
    :goto_24
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;->h:Z

    .line 1142
    .line 1143
    goto/16 :goto_47

    .line 1144
    .line 1145
    :cond_49
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 1146
    .line 1147
    array-length v5, v8

    .line 1148
    if-nez v5, :cond_4a

    .line 1149
    .line 1150
    goto/16 :cond_77

    .line 1151
    .line 1152
    :cond_4a
    array-length v5, v8

    .line 1153
    move v6, v4

    .line 1154
    :goto_25
    if-ge v6, v5, :cond_77

    .line 1155
    .line 1156
    aget-object v7, v8, v6

    .line 1157
    .line 1158
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v4

    .line 1162
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1163
    .line 1164
    .line 1165
    move-result v17

    .line 1166
    if-eqz v17, :cond_4b

    .line 1167
    .line 1168
    move-object v4, v0

    .line 1169
    move-object/from16 v27, v3

    .line 1170
    .line 1171
    move/from16 v17, v5

    .line 1172
    .line 1173
    move/from16 v18, v6

    .line 1174
    .line 1175
    :goto_26
    move-object/from16 v30, v8

    .line 1176
    .line 1177
    const/4 v7, 0x0

    .line 1178
    goto/16 :goto_45

    .line 1179
    .line 1180
    :cond_4b
    move/from16 v17, v5

    .line 1181
    .line 1182
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1183
    .line 1184
    .line 1185
    move-result v5

    .line 1186
    move/from16 v18, v6

    .line 1187
    .line 1188
    const/4 v6, 0x0

    .line 1189
    :goto_27
    if-ge v6, v5, :cond_4d

    .line 1190
    .line 1191
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v20

    .line 1195
    add-int/lit8 v6, v6, 0x1

    .line 1196
    .line 1197
    move-object/from16 v27, v3

    .line 1198
    .line 1199
    move-object/from16 v3, v20

    .line 1200
    .line 1201
    check-cast v3, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;

    .line 1202
    .line 1203
    move/from16 v20, v5

    .line 1204
    .line 1205
    iget-object v5, v3, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;->b:Ljava/lang/String;

    .line 1206
    .line 1207
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1208
    .line 1209
    .line 1210
    move-result v5

    .line 1211
    if-eqz v5, :cond_4c

    .line 1212
    .line 1213
    iget-object v3, v3, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;->a:Ljava/lang/String;

    .line 1214
    .line 1215
    goto :goto_28

    .line 1216
    :cond_4c
    move/from16 v5, v20

    .line 1217
    .line 1218
    move-object/from16 v3, v27

    .line 1219
    .line 1220
    goto :goto_27

    .line 1221
    :cond_4d
    move-object/from16 v27, v3

    .line 1222
    .line 1223
    const/4 v3, 0x0

    .line 1224
    :goto_28
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1225
    .line 1226
    .line 1227
    move-result v4

    .line 1228
    if-eqz v4, :cond_4e

    .line 1229
    .line 1230
    move-object v4, v0

    .line 1231
    goto :goto_26

    .line 1232
    :cond_4e
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1233
    .line 1234
    .line 1235
    move-result v4

    .line 1236
    const-string v5, "//|#_line_#|//"

    .line 1237
    .line 1238
    if-eqz v4, :cond_61

    .line 1239
    .line 1240
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v4

    .line 1244
    if-eqz v0, :cond_4f

    .line 1245
    .line 1246
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1247
    .line 1248
    .line 1249
    move-result v6

    .line 1250
    if-eqz v6, :cond_50

    .line 1251
    .line 1252
    :cond_4f
    :goto_29
    move-object v4, v0

    .line 1253
    move-object/from16 v30, v8

    .line 1254
    .line 1255
    goto/16 :goto_39

    .line 1256
    .line 1257
    :cond_50
    invoke-virtual {v2, v0, v3}, Lcom/mycompany/app/dialog/DialogBackupLoad;->E(Landroid/content/Context;Ljava/lang/String;)Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v3

    .line 1261
    if-nez v3, :cond_51

    .line 1262
    .line 1263
    goto :goto_29

    .line 1264
    :cond_51
    :try_start_18
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->a1(Ljava/lang/String;)Ljava/io/InputStream;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_21

    .line 1268
    :try_start_19
    new-instance v6, Ljava/io/BufferedReader;

    .line 1269
    .line 1270
    new-instance v7, Ljava/io/InputStreamReader;

    .line 1271
    .line 1272
    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1273
    .line 1274
    .line 1275
    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_20

    .line 1276
    .line 1277
    .line 1278
    move-object/from16 v23, v0

    .line 1279
    .line 1280
    const/4 v7, 0x0

    .line 1281
    const/16 v20, 0x1

    .line 1282
    .line 1283
    :goto_2a
    const/16 v21, 0x0

    .line 1284
    .line 1285
    const/16 v22, 0x0

    .line 1286
    .line 1287
    :goto_2b
    :try_start_1a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v0

    .line 1291
    if-eqz v0, :cond_52

    .line 1292
    .line 1293
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->F()Z

    .line 1294
    .line 1295
    .line 1296
    move-result v24

    .line 1297
    if-eqz v24, :cond_53

    .line 1298
    .line 1299
    :cond_52
    move-object/from16 v28, v4

    .line 1300
    .line 1301
    move-object/from16 v29, v6

    .line 1302
    .line 1303
    move-object/from16 v30, v8

    .line 1304
    .line 1305
    move/from16 v24, v20

    .line 1306
    .line 1307
    move-object/from16 v20, v23

    .line 1308
    .line 1309
    goto/16 :goto_34

    .line 1310
    .line 1311
    :cond_53
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1312
    .line 1313
    .line 1314
    move-result v24
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1d

    .line 1315
    if-eqz v24, :cond_58

    .line 1316
    .line 1317
    if-eqz v7, :cond_57

    .line 1318
    .line 1319
    move/from16 v24, v20

    .line 1320
    .line 1321
    move-object/from16 v20, v23

    .line 1322
    .line 1323
    :try_start_1b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v23

    .line 1327
    if-eqz v24, :cond_54

    .line 1328
    .line 1329
    iget-object v0, v3, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 1330
    .line 1331
    iget-object v7, v3, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->b:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_19

    .line 1332
    .line 1333
    move-object/from16 v28, v4

    .line 1334
    .line 1335
    const/4 v4, 0x0

    .line 1336
    :try_start_1c
    invoke-static {v0, v7, v4, v4}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1337
    .line 1338
    .line 1339
    const/4 v0, 0x0

    .line 1340
    goto :goto_2d

    .line 1341
    :catch_18
    :goto_2c
    move-object/from16 v29, v6

    .line 1342
    .line 1343
    move-object/from16 v30, v8

    .line 1344
    .line 1345
    goto/16 :goto_35

    .line 1346
    .line 1347
    :catch_19
    move-object/from16 v28, v4

    .line 1348
    .line 1349
    goto :goto_2c

    .line 1350
    :cond_54
    move-object/from16 v28, v4

    .line 1351
    .line 1352
    move/from16 v0, v24

    .line 1353
    .line 1354
    :goto_2d
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->H()V

    .line 1355
    .line 1356
    .line 1357
    iget-object v4, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->N0:Ljava/lang/String;

    .line 1358
    .line 1359
    iget-object v7, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->O0:Ljava/lang/String;

    .line 1360
    .line 1361
    const/16 v26, 0x0

    .line 1362
    .line 1363
    move-object/from16 v24, v4

    .line 1364
    .line 1365
    move-object/from16 v25, v7

    .line 1366
    .line 1367
    invoke-static/range {v20 .. v26}, Lcom/mycompany/app/script/Script;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mycompany/app/script/Script;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v4
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_18

    .line 1371
    move-object/from16 v7, v20

    .line 1372
    .line 1373
    if-eqz v4, :cond_55

    .line 1374
    .line 1375
    move/from16 v20, v0

    .line 1376
    .line 1377
    :try_start_1d
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->N0:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1c

    .line 1378
    .line 1379
    move-object/from16 v29, v6

    .line 1380
    .line 1381
    :try_start_1e
    iget-object v6, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->O0:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1b

    .line 1382
    .line 1383
    move-object/from16 v30, v8

    .line 1384
    .line 1385
    const/4 v8, 0x0

    .line 1386
    :try_start_1f
    invoke-static {v7, v4, v8, v0, v6}, Lcom/mycompany/app/db/book/DbBookScript;->o(Landroid/content/Context;Lcom/mycompany/app/script/Script;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v0

    .line 1390
    if-eqz v0, :cond_56

    .line 1391
    .line 1392
    const/4 v4, 0x1

    .line 1393
    iput-boolean v4, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->L0:Z

    .line 1394
    .line 1395
    goto :goto_30

    .line 1396
    :catch_1a
    :goto_2e
    move-object v4, v7

    .line 1397
    goto/16 :goto_36

    .line 1398
    .line 1399
    :catch_1b
    :goto_2f
    move-object/from16 v30, v8

    .line 1400
    .line 1401
    goto :goto_2e

    .line 1402
    :catch_1c
    move-object/from16 v29, v6

    .line 1403
    .line 1404
    goto :goto_2f

    .line 1405
    :cond_55
    move/from16 v20, v0

    .line 1406
    .line 1407
    move-object/from16 v29, v6

    .line 1408
    .line 1409
    move-object/from16 v30, v8

    .line 1410
    .line 1411
    :cond_56
    :goto_30
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->N()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1a

    .line 1412
    .line 1413
    .line 1414
    move/from16 v24, v20

    .line 1415
    .line 1416
    move-object/from16 v20, v7

    .line 1417
    .line 1418
    const/4 v7, 0x0

    .line 1419
    goto :goto_31

    .line 1420
    :cond_57
    move-object/from16 v28, v4

    .line 1421
    .line 1422
    move-object/from16 v29, v6

    .line 1423
    .line 1424
    move-object/from16 v30, v8

    .line 1425
    .line 1426
    move/from16 v24, v20

    .line 1427
    .line 1428
    move-object/from16 v20, v23

    .line 1429
    .line 1430
    :goto_31
    move-object/from16 v23, v20

    .line 1431
    .line 1432
    move/from16 v20, v24

    .line 1433
    .line 1434
    move-object/from16 v4, v28

    .line 1435
    .line 1436
    move-object/from16 v6, v29

    .line 1437
    .line 1438
    move-object/from16 v8, v30

    .line 1439
    .line 1440
    goto/16 :goto_2a

    .line 1441
    .line 1442
    :cond_58
    move-object/from16 v28, v4

    .line 1443
    .line 1444
    move-object/from16 v29, v6

    .line 1445
    .line 1446
    move-object/from16 v30, v8

    .line 1447
    .line 1448
    move/from16 v24, v20

    .line 1449
    .line 1450
    move-object/from16 v20, v23

    .line 1451
    .line 1452
    :try_start_20
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1453
    .line 1454
    .line 1455
    move-result v4

    .line 1456
    if-eqz v4, :cond_59

    .line 1457
    .line 1458
    move-object/from16 v21, v0

    .line 1459
    .line 1460
    :goto_32
    move-object/from16 v23, v20

    .line 1461
    .line 1462
    move/from16 v20, v24

    .line 1463
    .line 1464
    move-object/from16 v4, v28

    .line 1465
    .line 1466
    move-object/from16 v6, v29

    .line 1467
    .line 1468
    move-object/from16 v8, v30

    .line 1469
    .line 1470
    goto/16 :goto_2b

    .line 1471
    .line 1472
    :cond_59
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1473
    .line 1474
    .line 1475
    move-result v4

    .line 1476
    if-eqz v4, :cond_5a

    .line 1477
    .line 1478
    move-object/from16 v22, v0

    .line 1479
    .line 1480
    goto :goto_32

    .line 1481
    :cond_5a
    if-nez v7, :cond_5b

    .line 1482
    .line 1483
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1484
    .line 1485
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1486
    .line 1487
    .line 1488
    move-object v7, v4

    .line 1489
    goto :goto_33

    .line 1490
    :cond_5b
    const-string v4, "\n"

    .line 1491
    .line 1492
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    .line 1494
    .line 1495
    :goto_33
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    .line 1497
    .line 1498
    goto :goto_32

    .line 1499
    :catch_1d
    move-object/from16 v28, v4

    .line 1500
    .line 1501
    move-object/from16 v29, v6

    .line 1502
    .line 1503
    move-object/from16 v30, v8

    .line 1504
    .line 1505
    move-object/from16 v4, v23

    .line 1506
    .line 1507
    goto :goto_36

    .line 1508
    :goto_34
    if-eqz v7, :cond_5e

    .line 1509
    .line 1510
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v23

    .line 1514
    if-eqz v24, :cond_5c

    .line 1515
    .line 1516
    iget-object v0, v3, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 1517
    .line 1518
    iget-object v3, v3, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->b:Ljava/lang/String;

    .line 1519
    .line 1520
    const/4 v4, 0x0

    .line 1521
    invoke-static {v0, v3, v4, v4}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1522
    .line 1523
    .line 1524
    :cond_5c
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->H()V

    .line 1525
    .line 1526
    .line 1527
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->N0:Ljava/lang/String;

    .line 1528
    .line 1529
    iget-object v3, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->O0:Ljava/lang/String;

    .line 1530
    .line 1531
    const/16 v26, 0x0

    .line 1532
    .line 1533
    move-object/from16 v24, v0

    .line 1534
    .line 1535
    move-object/from16 v25, v3

    .line 1536
    .line 1537
    invoke-static/range {v20 .. v26}, Lcom/mycompany/app/script/Script;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mycompany/app/script/Script;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1e

    .line 1541
    move-object/from16 v4, v20

    .line 1542
    .line 1543
    if-eqz v0, :cond_5d

    .line 1544
    .line 1545
    :try_start_21
    iget-object v3, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->N0:Ljava/lang/String;

    .line 1546
    .line 1547
    iget-object v5, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->O0:Ljava/lang/String;

    .line 1548
    .line 1549
    const/4 v8, 0x0

    .line 1550
    invoke-static {v4, v0, v8, v3, v5}, Lcom/mycompany/app/db/book/DbBookScript;->o(Landroid/content/Context;Lcom/mycompany/app/script/Script;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v0

    .line 1554
    if-eqz v0, :cond_5d

    .line 1555
    .line 1556
    const/4 v7, 0x1

    .line 1557
    iput-boolean v7, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->L0:Z

    .line 1558
    .line 1559
    :cond_5d
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->N()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1f

    .line 1560
    .line 1561
    .line 1562
    goto :goto_36

    .line 1563
    :catch_1e
    :cond_5e
    :goto_35
    move-object/from16 v4, v20

    .line 1564
    .line 1565
    :catch_1f
    :goto_36
    move-object/from16 v6, v29

    .line 1566
    .line 1567
    goto :goto_38

    .line 1568
    :catch_20
    move-object/from16 v28, v4

    .line 1569
    .line 1570
    move-object/from16 v30, v8

    .line 1571
    .line 1572
    move-object v4, v0

    .line 1573
    :goto_37
    const/16 v29, 0x0

    .line 1574
    .line 1575
    goto :goto_36

    .line 1576
    :catch_21
    move-object v4, v0

    .line 1577
    move-object/from16 v30, v8

    .line 1578
    .line 1579
    const/16 v28, 0x0

    .line 1580
    .line 1581
    goto :goto_37

    .line 1582
    :goto_38
    if-eqz v6, :cond_5f

    .line 1583
    .line 1584
    :try_start_22
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_22

    .line 1585
    .line 1586
    .line 1587
    :catch_22
    :cond_5f
    if-eqz v28, :cond_60

    .line 1588
    .line 1589
    :try_start_23
    invoke-virtual/range {v28 .. v28}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_23

    .line 1590
    .line 1591
    .line 1592
    :catch_23
    :cond_60
    :goto_39
    const/4 v7, 0x0

    .line 1593
    goto/16 :goto_44

    .line 1594
    .line 1595
    :cond_61
    move-object v4, v0

    .line 1596
    move-object/from16 v30, v8

    .line 1597
    .line 1598
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v0

    .line 1602
    if-eqz v4, :cond_60

    .line 1603
    .line 1604
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1605
    .line 1606
    .line 1607
    move-result v6

    .line 1608
    if-eqz v6, :cond_62

    .line 1609
    .line 1610
    goto :goto_39

    .line 1611
    :cond_62
    invoke-virtual {v2, v4, v3}, Lcom/mycompany/app/dialog/DialogBackupLoad;->E(Landroid/content/Context;Ljava/lang/String;)Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v6

    .line 1615
    if-nez v6, :cond_63

    .line 1616
    .line 1617
    goto :goto_39

    .line 1618
    :cond_63
    :try_start_24
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->a1(Ljava/lang/String;)Ljava/io/InputStream;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_29

    .line 1622
    :try_start_25
    new-instance v7, Ljava/io/BufferedReader;

    .line 1623
    .line 1624
    new-instance v8, Ljava/io/InputStreamReader;

    .line 1625
    .line 1626
    invoke-direct {v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1627
    .line 1628
    .line 1629
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_28

    .line 1630
    .line 1631
    .line 1632
    :try_start_26
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1633
    .line 1634
    .line 1635
    move-result v8

    .line 1636
    if-eqz v8, :cond_64

    .line 1637
    .line 1638
    :goto_3a
    move-object/from16 v21, v0

    .line 1639
    .line 1640
    const/4 v3, 0x0

    .line 1641
    const/4 v8, 0x1

    .line 1642
    :goto_3b
    const/16 v20, 0x1

    .line 1643
    .line 1644
    goto :goto_3c

    .line 1645
    :cond_64
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1646
    .line 1647
    .line 1648
    move-result v8

    .line 1649
    if-eqz v8, :cond_65

    .line 1650
    .line 1651
    goto :goto_3a

    .line 1652
    :cond_65
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1653
    .line 1654
    .line 1655
    move-result v8

    .line 1656
    if-eqz v8, :cond_66

    .line 1657
    .line 1658
    goto :goto_3a

    .line 1659
    :cond_66
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1660
    .line 1661
    .line 1662
    move-result v8

    .line 1663
    if-eqz v8, :cond_67

    .line 1664
    .line 1665
    goto :goto_3a

    .line 1666
    :cond_67
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1667
    .line 1668
    .line 1669
    move-result v8

    .line 1670
    if-eqz v8, :cond_68

    .line 1671
    .line 1672
    goto :goto_3a

    .line 1673
    :cond_68
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1674
    .line 1675
    .line 1676
    move-result v3
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_27

    .line 1677
    if-eqz v3, :cond_69

    .line 1678
    .line 1679
    goto :goto_3a

    .line 1680
    :cond_69
    move-object/from16 v21, v0

    .line 1681
    .line 1682
    const/4 v3, 0x0

    .line 1683
    const/4 v8, 0x0

    .line 1684
    goto :goto_3b

    .line 1685
    :cond_6a
    :goto_3c
    :try_start_27
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v0

    .line 1689
    if-eqz v0, :cond_6b

    .line 1690
    .line 1691
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->F()Z

    .line 1692
    .line 1693
    .line 1694
    move-result v22

    .line 1695
    if-eqz v22, :cond_6c

    .line 1696
    .line 1697
    :cond_6b
    move-object/from16 v23, v7

    .line 1698
    .line 1699
    goto :goto_3f

    .line 1700
    :cond_6c
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1701
    .line 1702
    .line 1703
    move-result v22

    .line 1704
    if-eqz v22, :cond_6f

    .line 1705
    .line 1706
    if-eqz v3, :cond_6a

    .line 1707
    .line 1708
    if-eqz v20, :cond_6d

    .line 1709
    .line 1710
    iget-object v0, v6, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 1711
    .line 1712
    move-object/from16 v22, v5

    .line 1713
    .line 1714
    iget-object v5, v6, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->b:Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_24

    .line 1715
    .line 1716
    move-object/from16 v23, v7

    .line 1717
    .line 1718
    const/4 v7, 0x0

    .line 1719
    :try_start_28
    invoke-static {v0, v5, v7, v7}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_26

    .line 1720
    .line 1721
    .line 1722
    const/16 v20, 0x0

    .line 1723
    .line 1724
    goto :goto_3e

    .line 1725
    :catch_24
    :goto_3d
    move-object/from16 v23, v7

    .line 1726
    .line 1727
    goto :goto_41

    .line 1728
    :cond_6d
    move-object/from16 v22, v5

    .line 1729
    .line 1730
    move-object/from16 v23, v7

    .line 1731
    .line 1732
    :goto_3e
    :try_start_29
    iget-object v0, v6, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 1733
    .line 1734
    iget-object v5, v6, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->b:Ljava/lang/String;

    .line 1735
    .line 1736
    invoke-static {v0, v5, v3}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1737
    .line 1738
    .line 1739
    const/4 v7, 0x1

    .line 1740
    iput-boolean v7, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->L0:Z

    .line 1741
    .line 1742
    if-eqz v8, :cond_6e

    .line 1743
    .line 1744
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->N()V

    .line 1745
    .line 1746
    .line 1747
    :cond_6e
    move-object/from16 v5, v22

    .line 1748
    .line 1749
    move-object/from16 v7, v23

    .line 1750
    .line 1751
    const/4 v3, 0x0

    .line 1752
    goto :goto_3c

    .line 1753
    :cond_6f
    move-object/from16 v22, v5

    .line 1754
    .line 1755
    move-object/from16 v23, v7

    .line 1756
    .line 1757
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v5

    .line 1761
    if-nez v5, :cond_70

    .line 1762
    .line 1763
    goto :goto_3f

    .line 1764
    :cond_70
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v7

    .line 1768
    if-nez v7, :cond_71

    .line 1769
    .line 1770
    goto :goto_3f

    .line 1771
    :cond_71
    invoke-static {v3, v4, v0, v5, v7}, Lcom/mycompany/app/dialog/DialogBackupLoad;->J(Landroid/content/ContentValues;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 1772
    .line 1773
    .line 1774
    move-result-object v3

    .line 1775
    move-object/from16 v5, v22

    .line 1776
    .line 1777
    move-object/from16 v7, v23

    .line 1778
    .line 1779
    goto :goto_3c

    .line 1780
    :goto_3f
    if-eqz v3, :cond_73

    .line 1781
    .line 1782
    if-eqz v20, :cond_72

    .line 1783
    .line 1784
    iget-object v0, v6, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 1785
    .line 1786
    iget-object v5, v6, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->b:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_25

    .line 1787
    .line 1788
    const/4 v7, 0x0

    .line 1789
    :try_start_2a
    invoke-static {v0, v5, v7, v7}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1790
    .line 1791
    .line 1792
    goto :goto_40

    .line 1793
    :cond_72
    const/4 v7, 0x0

    .line 1794
    :goto_40
    iget-object v0, v6, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 1795
    .line 1796
    iget-object v5, v6, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->b:Ljava/lang/String;

    .line 1797
    .line 1798
    invoke-static {v0, v5, v3}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1799
    .line 1800
    .line 1801
    const/4 v3, 0x1

    .line 1802
    iput-boolean v3, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->L0:Z

    .line 1803
    .line 1804
    if-eqz v8, :cond_74

    .line 1805
    .line 1806
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->N()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_26

    .line 1807
    .line 1808
    .line 1809
    goto :goto_42

    .line 1810
    :catch_25
    :cond_73
    :goto_41
    const/4 v7, 0x0

    .line 1811
    :catch_26
    :cond_74
    :goto_42
    move-object/from16 v0, v21

    .line 1812
    .line 1813
    goto :goto_43

    .line 1814
    :catch_27
    move-object/from16 v21, v0

    .line 1815
    .line 1816
    goto :goto_3d

    .line 1817
    :catch_28
    move-object/from16 v21, v0

    .line 1818
    .line 1819
    const/4 v7, 0x0

    .line 1820
    move-object/from16 v23, v7

    .line 1821
    .line 1822
    goto :goto_42

    .line 1823
    :catch_29
    const/4 v7, 0x0

    .line 1824
    move-object/from16 v21, v7

    .line 1825
    .line 1826
    move-object/from16 v23, v21

    .line 1827
    .line 1828
    goto :goto_42

    .line 1829
    :goto_43
    if-eqz v23, :cond_75

    .line 1830
    .line 1831
    :try_start_2b
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_2a

    .line 1832
    .line 1833
    .line 1834
    :catch_2a
    :cond_75
    if-eqz v0, :cond_76

    .line 1835
    .line 1836
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_2b

    .line 1837
    .line 1838
    .line 1839
    :catch_2b
    :cond_76
    :goto_44
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->N()V

    .line 1840
    .line 1841
    .line 1842
    :goto_45
    add-int/lit8 v6, v18, 0x1

    .line 1843
    .line 1844
    move-object v0, v4

    .line 1845
    move/from16 v5, v17

    .line 1846
    .line 1847
    move-object/from16 v3, v27

    .line 1848
    .line 1849
    move-object/from16 v8, v30

    .line 1850
    .line 1851
    const/4 v4, 0x0

    .line 1852
    goto/16 :goto_25

    .line 1853
    .line 1854
    :cond_77
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->J0:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "import:J0="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mycompany/app/dialog/BackupWebData;->n(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mycompany/app/dialog/BackupWebData;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :import_skip_nozip

    const-string v4, "import:zip-present"

    invoke-static {v4}, Lcom/mycompany/app/dialog/BackupWebData;->n(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->c1:Lcom/mycompany/app/view/MyButtonCheck;

    # No checkbox widget -> restore. Checked -> restore. Unchecked -> skip.
    if-eqz v4, :cond_77_do

    iget-boolean v4, v4, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "import:web-check="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mycompany/app/dialog/BackupWebData;->n(Ljava/lang/String;)V

    if-nez v4, :cond_77_do

    const-string v4, "import:skip-unchecked"

    invoke-static {v4}, Lcom/mycompany/app/dialog/BackupWebData;->n(Ljava/lang/String;)V

    goto :goto_77_web

    :import_skip_nozip
    const-string v4, "import:skip-no-zip"

    invoke-static {v4}, Lcom/mycompany/app/dialog/BackupWebData;->n(Ljava/lang/String;)V

    goto :goto_77_web

    :cond_77_do
    const-string v4, "import:restore-start"

    invoke-static {v4}, Lcom/mycompany/app/dialog/BackupWebData;->n(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/mycompany/app/dialog/BackupWebData;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    # Only set L0 on website restore success. Never clear L0 if prefs/DBs
    # already restored — otherwise e() shows not_changed after a real import.
    if-eqz v5, :goto_77_web_l0

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->L0:Z

    :goto_77_web_l0
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->N()V

    :goto_77_web
    const/4 v4, 0x1

    .line 1855
    :goto_46
    iput-boolean v4, v1, Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;->h:Z

    .line 1856
    .line 1857
    :goto_47
    iget-boolean v0, v1, Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;->h:Z

    .line 1858
    .line 1859
    if-nez v0, :cond_78

    .line 1860
    .line 1861
    iget-boolean v0, v2, Lcom/mycompany/app/dialog/DialogBackupLoad;->L0:Z

    .line 1862
    .line 1863
    if-eqz v0, :cond_79

    .line 1864
    .line 1865
    :cond_78
    const/4 v7, 0x1

    .line 1866
    invoke-virtual {v2, v7}, Lcom/mycompany/app/dialog/DialogBackupLoad;->D(Z)V

    .line 1867
    .line 1868
    .line 1869
    :cond_79
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->N()V

    .line 1870
    .line 1871
    .line 1872
    :cond_7a
    :goto_48
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogBackupLoad;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->F0:Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->L0:Z

    .line 24
    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    sget v1, Lnet/kaki87/soul2/testing/R$string;->app_restart:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogBackupLoad;->M(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 37
    .line 38
    .line 39
    :cond_3
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogBackupLoad;->L(Z)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogBackupLoad;->I(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->E0:Lcom/mycompany/app/view/MyLineText;

    .line 48
    .line 49
    sget v3, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 59
    .line 60
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 61
    .line 62
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogBackupLoad;->dismiss()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogBackupLoad;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->F0:Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->L0:Z

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    sget v1, Lnet/kaki87/soul2/testing/R$string;->app_restart:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogBackupLoad;->M(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 39
    .line 40
    .line 41
    :cond_3
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->L(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogBackupLoad;->I(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->E0:Lcom/mycompany/app/view/MyLineText;

    .line 48
    .line 49
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogBackupLoad;->F()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 65
    .line 66
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 67
    .line 68
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogBackupLoad;->dismiss()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_5
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;->g:Z

    .line 76
    .line 77
    if-eqz v1, :cond_7

    .line 78
    .line 79
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->M0:Z

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 87
    .line 88
    sget v5, Lnet/kaki87/soul2/testing/R$string;->backup_changed_1:I

    .line 89
    .line 90
    const-string v6, "\n"

    .line 91
    .line 92
    invoke-static {v4, v5, v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 96
    .line 97
    sget v5, Lnet/kaki87/soul2/testing/R$string;->backup_changed_2:I

    .line 98
    .line 99
    invoke-static {v4, v5, v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 103
    .line 104
    sget v5, Lnet/kaki87/soul2/testing/R$string;->backup_changed_3:I

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->L(Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    if-nez v4, :cond_6

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->x0:Landroid/widget/FrameLayout;

    .line 129
    .line 130
    const/16 v4, 0x8

    .line 131
    .line 132
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    :goto_1
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogBackupLoad;->I(Z)V

    .line 141
    .line 142
    .line 143
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->E0:Lcom/mycompany/app/view/MyLineText;

    .line 144
    .line 145
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_7
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;->h:Z

    .line 155
    .line 156
    if-eqz v1, :cond_8

    .line 157
    .line 158
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->M0:Z

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->L(Z)V

    .line 161
    .line 162
    .line 163
    sget v1, Lnet/kaki87/soul2/testing/R$string;->not_changed:I

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogBackupLoad;->M(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogBackupLoad;->I(Z)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->E0:Lcom/mycompany/app/view/MyLineText;

    .line 172
    .line 173
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 174
    .line 175
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_8
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->L(Z)V

    .line 183
    .line 184
    .line 185
    sget v1, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogBackupLoad;->M(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogBackupLoad;->I(Z)V

    .line 191
    .line 192
    .line 193
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->E0:Lcom/mycompany/app/view/MyLineText;

    .line 194
    .line 195
    sget v2, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 201
    .line 202
    .line 203
    return-void
.end method
