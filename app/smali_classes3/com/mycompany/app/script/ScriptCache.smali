.class public Lcom/mycompany/app/script/ScriptCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public b:[Lcom/mycompany/app/script/ScriptCriteria;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/script/ScriptCache$1;

    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/16 v3, 0x40

    .line 10
    .line 11
    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/script/ScriptCache;->a:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;[Lcom/mycompany/app/script/Script;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mycompany/app/script/ScriptCache;->a:Ljava/util/LinkedHashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :cond_1
    :try_start_2
    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :catch_0
    :goto_0
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    throw p1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    sget-object v1, Lcom/mycompany/app/db/book/DbBookScript;->c:Lcom/mycompany/app/db/book/DbBookScript;

    .line 4
    .line 5
    const-string v1, "_namespace"

    .line 6
    .line 7
    const-string v2, "_name"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v5, "1"

    .line 16
    .line 17
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    const-string v9, "_enabled = ?"

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    new-array v5, v5, [Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    move-object v10, v4

    .line 33
    check-cast v10, [Ljava/lang/String;

    .line 34
    .line 35
    const-string v4, "DbBookScript_table_exclude"

    .line 36
    .line 37
    invoke-static {v0, v4, v3, v3}, Lcom/mycompany/app/db/book/DbBookScript;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "DbBookScript_table_include"

    .line 42
    .line 43
    invoke-static {v0, v5, v3, v3}, Lcom/mycompany/app/db/book/DbBookScript;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const-string v6, "DbBookScript_table_match"

    .line 48
    .line 49
    invoke-static {v0, v6, v3, v3}, Lcom/mycompany/app/db/book/DbBookScript;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const-string v7, "DbBookScript_table"

    .line 66
    .line 67
    const/4 v11, 0x0

    .line 68
    invoke-static/range {v6 .. v11}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 69
    .line 70
    .line 71
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 72
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    new-array v6, v6, [Lcom/mycompany/app/script/ScriptCriteria;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    .line 78
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_4

    .line 83
    .line 84
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const/4 v7, 0x0

    .line 93
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v15

    .line 101
    new-instance v8, Lcom/mycompany/app/script/ScriptId;

    .line 102
    .line 103
    invoke-direct {v8, v14, v15}, Lcom/mycompany/app/script/ScriptId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    check-cast v9, Ljava/util/List;

    .line 111
    .line 112
    if-nez v9, :cond_1

    .line 113
    .line 114
    move-object/from16 v16, v3

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    new-array v10, v10, [Ljava/lang/String;

    .line 122
    .line 123
    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    check-cast v9, [Ljava/lang/String;

    .line 128
    .line 129
    move-object/from16 v16, v9

    .line 130
    .line 131
    :goto_0
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    check-cast v9, Ljava/util/List;

    .line 136
    .line 137
    if-nez v9, :cond_2

    .line 138
    .line 139
    move-object/from16 v17, v3

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    new-array v10, v10, [Ljava/lang/String;

    .line 147
    .line 148
    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    check-cast v9, [Ljava/lang/String;

    .line 153
    .line 154
    move-object/from16 v17, v9

    .line 155
    .line 156
    :goto_1
    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    check-cast v8, Ljava/util/List;

    .line 161
    .line 162
    if-nez v8, :cond_3

    .line 163
    .line 164
    move-object/from16 v18, v3

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    new-array v9, v9, [Ljava/lang/String;

    .line 172
    .line 173
    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    check-cast v8, [Ljava/lang/String;

    .line 178
    .line 179
    move-object/from16 v18, v8

    .line 180
    .line 181
    :goto_2
    new-instance v13, Lcom/mycompany/app/script/ScriptCriteria;

    .line 182
    .line 183
    invoke-direct/range {v13 .. v18}, Lcom/mycompany/app/script/ScriptCriteria;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    aput-object v13, v6, v7

    .line 187
    .line 188
    add-int/lit8 v7, v7, 0x1

    .line 189
    .line 190
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 191
    .line 192
    .line 193
    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    if-nez v8, :cond_0

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :catch_0
    :goto_3
    move-object v3, v0

    .line 198
    goto :goto_4

    .line 199
    :catch_1
    move-object v6, v3

    .line 200
    goto :goto_3

    .line 201
    :catch_2
    move-object v6, v3

    .line 202
    :goto_4
    move-object v0, v3

    .line 203
    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    .line 204
    .line 205
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 206
    .line 207
    .line 208
    :catch_3
    :cond_5
    move-object/from16 v0, p0

    .line 209
    .line 210
    iput-object v6, v0, Lcom/mycompany/app/script/ScriptCache;->b:[Lcom/mycompany/app/script/ScriptCriteria;

    .line 211
    .line 212
    return-void
.end method
