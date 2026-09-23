.class public Lcom/mycompany/app/data/DataUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;ILcom/mycompany/app/main/MainUri$UriItem;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    invoke-static {p0}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p0, p2}, Lcom/mycompany/app/data/DataList;->a(Landroid/content/Context;Lcom/mycompany/app/main/MainUri$UriItem;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p2}, Lcom/mycompany/app/db/DbAlbum;->b(Landroid/content/Context;Lcom/mycompany/app/main/MainUri$UriItem;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    const/4 v0, 0x2

    .line 19
    if-ne p1, v0, :cond_2

    .line 20
    .line 21
    invoke-static {p0}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p0, p2}, Lcom/mycompany/app/data/DataList;->a(Landroid/content/Context;Lcom/mycompany/app/main/MainUri$UriItem;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p2}, Lcom/mycompany/app/db/DbPdf;->d(Landroid/content/Context;Lcom/mycompany/app/main/MainUri$UriItem;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    const/4 v0, 0x3

    .line 33
    if-ne p1, v0, :cond_3

    .line 34
    .line 35
    invoke-static {p0}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, p0, p2}, Lcom/mycompany/app/data/DataList;->a(Landroid/content/Context;Lcom/mycompany/app/main/MainUri$UriItem;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p2}, Lcom/mycompany/app/db/DbCmp;->d(Landroid/content/Context;Lcom/mycompany/app/main/MainUri$UriItem;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/mycompany/app/main/MainUri$UriItem;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/mycompany/app/main/MainUri$UriItem;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/mycompany/app/db/DbAlbum;->b(Landroid/content/Context;Lcom/mycompany/app/main/MainUri$UriItem;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x2

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-static {p0, p1}, Lcom/mycompany/app/db/DbPdf;->d(Landroid/content/Context;Lcom/mycompany/app/main/MainUri$UriItem;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const/4 v1, 0x3

    .line 18
    if-ne v0, v1, :cond_2

    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/mycompany/app/db/DbCmp;->d(Landroid/content/Context;Lcom/mycompany/app/main/MainUri$UriItem;)V

    .line 21
    .line 22
    .line 23
    :cond_2
    return-void
.end method

.method public static c(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "_path=?"

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    invoke-static {p0}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Lcom/mycompany/app/data/DataList;->c(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p2}, Lcom/mycompany/app/db/DbAlbum;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/mycompany/app/db/book/DbBookAlbum;->c:Lcom/mycompany/app/db/book/DbBookAlbum;

    .line 17
    .line 18
    if-eqz p0, :cond_5

    .line 19
    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    filled-new-array {p2}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookAlbum;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAlbum;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p2, "DbBookAlbum_table"

    .line 40
    .line 41
    invoke-static {p0, p2, v1, p1}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    const/4 v0, 0x2

    .line 46
    if-ne p1, v0, :cond_3

    .line 47
    .line 48
    invoke-static {p0}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, p2}, Lcom/mycompany/app/data/DataList;->c(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p2}, Lcom/mycompany/app/db/DbPdf;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object p1, Lcom/mycompany/app/db/book/DbBookPdf;->c:Lcom/mycompany/app/db/book/DbBookPdf;

    .line 59
    .line 60
    if-eqz p0, :cond_5

    .line 61
    .line 62
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    filled-new-array {p2}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookPdf;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPdf;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string p2, "DbBookPdf_table"

    .line 82
    .line 83
    invoke-static {p0, p2, v1, p1}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    const/4 v0, 0x3

    .line 88
    if-ne p1, v0, :cond_5

    .line 89
    .line 90
    invoke-static {p0}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1, p2}, Lcom/mycompany/app/data/DataList;->c(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p0, p2}, Lcom/mycompany/app/db/DbCmp;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sget-object p1, Lcom/mycompany/app/db/book/DbBookCmp;->c:Lcom/mycompany/app/db/book/DbBookCmp;

    .line 101
    .line 102
    if-eqz p0, :cond_5

    .line 103
    .line 104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_4

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    filled-new-array {p2}, [Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookCmp;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookCmp;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    const-string p2, "DbBookCmp_table"

    .line 124
    .line 125
    invoke-static {p0, p2, v1, p1}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->W0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/mycompany/app/compress/Compress;->w(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_1
    invoke-static {p0}, Lcom/mycompany/app/compress/Compress;->G(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 p0, 0x2

    .line 23
    return p0

    .line 24
    :cond_2
    invoke-static {p0}, Lcom/mycompany/app/compress/Compress;->z(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    const/4 p0, 0x3

    .line 31
    return p0

    .line 32
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public static e(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;)V
    .locals 8

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_8

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x3

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    sget-object v3, Lcom/mycompany/app/pref/PrefPath;->j:Ljava/lang/String;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    if-ne p1, v1, :cond_2

    .line 18
    .line 19
    sget-object v3, Lcom/mycompany/app/pref/PrefPath;->l:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    if-ne p1, v2, :cond_3

    .line 23
    .line 24
    sget-object v3, Lcom/mycompany/app/pref/PrefPath;->k:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    const/4 v3, 0x0

    .line 28
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_4

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_4
    move-object v4, p3

    .line 36
    :goto_1
    const-string v5, "/"

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x0

    .line 43
    if-eqz v6, :cond_5

    .line 44
    .line 45
    invoke-static {v0, v7, v4}, Landroid/support/v4/media/a;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    goto :goto_1

    .line 50
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_6

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_6
    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_7

    .line 62
    .line 63
    invoke-static {v0, v7, v3}, Landroid/support/v4/media/a;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    goto :goto_2

    .line 68
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_8

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_8
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_9

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_9
    if-eq p1, p2, :cond_a

    .line 83
    .line 84
    const-string v3, ""

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_a
    move-object v3, p4

    .line 88
    :goto_3
    const/4 v4, 0x6

    .line 89
    if-ne p1, v0, :cond_b

    .line 90
    .line 91
    sput-object v3, Lcom/mycompany/app/pref/PrefPath;->j:Ljava/lang/String;

    .line 92
    .line 93
    const-string v5, "mAlbumPath"

    .line 94
    .line 95
    invoke-static {v4, p0, v5, v3}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_b
    if-ne p1, v1, :cond_c

    .line 100
    .line 101
    sput-object v3, Lcom/mycompany/app/pref/PrefPath;->l:Ljava/lang/String;

    .line 102
    .line 103
    const-string v5, "mPdfPath"

    .line 104
    .line 105
    invoke-static {v4, p0, v5, v3}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_c
    if-ne p1, v2, :cond_d

    .line 110
    .line 111
    sput-object v3, Lcom/mycompany/app/pref/PrefPath;->k:Ljava/lang/String;

    .line 112
    .line 113
    const-string v5, "mCmpPath"

    .line 114
    .line 115
    invoke-static {v4, p0, v5, v3}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_d
    :goto_4
    if-eq p1, p2, :cond_e

    .line 119
    .line 120
    invoke-static {p0, p1, p3}, Lcom/mycompany/app/data/DataUtil;->c(Landroid/content/Context;ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-static {p0, p2, p5}, Lcom/mycompany/app/data/DataUtil;->a(Landroid/content/Context;ILcom/mycompany/app/main/MainUri$UriItem;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_e
    const-string p1, "_icon"

    .line 128
    .line 129
    const-string v3, "_path=?"

    .line 130
    .line 131
    const-string v4, "_name"

    .line 132
    .line 133
    const-string v5, "_path"

    .line 134
    .line 135
    if-ne p2, v0, :cond_12

    .line 136
    .line 137
    invoke-static {p0}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v1, p5, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/mycompany/app/data/DataList;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object p2, p5, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 147
    .line 148
    sget-object v0, Lcom/mycompany/app/db/DbAlbum;->c:Lcom/mycompany/app/db/DbAlbum;

    .line 149
    .line 150
    if-eqz p0, :cond_10

    .line 151
    .line 152
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_f

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_f
    filled-new-array {p3}, [Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1, p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->l(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    new-instance v1, Landroid/content/ContentValues;

    .line 171
    .line 172
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-static {p0, p4}, Lcom/mycompany/app/main/MainUtil;->p2(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-static {p0}, Lcom/mycompany/app/db/DbAlbum;->a(Landroid/content/Context;)Lcom/mycompany/app/db/DbAlbum;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    const-string p2, "DbAlbum_table"

    .line 197
    .line 198
    invoke-static {p1, p2, v1, v3, v0}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    :cond_10
    :goto_5
    iget-object p1, p5, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 202
    .line 203
    sget-object p2, Lcom/mycompany/app/db/book/DbBookAlbum;->c:Lcom/mycompany/app/db/book/DbBookAlbum;

    .line 204
    .line 205
    if-eqz p0, :cond_1a

    .line 206
    .line 207
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    if-nez p2, :cond_1a

    .line 212
    .line 213
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    if-eqz p2, :cond_11

    .line 218
    .line 219
    goto/16 :goto_8

    .line 220
    .line 221
    :cond_11
    invoke-static {v5, p4, v4, p1}, Lcom/mycompany/app/dialog/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    filled-new-array {p3}, [Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookAlbum;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAlbum;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    const-string p3, "DbBookAlbum_table"

    .line 238
    .line 239
    invoke-static {p0, p3, p1, v3, p2}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :cond_12
    if-ne p2, v1, :cond_16

    .line 244
    .line 245
    invoke-static {p0}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    iget-object v1, p5, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/mycompany/app/data/DataList;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object p2, p5, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 255
    .line 256
    sget-object v0, Lcom/mycompany/app/db/DbPdf;->c:Lcom/mycompany/app/db/DbPdf;

    .line 257
    .line 258
    if-eqz p0, :cond_14

    .line 259
    .line 260
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_13

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_13
    filled-new-array {p3}, [Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v1, p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->l(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    new-instance v1, Landroid/content/ContentValues;

    .line 279
    .line 280
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-static {p0, p4}, Lcom/mycompany/app/main/MainUtil;->p2(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-static {p0}, Lcom/mycompany/app/db/DbPdf;->b(Landroid/content/Context;)Lcom/mycompany/app/db/DbPdf;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    const-string p2, "DbPdf_table"

    .line 305
    .line 306
    invoke-static {p1, p2, v1, v3, v0}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    :cond_14
    :goto_6
    iget-object p1, p5, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 310
    .line 311
    sget-object p2, Lcom/mycompany/app/db/book/DbBookPdf;->c:Lcom/mycompany/app/db/book/DbBookPdf;

    .line 312
    .line 313
    if-eqz p0, :cond_1a

    .line 314
    .line 315
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 316
    .line 317
    .line 318
    move-result p2

    .line 319
    if-nez p2, :cond_1a

    .line 320
    .line 321
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 322
    .line 323
    .line 324
    move-result p2

    .line 325
    if-eqz p2, :cond_15

    .line 326
    .line 327
    goto/16 :goto_8

    .line 328
    .line 329
    :cond_15
    invoke-static {v5, p4, v4, p1}, Lcom/mycompany/app/dialog/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    filled-new-array {p3}, [Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookPdf;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPdf;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    const-string p3, "DbBookPdf_table"

    .line 346
    .line 347
    invoke-static {p0, p3, p1, v3, p2}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :cond_16
    if-ne p2, v2, :cond_1a

    .line 352
    .line 353
    invoke-static {p0}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    iget-object v0, p5, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/mycompany/app/data/DataList;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget-object p1, p5, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 363
    .line 364
    sget-object p2, Lcom/mycompany/app/db/DbCmp;->c:Lcom/mycompany/app/db/DbCmp;

    .line 365
    .line 366
    if-eqz p0, :cond_18

    .line 367
    .line 368
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 369
    .line 370
    .line 371
    move-result p2

    .line 372
    if-eqz p2, :cond_17

    .line 373
    .line 374
    goto :goto_7

    .line 375
    :cond_17
    filled-new-array {p3}, [Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-virtual {v0, p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->l(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    new-instance v0, Landroid/content/ContentValues;

    .line 387
    .line 388
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-static {p0}, Lcom/mycompany/app/db/DbCmp;->b(Landroid/content/Context;)Lcom/mycompany/app/db/DbCmp;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    const-string v1, "DbCmp_table"

    .line 406
    .line 407
    invoke-static {p1, v1, v0, v3, p2}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    :cond_18
    :goto_7
    iget-object p1, p5, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 411
    .line 412
    sget-object p2, Lcom/mycompany/app/db/book/DbBookCmp;->c:Lcom/mycompany/app/db/book/DbBookCmp;

    .line 413
    .line 414
    if-eqz p0, :cond_1a

    .line 415
    .line 416
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 417
    .line 418
    .line 419
    move-result p2

    .line 420
    if-nez p2, :cond_1a

    .line 421
    .line 422
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 423
    .line 424
    .line 425
    move-result p2

    .line 426
    if-eqz p2, :cond_19

    .line 427
    .line 428
    goto :goto_8

    .line 429
    :cond_19
    invoke-static {v5, p4, v4, p1}, Lcom/mycompany/app/dialog/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    filled-new-array {p3}, [Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p2

    .line 437
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookCmp;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookCmp;

    .line 438
    .line 439
    .line 440
    move-result-object p0

    .line 441
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 442
    .line 443
    .line 444
    move-result-object p0

    .line 445
    const-string p3, "DbBookCmp_table"

    .line 446
    .line 447
    invoke-static {p0, p3, p1, v3, p2}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 448
    .line 449
    .line 450
    :cond_1a
    :goto_8
    return-void
.end method
