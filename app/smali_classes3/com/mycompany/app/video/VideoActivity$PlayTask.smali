.class Lcom/mycompany/app/video/VideoActivity$PlayTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/video/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
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
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity$PlayTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/video/VideoActivity;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/video/VideoActivity;->H2:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoActivity$PlayTask;->f:Z

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p1, Lcom/mycompany/app/video/VideoActivity;->H2:Z

    .line 26
    .line 27
    iput v0, p1, Lcom/mycompany/app/video/VideoActivity;->L2:I

    .line 28
    .line 29
    iput v0, p1, Lcom/mycompany/app/video/VideoActivity;->M2:I

    .line 30
    .line 31
    iput v0, p1, Lcom/mycompany/app/video/VideoActivity;->N2:I

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$PlayTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/video/VideoActivity;

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
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->d2:Landroid/net/Uri;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_2
    iget-boolean v2, v0, Lcom/mycompany/app/video/VideoActivity;->k2:Z

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v2, :cond_4

    .line 31
    .line 32
    iget-boolean v2, v0, Lcom/mycompany/app/video/VideoActivity;->l2:Z

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    move-object v2, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->o2:Ljava/lang/String;

    .line 39
    .line 40
    :goto_0
    iget-object v4, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 41
    .line 42
    iget-object v5, v0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v4, v5, v2}, Lcom/mycompany/app/main/MainUtil;->v0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    goto :goto_1

    .line 49
    :cond_4
    move-object v2, v3

    .line 50
    :goto_1
    iget-object v4, v0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 51
    .line 52
    if-nez v4, :cond_5

    .line 53
    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_5
    const/4 v5, 0x0

    .line 57
    if-eqz v2, :cond_6

    .line 58
    .line 59
    :try_start_0
    iget-object v6, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {v4, v6, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_6
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {v4, v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catch_0
    const/4 v2, 0x1

    .line 72
    iput-boolean v2, p0, Lcom/mycompany/app/video/VideoActivity$PlayTask;->g:Z

    .line 73
    .line 74
    iput-boolean v5, p0, Lcom/mycompany/app/video/VideoActivity$PlayTask;->f:Z

    .line 75
    .line 76
    :goto_2
    iget-boolean v2, v0, Lcom/mycompany/app/video/VideoActivity;->k2:Z

    .line 77
    .line 78
    if-nez v2, :cond_9

    .line 79
    .line 80
    iget-boolean v2, p0, Lcom/mycompany/app/video/VideoActivity$PlayTask;->g:Z

    .line 81
    .line 82
    if-nez v2, :cond_8

    .line 83
    .line 84
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 85
    .line 86
    if-eqz v2, :cond_7

    .line 87
    .line 88
    new-instance v4, Lcom/mycompany/app/main/MainUtil$SizeItem;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    .line 94
    .line 95
    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 96
    .line 97
    .line 98
    :try_start_1
    invoke-virtual {v6, v2, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 99
    .line 100
    .line 101
    const/16 v1, 0x12

    .line 102
    .line 103
    invoke-virtual {v6, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    iput v1, v4, Lcom/mycompany/app/main/MainUtil$SizeItem;->a:I

    .line 112
    .line 113
    const/16 v1, 0x13

    .line 114
    .line 115
    invoke-virtual {v6, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    iput v1, v4, Lcom/mycompany/app/main/MainUtil$SizeItem;->b:I

    .line 124
    .line 125
    const/16 v1, 0x18

    .line 126
    .line 127
    invoke-virtual {v6, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    iput v1, v4, Lcom/mycompany/app/main/MainUtil$SizeItem;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    .line 137
    :catch_1
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->M6(Landroid/media/MediaMetadataRetriever;)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_7
    move-object v4, v3

    .line 142
    :goto_3
    if-eqz v4, :cond_8

    .line 143
    .line 144
    iget v1, v4, Lcom/mycompany/app/main/MainUtil$SizeItem;->a:I

    .line 145
    .line 146
    iput v1, v0, Lcom/mycompany/app/video/VideoActivity;->L2:I

    .line 147
    .line 148
    iget v1, v4, Lcom/mycompany/app/main/MainUtil$SizeItem;->b:I

    .line 149
    .line 150
    iput v1, v0, Lcom/mycompany/app/video/VideoActivity;->M2:I

    .line 151
    .line 152
    iget v1, v4, Lcom/mycompany/app/main/MainUtil$SizeItem;->c:I

    .line 153
    .line 154
    iput v1, v0, Lcom/mycompany/app/video/VideoActivity;->N2:I

    .line 155
    .line 156
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->r2:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_9

    .line 163
    .line 164
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 165
    .line 166
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->r2:Ljava/lang/String;

    .line 173
    .line 174
    :cond_9
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity$PlayTask;->f:Z

    .line 175
    .line 176
    if-eqz v1, :cond_d

    .line 177
    .line 178
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 179
    .line 180
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 181
    .line 182
    sget-object v4, Lcom/mycompany/app/db/book/DbBookVpos;->c:Lcom/mycompany/app/db/book/DbBookVpos;

    .line 183
    .line 184
    if-eqz v1, :cond_c

    .line 185
    .line 186
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_a

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_a
    const-string v4, "_pos"

    .line 194
    .line 195
    filled-new-array {v4}, [Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    filled-new-array {v2}, [Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    :try_start_2
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookVpos;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookVpos;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    const-string v7, "DbBookVpos_table"

    .line 212
    .line 213
    const-string v9, "_path=?"

    .line 214
    .line 215
    const/4 v11, 0x0

    .line 216
    invoke-static/range {v6 .. v11}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    if-eqz v3, :cond_b

    .line 221
    .line 222
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_b

    .line 227
    .line 228
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 233
    .line 234
    .line 235
    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 236
    :catch_2
    :cond_b
    if-eqz v3, :cond_c

    .line 237
    .line 238
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 239
    .line 240
    .line 241
    :cond_c
    :goto_4
    iput v5, v0, Lcom/mycompany/app/video/VideoActivity;->G2:I

    .line 242
    .line 243
    :cond_d
    :goto_5
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$PlayTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/video/VideoActivity;

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
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->v2:Lcom/mycompany/app/video/VideoActivity$PlayTask;

    .line 17
    .line 18
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$PlayTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/video/VideoActivity;

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
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->v2:Lcom/mycompany/app/video/VideoActivity$PlayTask;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoActivity$PlayTask;->g:Z

    .line 19
    .line 20
    if-nez v1, :cond_4

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 31
    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_3
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Lcom/mycompany/app/video/VideoActivity;->G1(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->P1()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    invoke-static {v0}, Lcom/mycompany/app/video/VideoActivity;->J0(Lcom/mycompany/app/video/VideoActivity;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/mycompany/app/video/VideoActivity;->J0(Lcom/mycompany/app/video/VideoActivity;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
