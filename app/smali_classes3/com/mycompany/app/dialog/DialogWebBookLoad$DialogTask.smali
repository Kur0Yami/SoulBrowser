.class Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogWebBookLoad;
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
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookLoad;Ljava/lang/String;)V
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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->z0:Ljava/util/ArrayList;

    .line 23
    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    new-instance p2, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->z0:Ljava/util/ArrayList;

    .line 32
    .line 33
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->A0:Ljava/util/ArrayList;

    .line 34
    .line 35
    if-nez p2, :cond_2

    .line 36
    .line 37
    new-instance p2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->A0:Ljava/util/ArrayList;

    .line 43
    .line 44
    :cond_2
    const/4 p2, 0x0

    .line 45
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->B0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 46
    .line 47
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->C0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->F0:Z

    .line 51
    .line 52
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->x0:Z

    .line 53
    .line 54
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->y0:Z

    .line 55
    .line 56
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->s0:Lcom/mycompany/app/view/MyCoverView;

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    sget v2, Lnet/kaki87/soul2/testing/R$string;->loading:I

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->f0:Landroid/widget/LinearLayout;

    .line 75
    .line 76
    const/16 v2, 0x8

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    sget v1, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 99
    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_d

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;

    .line 14
    .line 15
    if-eqz v1, :cond_22

    .line 16
    .line 17
    iget-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_d

    .line 22
    .line 23
    :cond_1
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->z0:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    goto/16 :goto_d

    .line 28
    .line 29
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_c

    .line 37
    .line 38
    const-string v2, "UTF-8"

    .line 39
    .line 40
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;->f:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_3

    .line 47
    .line 48
    move v2, v5

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    :try_start_0
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->a0:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 61
    .line 62
    .line 63
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :try_start_1
    new-instance v8, Ljava/io/BufferedReader;

    .line 65
    .line 66
    new-instance v9, Ljava/io/InputStreamReader;

    .line 67
    .line 68
    invoke-direct {v9, v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    .line 73
    .line 74
    move v2, v5

    .line 75
    :goto_0
    const/4 v9, 0x3

    .line 76
    if-ge v2, v9, :cond_6

    .line 77
    .line 78
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    if-eqz v9, :cond_6

    .line 83
    .line 84
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-eqz v10, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    const-string v10, "<!DOCTYPE NETSCAPE-Bookmark-file-1>"

    .line 92
    .line 93
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    if-eqz v9, :cond_5

    .line 98
    .line 99
    move v2, v3

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-object v8, v4

    .line 105
    goto :goto_1

    .line 106
    :catch_1
    move-object v7, v4

    .line 107
    move-object v8, v7

    .line 108
    :catch_2
    :cond_6
    :goto_1
    move v2, v5

    .line 109
    :goto_2
    if-eqz v8, :cond_7

    .line 110
    .line 111
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 112
    .line 113
    .line 114
    :catch_3
    :cond_7
    if-eqz v7, :cond_8

    .line 115
    .line 116
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 117
    .line 118
    .line 119
    :catch_4
    :cond_8
    :goto_3
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;->g:Z

    .line 120
    .line 121
    if-nez v2, :cond_9

    .line 122
    .line 123
    goto/16 :goto_d

    .line 124
    .line 125
    :cond_9
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogWebBookLoad;->E()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_a

    .line 130
    .line 131
    goto/16 :goto_d

    .line 132
    .line 133
    :cond_a
    invoke-static {v1, v6}, Lcom/mycompany/app/dialog/DialogWebBookLoad;->B(Lcom/mycompany/app/dialog/DialogWebBookLoad;Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-nez v2, :cond_b

    .line 138
    .line 139
    goto/16 :goto_d

    .line 140
    .line 141
    :cond_b
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->y0:Z

    .line 142
    .line 143
    if-eqz v2, :cond_c

    .line 144
    .line 145
    new-instance v2, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .line 149
    .line 150
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->z0:Ljava/util/ArrayList;

    .line 151
    .line 152
    new-instance v2, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->A0:Ljava/util/ArrayList;

    .line 158
    .line 159
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->B0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 160
    .line 161
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->C0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 162
    .line 163
    iput-boolean v5, v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->x0:Z

    .line 164
    .line 165
    iput-boolean v5, v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->y0:Z

    .line 166
    .line 167
    iput v5, v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->w0:I

    .line 168
    .line 169
    invoke-static {v1, v6}, Lcom/mycompany/app/dialog/DialogWebBookLoad;->B(Lcom/mycompany/app/dialog/DialogWebBookLoad;Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-nez v2, :cond_c

    .line 174
    .line 175
    goto/16 :goto_d

    .line 176
    .line 177
    :cond_c
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->z0:Ljava/util/ArrayList;

    .line 178
    .line 179
    if-eqz v2, :cond_22

    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_d

    .line 186
    .line 187
    goto/16 :goto_d

    .line 188
    .line 189
    :cond_d
    iget-object v8, v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->a0:Landroid/content/Context;

    .line 190
    .line 191
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->z0:Ljava/util/ArrayList;

    .line 192
    .line 193
    if-nez v8, :cond_e

    .line 194
    .line 195
    goto/16 :goto_c

    .line 196
    .line 197
    :cond_e
    if-eqz v2, :cond_21

    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    if-eqz v6, :cond_f

    .line 204
    .line 205
    goto/16 :goto_c

    .line 206
    .line 207
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    move v6, v5

    .line 212
    :goto_4
    if-ge v6, v12, :cond_21

    .line 213
    .line 214
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    add-int/lit8 v13, v6, 0x1

    .line 219
    .line 220
    move-object v14, v7

    .line 221
    check-cast v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogWebBookLoad;->E()Z

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    if-eqz v6, :cond_10

    .line 228
    .line 229
    goto/16 :goto_c

    .line 230
    .line 231
    :cond_10
    if-nez v14, :cond_11

    .line 232
    .line 233
    :goto_5
    move v6, v13

    .line 234
    goto :goto_4

    .line 235
    :cond_11
    iget v6, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->a:I

    .line 236
    .line 237
    if-ne v6, v3, :cond_12

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_12
    iget-boolean v7, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->b:Z

    .line 241
    .line 242
    if-eqz v7, :cond_14

    .line 243
    .line 244
    iget-object v6, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->c:Ljava/lang/String;

    .line 245
    .line 246
    iget-object v7, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->e:Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {v8, v6, v7}, Lcom/mycompany/app/db/book/DbBookWeb;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    if-nez v6, :cond_13

    .line 253
    .line 254
    iget-object v9, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->c:Ljava/lang/String;

    .line 255
    .line 256
    iget-object v10, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->e:Ljava/lang/String;

    .line 257
    .line 258
    const-wide/16 v6, -0x1

    .line 259
    .line 260
    const/4 v11, 0x0

    .line 261
    invoke-static/range {v6 .. v11}, Lcom/mycompany/app/db/book/DbBookWeb;->l(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 262
    .line 263
    .line 264
    :cond_13
    iput v3, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->a:I

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_14
    const/4 v7, 0x2

    .line 268
    if-nez v6, :cond_1e

    .line 269
    .line 270
    iget-object v6, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->d:Ljava/lang/String;

    .line 271
    .line 272
    sget-object v9, Lcom/mycompany/app/db/book/DbBookWeb;->c:Lcom/mycompany/app/db/book/DbBookWeb;

    .line 273
    .line 274
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 275
    .line 276
    .line 277
    move-result v9

    .line 278
    if-eqz v9, :cond_15

    .line 279
    .line 280
    move-object v5, v4

    .line 281
    goto/16 :goto_9

    .line 282
    .line 283
    :cond_15
    sget-boolean v9, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 284
    .line 285
    if-eqz v9, :cond_16

    .line 286
    .line 287
    const-string v9, "1"

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_16
    const-string v9, "0"

    .line 291
    .line 292
    :goto_6
    filled-new-array {v9, v6}, [Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v19

    .line 296
    :try_start_5
    invoke-static {v8}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 301
    .line 302
    .line 303
    move-result-object v15

    .line 304
    const-string v16, "DbBookWeb_table"

    .line 305
    .line 306
    const-string v18, "_secret=? AND _path=?"

    .line 307
    .line 308
    const/16 v20, 0x0

    .line 309
    .line 310
    const/16 v17, 0x0

    .line 311
    .line 312
    invoke-static/range {v15 .. v20}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 313
    .line 314
    .line 315
    move-result-object v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 316
    if-eqz v9, :cond_18

    .line 317
    .line 318
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 319
    .line 320
    .line 321
    move-result v10

    .line 322
    if-eqz v10, :cond_18

    .line 323
    .line 324
    const-string v10, "_id"

    .line 325
    .line 326
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    move-result v10

    .line 330
    const-string v11, "_isdir"

    .line 331
    .line 332
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    move-result v11

    .line 336
    const-string v15, "_dir"

    .line 337
    .line 338
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result v15

    .line 342
    const-string v4, "_title"

    .line 343
    .line 344
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    new-instance v5, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 349
    .line 350
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 351
    .line 352
    .line 353
    :try_start_7
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 354
    .line 355
    .line 356
    move-result v11

    .line 357
    if-ne v11, v3, :cond_17

    .line 358
    .line 359
    move v11, v3

    .line 360
    goto :goto_7

    .line 361
    :cond_17
    const/4 v11, 0x0

    .line 362
    :goto_7
    iput-boolean v11, v5, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->b:Z

    .line 363
    .line 364
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v11

    .line 368
    iput-object v11, v5, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->c:Ljava/lang/String;

    .line 369
    .line 370
    iput-object v6, v5, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->d:Ljava/lang/String;

    .line 371
    .line 372
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    iput-object v4, v5, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->e:Ljava/lang/String;

    .line 377
    .line 378
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 379
    .line 380
    .line 381
    move-result-wide v10

    .line 382
    iput-wide v10, v5, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->g:J

    .line 383
    .line 384
    iget-boolean v4, v5, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->b:Z

    .line 385
    .line 386
    if-nez v4, :cond_19

    .line 387
    .line 388
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->p4(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    iput-object v4, v5, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->f:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 393
    .line 394
    goto :goto_8

    .line 395
    :catch_5
    :cond_18
    const/4 v5, 0x0

    .line 396
    goto :goto_8

    .line 397
    :catch_6
    const/4 v5, 0x0

    .line 398
    const/4 v9, 0x0

    .line 399
    :catch_7
    :cond_19
    :goto_8
    if-eqz v9, :cond_1a

    .line 400
    .line 401
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 402
    .line 403
    .line 404
    :cond_1a
    :goto_9
    if-eqz v5, :cond_1e

    .line 405
    .line 406
    iget-boolean v4, v5, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->b:Z

    .line 407
    .line 408
    if-nez v4, :cond_1e

    .line 409
    .line 410
    iget v4, v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->w0:I

    .line 411
    .line 412
    if-nez v4, :cond_1c

    .line 413
    .line 414
    iget-object v4, v5, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->c:Ljava/lang/String;

    .line 415
    .line 416
    iget-object v6, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->c:Ljava/lang/String;

    .line 417
    .line 418
    invoke-static {v4, v6}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    if-eqz v4, :cond_1b

    .line 423
    .line 424
    iput v3, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->a:I

    .line 425
    .line 426
    :goto_a
    move v6, v13

    .line 427
    const/4 v4, 0x0

    .line 428
    const/4 v5, 0x0

    .line 429
    goto/16 :goto_4

    .line 430
    .line 431
    :cond_1b
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->B0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 432
    .line 433
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->C0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 434
    .line 435
    goto :goto_c

    .line 436
    :cond_1c
    if-ne v4, v3, :cond_1d

    .line 437
    .line 438
    iput v3, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->a:I

    .line 439
    .line 440
    goto :goto_a

    .line 441
    :cond_1d
    iput v7, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->a:I

    .line 442
    .line 443
    :cond_1e
    iget-object v4, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->d:Ljava/lang/String;

    .line 444
    .line 445
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->O1(Ljava/lang/String;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->n4(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 454
    .line 455
    .line 456
    move-result v6

    .line 457
    if-nez v6, :cond_1f

    .line 458
    .line 459
    iget-object v5, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->f:Ljava/lang/String;

    .line 460
    .line 461
    invoke-static {v8, v5}, Lcom/mycompany/app/main/MainUtil;->d0(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 466
    .line 467
    .line 468
    move-result v6

    .line 469
    if-eqz v6, :cond_1f

    .line 470
    .line 471
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->V7(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 472
    .line 473
    .line 474
    :cond_1f
    iget v4, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->a:I

    .line 475
    .line 476
    if-ne v4, v7, :cond_20

    .line 477
    .line 478
    iget-object v4, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->c:Ljava/lang/String;

    .line 479
    .line 480
    iget-object v6, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->d:Ljava/lang/String;

    .line 481
    .line 482
    iget-object v7, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->e:Ljava/lang/String;

    .line 483
    .line 484
    invoke-static {v8, v4, v6, v7, v5}, Lcom/mycompany/app/db/book/DbBookWeb;->u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 485
    .line 486
    .line 487
    goto :goto_b

    .line 488
    :cond_20
    iget-object v4, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->c:Ljava/lang/String;

    .line 489
    .line 490
    iget-object v6, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->d:Ljava/lang/String;

    .line 491
    .line 492
    iget-object v7, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->e:Ljava/lang/String;

    .line 493
    .line 494
    invoke-static {v8, v4, v6, v7, v5}, Lcom/mycompany/app/db/book/DbBookWeb;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 495
    .line 496
    .line 497
    :goto_b
    iput v3, v14, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->a:I

    .line 498
    .line 499
    goto :goto_a

    .line 500
    :cond_21
    :goto_c
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;->h:Z

    .line 501
    .line 502
    :cond_22
    :goto_d
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->v0:Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->B0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->C0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->a0:Landroid/content/Context;

    .line 23
    .line 24
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookLoad;->dismiss()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final e()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->v0:Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;->h:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    check-cast v2, Lcom/mycompany/app/dialog/DialogWebBookList$22;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogWebBookList$22;->a()V

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookLoad;->E()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->a0:Landroid/content/Context;

    .line 38
    .line 39
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 40
    .line 41
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookLoad;->dismiss()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;->h:Z

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    const/4 v4, 0x0

    .line 52
    if-nez v2, :cond_5

    .line 53
    .line 54
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->x0:Z

    .line 55
    .line 56
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->y0:Z

    .line 57
    .line 58
    iput v4, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->w0:I

    .line 59
    .line 60
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->z0:Ljava/util/ArrayList;

    .line 61
    .line 62
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->A0:Ljava/util/ArrayList;

    .line 63
    .line 64
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->B0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 65
    .line 66
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->C0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->s0:Lcom/mycompany/app/view/MyCoverView;

    .line 69
    .line 70
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;->g:Z

    .line 76
    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    sget v2, Lnet/kaki87/soul2/testing/R$string;->import_no_html:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    sget v2, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 83
    .line 84
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    sget v2, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->B0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 104
    .line 105
    if-eqz v2, :cond_d

    .line 106
    .line 107
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->C0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 108
    .line 109
    if-eqz v2, :cond_d

    .line 110
    .line 111
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    .line 113
    if-nez v2, :cond_6

    .line 114
    .line 115
    :goto_1
    return-void

    .line 116
    :cond_6
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->s0:Lcom/mycompany/app/view/MyCoverView;

    .line 117
    .line 118
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 119
    .line 120
    .line 121
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 122
    .line 123
    const/16 v5, 0x8

    .line 124
    .line 125
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->f0:Landroid/widget/LinearLayout;

    .line 129
    .line 130
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->B0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 136
    .line 137
    iget-object v5, v5, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->c:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 147
    .line 148
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->B0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 149
    .line 150
    iget-object v5, v5, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->e:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 156
    .line 157
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->C0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 158
    .line 159
    iget-object v5, v5, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->c:Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 169
    .line 170
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->C0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 171
    .line 172
    iget-object v5, v5, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->e:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 178
    .line 179
    const v5, -0x70708

    .line 180
    .line 181
    .line 182
    if-nez v2, :cond_7

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_7
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->B0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 186
    .line 187
    if-nez v6, :cond_8

    .line 188
    .line 189
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 190
    .line 191
    invoke-virtual {v2, v5, v6}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_8
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 196
    .line 197
    iget-object v6, v6, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->e:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v2, v5, v7, v6, v1}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 200
    .line 201
    .line 202
    new-instance v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 203
    .line 204
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 205
    .line 206
    .line 207
    const/16 v6, 0x11

    .line 208
    .line 209
    iput v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 210
    .line 211
    const/16 v6, 0xb

    .line 212
    .line 213
    iput v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 214
    .line 215
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->B0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 216
    .line 217
    iget-object v7, v6, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->f:Ljava/lang/String;

    .line 218
    .line 219
    iput-object v7, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 220
    .line 221
    iput-object v7, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 222
    .line 223
    iget-wide v6, v6, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->g:J

    .line 224
    .line 225
    iput-wide v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 226
    .line 227
    invoke-static {v2}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    if-eqz v7, :cond_9

    .line 236
    .line 237
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 238
    .line 239
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_9
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->D0:Lcom/mycompany/app/main/MainListLoader;

    .line 244
    .line 245
    if-nez v6, :cond_a

    .line 246
    .line 247
    new-instance v6, Lcom/mycompany/app/main/MainListLoader;

    .line 248
    .line 249
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->a0:Landroid/content/Context;

    .line 250
    .line 251
    new-instance v8, Lcom/mycompany/app/dialog/DialogWebBookLoad$8;

    .line 252
    .line 253
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogWebBookLoad$8;-><init>(Lcom/mycompany/app/dialog/DialogWebBookLoad;)V

    .line 254
    .line 255
    .line 256
    invoke-direct {v6, v7, v4, v8}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 257
    .line 258
    .line 259
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->D0:Lcom/mycompany/app/main/MainListLoader;

    .line 260
    .line 261
    :cond_a
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 262
    .line 263
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->D0:Lcom/mycompany/app/main/MainListLoader;

    .line 271
    .line 272
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 273
    .line 274
    invoke-virtual {v6, v2, v7}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 275
    .line 276
    .line 277
    :goto_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 278
    .line 279
    if-nez v2, :cond_b

    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_b
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->C0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 283
    .line 284
    if-nez v6, :cond_c

    .line 285
    .line 286
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 287
    .line 288
    invoke-virtual {v2, v5, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_c
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 293
    .line 294
    iget-object v6, v6, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->e:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v2, v5, v7, v6, v1}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 297
    .line 298
    .line 299
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebBookLoad$9;

    .line 300
    .line 301
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogWebBookLoad$9;-><init>(Lcom/mycompany/app/dialog/DialogWebBookLoad;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 305
    .line 306
    .line 307
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 308
    .line 309
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 310
    .line 311
    .line 312
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 313
    .line 314
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 315
    .line 316
    .line 317
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 318
    .line 319
    sget v2, Lnet/kaki87/soul2/testing/R$string;->overwrite:I

    .line 320
    .line 321
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :cond_d
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->a0:Landroid/content/Context;

    .line 329
    .line 330
    sget v2, Lnet/kaki87/soul2/testing/R$string;->success:I

    .line 331
    .line 332
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookLoad;->dismiss()V

    .line 336
    .line 337
    .line 338
    return-void
.end method
