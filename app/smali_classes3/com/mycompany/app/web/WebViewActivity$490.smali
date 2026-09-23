.class Lcom/mycompany/app/web/WebViewActivity$490;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/webkit/PermissionRequest;

.field public final synthetic f:Landroid/webkit/GeolocationPermissions$Callback;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Landroid/webkit/GeolocationPermissions$Callback;Landroid/webkit/PermissionRequest;Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/mycompany/app/web/WebViewActivity$490;->h:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$490;->c:Landroid/webkit/PermissionRequest;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$490;->f:Landroid/webkit/GeolocationPermissions$Callback;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/web/WebViewActivity$490;->g:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity$490;->h:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/mycompany/app/db/book/DbBookPms;->c:Lcom/mycompany/app/db/book/DbBookPms;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-eqz v6, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    const-string v6, "_allow"

    .line 23
    .line 24
    const-string v7, "_block"

    .line 25
    .line 26
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v10

    .line 30
    filled-new-array {v3}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v12

    .line 34
    :try_start_0
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookPms;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPms;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    const-string v9, "DbBookPms_table"

    .line 43
    .line 44
    const-string v11, "_path=?"

    .line 45
    .line 46
    const/4 v13, 0x0

    .line 47
    invoke-static/range {v8 .. v13}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 64
    .line 65
    .line 66
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :try_start_1
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 72
    .line 73
    .line 74
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    goto :goto_1

    .line 76
    :catch_0
    move v2, v5

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move v2, v5

    .line 79
    move v3, v2

    .line 80
    goto :goto_1

    .line 81
    :catch_1
    :goto_0
    move v3, v5

    .line 82
    :goto_1
    if-eqz v4, :cond_2

    .line 83
    .line 84
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 85
    .line 86
    .line 87
    :cond_2
    new-instance v4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 88
    .line 89
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    iput v2, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->T:I

    .line 93
    .line 94
    iput v3, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->U:I

    .line 95
    .line 96
    :cond_3
    :goto_2
    if-nez v4, :cond_4

    .line 97
    .line 98
    new-instance v4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 99
    .line 100
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    :cond_4
    iget v2, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->T:I

    .line 104
    .line 105
    iput v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Fm:I

    .line 106
    .line 107
    iget v3, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->U:I

    .line 108
    .line 109
    iput v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Gm:I

    .line 110
    .line 111
    and-int/lit8 v4, v2, 0x2

    .line 112
    .line 113
    const/4 v6, 0x2

    .line 114
    if-ne v4, v6, :cond_5

    .line 115
    .line 116
    move v4, v2

    .line 117
    const/4 v2, 0x1

    .line 118
    goto :goto_3

    .line 119
    :cond_5
    move v4, v2

    .line 120
    move v2, v5

    .line 121
    :goto_3
    and-int/lit8 v8, v4, 0x4

    .line 122
    .line 123
    const/4 v9, 0x4

    .line 124
    if-ne v8, v9, :cond_6

    .line 125
    .line 126
    move v8, v3

    .line 127
    const/4 v3, 0x1

    .line 128
    goto :goto_4

    .line 129
    :cond_6
    move v8, v3

    .line 130
    move v3, v5

    .line 131
    :goto_4
    and-int/lit8 v10, v4, 0x10

    .line 132
    .line 133
    const/16 v11, 0x10

    .line 134
    .line 135
    if-ne v10, v11, :cond_7

    .line 136
    .line 137
    move v10, v4

    .line 138
    const/4 v4, 0x1

    .line 139
    goto :goto_5

    .line 140
    :cond_7
    move v10, v4

    .line 141
    move v4, v5

    .line 142
    :goto_5
    const/16 v12, 0x8

    .line 143
    .line 144
    and-int/2addr v10, v12

    .line 145
    if-ne v10, v12, :cond_8

    .line 146
    .line 147
    move v10, v5

    .line 148
    const/4 v5, 0x1

    .line 149
    goto :goto_6

    .line 150
    :cond_8
    move v10, v5

    .line 151
    :goto_6
    and-int/lit8 v13, v8, 0x2

    .line 152
    .line 153
    if-ne v13, v6, :cond_9

    .line 154
    .line 155
    const/4 v13, 0x1

    .line 156
    goto :goto_7

    .line 157
    :cond_9
    move v13, v10

    .line 158
    :goto_7
    and-int/lit8 v14, v8, 0x4

    .line 159
    .line 160
    if-ne v14, v9, :cond_a

    .line 161
    .line 162
    const/4 v14, 0x1

    .line 163
    goto :goto_8

    .line 164
    :cond_a
    move v14, v10

    .line 165
    :goto_8
    and-int/lit8 v15, v8, 0x10

    .line 166
    .line 167
    if-ne v15, v11, :cond_b

    .line 168
    .line 169
    const/4 v11, 0x1

    .line 170
    goto :goto_9

    .line 171
    :cond_b
    move v11, v10

    .line 172
    :goto_9
    and-int/2addr v8, v12

    .line 173
    if-ne v8, v12, :cond_c

    .line 174
    .line 175
    const/4 v8, 0x1

    .line 176
    goto :goto_a

    .line 177
    :cond_c
    move v8, v10

    .line 178
    :goto_a
    if-nez v2, :cond_e

    .line 179
    .line 180
    if-eqz v13, :cond_d

    .line 181
    .line 182
    goto :goto_b

    .line 183
    :cond_d
    move v12, v10

    .line 184
    goto :goto_c

    .line 185
    :cond_e
    :goto_b
    const/4 v12, 0x1

    .line 186
    :goto_c
    if-nez v3, :cond_10

    .line 187
    .line 188
    if-eqz v14, :cond_f

    .line 189
    .line 190
    goto :goto_d

    .line 191
    :cond_f
    move v15, v10

    .line 192
    goto :goto_e

    .line 193
    :cond_10
    :goto_d
    const/4 v15, 0x1

    .line 194
    :goto_e
    if-nez v4, :cond_12

    .line 195
    .line 196
    if-eqz v11, :cond_11

    .line 197
    .line 198
    goto :goto_f

    .line 199
    :cond_11
    move v11, v10

    .line 200
    goto :goto_10

    .line 201
    :cond_12
    :goto_f
    const/4 v11, 0x1

    .line 202
    :goto_10
    if-nez v5, :cond_14

    .line 203
    .line 204
    if-eqz v8, :cond_13

    .line 205
    .line 206
    goto :goto_11

    .line 207
    :cond_13
    move/from16 v16, v10

    .line 208
    .line 209
    goto :goto_12

    .line 210
    :cond_14
    :goto_11
    const/16 v16, 0x1

    .line 211
    .line 212
    :goto_12
    iget-boolean v7, v0, Lcom/mycompany/app/web/WebViewActivity;->um:Z

    .line 213
    .line 214
    if-eqz v7, :cond_15

    .line 215
    .line 216
    if-nez v13, :cond_15

    .line 217
    .line 218
    iget-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 219
    .line 220
    invoke-static {v7, v6}, Lcom/mycompany/app/main/MainUtil;->T5(Landroid/content/Context;I)Z

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-eqz v6, :cond_15

    .line 225
    .line 226
    const/4 v6, 0x1

    .line 227
    goto :goto_13

    .line 228
    :cond_15
    move v6, v10

    .line 229
    :goto_13
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->ym:Z

    .line 230
    .line 231
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->vm:Z

    .line 232
    .line 233
    if-eqz v6, :cond_16

    .line 234
    .line 235
    if-nez v14, :cond_16

    .line 236
    .line 237
    iget-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 238
    .line 239
    const/4 v7, 0x3

    .line 240
    invoke-static {v6, v7}, Lcom/mycompany/app/main/MainUtil;->T5(Landroid/content/Context;I)Z

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    if-eqz v6, :cond_16

    .line 245
    .line 246
    const/4 v6, 0x1

    .line 247
    goto :goto_14

    .line 248
    :cond_16
    move v6, v10

    .line 249
    :goto_14
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->zm:Z

    .line 250
    .line 251
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->xm:Z

    .line 252
    .line 253
    if-eqz v6, :cond_17

    .line 254
    .line 255
    if-nez v8, :cond_17

    .line 256
    .line 257
    iget-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 258
    .line 259
    invoke-static {v6, v9}, Lcom/mycompany/app/main/MainUtil;->T5(Landroid/content/Context;I)Z

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    if-eqz v6, :cond_17

    .line 264
    .line 265
    const/4 v6, 0x1

    .line 266
    goto :goto_15

    .line 267
    :cond_17
    move v6, v10

    .line 268
    :goto_15
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Am:Z

    .line 269
    .line 270
    iget-boolean v7, v0, Lcom/mycompany/app/web/WebViewActivity;->ym:Z

    .line 271
    .line 272
    if-nez v7, :cond_19

    .line 273
    .line 274
    iget-boolean v7, v0, Lcom/mycompany/app/web/WebViewActivity;->um:Z

    .line 275
    .line 276
    if-eqz v7, :cond_18

    .line 277
    .line 278
    if-nez v12, :cond_18

    .line 279
    .line 280
    goto :goto_16

    .line 281
    :cond_18
    move v7, v10

    .line 282
    goto :goto_17

    .line 283
    :cond_19
    :goto_16
    const/4 v7, 0x1

    .line 284
    :goto_17
    iput-boolean v7, v0, Lcom/mycompany/app/web/WebViewActivity;->Bm:Z

    .line 285
    .line 286
    iget-boolean v7, v0, Lcom/mycompany/app/web/WebViewActivity;->zm:Z

    .line 287
    .line 288
    if-nez v7, :cond_1b

    .line 289
    .line 290
    iget-boolean v7, v0, Lcom/mycompany/app/web/WebViewActivity;->vm:Z

    .line 291
    .line 292
    if-eqz v7, :cond_1a

    .line 293
    .line 294
    if-nez v15, :cond_1a

    .line 295
    .line 296
    goto :goto_18

    .line 297
    :cond_1a
    move v7, v10

    .line 298
    goto :goto_19

    .line 299
    :cond_1b
    :goto_18
    const/4 v7, 0x1

    .line 300
    :goto_19
    iput-boolean v7, v0, Lcom/mycompany/app/web/WebViewActivity;->Cm:Z

    .line 301
    .line 302
    iget-boolean v7, v0, Lcom/mycompany/app/web/WebViewActivity;->wm:Z

    .line 303
    .line 304
    if-eqz v7, :cond_1c

    .line 305
    .line 306
    if-nez v11, :cond_1c

    .line 307
    .line 308
    const/4 v7, 0x1

    .line 309
    goto :goto_1a

    .line 310
    :cond_1c
    move v7, v10

    .line 311
    :goto_1a
    iput-boolean v7, v0, Lcom/mycompany/app/web/WebViewActivity;->Dm:Z

    .line 312
    .line 313
    if-nez v6, :cond_1d

    .line 314
    .line 315
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->xm:Z

    .line 316
    .line 317
    if-eqz v6, :cond_1e

    .line 318
    .line 319
    if-nez v16, :cond_1e

    .line 320
    .line 321
    :cond_1d
    const/4 v10, 0x1

    .line 322
    :cond_1e
    iput-boolean v10, v0, Lcom/mycompany/app/web/WebViewActivity;->Em:Z

    .line 323
    .line 324
    iget-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 325
    .line 326
    if-nez v6, :cond_1f

    .line 327
    .line 328
    goto :goto_1b

    .line 329
    :cond_1f
    iget-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 330
    .line 331
    if-nez v6, :cond_20

    .line 332
    .line 333
    :goto_1b
    return-void

    .line 334
    :cond_20
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$490$1;

    .line 335
    .line 336
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/web/WebViewActivity$490$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$490;ZZZZ)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v6, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 340
    .line 341
    .line 342
    return-void
.end method
