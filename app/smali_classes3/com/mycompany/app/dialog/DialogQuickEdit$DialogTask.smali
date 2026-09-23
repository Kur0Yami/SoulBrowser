.class Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogQuickEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogQuickEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogQuickEdit;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->g:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->h:Ljava/lang/String;

    .line 25
    .line 26
    iget p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->m0:I

    .line 27
    .line 28
    iput p2, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->i:I

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 32
    .line 33
    .line 34
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 35
    .line 36
    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 37
    .line 38
    .line 39
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 40
    .line 41
    if-eqz p3, :cond_1

    .line 42
    .line 43
    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->q0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 47
    .line 48
    const/4 p4, 0x1

    .line 49
    invoke-virtual {p3, p2, p2, p4, p2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 53
    .line 54
    invoke-virtual {p2, p4}, Landroid/view/View;->setActivated(Z)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 58
    .line 59
    sget p3, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 60
    .line 61
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 65
    .line 66
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 67
    .line 68
    if-eqz p2, :cond_2

    .line 69
    .line 70
    const p2, -0x50506

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const/high16 p2, -0x1000000

    .line 75
    .line 76
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    :cond_0
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/mycompany/app/dialog/DialogQuickEdit;

    .line 19
    .line 20
    if-eqz v3, :cond_d

    .line 21
    .line 22
    iget-boolean v4, v3, Lcom/mycompany/app/dialog/DialogQuickEdit;->e0:Z

    .line 23
    .line 24
    iget-boolean v5, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 25
    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :cond_1
    iget-boolean v5, v3, Lcom/mycompany/app/dialog/DialogQuickEdit;->d0:Z

    .line 31
    .line 32
    const-string v6, "DbBookQuick_table"

    .line 33
    .line 34
    const/16 v7, 0x64

    .line 35
    .line 36
    const-string v8, "_title"

    .line 37
    .line 38
    const-string v9, "_path"

    .line 39
    .line 40
    const-string v10, "_icon"

    .line 41
    .line 42
    const/4 v11, 0x1

    .line 43
    const-string v12, "_rsv4"

    .line 44
    .line 45
    iget-object v13, v0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->h:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v14, v0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->g:Ljava/lang/String;

    .line 48
    .line 49
    if-nez v5, :cond_6

    .line 50
    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_d

    .line 60
    .line 61
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :cond_3
    iget-object v4, v3, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookQuick;->j(Landroid/content/Context;)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    iput v4, v0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->j:I

    .line 76
    .line 77
    invoke-static {v9, v14, v8, v13}, Lcom/mycompany/app/dialog/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    iget v5, v0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->j:I

    .line 82
    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const-string v8, "_order"

    .line 88
    .line 89
    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    .line 91
    .line 92
    sget-boolean v5, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 93
    .line 94
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    const-string v8, "_secret"

    .line 99
    .line 100
    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    .line 102
    .line 103
    iget-object v5, v3, Lcom/mycompany/app/dialog/DialogQuickEdit;->j0:Landroid/graphics/Bitmap;

    .line 104
    .line 105
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_4

    .line 110
    .line 111
    iput v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->i:I

    .line 112
    .line 113
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 114
    .line 115
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    .line 117
    .line 118
    iget-object v5, v3, Lcom/mycompany/app/dialog/DialogQuickEdit;->j0:Landroid/graphics/Bitmap;

    .line 119
    .line 120
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 121
    .line 122
    invoke-virtual {v5, v8, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v4, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, v3, Lcom/mycompany/app/dialog/DialogQuickEdit;->j0:Landroid/graphics/Bitmap;

    .line 139
    .line 140
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 141
    .line 142
    invoke-static {v14, v1, v2}, Lcom/mycompany/app/main/MainListLoader;->g(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_4
    iget v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->i:I

    .line 147
    .line 148
    if-nez v1, :cond_5

    .line 149
    .line 150
    invoke-static {}, Lcom/mycompany/app/db/book/DbBookQuick;->m()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    iput v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->i:I

    .line 155
    .line 156
    :cond_5
    iget v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->i:I

    .line 157
    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v4, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    .line 164
    .line 165
    :catch_0
    :goto_0
    :try_start_1
    iget-object v1, v3, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 166
    .line 167
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookQuick;->i(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookQuick;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-static {v1, v6, v4}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 176
    .line 177
    .line 178
    iput-boolean v11, v0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->k:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 179
    .line 180
    goto/16 :goto_6

    .line 181
    .line 182
    :cond_6
    :goto_1
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->f:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result v15

    .line 188
    if-eqz v15, :cond_7

    .line 189
    .line 190
    goto/16 :goto_6

    .line 191
    .line 192
    :cond_7
    if-nez v4, :cond_8

    .line 193
    .line 194
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 195
    .line 196
    .line 197
    move-result v15

    .line 198
    if-nez v15, :cond_d

    .line 199
    .line 200
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result v15

    .line 204
    if-eqz v15, :cond_8

    .line 205
    .line 206
    goto/16 :goto_6

    .line 207
    .line 208
    :cond_8
    const-string v15, "_secret=? AND _path=?"

    .line 209
    .line 210
    sget-boolean v16, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 211
    .line 212
    if-eqz v16, :cond_9

    .line 213
    .line 214
    const-string v16, "1"

    .line 215
    .line 216
    :goto_2
    move/from16 v17, v11

    .line 217
    .line 218
    move-object/from16 v11, v16

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_9
    const-string v16, "0"

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :goto_3
    filled-new-array {v11, v5}, [Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    new-instance v11, Landroid/content/ContentValues;

    .line 229
    .line 230
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 231
    .line 232
    .line 233
    if-eqz v4, :cond_a

    .line 234
    .line 235
    iget-boolean v4, v3, Lcom/mycompany/app/dialog/DialogQuickEdit;->p0:Z

    .line 236
    .line 237
    xor-int/lit8 v4, v4, 0x1

    .line 238
    .line 239
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    const-string v9, "_rsv6"

    .line 244
    .line 245
    invoke-virtual {v11, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_a
    invoke-virtual {v11, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :goto_4
    invoke-virtual {v11, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object v4, v3, Lcom/mycompany/app/dialog/DialogQuickEdit;->j0:Landroid/graphics/Bitmap;

    .line 256
    .line 257
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-eqz v4, :cond_b

    .line 262
    .line 263
    iput v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->i:I

    .line 264
    .line 265
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 266
    .line 267
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 268
    .line 269
    .line 270
    iget-object v4, v3, Lcom/mycompany/app/dialog/DialogQuickEdit;->j0:Landroid/graphics/Bitmap;

    .line 271
    .line 272
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 273
    .line 274
    invoke-virtual {v4, v8, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-virtual {v11, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v11, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    .line 289
    .line 290
    iget-object v1, v3, Lcom/mycompany/app/dialog/DialogQuickEdit;->j0:Landroid/graphics/Bitmap;

    .line 291
    .line 292
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 293
    .line 294
    invoke-static {v14, v1, v2}, Lcom/mycompany/app/main/MainListLoader;->g(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 295
    .line 296
    .line 297
    :catch_1
    move/from16 v1, v17

    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_b
    iget v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->i:I

    .line 301
    .line 302
    if-nez v1, :cond_c

    .line 303
    .line 304
    invoke-static {}, Lcom/mycompany/app/db/book/DbBookQuick;->m()I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    iput v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->i:I

    .line 309
    .line 310
    :cond_c
    iget v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->i:I

    .line 311
    .line 312
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {v11, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    .line 318
    .line 319
    move/from16 v1, v17

    .line 320
    .line 321
    new-array v2, v1, [B

    .line 322
    .line 323
    invoke-virtual {v11, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 324
    .line 325
    .line 326
    :goto_5
    :try_start_3
    iget-object v2, v3, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 327
    .line 328
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookQuick;->i(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookQuick;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-static {v2, v6, v11, v15, v5}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->k:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 340
    .line 341
    :catch_2
    :cond_d
    :goto_6
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogQuickEdit;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->y0:Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogQuickEdit;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final e()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/dialog/DialogQuickEdit;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->y0:Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->k:Z

    .line 21
    .line 22
    if-nez v1, :cond_5

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->q0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_2
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->q0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 58
    .line 59
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 65
    .line 66
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 67
    .line 68
    if-eqz v2, :cond_4

    .line 69
    .line 70
    const v2, -0x50506

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const v2, -0xe19938

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 81
    .line 82
    sget v1, Lnet/kaki87/soul2/testing/R$string;->update_fail:I

    .line 83
    .line 84
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->d0:Z

    .line 89
    .line 90
    if-eqz v1, :cond_7

    .line 91
    .line 92
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->p0:Z

    .line 93
    .line 94
    if-eqz v1, :cond_6

    .line 95
    .line 96
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->c0:Lcom/mycompany/app/dialog/DialogQuickEdit$QuickEditListener;

    .line 97
    .line 98
    if-eqz v2, :cond_8

    .line 99
    .line 100
    iget v6, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->i:I

    .line 101
    .line 102
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->n0:Ljava/util/List;

    .line 103
    .line 104
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->f:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->g:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->h:Ljava/lang/String;

    .line 109
    .line 110
    invoke-interface/range {v2 .. v7}, Lcom/mycompany/app/dialog/DialogQuickEdit$QuickEditListener;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_6
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->c0:Lcom/mycompany/app/dialog/DialogQuickEdit$QuickEditListener;

    .line 115
    .line 116
    if-eqz v8, :cond_8

    .line 117
    .line 118
    iget v12, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->i:I

    .line 119
    .line 120
    const/4 v13, 0x0

    .line 121
    iget-object v9, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->f:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v10, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->g:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v11, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->h:Ljava/lang/String;

    .line 126
    .line 127
    invoke-interface/range {v8 .. v13}, Lcom/mycompany/app/dialog/DialogQuickEdit$QuickEditListener;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->c0:Lcom/mycompany/app/dialog/DialogQuickEdit$QuickEditListener;

    .line 132
    .line 133
    if-eqz v0, :cond_8

    .line 134
    .line 135
    iget v1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->i:I

    .line 136
    .line 137
    iget v2, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->j:I

    .line 138
    .line 139
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->g:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;->h:Ljava/lang/String;

    .line 142
    .line 143
    invoke-interface {v0, v3, v1, v2, v4}, Lcom/mycompany/app/dialog/DialogQuickEdit$QuickEditListener;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_8
    :goto_1
    return-void
.end method
