.class Lcom/mycompany/app/setting/SettingFont$UserTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/setting/SettingFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Ljava/util/ArrayList;

.field public final g:Z

.field public h:I

.field public final i:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingFont;ZZ)V
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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->g:Z

    .line 12
    .line 13
    iput-boolean p3, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->i:Z

    .line 14
    .line 15
    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->h:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    const-string v0, "_size"

    .line 2
    .line 3
    const-string v1, "_display_name"

    .line 4
    .line 5
    const-string v2, "document_id"

    .line 6
    .line 7
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->e:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/mycompany/app/setting/SettingFont;

    .line 18
    .line 19
    if-eqz v3, :cond_d

    .line 20
    .line 21
    iget-boolean v4, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_1
    sget-object v4, Lcom/mycompany/app/pref/PrefPath;->v:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_2

    .line 34
    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_2
    const/4 v5, 0x0

    .line 38
    :try_start_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v4}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {v4, v6}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    const-string v6, "last_modified"

    .line 51
    .line 52
    filled-new-array {v2, v1, v6, v0}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    iget-object v6, v3, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const/4 v11, 0x0

    .line 63
    const/4 v12, 0x0

    .line 64
    const/4 v10, 0x0

    .line 65
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 66
    .line 67
    .line 68
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    if-eqz v6, :cond_a

    .line 70
    .line 71
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_a

    .line 76
    .line 77
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    new-instance v7, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v7, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->f:Ljava/util/ArrayList;

    .line 95
    .line 96
    :cond_3
    iget-boolean v7, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 97
    .line 98
    if-eqz v7, :cond_4

    .line 99
    .line 100
    iput-object v5, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->f:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catch_0
    move-object v5, v6

    .line 107
    goto :goto_1

    .line 108
    :cond_4
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-eqz v8, :cond_5

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->W0(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-static {v8}, Lcom/mycompany/app/compress/Compress;->B(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-nez v8, :cond_6

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_6
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 131
    .line 132
    .line 133
    move-result-wide v8

    .line 134
    const-wide/16 v10, 0x0

    .line 135
    .line 136
    cmp-long v8, v8, v10

    .line 137
    .line 138
    if-nez v8, :cond_7

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_7
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-static {v4, v8}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    if-nez v8, :cond_8

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_8
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    if-eqz v9, :cond_9

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_9
    new-instance v9, Lcom/mycompany/app/setting/SettingFont$FontItem;

    .line 164
    .line 165
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 166
    .line 167
    .line 168
    iput-object v8, v9, Lcom/mycompany/app/setting/SettingFont$FontItem;->b:Ljava/lang/String;

    .line 169
    .line 170
    iput-object v7, v9, Lcom/mycompany/app/setting/SettingFont$FontItem;->c:Ljava/lang/String;

    .line 171
    .line 172
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 173
    .line 174
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    iput-object v7, v9, Lcom/mycompany/app/setting/SettingFont$FontItem;->d:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v7, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->f:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 186
    .line 187
    .line 188
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    if-nez v7, :cond_3

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :catch_1
    :goto_1
    move-object v6, v5

    .line 193
    :cond_a
    :goto_2
    if-eqz v6, :cond_b

    .line 194
    .line 195
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 196
    .line 197
    .line 198
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->f:Ljava/util/ArrayList;

    .line 199
    .line 200
    if-eqz v0, :cond_d

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_d

    .line 207
    .line 208
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->f:Ljava/util/ArrayList;

    .line 209
    .line 210
    new-instance v1, Lcom/mycompany/app/setting/SettingFont$SortFont;

    .line 211
    .line 212
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 213
    .line 214
    .line 215
    :try_start_2
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 216
    .line 217
    .line 218
    :catch_2
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->g:Z

    .line 219
    .line 220
    if-eqz v0, :cond_d

    .line 221
    .line 222
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->f:Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    const/4 v2, 0x0

    .line 229
    move v4, v2

    .line 230
    :goto_3
    if-ge v4, v1, :cond_d

    .line 231
    .line 232
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    add-int/lit8 v4, v4, 0x1

    .line 237
    .line 238
    check-cast v5, Lcom/mycompany/app/setting/SettingFont$FontItem;

    .line 239
    .line 240
    if-eqz v5, :cond_c

    .line 241
    .line 242
    iget-object v6, v5, Lcom/mycompany/app/setting/SettingFont$FontItem;->b:Ljava/lang/String;

    .line 243
    .line 244
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    if-nez v6, :cond_c

    .line 249
    .line 250
    iget-object v5, v5, Lcom/mycompany/app/setting/SettingFont$FontItem;->b:Ljava/lang/String;

    .line 251
    .line 252
    iget-object v6, v3, Lcom/mycompany/app/setting/SettingFont;->v2:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-eqz v5, :cond_c

    .line 259
    .line 260
    iput v2, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->h:I

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_d
    :goto_4
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/setting/SettingFont;

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
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->p2:Lcom/mycompany/app/setting/SettingFont$UserTask;

    .line 17
    .line 18
    return-void
.end method

.method public final e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/setting/SettingFont;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->p2:Lcom/mycompany/app/setting/SettingFont$UserTask;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->o2:Lcom/mycompany/app/setting/SettingFontAdapter;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->f:Ljava/util/ArrayList;

    .line 24
    .line 25
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingFontAdapter;->d:Ljava/util/List;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->m2:Lcom/mycompany/app/view/MyCoverView;

    .line 31
    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_3
    const/4 v2, 0x1

    .line 36
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->f:Ljava/util/ArrayList;

    .line 40
    .line 41
    iget-boolean v3, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->i:Z

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    if-eqz v1, :cond_5

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->k2:Landroid/widget/ImageView;

    .line 54
    .line 55
    const/16 v5, 0x8

    .line 56
    .line 57
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    if-eqz v3, :cond_6

    .line 61
    .line 62
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 63
    .line 64
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 65
    .line 66
    sget v5, Lnet/kaki87/soul2/testing/R$string;->file_found:I

    .line 67
    .line 68
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iget-object v5, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->f:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    new-array v2, v2, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object v5, v2, v4

    .line 85
    .line 86
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->f8(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->k2:Landroid/widget/ImageView;

    .line 95
    .line 96
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    if-eqz v3, :cond_6

    .line 100
    .line 101
    sget v1, Lnet/kaki87/soul2/testing/R$string;->no_found:I

    .line 102
    .line 103
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 104
    .line 105
    .line 106
    :cond_6
    :goto_1
    iget v1, p0, Lcom/mycompany/app/setting/SettingFont$UserTask;->h:I

    .line 107
    .line 108
    const/4 v2, -0x1

    .line 109
    if-eq v1, v2, :cond_7

    .line 110
    .line 111
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont;->n2:Lcom/mycompany/app/view/MyManagerLinear;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->x0(I)V

    .line 114
    .line 115
    .line 116
    :cond_7
    :goto_2
    return-void
.end method
