.class Lcom/mycompany/app/main/MainListAdapter$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListAdapter$9;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListAdapter$9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListAdapter$9$1;->c:Lcom/mycompany/app/main/MainListAdapter$9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter$9$1;->c:Lcom/mycompany/app/main/MainListAdapter$9;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListAdapter$9;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/main/MainListAdapter$9;->g:Lcom/mycompany/app/main/MainListAdapter;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter;->d:Landroid/content/Context;

    .line 8
    .line 9
    iget v4, v2, Lcom/mycompany/app/main/MainListAdapter;->e:I

    .line 10
    .line 11
    const/16 v5, 0x1a

    .line 12
    .line 13
    if-ne v4, v5, :cond_1

    .line 14
    .line 15
    iget-wide v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 16
    .line 17
    iget-boolean v6, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 18
    .line 19
    invoke-static {v3, v4, v5, v6}, Lcom/mycompany/app/db/book/DbBookUser;->i(Landroid/content/Context;JZ)V

    .line 20
    .line 21
    .line 22
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter;->d:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookUser;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookUser;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-wide v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 29
    .line 30
    iget-boolean v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 31
    .line 32
    invoke-virtual {v3, v4, v5}, Lcom/mycompany/app/data/book/DataBookList;->e(J)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-boolean v1, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 40
    .line 41
    :goto_0
    iget-object v1, v2, Lcom/mycompany/app/main/MainListAdapter;->d:Landroid/content/Context;

    .line 42
    .line 43
    const-string v3, "sb_user_filter_path"

    .line 44
    .line 45
    invoke-static {v1, v3, v3}, Lcom/mycompany/app/db/book/DbBookFilter;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, v2, Lcom/mycompany/app/main/MainListAdapter;->d:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookFilter;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2, v1}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/16 v2, 0x1b

    .line 60
    .line 61
    if-ne v4, v2, :cond_3

    .line 62
    .line 63
    iget-object v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->i:Ljava/lang/String;

    .line 66
    .line 67
    iget-boolean v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 68
    .line 69
    sget-object v5, Lcom/mycompany/app/db/book/DbBookScript;->c:Lcom/mycompany/app/db/book/DbBookScript;

    .line 70
    .line 71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_5

    .line 76
    .line 77
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    new-instance v5, Landroid/content/ContentValues;

    .line 85
    .line 86
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v6, "_enabled"

    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    .line 97
    .line 98
    filled-new-array {v2, v4}, [Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const-string v3, "DbBookScript_table"

    .line 111
    .line 112
    const-string v4, "_name=? AND _namespace=?"

    .line 113
    .line 114
    invoke-static {v2, v3, v5, v4, v1}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    iget-wide v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 119
    .line 120
    iget-boolean v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 121
    .line 122
    sget-object v2, Lcom/mycompany/app/db/book/DbBookFilter;->c:Lcom/mycompany/app/db/book/DbBookFilter;

    .line 123
    .line 124
    if-nez v3, :cond_4

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    new-instance v2, Landroid/content/ContentValues;

    .line 128
    .line 129
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v6, "_use"

    .line 133
    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    filled-new-array {v1}, [Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookFilter;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookFilter;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    const-string v4, "DbBookFilter_table"

    .line 158
    .line 159
    const-string v5, "_id=?"

    .line 160
    .line 161
    invoke-static {v3, v4, v2, v5, v1}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    :cond_5
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/main/MainListAdapter$9;->c:Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 165
    .line 166
    iget-object v0, v0, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->r:Lcom/mycompany/app/view/MySwitchView;

    .line 167
    .line 168
    if-nez v0, :cond_6

    .line 169
    .line 170
    return-void

    .line 171
    :cond_6
    new-instance v1, Lcom/mycompany/app/main/MainListAdapter$9$1$1;

    .line 172
    .line 173
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainListAdapter$9$1$1;-><init>(Lcom/mycompany/app/main/MainListAdapter$9$1;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 177
    .line 178
    .line 179
    return-void
.end method
