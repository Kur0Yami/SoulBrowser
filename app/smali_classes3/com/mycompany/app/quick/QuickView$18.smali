.class Lcom/mycompany/app/quick/QuickView$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$18;->c:Lcom/mycompany/app/quick/QuickView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView$18;->c:Lcom/mycompany/app/quick/QuickView;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 6
    .line 7
    sget-object v3, Lcom/mycompany/app/db/book/DbBookQuick;->c:Lcom/mycompany/app/db/book/DbBookQuick;

    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    move v4, v10

    .line 13
    const/4 v11, 0x0

    .line 14
    goto/16 :goto_7

    .line 15
    .line 16
    :cond_0
    const-string v3, "0"

    .line 17
    .line 18
    filled-new-array {v3}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    const-string v9, "_order ASC"

    .line 23
    .line 24
    :try_start_0
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookQuick;->i(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookQuick;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const-string v5, "DbBookQuick_table"

    .line 33
    .line 34
    const-string v7, "_secret=?"

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 38
    .line 39
    .line 40
    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    if-eqz v13, :cond_5

    .line 42
    .line 43
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_5

    .line 48
    .line 49
    const-string v3, "_rsv5"

    .line 50
    .line 51
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v14

    .line 55
    const-string v3, "_rsv1"

    .line 56
    .line 57
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v15

    .line 61
    const-string v3, "_path"

    .line 62
    .line 63
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const-string v4, "_title"

    .line 68
    .line 69
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const-string v5, "_icon"

    .line 74
    .line 75
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    const-string v6, "_rsv4"

    .line 80
    .line 81
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    const-string v7, "_order"

    .line 86
    .line 87
    invoke-interface {v13, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    :goto_0
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v16

    .line 107
    move/from16 v17, v3

    .line 108
    .line 109
    move v3, v8

    .line 110
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    move/from16 v18, v4

    .line 115
    .line 116
    move-object v4, v9

    .line 117
    invoke-interface {v13, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-eqz v8, :cond_2

    .line 122
    .line 123
    const v12, -0x70708

    .line 124
    .line 125
    .line 126
    if-ne v8, v12, :cond_1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_1
    move v12, v7

    .line 130
    const/4 v7, 0x0

    .line 131
    :goto_1
    move v10, v5

    .line 132
    move-object v5, v11

    .line 133
    move v11, v6

    .line 134
    move-object/from16 v6, v16

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_2
    :goto_2
    invoke-static {v13, v5, v11, v10}, Lcom/mycompany/app/db/book/DbBookQuick;->b(Landroid/database/Cursor;ILjava/lang/String;Z)Landroid/graphics/Bitmap;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    invoke-static {v12}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 142
    .line 143
    .line 144
    move-result v19

    .line 145
    if-eqz v19, :cond_3

    .line 146
    .line 147
    const/4 v10, 0x1

    .line 148
    invoke-static {v11, v12, v10}, Lcom/mycompany/app/main/MainListLoader;->g(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :catch_0
    move-object v11, v13

    .line 153
    goto :goto_5

    .line 154
    :cond_3
    :goto_3
    move-object v10, v12

    .line 155
    move v12, v7

    .line 156
    move-object v7, v10

    .line 157
    goto :goto_1

    .line 158
    :goto_4
    invoke-static/range {v2 .. v9}, Lcom/mycompany/app/db/book/DbBookQuick;->z(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    .line 159
    .line 160
    .line 161
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 162
    .line 163
    .line 164
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    if-nez v3, :cond_4

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_4
    move v5, v10

    .line 169
    move v6, v11

    .line 170
    move v7, v12

    .line 171
    move/from16 v3, v17

    .line 172
    .line 173
    move/from16 v4, v18

    .line 174
    .line 175
    const/4 v10, 0x0

    .line 176
    goto :goto_0

    .line 177
    :catch_1
    const/4 v11, 0x0

    .line 178
    :goto_5
    move-object v13, v11

    .line 179
    :cond_5
    :goto_6
    if-eqz v13, :cond_6

    .line 180
    .line 181
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 182
    .line 183
    .line 184
    :cond_6
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 185
    .line 186
    const/4 v10, 0x1

    .line 187
    xor-int/2addr v3, v10

    .line 188
    const/4 v4, 0x0

    .line 189
    invoke-static {v2, v10, v3, v4}, Lcom/mycompany/app/db/book/DbBookQuick;->k(Landroid/content/Context;ZZZ)Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    move-result-object v11

    .line 193
    :goto_7
    iput-boolean v4, v1, Lcom/mycompany/app/quick/QuickView;->H:Z

    .line 194
    .line 195
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickView;->f:Landroid/os/Handler;

    .line 196
    .line 197
    if-nez v1, :cond_7

    .line 198
    .line 199
    return-void

    .line 200
    :cond_7
    new-instance v2, Lcom/mycompany/app/quick/QuickView$18$1;

    .line 201
    .line 202
    invoke-direct {v2, v0, v11}, Lcom/mycompany/app/quick/QuickView$18$1;-><init>(Lcom/mycompany/app/quick/QuickView$18;Ljava/util/ArrayList;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    .line 207
    .line 208
    return-void
.end method
