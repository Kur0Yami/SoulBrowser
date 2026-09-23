.class Lcom/mycompany/app/web/WebViewActivity$243$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$243;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$243;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$243$1;->c:Lcom/mycompany/app/web/WebViewActivity$243;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$243$1;->c:Lcom/mycompany/app/web/WebViewActivity$243;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$243;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-wide v1, v0, Lcom/mycompany/app/web/WebViewActivity;->xi:J

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->yi:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->zi:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    const-wide/16 v5, 0x0

    .line 12
    .line 13
    iput-wide v5, v0, Lcom/mycompany/app/web/WebViewActivity;->xi:J

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    iput-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->yi:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->zi:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    iget-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 21
    .line 22
    sget-object v9, Lcom/mycompany/app/db/book/DbTabThumb;->c:Lcom/mycompany/app/db/book/DbTabThumb;

    .line 23
    .line 24
    if-eqz v8, :cond_4

    .line 25
    .line 26
    cmp-long v5, v1, v5

    .line 27
    .line 28
    if-lez v5, :cond_4

    .line 29
    .line 30
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-nez v5, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 38
    .line 39
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 43
    .line 44
    const/16 v9, 0x64

    .line 45
    .line 46
    invoke-virtual {v4, v6, v9, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 50
    .line 51
    .line 52
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-object v5, v7

    .line 55
    :catch_1
    move-object v6, v7

    .line 56
    :goto_0
    if-eqz v5, :cond_1

    .line 57
    .line 58
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 59
    .line 60
    .line 61
    :catch_2
    :cond_1
    if-eqz v6, :cond_4

    .line 62
    .line 63
    array-length v5, v6

    .line 64
    if-nez v5, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    filled-new-array {v5}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v8}, Lcom/mycompany/app/db/book/DbTabThumb;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbTabThumb;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    const-string v9, "DbTabThumb_table"

    .line 84
    .line 85
    const-string v10, "_uid=?"

    .line 86
    .line 87
    invoke-static {v8, v9, v7, v10, v5}, Lcom/mycompany/app/db/DbUtil;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v7, :cond_4

    .line 92
    .line 93
    new-instance v11, Landroid/content/ContentValues;

    .line 94
    .line 95
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .line 97
    .line 98
    sget-boolean v12, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 99
    .line 100
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    const-string v13, "_secret"

    .line 105
    .line 106
    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    .line 108
    .line 109
    const-string v12, "_uid"

    .line 110
    .line 111
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v11, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    .line 117
    .line 118
    const-string v1, "_tkey"

    .line 119
    .line 120
    invoke-virtual {v11, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v1, "_thumb"

    .line 124
    .line 125
    invoke-virtual {v11, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 126
    .line 127
    .line 128
    const/4 v1, 0x1

    .line 129
    if-ne v7, v1, :cond_3

    .line 130
    .line 131
    invoke-static {v8, v9, v11, v10, v5}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    invoke-static {v8, v9, v11}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 136
    .line 137
    .line 138
    :cond_4
    :goto_1
    sget v1, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 139
    .line 140
    const/4 v2, 0x2

    .line 141
    if-eq v1, v2, :cond_6

    .line 142
    .line 143
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->N7:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 144
    .line 145
    if-eqz v1, :cond_5

    .line 146
    .line 147
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v1, v3, v4}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 156
    .line 157
    .line 158
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->N7:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 159
    .line 160
    if-eqz v0, :cond_7

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMain;->P()V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->O7:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 167
    .line 168
    if-eqz v1, :cond_6

    .line 169
    .line 170
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1, v3, v4}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 179
    .line 180
    .line 181
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->O7:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 182
    .line 183
    if-eqz v0, :cond_7

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMini;->c0()V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_6
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_7

    .line 194
    .line 195
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 196
    .line 197
    .line 198
    :cond_7
    :goto_2
    return-void
.end method
