.class Lcom/mycompany/app/setting/SettingPassList$LoadTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/setting/SettingPassList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Z

.field public final g:Z

.field public h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPassList;ZZ)V
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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingPassList$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/mycompany/app/setting/SettingPassList$LoadTask;->f:Z

    .line 12
    .line 13
    iput-boolean p3, p0, Lcom/mycompany/app/setting/SettingPassList$LoadTask;->g:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList$LoadTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v1, Lcom/mycompany/app/setting/SettingPassList;

    .line 14
    .line 15
    if-eqz v1, :cond_a

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
    iget-boolean v2, v0, Lcom/mycompany/app/setting/SettingPassList$LoadTask;->f:Z

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    const-string v3, "1"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const-string v3, "0"

    .line 31
    .line 32
    :goto_0
    filled-new-array {v3}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    const-string v9, "_path ASC"

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    :try_start_0
    iget-object v4, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookPass;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPass;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string v5, "DbBookPass_table"

    .line 50
    .line 51
    const-string v7, "_secret=?"

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 55
    .line 56
    .line 57
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    if-eqz v4, :cond_8

    .line 59
    .line 60
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_8

    .line 65
    .line 66
    const-string v5, "_id"

    .line 67
    .line 68
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const-string v6, "_path"

    .line 73
    .line 74
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    const-string v7, "_icon"

    .line 79
    .line 80
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    const-string v8, "_user_val"

    .line 85
    .line 86
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    const-string v9, "_pass_val"

    .line 91
    .line 92
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    const-string v10, "_rsv1"

    .line 97
    .line 98
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    new-instance v11, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v11, v0, Lcom/mycompany/app/setting/SettingPassList$LoadTask;->h:Ljava/util/ArrayList;

    .line 108
    .line 109
    :goto_1
    iget-boolean v11, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 110
    .line 111
    if-eqz v11, :cond_3

    .line 112
    .line 113
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingPassList$LoadTask;->h:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :catch_0
    move-object v3, v4

    .line 120
    goto/16 :goto_3

    .line 121
    .line 122
    :cond_3
    new-instance v11, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 123
    .line 124
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 125
    .line 126
    .line 127
    const/16 v12, 0x22

    .line 128
    .line 129
    iput v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 130
    .line 131
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 132
    .line 133
    .line 134
    move-result-wide v12

    .line 135
    iput-wide v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 136
    .line 137
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    iput-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 142
    .line 143
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v12

    .line 147
    iput-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 148
    .line 149
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    iput-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 154
    .line 155
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    iput-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    if-eqz v12, :cond_4

    .line 166
    .line 167
    new-instance v12, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v13, "https://"

    .line 173
    .line 174
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget-object v13, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    iput-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 187
    .line 188
    :cond_4
    sget-boolean v12, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 189
    .line 190
    if-eqz v12, :cond_6

    .line 191
    .line 192
    if-nez v2, :cond_6

    .line 193
    .line 194
    iget-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v12}, Lcom/mycompany/app/main/MainUtil;->O1(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    invoke-static {v12}, Lcom/mycompany/app/main/MainUtil;->n4(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    invoke-static {v13}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 205
    .line 206
    .line 207
    move-result v14

    .line 208
    if-nez v14, :cond_5

    .line 209
    .line 210
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getBlob(I)[B

    .line 211
    .line 212
    .line 213
    move-result-object v14

    .line 214
    if-eqz v14, :cond_5

    .line 215
    .line 216
    array-length v15, v14

    .line 217
    if-lez v15, :cond_5

    .line 218
    .line 219
    array-length v13, v14

    .line 220
    invoke-static {v14, v13}, Lcom/mycompany/app/main/BitmapUtil;->a([BI)Landroid/graphics/Bitmap;

    .line 221
    .line 222
    .line 223
    move-result-object v13

    .line 224
    invoke-static {v13}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 225
    .line 226
    .line 227
    move-result v14

    .line 228
    if-eqz v14, :cond_5

    .line 229
    .line 230
    invoke-static {v12, v13}, Lcom/mycompany/app/main/MainUtil;->V7(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 231
    .line 232
    .line 233
    :cond_5
    move-object/from16 v17, v13

    .line 234
    .line 235
    iget-object v15, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 236
    .line 237
    iget-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 238
    .line 239
    iget-object v13, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 240
    .line 241
    iget-object v14, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 242
    .line 243
    iget-object v3, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 244
    .line 245
    move-object/from16 v20, v3

    .line 246
    .line 247
    move-object/from16 v16, v12

    .line 248
    .line 249
    move-object/from16 v18, v13

    .line 250
    .line 251
    move-object/from16 v19, v14

    .line 252
    .line 253
    invoke-static/range {v15 .. v20}, Lcom/mycompany/app/db/book/DbBookPass;->f(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 254
    .line 255
    .line 256
    move-result-wide v12

    .line 257
    iput-wide v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 258
    .line 259
    const-wide/16 v14, 0x0

    .line 260
    .line 261
    cmp-long v3, v12, v14

    .line 262
    .line 263
    if-nez v3, :cond_6

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_6
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingPassList$LoadTask;->h:Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 272
    .line 273
    .line 274
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    if-nez v3, :cond_7

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_7
    const/4 v3, 0x0

    .line 279
    goto/16 :goto_1

    .line 280
    .line 281
    :catch_1
    const/4 v3, 0x0

    .line 282
    :goto_3
    move-object v4, v3

    .line 283
    :cond_8
    :goto_4
    if-eqz v4, :cond_9

    .line 284
    .line 285
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 286
    .line 287
    .line 288
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList$LoadTask;->h:Ljava/util/ArrayList;

    .line 289
    .line 290
    if-eqz v1, :cond_a

    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-nez v1, :cond_a

    .line 297
    .line 298
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList$LoadTask;->h:Ljava/util/ArrayList;

    .line 299
    .line 300
    new-instance v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 301
    .line 302
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    :cond_a
    :goto_5
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList$LoadTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/setting/SettingPassList;

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
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->e2:Lcom/mycompany/app/setting/SettingPassList$LoadTask;

    .line 17
    .line 18
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList$LoadTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/setting/SettingPassList;

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
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->e2:Lcom/mycompany/app/setting/SettingPassList$LoadTask;

    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingPassList;->d2:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 19
    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingPassList$LoadTask;->h:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v4, v2, Lcom/mycompany/app/setting/SettingPassAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 25
    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    iput-object v1, v4, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 29
    .line 30
    :cond_2
    iput-object v3, v2, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 33
    .line 34
    .line 35
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->c2:Lcom/mycompany/app/view/MyCoverView;

    .line 36
    .line 37
    if-nez v1, :cond_4

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_4
    const/4 v2, 0x1

    .line 41
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingPassList$LoadTask;->h:Ljava/util/ArrayList;

    .line 45
    .line 46
    const/16 v3, 0x8

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    if-eqz v1, :cond_6

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->a2:Landroid/widget/ImageView;

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->b2:Lcom/mycompany/app/view/MyButtonText;

    .line 69
    .line 70
    if-eqz v1, :cond_8

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iput-boolean v2, v0, Lcom/mycompany/app/setting/SettingPassList;->k2:Z

    .line 76
    .line 77
    return-void

    .line 78
    :cond_6
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 79
    .line 80
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->a2:Landroid/widget/ImageView;

    .line 84
    .line 85
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->b2:Lcom/mycompany/app/view/MyButtonText;

    .line 89
    .line 90
    if-eqz v1, :cond_7

    .line 91
    .line 92
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    iput-boolean v4, v0, Lcom/mycompany/app/setting/SettingPassList;->k2:Z

    .line 96
    .line 97
    :cond_7
    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingPassList$LoadTask;->g:Z

    .line 98
    .line 99
    if-eqz v1, :cond_8

    .line 100
    .line 101
    sget v1, Lnet/kaki87/soul2/testing/R$string;->import_no_password:I

    .line 102
    .line 103
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 104
    .line 105
    .line 106
    :cond_8
    :goto_1
    return-void
.end method
