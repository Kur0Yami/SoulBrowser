.class Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogEditUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditUrl;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogEditUrl;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->g:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->h:Ljava/lang/String;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 28
    .line 29
    .line 30
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogEditUrl;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 31
    .line 32
    const/4 p4, 0x1

    .line 33
    invoke-virtual {p3, p2, p2, p4, p2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 34
    .line 35
    .line 36
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogEditUrl;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 37
    .line 38
    invoke-virtual {p3, p4}, Landroid/view/View;->setActivated(Z)V

    .line 39
    .line 40
    .line 41
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogEditUrl;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 42
    .line 43
    sget p4, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 44
    .line 45
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(I)V

    .line 46
    .line 47
    .line 48
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogEditUrl;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 49
    .line 50
    sget-boolean p4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 51
    .line 52
    if-eqz p4, :cond_1

    .line 53
    .line 54
    const p4, -0x50506

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/high16 p4, -0x1000000

    .line 59
    .line 60
    :goto_0
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogEditUrl;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 64
    .line 65
    if-eqz p3, :cond_2

    .line 66
    .line 67
    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 71
    .line 72
    if-eqz p3, :cond_3

    .line 73
    .line 74
    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_7

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/mycompany/app/dialog/DialogEditUrl;

    .line 14
    .line 15
    if-eqz v1, :cond_3e

    .line 16
    .line 17
    iget v2, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->b0:I

    .line 18
    .line 19
    iget-boolean v3, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    goto/16 :goto_7

    .line 24
    .line 25
    :cond_1
    const/16 v3, 0x13

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    const-wide/16 v7, -0x1

    .line 29
    .line 30
    const-string v9, "_path"

    .line 31
    .line 32
    iget-object v10, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->h:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->g:Ljava/lang/String;

    .line 35
    .line 36
    if-ne v2, v3, :cond_6

    .line 37
    .line 38
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 39
    .line 40
    iget-wide v12, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 41
    .line 42
    cmp-long v3, v12, v7

    .line 43
    .line 44
    if-eqz v3, :cond_5

    .line 45
    .line 46
    invoke-static {v9, v11}, Landroidx/work/impl/workers/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v7}, Lcom/mycompany/app/db/book/DbBookAds;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAds;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 61
    .line 62
    iget-wide v8, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 63
    .line 64
    const-string v12, "DbBookAds_table"

    .line 65
    .line 66
    invoke-static {v7, v12, v3, v8, v9}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 67
    .line 68
    .line 69
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 70
    .line 71
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v3, v11}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_39

    .line 78
    .line 79
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 86
    .line 87
    iget-object v7, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    :try_start_0
    iget-object v8, v3, Lcom/mycompany/app/data/book/DataBookAds;->c:Ljava/util/ArrayList;

    .line 93
    .line 94
    if-eqz v8, :cond_39

    .line 95
    .line 96
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_2

    .line 101
    .line 102
    goto/16 :goto_6

    .line 103
    .line 104
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-nez v8, :cond_39

    .line 109
    .line 110
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-eqz v8, :cond_3

    .line 115
    .line 116
    goto/16 :goto_6

    .line 117
    .line 118
    :cond_3
    iget-object v8, v3, Lcom/mycompany/app/data/book/DataBookAds;->c:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-ltz v7, :cond_39

    .line 125
    .line 126
    iget-object v8, v3, Lcom/mycompany/app/data/book/DataBookAds;->c:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-lt v7, v8, :cond_4

    .line 133
    .line 134
    goto/16 :goto_6

    .line 135
    .line 136
    :cond_4
    iget-object v3, v3, Lcom/mycompany/app/data/book/DataBookAds;->c:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v3, v7, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 139
    .line 140
    .line 141
    goto/16 :goto_6

    .line 142
    .line 143
    :cond_5
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 144
    .line 145
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v3, v11}, Lcom/mycompany/app/data/book/DataBookAds;->k(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 153
    .line 154
    invoke-static {v3, v11}, Lcom/mycompany/app/db/book/DbBookAds;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 159
    .line 160
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 161
    .line 162
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 167
    .line 168
    invoke-virtual {v3, v7}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_6

    .line 172
    .line 173
    :cond_6
    const/16 v3, 0x14

    .line 174
    .line 175
    if-ne v2, v3, :cond_15

    .line 176
    .line 177
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 178
    .line 179
    iget-wide v12, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 180
    .line 181
    cmp-long v3, v12, v7

    .line 182
    .line 183
    const-string v7, "DbBookOver_table"

    .line 184
    .line 185
    if-eqz v3, :cond_a

    .line 186
    .line 187
    invoke-static {v9, v11}, Landroidx/work/impl/workers/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    iget-object v8, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 192
    .line 193
    invoke-static {v8}, Lcom/mycompany/app/db/book/DbBookOver;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookOver;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    iget-object v9, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 202
    .line 203
    iget-wide v12, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 204
    .line 205
    invoke-static {v8, v7, v3, v12, v13}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 206
    .line 207
    .line 208
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 209
    .line 210
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 211
    .line 212
    invoke-static {v3, v11}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-nez v3, :cond_39

    .line 217
    .line 218
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 219
    .line 220
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookOver;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookOver;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 225
    .line 226
    iget-object v7, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    :try_start_1
    iget-object v8, v3, Lcom/mycompany/app/data/book/DataBookOver;->c:Ljava/util/ArrayList;

    .line 232
    .line 233
    if-eqz v8, :cond_39

    .line 234
    .line 235
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    if-eqz v8, :cond_7

    .line 240
    .line 241
    goto/16 :goto_6

    .line 242
    .line 243
    :cond_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    if-nez v8, :cond_39

    .line 248
    .line 249
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    if-eqz v8, :cond_8

    .line 254
    .line 255
    goto/16 :goto_6

    .line 256
    .line 257
    :cond_8
    iget-object v8, v3, Lcom/mycompany/app/data/book/DataBookOver;->c:Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    if-ltz v7, :cond_39

    .line 264
    .line 265
    iget-object v8, v3, Lcom/mycompany/app/data/book/DataBookOver;->c:Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    if-lt v7, v8, :cond_9

    .line 272
    .line 273
    goto/16 :goto_6

    .line 274
    .line 275
    :cond_9
    iget-object v3, v3, Lcom/mycompany/app/data/book/DataBookOver;->c:Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-virtual {v3, v7, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 278
    .line 279
    .line 280
    goto/16 :goto_6

    .line 281
    .line 282
    :cond_a
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 283
    .line 284
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookOver;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookOver;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 292
    .line 293
    .line 294
    move-result v8

    .line 295
    if-eqz v8, :cond_b

    .line 296
    .line 297
    goto :goto_1

    .line 298
    :cond_b
    :try_start_2
    iget-object v8, v3, Lcom/mycompany/app/data/book/DataBookOver;->c:Ljava/util/ArrayList;

    .line 299
    .line 300
    if-nez v8, :cond_c

    .line 301
    .line 302
    new-instance v8, Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .line 306
    .line 307
    iput-object v8, v3, Lcom/mycompany/app/data/book/DataBookOver;->c:Ljava/util/ArrayList;

    .line 308
    .line 309
    goto :goto_0

    .line 310
    :cond_c
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    if-eqz v8, :cond_d

    .line 315
    .line 316
    goto :goto_1

    .line 317
    :cond_d
    :goto_0
    iget-object v3, v3, Lcom/mycompany/app/data/book/DataBookOver;->c:Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 320
    .line 321
    .line 322
    :catch_0
    :goto_1
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 323
    .line 324
    sget-object v8, Lcom/mycompany/app/db/book/DbBookOver;->c:Lcom/mycompany/app/db/book/DbBookOver;

    .line 325
    .line 326
    const/4 v8, 0x0

    .line 327
    if-eqz v3, :cond_e

    .line 328
    .line 329
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 330
    .line 331
    .line 332
    move-result v12

    .line 333
    if-eqz v12, :cond_f

    .line 334
    .line 335
    :cond_e
    move-object v5, v8

    .line 336
    goto/16 :goto_4

    .line 337
    .line 338
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 339
    .line 340
    .line 341
    move-result-wide v12

    .line 342
    filled-new-array {v11}, [Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v14

    .line 346
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookOver;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookOver;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    const-string v15, "_path=?"

    .line 355
    .line 356
    invoke-static {v3, v7, v8, v15, v14}, Lcom/mycompany/app/db/DbUtil;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    if-eqz v4, :cond_11

    .line 361
    .line 362
    invoke-static {v9, v11}, Landroidx/work/impl/workers/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    const-string v5, "_time"

    .line 367
    .line 368
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 369
    .line 370
    .line 371
    move-result-object v8

    .line 372
    invoke-virtual {v9, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 373
    .line 374
    .line 375
    const/4 v5, 0x1

    .line 376
    if-ne v4, v5, :cond_10

    .line 377
    .line 378
    invoke-static {v3, v7, v9, v15, v14}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    goto :goto_2

    .line 382
    :cond_10
    invoke-static {v3, v7, v9}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 383
    .line 384
    .line 385
    :cond_11
    :goto_2
    const-string v4, "_id"

    .line 386
    .line 387
    filled-new-array {v4}, [Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v16

    .line 391
    const-wide/16 v7, 0x0

    .line 392
    .line 393
    move-object/from16 v17, v15

    .line 394
    .line 395
    :try_start_3
    const-string v15, "DbBookOver_table"

    .line 396
    .line 397
    const/16 v19, 0x0

    .line 398
    .line 399
    move-object/from16 v18, v14

    .line 400
    .line 401
    move-object v14, v3

    .line 402
    invoke-static/range {v14 .. v19}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 403
    .line 404
    .line 405
    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 406
    if-eqz v3, :cond_12

    .line 407
    .line 408
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    if-eqz v5, :cond_12

    .line 413
    .line 414
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 419
    .line 420
    .line 421
    move-result-wide v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 422
    goto :goto_3

    .line 423
    :catch_1
    const/4 v3, 0x0

    .line 424
    :catch_2
    :cond_12
    move-wide v4, v7

    .line 425
    :goto_3
    if-eqz v3, :cond_13

    .line 426
    .line 427
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 428
    .line 429
    .line 430
    :cond_13
    cmp-long v3, v4, v7

    .line 431
    .line 432
    if-gtz v3, :cond_14

    .line 433
    .line 434
    const/4 v8, 0x0

    .line 435
    goto :goto_5

    .line 436
    :cond_14
    new-instance v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 437
    .line 438
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 439
    .line 440
    .line 441
    iput-wide v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 442
    .line 443
    iput-object v11, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 444
    .line 445
    iput-object v11, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 446
    .line 447
    iput-wide v12, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 448
    .line 449
    iput v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 450
    .line 451
    const v4, -0x70708

    .line 452
    .line 453
    .line 454
    iput v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 455
    .line 456
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 457
    .line 458
    iput v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 459
    .line 460
    const-string v4, "yyyy.MM.dd"

    .line 461
    .line 462
    const/4 v5, 0x0

    .line 463
    invoke-static {v12, v13, v5, v4}, Lcom/mycompany/app/main/MainUtil;->y1(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    iput-object v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 468
    .line 469
    invoke-static {v11, v6}, Lcom/mycompany/app/main/MainUtil;->D1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    iput-object v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 474
    .line 475
    move-object v8, v3

    .line 476
    goto :goto_5

    .line 477
    :goto_4
    move-object v8, v5

    .line 478
    :goto_5
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 479
    .line 480
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 481
    .line 482
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookOver;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookOver;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 487
    .line 488
    invoke-virtual {v3, v4}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 489
    .line 490
    .line 491
    goto/16 :goto_6

    .line 492
    .line 493
    :cond_15
    const/16 v3, 0x15

    .line 494
    .line 495
    if-ne v2, v3, :cond_1a

    .line 496
    .line 497
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 498
    .line 499
    iget-wide v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 500
    .line 501
    cmp-long v3, v3, v7

    .line 502
    .line 503
    if-eqz v3, :cond_19

    .line 504
    .line 505
    invoke-static {v9, v11}, Landroidx/work/impl/workers/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 510
    .line 511
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookPop;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPop;

    .line 512
    .line 513
    .line 514
    move-result-object v4

    .line 515
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 520
    .line 521
    iget-wide v7, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 522
    .line 523
    const-string v5, "DbBookPop_table"

    .line 524
    .line 525
    invoke-static {v4, v5, v3, v7, v8}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 526
    .line 527
    .line 528
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 529
    .line 530
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 531
    .line 532
    invoke-static {v3, v11}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v3

    .line 536
    if-nez v3, :cond_39

    .line 537
    .line 538
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 539
    .line 540
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookPop;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPop;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 545
    .line 546
    iget-object v4, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 547
    .line 548
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    .line 550
    .line 551
    :try_start_5
    iget-object v5, v3, Lcom/mycompany/app/data/book/DataBookPop;->c:Ljava/util/ArrayList;

    .line 552
    .line 553
    if-eqz v5, :cond_39

    .line 554
    .line 555
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 556
    .line 557
    .line 558
    move-result v5

    .line 559
    if-eqz v5, :cond_16

    .line 560
    .line 561
    goto/16 :goto_6

    .line 562
    .line 563
    :cond_16
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 564
    .line 565
    .line 566
    move-result v5

    .line 567
    if-nez v5, :cond_39

    .line 568
    .line 569
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 570
    .line 571
    .line 572
    move-result v5

    .line 573
    if-eqz v5, :cond_17

    .line 574
    .line 575
    goto/16 :goto_6

    .line 576
    .line 577
    :cond_17
    iget-object v5, v3, Lcom/mycompany/app/data/book/DataBookPop;->c:Ljava/util/ArrayList;

    .line 578
    .line 579
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    if-ltz v4, :cond_39

    .line 584
    .line 585
    iget-object v5, v3, Lcom/mycompany/app/data/book/DataBookPop;->c:Ljava/util/ArrayList;

    .line 586
    .line 587
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 588
    .line 589
    .line 590
    move-result v5

    .line 591
    if-lt v4, v5, :cond_18

    .line 592
    .line 593
    goto/16 :goto_6

    .line 594
    .line 595
    :cond_18
    iget-object v3, v3, Lcom/mycompany/app/data/book/DataBookPop;->c:Ljava/util/ArrayList;

    .line 596
    .line 597
    invoke-virtual {v3, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 598
    .line 599
    .line 600
    goto/16 :goto_6

    .line 601
    .line 602
    :cond_19
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 603
    .line 604
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookPop;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPop;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    invoke-virtual {v3, v11}, Lcom/mycompany/app/data/book/DataBookPop;->k(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 612
    .line 613
    invoke-static {v3, v11}, Lcom/mycompany/app/db/book/DbBookPop;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 618
    .line 619
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 620
    .line 621
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookPop;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPop;

    .line 622
    .line 623
    .line 624
    move-result-object v3

    .line 625
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 626
    .line 627
    invoke-virtual {v3, v4}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 628
    .line 629
    .line 630
    goto/16 :goto_6

    .line 631
    .line 632
    :cond_1a
    const/16 v3, 0x16

    .line 633
    .line 634
    if-ne v2, v3, :cond_1f

    .line 635
    .line 636
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 637
    .line 638
    iget-wide v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 639
    .line 640
    cmp-long v3, v3, v7

    .line 641
    .line 642
    if-eqz v3, :cond_1e

    .line 643
    .line 644
    invoke-static {v9, v11}, Landroidx/work/impl/workers/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 645
    .line 646
    .line 647
    move-result-object v3

    .line 648
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 649
    .line 650
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookLink;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookLink;

    .line 651
    .line 652
    .line 653
    move-result-object v4

    .line 654
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 655
    .line 656
    .line 657
    move-result-object v4

    .line 658
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 659
    .line 660
    iget-wide v7, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 661
    .line 662
    const-string v5, "DbBookLink_table"

    .line 663
    .line 664
    invoke-static {v4, v5, v3, v7, v8}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 665
    .line 666
    .line 667
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 668
    .line 669
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 670
    .line 671
    invoke-static {v3, v11}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v3

    .line 675
    if-nez v3, :cond_39

    .line 676
    .line 677
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 678
    .line 679
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 680
    .line 681
    .line 682
    move-result-object v3

    .line 683
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 684
    .line 685
    iget-object v4, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 686
    .line 687
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 688
    .line 689
    .line 690
    :try_start_6
    iget-object v5, v3, Lcom/mycompany/app/data/book/DataBookLink;->c:Ljava/util/ArrayList;

    .line 691
    .line 692
    if-eqz v5, :cond_39

    .line 693
    .line 694
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 695
    .line 696
    .line 697
    move-result v5

    .line 698
    if-eqz v5, :cond_1b

    .line 699
    .line 700
    goto/16 :goto_6

    .line 701
    .line 702
    :cond_1b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 703
    .line 704
    .line 705
    move-result v5

    .line 706
    if-nez v5, :cond_39

    .line 707
    .line 708
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 709
    .line 710
    .line 711
    move-result v5

    .line 712
    if-eqz v5, :cond_1c

    .line 713
    .line 714
    goto/16 :goto_6

    .line 715
    .line 716
    :cond_1c
    iget-object v5, v3, Lcom/mycompany/app/data/book/DataBookLink;->c:Ljava/util/ArrayList;

    .line 717
    .line 718
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 719
    .line 720
    .line 721
    move-result v4

    .line 722
    if-ltz v4, :cond_39

    .line 723
    .line 724
    iget-object v5, v3, Lcom/mycompany/app/data/book/DataBookLink;->c:Ljava/util/ArrayList;

    .line 725
    .line 726
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 727
    .line 728
    .line 729
    move-result v5

    .line 730
    if-lt v4, v5, :cond_1d

    .line 731
    .line 732
    goto/16 :goto_6

    .line 733
    .line 734
    :cond_1d
    iget-object v3, v3, Lcom/mycompany/app/data/book/DataBookLink;->c:Ljava/util/ArrayList;

    .line 735
    .line 736
    invoke-virtual {v3, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 737
    .line 738
    .line 739
    goto/16 :goto_6

    .line 740
    .line 741
    :cond_1e
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 742
    .line 743
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 744
    .line 745
    .line 746
    move-result-object v3

    .line 747
    invoke-virtual {v3, v11}, Lcom/mycompany/app/data/book/DataBookLink;->k(Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 751
    .line 752
    invoke-static {v3, v11}, Lcom/mycompany/app/db/book/DbBookLink;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 753
    .line 754
    .line 755
    move-result-object v3

    .line 756
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 757
    .line 758
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 759
    .line 760
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 761
    .line 762
    .line 763
    move-result-object v3

    .line 764
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 765
    .line 766
    invoke-virtual {v3, v4}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 767
    .line 768
    .line 769
    goto/16 :goto_6

    .line 770
    .line 771
    :cond_1f
    const/16 v3, 0x17

    .line 772
    .line 773
    if-ne v2, v3, :cond_28

    .line 774
    .line 775
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 776
    .line 777
    iget-wide v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 778
    .line 779
    cmp-long v3, v3, v7

    .line 780
    .line 781
    if-eqz v3, :cond_26

    .line 782
    .line 783
    const-string v3, "_image"

    .line 784
    .line 785
    invoke-static {v9, v11, v3, v10}, Lcom/mycompany/app/dialog/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 786
    .line 787
    .line 788
    move-result-object v3

    .line 789
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 790
    .line 791
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookBlock;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookBlock;

    .line 792
    .line 793
    .line 794
    move-result-object v4

    .line 795
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 796
    .line 797
    .line 798
    move-result-object v4

    .line 799
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 800
    .line 801
    iget-wide v7, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 802
    .line 803
    const-string v5, "DbBookBlock_table"

    .line 804
    .line 805
    invoke-static {v4, v5, v3, v7, v8}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 806
    .line 807
    .line 808
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->o0:Lcom/mycompany/app/web/WebClean;

    .line 809
    .line 810
    if-eqz v3, :cond_39

    .line 811
    .line 812
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 813
    .line 814
    iget-object v4, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 815
    .line 816
    invoke-static {v4, v11}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result v4

    .line 820
    if-eqz v4, :cond_20

    .line 821
    .line 822
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 823
    .line 824
    iget-object v4, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 825
    .line 826
    invoke-static {v4, v10}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result v4

    .line 830
    if-nez v4, :cond_39

    .line 831
    .line 832
    :cond_20
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 833
    .line 834
    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 835
    .line 836
    iget-object v4, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 837
    .line 838
    :try_start_7
    iget-object v7, v3, Lcom/mycompany/app/web/WebClean;->E:Ljava/util/HashMap;

    .line 839
    .line 840
    if-eqz v7, :cond_39

    .line 841
    .line 842
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    .line 843
    .line 844
    .line 845
    move-result v7

    .line 846
    if-eqz v7, :cond_21

    .line 847
    .line 848
    goto/16 :goto_6

    .line 849
    .line 850
    :cond_21
    invoke-static {v5, v11}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 851
    .line 852
    .line 853
    move-result v7

    .line 854
    if-nez v7, :cond_22

    .line 855
    .line 856
    invoke-virtual {v3, v5, v4}, Lcom/mycompany/app/web/WebClean;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {v3, v11, v10}, Lcom/mycompany/app/web/WebClean;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    goto/16 :goto_6

    .line 863
    .line 864
    :cond_22
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 865
    .line 866
    .line 867
    move-result v7

    .line 868
    if-eqz v7, :cond_23

    .line 869
    .line 870
    goto/16 :goto_6

    .line 871
    .line 872
    :cond_23
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 873
    .line 874
    .line 875
    move-result v7

    .line 876
    if-eqz v7, :cond_24

    .line 877
    .line 878
    goto/16 :goto_6

    .line 879
    .line 880
    :cond_24
    iget-object v3, v3, Lcom/mycompany/app/web/WebClean;->E:Ljava/util/HashMap;

    .line 881
    .line 882
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v3

    .line 886
    check-cast v3, Ljava/util/List;

    .line 887
    .line 888
    if-eqz v3, :cond_39

    .line 889
    .line 890
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 891
    .line 892
    .line 893
    move-result v5

    .line 894
    if-eqz v5, :cond_25

    .line 895
    .line 896
    goto/16 :goto_6

    .line 897
    .line 898
    :cond_25
    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 899
    .line 900
    .line 901
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 902
    .line 903
    .line 904
    goto/16 :goto_6

    .line 905
    .line 906
    :cond_26
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->o0:Lcom/mycompany/app/web/WebClean;

    .line 907
    .line 908
    if-eqz v3, :cond_27

    .line 909
    .line 910
    invoke-virtual {v3, v11, v10}, Lcom/mycompany/app/web/WebClean;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    :cond_27
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 914
    .line 915
    invoke-static {v3, v11, v10}, Lcom/mycompany/app/db/book/DbBookBlock;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 916
    .line 917
    .line 918
    move-result-object v3

    .line 919
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 920
    .line 921
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 922
    .line 923
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookBlock;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookBlock;

    .line 924
    .line 925
    .line 926
    move-result-object v3

    .line 927
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 928
    .line 929
    invoke-virtual {v3, v4}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 930
    .line 931
    .line 932
    goto/16 :goto_6

    .line 933
    .line 934
    :cond_28
    const/16 v3, 0x19

    .line 935
    .line 936
    if-ne v2, v3, :cond_2a

    .line 937
    .line 938
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 939
    .line 940
    iget-wide v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 941
    .line 942
    cmp-long v3, v3, v7

    .line 943
    .line 944
    if-eqz v3, :cond_29

    .line 945
    .line 946
    const-string v3, "_title"

    .line 947
    .line 948
    invoke-static {v9, v11, v3, v10}, Lcom/mycompany/app/dialog/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 949
    .line 950
    .line 951
    move-result-object v3

    .line 952
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 953
    .line 954
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookFilter;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookFilter;

    .line 955
    .line 956
    .line 957
    move-result-object v4

    .line 958
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 959
    .line 960
    .line 961
    move-result-object v4

    .line 962
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 963
    .line 964
    iget-wide v7, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 965
    .line 966
    const-string v5, "DbBookFilter_table"

    .line 967
    .line 968
    invoke-static {v4, v5, v3, v7, v8}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 969
    .line 970
    .line 971
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 972
    .line 973
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 974
    .line 975
    invoke-static {v3, v11}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 976
    .line 977
    .line 978
    move-result v3

    .line 979
    if-nez v3, :cond_39

    .line 980
    .line 981
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->i:Ljava/lang/String;

    .line 982
    .line 983
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->j:Ljava/lang/String;

    .line 984
    .line 985
    goto/16 :goto_6

    .line 986
    .line 987
    :cond_29
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 988
    .line 989
    invoke-static {v3, v11, v10}, Lcom/mycompany/app/db/book/DbBookFilter;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 990
    .line 991
    .line 992
    move-result-object v3

    .line 993
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 994
    .line 995
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 996
    .line 997
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookFilter;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;

    .line 998
    .line 999
    .line 1000
    move-result-object v3

    .line 1001
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1002
    .line 1003
    invoke-virtual {v3, v4}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 1004
    .line 1005
    .line 1006
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->i:Ljava/lang/String;

    .line 1007
    .line 1008
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->j:Ljava/lang/String;

    .line 1009
    .line 1010
    goto/16 :goto_6

    .line 1011
    .line 1012
    :cond_2a
    const/16 v3, 0x1c

    .line 1013
    .line 1014
    if-ne v2, v3, :cond_2f

    .line 1015
    .line 1016
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1017
    .line 1018
    iget-wide v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1019
    .line 1020
    cmp-long v3, v3, v7

    .line 1021
    .line 1022
    if-eqz v3, :cond_2e

    .line 1023
    .line 1024
    invoke-static {v9, v11}, Landroidx/work/impl/workers/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v3

    .line 1028
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 1029
    .line 1030
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookJava;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookJava;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v4

    .line 1034
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v4

    .line 1038
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1039
    .line 1040
    iget-wide v7, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1041
    .line 1042
    const-string v5, "DbBookJava_table"

    .line 1043
    .line 1044
    invoke-static {v4, v5, v3, v7, v8}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 1045
    .line 1046
    .line 1047
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1048
    .line 1049
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1050
    .line 1051
    invoke-static {v3, v11}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v3

    .line 1055
    if-nez v3, :cond_39

    .line 1056
    .line 1057
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 1058
    .line 1059
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookJava;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookJava;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v3

    .line 1063
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1064
    .line 1065
    iget-object v4, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1066
    .line 1067
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1068
    .line 1069
    .line 1070
    :try_start_8
    iget-object v5, v3, Lcom/mycompany/app/data/book/DataBookJava;->c:Ljava/util/ArrayList;

    .line 1071
    .line 1072
    if-eqz v5, :cond_39

    .line 1073
    .line 1074
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1075
    .line 1076
    .line 1077
    move-result v5

    .line 1078
    if-eqz v5, :cond_2b

    .line 1079
    .line 1080
    goto/16 :goto_6

    .line 1081
    .line 1082
    :cond_2b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1083
    .line 1084
    .line 1085
    move-result v5

    .line 1086
    if-nez v5, :cond_39

    .line 1087
    .line 1088
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1089
    .line 1090
    .line 1091
    move-result v5

    .line 1092
    if-eqz v5, :cond_2c

    .line 1093
    .line 1094
    goto/16 :goto_6

    .line 1095
    .line 1096
    :cond_2c
    iget-object v5, v3, Lcom/mycompany/app/data/book/DataBookJava;->c:Ljava/util/ArrayList;

    .line 1097
    .line 1098
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 1099
    .line 1100
    .line 1101
    move-result v4

    .line 1102
    if-ltz v4, :cond_39

    .line 1103
    .line 1104
    iget-object v5, v3, Lcom/mycompany/app/data/book/DataBookJava;->c:Ljava/util/ArrayList;

    .line 1105
    .line 1106
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1107
    .line 1108
    .line 1109
    move-result v5

    .line 1110
    if-lt v4, v5, :cond_2d

    .line 1111
    .line 1112
    goto/16 :goto_6

    .line 1113
    .line 1114
    :cond_2d
    iget-object v3, v3, Lcom/mycompany/app/data/book/DataBookJava;->c:Ljava/util/ArrayList;

    .line 1115
    .line 1116
    invoke-virtual {v3, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1117
    .line 1118
    .line 1119
    goto/16 :goto_6

    .line 1120
    .line 1121
    :cond_2e
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 1122
    .line 1123
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookJava;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookJava;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v3

    .line 1127
    invoke-virtual {v3, v11}, Lcom/mycompany/app/data/book/DataBookJava;->k(Ljava/lang/String;)V

    .line 1128
    .line 1129
    .line 1130
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 1131
    .line 1132
    invoke-static {v3, v11}, Lcom/mycompany/app/db/book/DbBookJava;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v3

    .line 1136
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1137
    .line 1138
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 1139
    .line 1140
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookJava;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookJava;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v3

    .line 1144
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1145
    .line 1146
    invoke-virtual {v3, v4}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 1147
    .line 1148
    .line 1149
    goto/16 :goto_6

    .line 1150
    .line 1151
    :cond_2f
    const/16 v3, 0x1d

    .line 1152
    .line 1153
    if-ne v2, v3, :cond_34

    .line 1154
    .line 1155
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1156
    .line 1157
    iget-wide v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1158
    .line 1159
    cmp-long v3, v3, v7

    .line 1160
    .line 1161
    if-eqz v3, :cond_33

    .line 1162
    .line 1163
    invoke-static {v9, v11}, Landroidx/work/impl/workers/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v3

    .line 1167
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 1168
    .line 1169
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookTmem;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTmem;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v4

    .line 1173
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v4

    .line 1177
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1178
    .line 1179
    iget-wide v7, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1180
    .line 1181
    const-string v5, "DbBookTmem_table"

    .line 1182
    .line 1183
    invoke-static {v4, v5, v3, v7, v8}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 1184
    .line 1185
    .line 1186
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1187
    .line 1188
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1189
    .line 1190
    invoke-static {v3, v11}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1191
    .line 1192
    .line 1193
    move-result v3

    .line 1194
    if-nez v3, :cond_39

    .line 1195
    .line 1196
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 1197
    .line 1198
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookTmem;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTmem;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v3

    .line 1202
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1203
    .line 1204
    iget-object v4, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1205
    .line 1206
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1207
    .line 1208
    .line 1209
    :try_start_9
    iget-object v5, v3, Lcom/mycompany/app/data/book/DataBookTmem;->c:Ljava/util/ArrayList;

    .line 1210
    .line 1211
    if-eqz v5, :cond_39

    .line 1212
    .line 1213
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1214
    .line 1215
    .line 1216
    move-result v5

    .line 1217
    if-eqz v5, :cond_30

    .line 1218
    .line 1219
    goto/16 :goto_6

    .line 1220
    .line 1221
    :cond_30
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1222
    .line 1223
    .line 1224
    move-result v5

    .line 1225
    if-nez v5, :cond_39

    .line 1226
    .line 1227
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1228
    .line 1229
    .line 1230
    move-result v5

    .line 1231
    if-eqz v5, :cond_31

    .line 1232
    .line 1233
    goto/16 :goto_6

    .line 1234
    .line 1235
    :cond_31
    iget-object v5, v3, Lcom/mycompany/app/data/book/DataBookTmem;->c:Ljava/util/ArrayList;

    .line 1236
    .line 1237
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 1238
    .line 1239
    .line 1240
    move-result v4

    .line 1241
    if-ltz v4, :cond_39

    .line 1242
    .line 1243
    iget-object v5, v3, Lcom/mycompany/app/data/book/DataBookTmem;->c:Ljava/util/ArrayList;

    .line 1244
    .line 1245
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1246
    .line 1247
    .line 1248
    move-result v5

    .line 1249
    if-lt v4, v5, :cond_32

    .line 1250
    .line 1251
    goto/16 :goto_6

    .line 1252
    .line 1253
    :cond_32
    iget-object v3, v3, Lcom/mycompany/app/data/book/DataBookTmem;->c:Ljava/util/ArrayList;

    .line 1254
    .line 1255
    invoke-virtual {v3, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1256
    .line 1257
    .line 1258
    goto/16 :goto_6

    .line 1259
    .line 1260
    :cond_33
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 1261
    .line 1262
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookTmem;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTmem;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v3

    .line 1266
    invoke-virtual {v3, v11}, Lcom/mycompany/app/data/book/DataBookTmem;->k(Ljava/lang/String;)V

    .line 1267
    .line 1268
    .line 1269
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 1270
    .line 1271
    invoke-static {v3, v11}, Lcom/mycompany/app/db/book/DbBookTmem;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v3

    .line 1275
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1276
    .line 1277
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 1278
    .line 1279
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookTmem;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTmem;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v3

    .line 1283
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1284
    .line 1285
    invoke-virtual {v3, v4}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 1286
    .line 1287
    .line 1288
    goto/16 :goto_6

    .line 1289
    .line 1290
    :cond_34
    const/16 v3, 0x1e

    .line 1291
    .line 1292
    if-ne v2, v3, :cond_39

    .line 1293
    .line 1294
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1295
    .line 1296
    iget-wide v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1297
    .line 1298
    cmp-long v3, v3, v7

    .line 1299
    .line 1300
    if-eqz v3, :cond_38

    .line 1301
    .line 1302
    invoke-static {v9, v11}, Landroidx/work/impl/workers/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v3

    .line 1306
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 1307
    .line 1308
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookTrans;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTrans;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v4

    .line 1312
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v4

    .line 1316
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1317
    .line 1318
    iget-wide v7, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1319
    .line 1320
    const-string v5, "DbBookTrans_table"

    .line 1321
    .line 1322
    invoke-static {v4, v5, v3, v7, v8}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 1323
    .line 1324
    .line 1325
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1326
    .line 1327
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1328
    .line 1329
    invoke-static {v3, v11}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1330
    .line 1331
    .line 1332
    move-result v3

    .line 1333
    if-nez v3, :cond_39

    .line 1334
    .line 1335
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 1336
    .line 1337
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookTrans;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTrans;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v3

    .line 1341
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1342
    .line 1343
    iget-object v4, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1344
    .line 1345
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1346
    .line 1347
    .line 1348
    :try_start_a
    iget-object v5, v3, Lcom/mycompany/app/data/book/DataBookTrans;->c:Ljava/util/ArrayList;

    .line 1349
    .line 1350
    if-eqz v5, :cond_39

    .line 1351
    .line 1352
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1353
    .line 1354
    .line 1355
    move-result v5

    .line 1356
    if-eqz v5, :cond_35

    .line 1357
    .line 1358
    goto :goto_6

    .line 1359
    :cond_35
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1360
    .line 1361
    .line 1362
    move-result v5

    .line 1363
    if-nez v5, :cond_39

    .line 1364
    .line 1365
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1366
    .line 1367
    .line 1368
    move-result v5

    .line 1369
    if-eqz v5, :cond_36

    .line 1370
    .line 1371
    goto :goto_6

    .line 1372
    :cond_36
    iget-object v5, v3, Lcom/mycompany/app/data/book/DataBookTrans;->c:Ljava/util/ArrayList;

    .line 1373
    .line 1374
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 1375
    .line 1376
    .line 1377
    move-result v4

    .line 1378
    if-ltz v4, :cond_39

    .line 1379
    .line 1380
    iget-object v5, v3, Lcom/mycompany/app/data/book/DataBookTrans;->c:Ljava/util/ArrayList;

    .line 1381
    .line 1382
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1383
    .line 1384
    .line 1385
    move-result v5

    .line 1386
    if-lt v4, v5, :cond_37

    .line 1387
    .line 1388
    goto :goto_6

    .line 1389
    :cond_37
    iget-object v3, v3, Lcom/mycompany/app/data/book/DataBookTrans;->c:Ljava/util/ArrayList;

    .line 1390
    .line 1391
    invoke-virtual {v3, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 1392
    .line 1393
    .line 1394
    goto :goto_6

    .line 1395
    :cond_38
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 1396
    .line 1397
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookTrans;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTrans;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v3

    .line 1401
    invoke-virtual {v3, v11}, Lcom/mycompany/app/data/book/DataBookTrans;->k(Ljava/lang/String;)V

    .line 1402
    .line 1403
    .line 1404
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 1405
    .line 1406
    invoke-static {v3, v11}, Lcom/mycompany/app/db/book/DbBookTrans;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v3

    .line 1410
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1411
    .line 1412
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 1413
    .line 1414
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookTrans;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTrans;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v3

    .line 1418
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1419
    .line 1420
    invoke-virtual {v3, v4}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 1421
    .line 1422
    .line 1423
    :catch_3
    :cond_39
    :goto_6
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1424
    .line 1425
    if-nez v3, :cond_3a

    .line 1426
    .line 1427
    goto :goto_7

    .line 1428
    :cond_3a
    iput-object v11, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1429
    .line 1430
    const/16 v4, 0x17

    .line 1431
    .line 1432
    if-ne v2, v4, :cond_3b

    .line 1433
    .line 1434
    iput-object v10, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 1435
    .line 1436
    iput-object v11, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 1437
    .line 1438
    goto :goto_7

    .line 1439
    :cond_3b
    const/16 v4, 0x19

    .line 1440
    .line 1441
    if-ne v2, v4, :cond_3d

    .line 1442
    .line 1443
    iput-object v10, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 1444
    .line 1445
    iget-object v2, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 1446
    .line 1447
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 1448
    .line 1449
    invoke-static {v1, v11}, Lcom/mycompany/app/main/MainUtil;->a4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v1

    .line 1453
    iput-object v1, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 1454
    .line 1455
    :try_start_b
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1456
    .line 1457
    iget-object v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 1458
    .line 1459
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1460
    .line 1461
    .line 1462
    move-result v1

    .line 1463
    if-nez v1, :cond_3c

    .line 1464
    .line 1465
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1466
    .line 1467
    new-instance v3, Ljava/io/File;

    .line 1468
    .line 1469
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1470
    .line 1471
    iget-object v4, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 1472
    .line 1473
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1474
    .line 1475
    .line 1476
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 1477
    .line 1478
    .line 1479
    move-result-wide v3

    .line 1480
    iput-wide v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 1481
    .line 1482
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1483
    .line 1484
    iget-wide v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 1485
    .line 1486
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v3

    .line 1490
    iput-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 1491
    .line 1492
    :catch_4
    :cond_3c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1493
    .line 1494
    .line 1495
    move-result v1

    .line 1496
    if-nez v1, :cond_3e

    .line 1497
    .line 1498
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1499
    .line 1500
    iget-object v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 1501
    .line 1502
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1503
    .line 1504
    .line 1505
    move-result v1

    .line 1506
    if-nez v1, :cond_3e

    .line 1507
    .line 1508
    :try_start_c
    new-instance v1, Ljava/io/File;

    .line 1509
    .line 1510
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 1514
    .line 1515
    .line 1516
    goto :goto_7

    .line 1517
    :cond_3d
    iput-object v11, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 1518
    .line 1519
    invoke-static {v11, v6}, Lcom/mycompany/app/main/MainUtil;->D1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v1

    .line 1523
    iput-object v1, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 1524
    .line 1525
    :catch_5
    :cond_3e
    :goto_7
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogEditUrl;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->m0:Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditUrl;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogEditUrl;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->m0:Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->c0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-wide v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 27
    .line 28
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->i:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->j:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->i:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;->j:Ljava/lang/String;

    .line 39
    .line 40
    const-wide/16 v3, 0x0

    .line 41
    .line 42
    invoke-interface {v0, v3, v4, v1, v2}, Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_0
    return-void
.end method
