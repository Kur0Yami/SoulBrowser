.class Lcom/mycompany/app/video/VideoActivity$77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$77;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$77;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->J2:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Lcom/mycompany/app/db/book/DbBookSub;->c:Lcom/mycompany/app/db/book/DbBookSub;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const-string v4, "_sub"

    .line 20
    .line 21
    const-string v5, "_sync"

    .line 22
    .line 23
    const-string v6, "_lang"

    .line 24
    .line 25
    const-string v7, "_rsv1"

    .line 26
    .line 27
    const-string v8, "_rsv4"

    .line 28
    .line 29
    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v11

    .line 33
    filled-new-array {v2}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v13

    .line 37
    :try_start_0
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookSub;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookSub;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    const-string v10, "DbBookSub_table"

    .line 46
    .line 47
    const-string v12, "_path=?"

    .line 48
    .line 49
    const/4 v14, 0x0

    .line 50
    invoke-static/range {v9 .. v14}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 51
    .line 52
    .line 53
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    new-instance v2, Lcom/mycompany/app/db/book/DbBookSub$DbSubItem;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    .line 66
    .line 67
    :try_start_2
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    iput-object v4, v2, Lcom/mycompany/app/db/book/DbBookSub$DbSubItem;->a:Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    iput v4, v2, Lcom/mycompany/app/db/book/DbBookSub$DbSubItem;->b:I

    .line 86
    .line 87
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    iput v4, v2, Lcom/mycompany/app/db/book/DbBookSub$DbSubItem;->c:I

    .line 96
    .line 97
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iput-object v4, v2, Lcom/mycompany/app/db/book/DbBookSub$DbSubItem;->d:Ljava/lang/String;

    .line 106
    .line 107
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    iput v4, v2, Lcom/mycompany/app/db/book/DbBookSub$DbSubItem;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catch_0
    :cond_1
    move-object v2, v3

    .line 119
    goto :goto_0

    .line 120
    :catch_1
    move-object v1, v3

    .line 121
    move-object v2, v1

    .line 122
    :catch_2
    :goto_0
    if-eqz v1, :cond_3

    .line 123
    .line 124
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_2
    :goto_1
    move-object v2, v3

    .line 129
    :cond_3
    :goto_2
    if-nez v2, :cond_4

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_4
    iget-object v1, v2, Lcom/mycompany/app/db/book/DbBookSub$DbSubItem;->a:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    const/4 v4, 0x0

    .line 139
    if-nez v1, :cond_6

    .line 140
    .line 141
    iget-object v1, v2, Lcom/mycompany/app/db/book/DbBookSub$DbSubItem;->a:Ljava/lang/String;

    .line 142
    .line 143
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->G3:Ljava/lang/String;

    .line 144
    .line 145
    iget v1, v2, Lcom/mycompany/app/db/book/DbBookSub$DbSubItem;->b:I

    .line 146
    .line 147
    iput v1, v0, Lcom/mycompany/app/video/VideoActivity;->H3:I

    .line 148
    .line 149
    iget v1, v2, Lcom/mycompany/app/db/book/DbBookSub$DbSubItem;->c:I

    .line 150
    .line 151
    iput v1, v0, Lcom/mycompany/app/video/VideoActivity;->I3:I

    .line 152
    .line 153
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->J3:Lcom/mycompany/app/video/VideoActivity$SubTask;

    .line 154
    .line 155
    if-eqz v1, :cond_5

    .line 156
    .line 157
    const/4 v5, 0x1

    .line 158
    iput-boolean v5, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 159
    .line 160
    :cond_5
    iput-object v3, v0, Lcom/mycompany/app/video/VideoActivity;->J3:Lcom/mycompany/app/video/VideoActivity$SubTask;

    .line 161
    .line 162
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$SubTask;

    .line 163
    .line 164
    invoke-direct {v1, v0, v4}, Lcom/mycompany/app/video/VideoActivity$SubTask;-><init>(Lcom/mycompany/app/video/VideoActivity;Z)V

    .line 165
    .line 166
    .line 167
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->J3:Lcom/mycompany/app/video/VideoActivity$SubTask;

    .line 168
    .line 169
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 170
    .line 171
    invoke-virtual {v1, v3}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 172
    .line 173
    .line 174
    :cond_6
    iget-object v1, v2, Lcom/mycompany/app/db/book/DbBookSub$DbSubItem;->d:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_7

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_7
    iget-object v1, v2, Lcom/mycompany/app/db/book/DbBookSub$DbSubItem;->d:Ljava/lang/String;

    .line 184
    .line 185
    iget v2, v2, Lcom/mycompany/app/db/book/DbBookSub$DbSubItem;->e:I

    .line 186
    .line 187
    invoke-virtual {v0, v1, v2, v4}, Lcom/mycompany/app/video/VideoActivity;->F1(Ljava/lang/String;IZ)V

    .line 188
    .line 189
    .line 190
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->z:Z

    .line 191
    .line 192
    if-nez v1, :cond_8

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_8
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 196
    .line 197
    if-nez v0, :cond_9

    .line 198
    .line 199
    :goto_3
    return-void

    .line 200
    :cond_9
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$77$1;

    .line 201
    .line 202
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$77$1;-><init>(Lcom/mycompany/app/video/VideoActivity$77;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 206
    .line 207
    .line 208
    return-void
.end method
