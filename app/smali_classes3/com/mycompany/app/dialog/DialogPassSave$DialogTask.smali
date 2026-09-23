.class Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogPassSave;
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
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPassSave;Ljava/lang/String;)V
    .locals 2

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogPassSave;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogPassSave;->v0:Z

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogPassSave;->t0:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassSave;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, p2, p2, v1, p2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassSave;->j0:Lcom/mycompany/app/view/MyLineRelative;

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    sget v1, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_7

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/dialog/DialogPassSave;

    .line 12
    .line 13
    if-eqz v0, :cond_d

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    goto/16 :goto_6

    .line 27
    .line 28
    :cond_2
    sget-object v3, Lcom/mycompany/app/db/book/DbBookPass;->c:Lcom/mycompany/app/db/book/DbBookPass;

    .line 29
    .line 30
    sget-boolean v3, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 31
    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    const-string v3, "1"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    const-string v3, "0"

    .line 38
    .line 39
    :goto_0
    filled-new-array {v3}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    const/4 v3, 0x0

    .line 44
    :try_start_0
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookPass;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPass;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const-string v5, "DbBookPass_table"

    .line 53
    .line 54
    const-string v7, "_secret=?"

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 59
    .line 60
    .line 61
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    if-eqz v4, :cond_6

    .line 63
    .line 64
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_6

    .line 69
    .line 70
    const-string v5, "_path"

    .line 71
    .line 72
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    const-string v6, "_user_val"

    .line 77
    .line 78
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    const-string v7, "_pass_val"

    .line 83
    .line 84
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    const-string v8, "_rsv1"

    .line 89
    .line 90
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    new-instance v9, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    .line 98
    .line 99
    :cond_4
    :try_start_2
    new-instance v10, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 100
    .line 101
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    iput-object v11, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 109
    .line 110
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    iput-object v11, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 115
    .line 116
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    iput-object v11, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 121
    .line 122
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    iput-object v11, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    if-eqz v11, :cond_5

    .line 133
    .line 134
    new-instance v11, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v12, "https://"

    .line 140
    .line 141
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    iput-object v11, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 154
    .line 155
    :cond_5
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 159
    .line 160
    .line 161
    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 162
    if-nez v10, :cond_4

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :catch_0
    :cond_6
    move-object v9, v3

    .line 166
    goto :goto_1

    .line 167
    :catch_1
    move-object v4, v3

    .line 168
    move-object v9, v4

    .line 169
    :catch_2
    :goto_1
    if-eqz v4, :cond_7

    .line 170
    .line 171
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 172
    .line 173
    .line 174
    :cond_7
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogPassSave;->t0:Ljava/util/ArrayList;

    .line 175
    .line 176
    if-eqz v9, :cond_c

    .line 177
    .line 178
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    if-eqz v4, :cond_8

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_8
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;->f:Ljava/lang/String;

    .line 190
    .line 191
    invoke-static {v1, v4, v3, v5}, Lcom/mycompany/app/main/MainUri;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    if-nez v4, :cond_9

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_9
    :try_start_3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    iget-object v4, v4, Lcom/mycompany/app/main/MainUri$UriItem;->b:Landroid/net/Uri;

    .line 203
    .line 204
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 205
    .line 206
    .line 207
    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 208
    :try_start_4
    new-instance v4, Ljava/io/BufferedWriter;

    .line 209
    .line 210
    new-instance v5, Ljava/io/OutputStreamWriter;

    .line 211
    .line 212
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 213
    .line 214
    invoke-direct {v5, v1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 215
    .line 216
    .line 217
    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 218
    .line 219
    .line 220
    :try_start_5
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPassSave;->t0:Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-virtual {v0, v4, v3}, Lcom/mycompany/app/dialog/DialogPassSave;->F(Ljava/io/BufferedWriter;Ljava/util/List;)Z

    .line 223
    .line 224
    .line 225
    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 226
    goto :goto_4

    .line 227
    :catch_3
    :goto_2
    move-object v3, v1

    .line 228
    goto :goto_3

    .line 229
    :catch_4
    move-object v4, v3

    .line 230
    goto :goto_2

    .line 231
    :catch_5
    move-object v4, v3

    .line 232
    :goto_3
    move v0, v2

    .line 233
    move-object v1, v3

    .line 234
    :goto_4
    if-eqz v4, :cond_a

    .line 235
    .line 236
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 237
    .line 238
    .line 239
    goto :goto_5

    .line 240
    :catch_6
    move v0, v2

    .line 241
    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 242
    .line 243
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 244
    .line 245
    .line 246
    :cond_b
    move v2, v0

    .line 247
    :catch_7
    :cond_c
    :goto_6
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;->g:Z

    .line 248
    .line 249
    :cond_d
    :goto_7
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogPassSave;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->s0:Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->t0:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

    .line 21
    .line 22
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPassSave;->dismiss()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogPassSave;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->s0:Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;

    .line 17
    .line 18
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogPassSave;->v0:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->t0:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

    .line 25
    .line 26
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPassSave;->dismiss()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassSave;->t0:Ljava/util/ArrayList;

    .line 36
    .line 37
    if-eqz v2, :cond_6

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;->g:Z

    .line 47
    .line 48
    if-nez v2, :cond_5

    .line 49
    .line 50
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassSave;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 51
    .line 52
    if-nez v2, :cond_4

    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

    .line 56
    .line 57
    sget v3, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 58
    .line 59
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 60
    .line 61
    .line 62
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->t0:Ljava/util/ArrayList;

    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->j0:Lcom/mycompany/app/view/MyLineRelative;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    sget v3, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_5
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->t0:Ljava/util/ArrayList;

    .line 98
    .line 99
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

    .line 100
    .line 101
    sget v2, Lnet/kaki87/soul2/testing/R$string;->success:I

    .line 102
    .line 103
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPassSave;->dismiss()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_6
    :goto_1
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->t0:Ljava/util/ArrayList;

    .line 111
    .line 112
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

    .line 113
    .line 114
    sget v2, Lnet/kaki87/soul2/testing/R$string;->no_password:I

    .line 115
    .line 116
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPassSave;->dismiss()V

    .line 120
    .line 121
    .line 122
    return-void
.end method
