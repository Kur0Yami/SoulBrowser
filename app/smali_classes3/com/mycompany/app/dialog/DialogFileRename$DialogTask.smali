.class Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogFileRename;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:I

.field public final g:J

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogFileRename;Ljava/lang/String;)V
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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogFileRename;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogFileRename;->c0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 21
    .line 22
    iget v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 23
    .line 24
    iput v1, p0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->f:I

    .line 25
    .line 26
    iget-wide v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 27
    .line 28
    iput-wide v1, p0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->g:J

    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->h:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->i:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->k:Ljava/lang/String;

    .line 39
    .line 40
    const/4 p2, 0x1

    .line 41
    invoke-static {p1, p2}, Lcom/mycompany/app/dialog/DialogFileRename;->D(Lcom/mycompany/app/dialog/DialogFileRename;Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/mycompany/app/dialog/DialogFileRename;

    .line 14
    .line 15
    if-eqz v1, :cond_13

    .line 16
    .line 17
    iget-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->h:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_13

    .line 30
    .line 31
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->k:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    goto/16 :goto_5

    .line 40
    .line 41
    :cond_2
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 42
    .line 43
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->k:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/mycompany/app/main/MainUri;->p(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    if-eqz v5, :cond_8

    .line 52
    .line 53
    if-eqz v3, :cond_6

    .line 54
    .line 55
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_6

    .line 60
    .line 61
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    :try_start_0
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->V0(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->t2(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    :try_start_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-nez v9, :cond_4

    .line 81
    .line 82
    invoke-static {v5}, Lcom/mycompany/app/compress/Compress;->H(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_5

    .line 87
    .line 88
    :cond_4
    const-string v8, "application/octet-stream"

    .line 89
    .line 90
    :cond_5
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 91
    .line 92
    .line 93
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 94
    :try_start_2
    new-instance v5, Landroid/content/ContentValues;

    .line 95
    .line 96
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v9, "_display_name"

    .line 100
    .line 101
    invoke-virtual {v5, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v9, "mime_type"

    .line 105
    .line 106
    invoke-virtual {v5, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    invoke-virtual {v9, v2, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-lez v5, :cond_7

    .line 118
    .line 119
    invoke-static {v3, v2, v7, v7, v6}, Lcom/mycompany/app/main/MainUriVol;->e(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 120
    .line 121
    .line 122
    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 123
    :cond_6
    :goto_0
    move-object v13, v7

    .line 124
    goto :goto_2

    .line 125
    :catch_0
    move-object v7, v2

    .line 126
    goto :goto_1

    .line 127
    :catch_1
    move-object v8, v7

    .line 128
    :catch_2
    :goto_1
    move-object v2, v7

    .line 129
    :cond_7
    invoke-static {v4}, Lcom/mycompany/app/main/MainUri;->g(Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$NumItem;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-static {v3, v2, v4, v8}, Lcom/mycompany/app/main/MainUriVol;->f(Landroid/content/Context;Landroid/net/Uri;Lcom/mycompany/app/main/MainUri$NumItem;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    goto :goto_0

    .line 138
    :cond_8
    if-eqz v3, :cond_6

    .line 139
    .line 140
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-nez v5, :cond_6

    .line 145
    .line 146
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_9

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_9
    :try_start_3
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v5, v2, v4}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 162
    .line 163
    .line 164
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 165
    if-eqz v2, :cond_a

    .line 166
    .line 167
    :try_start_4
    invoke-static {v3, v2, v7, v6}, Lcom/mycompany/app/main/MainUriDoc;->d(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 168
    .line 169
    .line 170
    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 171
    goto :goto_0

    .line 172
    :catch_3
    move-object v7, v2

    .line 173
    :catch_4
    move-object v2, v7

    .line 174
    :cond_a
    invoke-static {v4}, Lcom/mycompany/app/main/MainUri;->g(Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$NumItem;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-static {v3, v2, v4}, Lcom/mycompany/app/main/MainUriDoc;->e(Landroid/content/Context;Landroid/net/Uri;Lcom/mycompany/app/main/MainUri$NumItem;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    goto :goto_0

    .line 183
    :goto_2
    if-nez v13, :cond_b

    .line 184
    .line 185
    goto/16 :goto_5

    .line 186
    .line 187
    :cond_b
    iget-object v2, v13, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 188
    .line 189
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->j:Ljava/lang/String;

    .line 190
    .line 191
    iget-object v2, v13, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 192
    .line 193
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->k:Ljava/lang/String;

    .line 194
    .line 195
    iget v3, v1, Lcom/mycompany/app/dialog/DialogFileRename;->b0:I

    .line 196
    .line 197
    const/16 v4, 0x20

    .line 198
    .line 199
    const/4 v5, 0x1

    .line 200
    if-ne v3, v4, :cond_11

    .line 201
    .line 202
    iget v3, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->f:I

    .line 203
    .line 204
    const/16 v4, 0x8

    .line 205
    .line 206
    const-string v6, "_name"

    .line 207
    .line 208
    const-string v7, "_path"

    .line 209
    .line 210
    const-wide/16 v8, 0x0

    .line 211
    .line 212
    iget-wide v10, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->g:J

    .line 213
    .line 214
    if-ne v3, v4, :cond_d

    .line 215
    .line 216
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 217
    .line 218
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookDown;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDown;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    iget v13, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->f:I

    .line 223
    .line 224
    iget-object v14, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->j:Ljava/lang/String;

    .line 225
    .line 226
    iget-object v15, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->k:Ljava/lang/String;

    .line 227
    .line 228
    iget-wide v2, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->g:J

    .line 229
    .line 230
    move-wide/from16 v16, v2

    .line 231
    .line 232
    invoke-virtual/range {v12 .. v17}, Lcom/mycompany/app/data/book/DataBookList;->h(ILjava/lang/String;Ljava/lang/String;J)V

    .line 233
    .line 234
    .line 235
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 236
    .line 237
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->j:Ljava/lang/String;

    .line 238
    .line 239
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->k:Ljava/lang/String;

    .line 240
    .line 241
    sget-object v4, Lcom/mycompany/app/db/book/DbBookPage;->c:Lcom/mycompany/app/db/book/DbBookPage;

    .line 242
    .line 243
    if-eqz v1, :cond_12

    .line 244
    .line 245
    cmp-long v4, v10, v8

    .line 246
    .line 247
    if-lez v4, :cond_12

    .line 248
    .line 249
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-nez v4, :cond_12

    .line 254
    .line 255
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-eqz v4, :cond_c

    .line 260
    .line 261
    goto/16 :goto_4

    .line 262
    .line 263
    :cond_c
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookPage;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPage;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    const-string v4, "DbBookPage_table"

    .line 272
    .line 273
    invoke-static {v1, v4, v10, v11}, Lcom/mycompany/app/db/DbUtil;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)I

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    if-ne v8, v5, :cond_12

    .line 278
    .line 279
    invoke-static {v7, v2, v6, v3}, Lcom/mycompany/app/dialog/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-static {v1, v4, v2, v10, v11}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_4

    .line 287
    .line 288
    :cond_d
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->P0(Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    iput v2, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->f:I

    .line 293
    .line 294
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 295
    .line 296
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookDown;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDown;

    .line 297
    .line 298
    .line 299
    move-result-object v14

    .line 300
    iget v15, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->f:I

    .line 301
    .line 302
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->j:Ljava/lang/String;

    .line 303
    .line 304
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->k:Ljava/lang/String;

    .line 305
    .line 306
    move-wide/from16 v20, v8

    .line 307
    .line 308
    iget-wide v8, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->g:J

    .line 309
    .line 310
    move-object/from16 v16, v2

    .line 311
    .line 312
    move-object/from16 v17, v3

    .line 313
    .line 314
    move-wide/from16 v18, v8

    .line 315
    .line 316
    invoke-virtual/range {v14 .. v19}, Lcom/mycompany/app/data/book/DataBookList;->h(ILjava/lang/String;Ljava/lang/String;J)V

    .line 317
    .line 318
    .line 319
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 320
    .line 321
    iget v3, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->f:I

    .line 322
    .line 323
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->j:Ljava/lang/String;

    .line 324
    .line 325
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->k:Ljava/lang/String;

    .line 326
    .line 327
    sget-object v9, Lcom/mycompany/app/db/book/DbBookDown;->c:Lcom/mycompany/app/db/book/DbBookDown;

    .line 328
    .line 329
    if-eqz v2, :cond_f

    .line 330
    .line 331
    cmp-long v9, v10, v20

    .line 332
    .line 333
    if-lez v9, :cond_f

    .line 334
    .line 335
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 336
    .line 337
    .line 338
    move-result v9

    .line 339
    if-nez v9, :cond_f

    .line 340
    .line 341
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 342
    .line 343
    .line 344
    move-result v9

    .line 345
    if-eqz v9, :cond_e

    .line 346
    .line 347
    goto :goto_3

    .line 348
    :cond_e
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    const-string v9, "DbBookDown_table"

    .line 357
    .line 358
    invoke-static {v2, v9, v10, v11}, Lcom/mycompany/app/db/DbUtil;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)I

    .line 359
    .line 360
    .line 361
    move-result v12

    .line 362
    if-ne v12, v5, :cond_f

    .line 363
    .line 364
    new-instance v12, Landroid/content/ContentValues;

    .line 365
    .line 366
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 367
    .line 368
    .line 369
    const-string v14, "_type"

    .line 370
    .line 371
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-virtual {v12, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v12, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v12, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-static {v2, v9, v12, v10, v11}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 385
    .line 386
    .line 387
    :cond_f
    :goto_3
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->i:Ljava/lang/String;

    .line 388
    .line 389
    invoke-static {v2}, Lcom/mycompany/app/data/DataUtil;->d(Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    move-result v9

    .line 393
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->k:Ljava/lang/String;

    .line 394
    .line 395
    invoke-static {v2}, Lcom/mycompany/app/data/DataUtil;->d(Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    move-result v10

    .line 399
    if-eq v9, v5, :cond_10

    .line 400
    .line 401
    const/4 v2, 0x2

    .line 402
    if-eq v9, v2, :cond_10

    .line 403
    .line 404
    const/4 v3, 0x3

    .line 405
    if-eq v9, v3, :cond_10

    .line 406
    .line 407
    if-eq v10, v5, :cond_10

    .line 408
    .line 409
    if-eq v10, v2, :cond_10

    .line 410
    .line 411
    if-ne v10, v3, :cond_12

    .line 412
    .line 413
    :cond_10
    iget-object v8, v1, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 414
    .line 415
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->h:Ljava/lang/String;

    .line 416
    .line 417
    iget-object v12, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->j:Ljava/lang/String;

    .line 418
    .line 419
    invoke-static/range {v8 .. v13}, Lcom/mycompany/app/data/DataUtil;->e(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;)V

    .line 420
    .line 421
    .line 422
    goto :goto_4

    .line 423
    :cond_11
    invoke-static {v2}, Lcom/mycompany/app/data/DataUtil;->d(Ljava/lang/String;)I

    .line 424
    .line 425
    .line 426
    move-result v10

    .line 427
    iget-object v8, v1, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 428
    .line 429
    iget v9, v1, Lcom/mycompany/app/dialog/DialogFileRename;->b0:I

    .line 430
    .line 431
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->h:Ljava/lang/String;

    .line 432
    .line 433
    iget-object v12, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->j:Ljava/lang/String;

    .line 434
    .line 435
    invoke-static/range {v8 .. v13}, Lcom/mycompany/app/data/DataUtil;->e(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;)V

    .line 436
    .line 437
    .line 438
    :cond_12
    :goto_4
    iput-boolean v5, v0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->l:Z

    .line 439
    .line 440
    :cond_13
    :goto_5
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogFileRename;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->k0:Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogFileRename;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogFileRename;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->k0:Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->l:Z

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 23
    .line 24
    sget v2, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {v0, v1}, Lcom/mycompany/app/dialog/DialogFileRename;->D(Lcom/mycompany/app/dialog/DialogFileRename;Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 35
    .line 36
    sget v2, Lnet/kaki87/soul2/testing/R$string;->success:I

    .line 37
    .line 38
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogFileRename;->e0:Lcom/mycompany/app/dialog/DialogFileRename$FileRenameListener;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget v1, p0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->f:I

    .line 46
    .line 47
    iget-wide v2, p0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->g:J

    .line 48
    .line 49
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;->j:Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {v0, v1, v4, v2, v3}, Lcom/mycompany/app/dialog/DialogFileRename$FileRenameListener;->a(ILjava/lang/String;J)V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_0
    return-void
.end method
