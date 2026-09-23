.class Lcom/mycompany/app/setting/SettingHome$HistTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/setting/SettingHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Z

.field public final g:Z

.field public h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingHome;ZZ)V
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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingHome$HistTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/mycompany/app/setting/SettingHome$HistTask;->f:Z

    .line 12
    .line 13
    iput-boolean p3, p0, Lcom/mycompany/app/setting/SettingHome$HistTask;->g:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome$HistTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/setting/SettingHome;

    .line 12
    .line 13
    if-eqz v0, :cond_8

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_1
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->n:I

    .line 22
    .line 23
    if-eqz v1, :cond_8

    .line 24
    .line 25
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 26
    .line 27
    iget-boolean v3, p0, Lcom/mycompany/app/setting/SettingHome$HistTask;->f:Z

    .line 28
    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    sget-wide v6, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 34
    .line 35
    cmp-long v2, v6, v4

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    if-nez v3, :cond_8

    .line 40
    .line 41
    :cond_2
    const/4 v2, -0x1

    .line 42
    if-eq v1, v2, :cond_3

    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    sget v4, Lcom/mycompany/app/pref/PrefWeb;->n:I

    .line 49
    .line 50
    int-to-long v4, v4

    .line 51
    const-wide/32 v6, 0x5265c00

    .line 52
    .line 53
    .line 54
    mul-long/2addr v4, v6

    .line 55
    sub-long v4, v1, v4

    .line 56
    .line 57
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    sget-wide v1, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 62
    .line 63
    cmp-long v6, v1, v4

    .line 64
    .line 65
    if-lez v6, :cond_3

    .line 66
    .line 67
    move-wide v4, v1

    .line 68
    :cond_3
    const-string v1, "_id"

    .line 69
    .line 70
    const-string v2, "_path"

    .line 71
    .line 72
    const-string v6, "_title"

    .line 73
    .line 74
    filled-new-array {v1, v2, v6}, [Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    const-string v10, "_secret=? AND _time>?"

    .line 79
    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    const-string v3, "1"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    const-string v3, "0"

    .line 86
    .line 87
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    const-string v12, "_time DESC"

    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    :try_start_0
    iget-object v0, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookHistory;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookHistory;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    const-string v8, "DbBookHistory_table"

    .line 109
    .line 110
    invoke-static/range {v7 .. v12}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 111
    .line 112
    .line 113
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_7

    .line 121
    .line 122
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    new-instance v5, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v5, p0, Lcom/mycompany/app/setting/SettingHome$HistTask;->h:Ljava/util/ArrayList;

    .line 140
    .line 141
    const/4 v5, 0x0

    .line 142
    :cond_5
    iget-boolean v6, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 143
    .line 144
    if-eqz v6, :cond_6

    .line 145
    .line 146
    iput-object v3, p0, Lcom/mycompany/app/setting/SettingHome$HistTask;->h:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :catch_0
    move-object v3, v0

    .line 153
    goto :goto_1

    .line 154
    :cond_6
    new-instance v6, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 155
    .line 156
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 157
    .line 158
    .line 159
    const/16 v7, 0x12

    .line 160
    .line 161
    iput v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 162
    .line 163
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 164
    .line 165
    .line 166
    move-result-wide v7

    .line 167
    iput-wide v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 168
    .line 169
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    iput-object v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 174
    .line 175
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    iput-object v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 180
    .line 181
    iget-object v7, p0, Lcom/mycompany/app/setting/SettingHome$HistTask;->h:Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    add-int/lit8 v5, v5, 0x1

    .line 187
    .line 188
    const/16 v6, 0x64

    .line 189
    .line 190
    if-ge v5, v6, :cond_7

    .line 191
    .line 192
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 193
    .line 194
    .line 195
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    if-nez v6, :cond_5

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :catch_1
    :goto_1
    move-object v0, v3

    .line 200
    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 201
    .line 202
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 203
    .line 204
    .line 205
    :cond_8
    :goto_3
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome$HistTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/setting/SettingHome;

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
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->y2:Lcom/mycompany/app/setting/SettingHome$HistTask;

    .line 17
    .line 18
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome$HistTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/setting/SettingHome;

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
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->y2:Lcom/mycompany/app/setting/SettingHome$HistTask;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->x2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingHome$HistTask;->h:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/mycompany/app/quick/QuickAddAdapter;->x(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->v2:Lcom/mycompany/app/view/MyCoverView;

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingHome$HistTask;->h:Ljava/util/ArrayList;

    .line 37
    .line 38
    if-eqz v1, :cond_5

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->t2:Landroid/widget/ImageView;

    .line 48
    .line 49
    const/16 v2, 0x8

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingHome;->u2:Lcom/mycompany/app/view/MyButtonText;

    .line 55
    .line 56
    if-eqz v0, :cond_7

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_5
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->t2:Landroid/widget/ImageView;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->u2:Lcom/mycompany/app/view/MyButtonText;

    .line 69
    .line 70
    if-eqz v1, :cond_6

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    :cond_6
    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingHome$HistTask;->g:Z

    .line 76
    .line 77
    if-eqz v1, :cond_7

    .line 78
    .line 79
    sget v1, Lnet/kaki87/soul2/testing/R$string;->import_no_history:I

    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 82
    .line 83
    .line 84
    :cond_7
    :goto_1
    return-void
.end method
