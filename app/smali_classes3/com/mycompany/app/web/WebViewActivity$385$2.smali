.class Lcom/mycompany/app/web/WebViewActivity$385$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$385;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$385;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$385$2;->c:Lcom/mycompany/app/web/WebViewActivity$385;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$385$2;->c:Lcom/mycompany/app/web/WebViewActivity$385;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$385;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->ul:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->vl:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->wl:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    iget-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->xl:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    iput-object v6, v1, Lcom/mycompany/app/web/WebViewActivity;->ul:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v6, v1, Lcom/mycompany/app/web/WebViewActivity;->vl:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v6, v1, Lcom/mycompany/app/web/WebViewActivity;->wl:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    iput-object v6, v1, Lcom/mycompany/app/web/WebViewActivity;->xl:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    if-eqz v7, :cond_0

    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_0
    new-instance v7, Ljava/io/File;

    .line 33
    .line 34
    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    const-wide/16 v9, 0x0

    .line 42
    .line 43
    cmp-long v9, v7, v9

    .line 44
    .line 45
    if-lez v9, :cond_b

    .line 46
    .line 47
    iget-object v9, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-static {v9, v10, v6, v3}, Lcom/mycompany/app/main/MainUri;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eqz v3, :cond_a

    .line 58
    .line 59
    iget-object v9, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 60
    .line 61
    iget-object v10, v3, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 62
    .line 63
    const/4 v11, 0x0

    .line 64
    const/4 v12, 0x1

    .line 65
    invoke-static {v9, v5, v10, v11, v12}, Lcom/mycompany/app/main/MainUri;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_b

    .line 70
    .line 71
    iput-wide v7, v3, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 72
    .line 73
    iget-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 74
    .line 75
    sget-object v7, Lcom/mycompany/app/db/book/DbBookPage;->c:Lcom/mycompany/app/db/book/DbBookPage;

    .line 76
    .line 77
    if-eqz v5, :cond_a

    .line 78
    .line 79
    iget-object v7, v3, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_1

    .line 86
    .line 87
    goto/16 :goto_4

    .line 88
    .line 89
    :cond_1
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-nez v7, :cond_3

    .line 94
    .line 95
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-nez v7, :cond_3

    .line 100
    .line 101
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->O1(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->n4(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-nez v8, :cond_2

    .line 114
    .line 115
    invoke-static {v5, v4}, Lcom/mycompany/app/db/book/DbBookIcon;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    goto :goto_0

    .line 120
    :cond_2
    move-object v4, v7

    .line 121
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 122
    .line 123
    .line 124
    move-result-wide v7

    .line 125
    new-instance v9, Landroid/content/ContentValues;

    .line 126
    .line 127
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v10, "_dir"

    .line 131
    .line 132
    iget-object v13, v3, Lcom/mycompany/app/main/MainUri$UriItem;->c:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v9, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v10, "_dname"

    .line 138
    .line 139
    iget-object v13, v3, Lcom/mycompany/app/main/MainUri$UriItem;->d:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v9, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v10, "_path"

    .line 145
    .line 146
    iget-object v13, v3, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v9, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v10, "_name"

    .line 152
    .line 153
    iget-object v13, v3, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v9, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-string v10, "_time"

    .line 159
    .line 160
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    .line 166
    .line 167
    iget-wide v7, v3, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 168
    .line 169
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    const-string v8, "_size"

    .line 174
    .line 175
    invoke-virtual {v9, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 176
    .line 177
    .line 178
    const-string v7, "_url"

    .line 179
    .line 180
    invoke-virtual {v9, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const-string v2, "_icon"

    .line 184
    .line 185
    filled-new-array {v2}, [Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v15

    .line 189
    sget-boolean v7, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 190
    .line 191
    if-eqz v7, :cond_4

    .line 192
    .line 193
    const-string v7, "1"

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_4
    const-string v7, "0"

    .line 197
    .line 198
    :goto_1
    iget-object v8, v3, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 199
    .line 200
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v17

    .line 204
    const-string v16, "_secret=? AND _path=?"

    .line 205
    .line 206
    :try_start_0
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookPage;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPage;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    const-string v14, "DbBookPage_table"

    .line 215
    .line 216
    const/16 v18, 0x0

    .line 217
    .line 218
    invoke-static/range {v13 .. v18}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 219
    .line 220
    .line 221
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 222
    move-object/from16 v8, v16

    .line 223
    .line 224
    move-object/from16 v7, v17

    .line 225
    .line 226
    if-eqz v6, :cond_6

    .line 227
    .line 228
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 229
    .line 230
    .line 231
    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    if-eqz v10, :cond_6

    .line 233
    .line 234
    :try_start_2
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    if-eqz v10, :cond_5

    .line 239
    .line 240
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v10

    .line 244
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    if-eqz v10, :cond_5

    .line 249
    .line 250
    array-length v10, v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 251
    if-lez v10, :cond_5

    .line 252
    .line 253
    move v11, v12

    .line 254
    :catch_0
    :cond_5
    move v10, v12

    .line 255
    goto :goto_3

    .line 256
    :catch_1
    :goto_2
    move v10, v11

    .line 257
    goto :goto_3

    .line 258
    :cond_6
    const/4 v10, 0x2

    .line 259
    goto :goto_3

    .line 260
    :catch_2
    move-object/from16 v8, v16

    .line 261
    .line 262
    move-object/from16 v7, v17

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :goto_3
    if-eqz v6, :cond_7

    .line 266
    .line 267
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    :cond_7
    if-eqz v10, :cond_a

    .line 271
    .line 272
    if-nez v11, :cond_8

    .line 273
    .line 274
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    if-eqz v6, :cond_8

    .line 279
    .line 280
    :try_start_3
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 281
    .line 282
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 283
    .line 284
    .line 285
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 286
    .line 287
    const/16 v13, 0x64

    .line 288
    .line 289
    invoke-virtual {v4, v11, v13, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 290
    .line 291
    .line 292
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 300
    .line 301
    .line 302
    :catch_3
    :cond_8
    const-string v2, "DbBookPage_table"

    .line 303
    .line 304
    if-ne v10, v12, :cond_9

    .line 305
    .line 306
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookPage;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPage;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    invoke-static {v4, v2, v9, v8, v7}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    goto :goto_4

    .line 318
    :cond_9
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 319
    .line 320
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    const-string v6, "_secret"

    .line 325
    .line 326
    invoke-virtual {v9, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookPage;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPage;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-static {v4, v2, v9}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 338
    .line 339
    .line 340
    :cond_a
    :goto_4
    move-object v6, v3

    .line 341
    :cond_b
    iput-object v6, v1, Lcom/mycompany/app/web/WebViewActivity;->yl:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 342
    .line 343
    iget-object v1, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 344
    .line 345
    if-nez v1, :cond_c

    .line 346
    .line 347
    :goto_5
    return-void

    .line 348
    :cond_c
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$385$2$1;

    .line 349
    .line 350
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$385$2$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$385$2;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    .line 355
    .line 356
    return-void
.end method
