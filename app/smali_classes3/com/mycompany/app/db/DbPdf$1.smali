.class Lcom/mycompany/app/db/DbPdf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:J

.field public final synthetic h:J

.field public final synthetic i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/db/DbPdf$1;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/db/DbPdf$1;->f:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/mycompany/app/db/DbPdf$1;->g:J

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/mycompany/app/db/DbPdf$1;->h:J

    .line 11
    .line 12
    iput p7, p0, Lcom/mycompany/app/db/DbPdf$1;->i:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lcom/mycompany/app/db/DbPdf;->c:Lcom/mycompany/app/db/DbPdf;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/db/DbPdf$1;->f:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/db/DbPdf$1;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3, v1}, Lcom/mycompany/app/data/DataList;->g(Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_1
    iget-wide v4, v0, Lcom/mycompany/app/db/DbPdf$1;->g:J

    .line 30
    .line 31
    long-to-int v6, v4

    .line 32
    iput v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    .line 33
    .line 34
    iget-wide v6, v0, Lcom/mycompany/app/db/DbPdf$1;->h:J

    .line 35
    .line 36
    long-to-int v8, v6

    .line 37
    iput v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 38
    .line 39
    iget v8, v0, Lcom/mycompany/app/db/DbPdf$1;->i:I

    .line 40
    .line 41
    iput v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    .line 42
    .line 43
    filled-new-array {v1}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-static {v2}, Lcom/mycompany/app/db/DbPdf;->b(Landroid/content/Context;)Lcom/mycompany/app/db/DbPdf;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    const-string v11, "DbPdf_table"

    .line 56
    .line 57
    const/4 v12, 0x0

    .line 58
    const-string v13, "_path=?"

    .line 59
    .line 60
    invoke-static {v10, v11, v12, v13, v9}, Lcom/mycompany/app/db/DbUtil;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    if-eqz v14, :cond_4

    .line 65
    .line 66
    const/4 v15, 0x1

    .line 67
    const-string v12, "_page"

    .line 68
    .line 69
    const-string v0, "_index"

    .line 70
    .line 71
    move-wide/from16 v16, v4

    .line 72
    .line 73
    const-string v4, "_count"

    .line 74
    .line 75
    if-ne v14, v15, :cond_2

    .line 76
    .line 77
    new-instance v1, Landroid/content/ContentValues;

    .line 78
    .line 79
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .line 81
    .line 82
    iget v2, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    .line 83
    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    .line 90
    .line 91
    iget v2, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 92
    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    .line 99
    .line 100
    iget v0, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v1, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v10, v11, v1, v13, v9}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_2
    const/4 v3, 0x0

    .line 114
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/main/MainUri;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    if-nez v3, :cond_3

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    .line 122
    .line 123
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v9, "_dir"

    .line 127
    .line 128
    iget-object v13, v3, Lcom/mycompany/app/main/MainUri$UriItem;->c:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v5, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v9, "_dname"

    .line 134
    .line 135
    iget-object v13, v3, Lcom/mycompany/app/main/MainUri$UriItem;->d:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v5, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v9, "_path"

    .line 141
    .line 142
    invoke-virtual {v5, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v9, "_name"

    .line 146
    .line 147
    iget-object v13, v3, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v5, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-wide v13, v3, Lcom/mycompany/app/main/MainUri$UriItem;->g:J

    .line 153
    .line 154
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    const-string v13, "_time"

    .line 159
    .line 160
    invoke-virtual {v5, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    .line 162
    .line 163
    iget-wide v13, v3, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 164
    .line 165
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    const-string v9, "_size"

    .line 170
    .line 171
    invoke-virtual {v5, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    .line 173
    .line 174
    const-string v3, "_icon"

    .line 175
    .line 176
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->p2(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v5, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v5, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v5, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v10, v11, v5}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 205
    .line 206
    .line 207
    :cond_4
    :goto_0
    return-void
.end method
