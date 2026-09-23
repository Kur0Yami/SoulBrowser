.class public Lcom/mycompany/app/main/MainUriVol;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/mycompany/app/main/MainUri$NumItem;)Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_7

    .line 3
    .line 4
    if-eqz p1, :cond_7

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    goto/16 :goto_4

    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    const/16 v2, 0x14

    .line 12
    .line 13
    :try_start_0
    iget v3, p3, Lcom/mycompany/app/main/MainUri$NumItem;->f:I

    .line 14
    .line 15
    if-le v3, v2, :cond_1

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v4, p3, Lcom/mycompany/app/main/MainUri$NumItem;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v4, "_"

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v4, p3, Lcom/mycompany/app/main/MainUri$NumItem;->b:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-object v6, p1

    .line 50
    goto :goto_3

    .line 51
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v4, p3, Lcom/mycompany/app/main/MainUri$NumItem;->c:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-wide v4, p3, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 62
    .line 63
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v4, p3, Lcom/mycompany/app/main/MainUri$NumItem;->d:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    const/4 v4, 0x0

    .line 76
    :try_start_1
    const-string v8, "_display_name=? AND mime_type=?"

    .line 77
    .line 78
    const-string v5, "vnd.android.document/directory"

    .line 79
    .line 80
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 85
    .line 86
    .line 87
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 88
    const/4 v7, 0x0

    .line 89
    const/4 v10, 0x0

    .line 90
    move-object v6, p1

    .line 91
    :try_start_2
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 92
    .line 93
    .line 94
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 98
    .line 99
    .line 100
    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 101
    if-eqz v5, :cond_2

    .line 102
    .line 103
    move v4, v1

    .line 104
    goto :goto_2

    .line 105
    :catch_1
    :goto_1
    move-object p1, v0

    .line 106
    goto :goto_2

    .line 107
    :catch_2
    move-object v6, p1

    .line 108
    goto :goto_1

    .line 109
    :catch_3
    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 110
    .line 111
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 112
    .line 113
    .line 114
    :cond_3
    if-eqz v4, :cond_4

    .line 115
    .line 116
    return-object v3

    .line 117
    :cond_4
    const-string p1, "_display_name"

    .line 118
    .line 119
    invoke-virtual {p2, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1, v6, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_5

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUri;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 140
    return-object p0

    .line 141
    :catch_4
    :cond_5
    :goto_3
    iget p1, p3, Lcom/mycompany/app/main/MainUri$NumItem;->f:I

    .line 142
    .line 143
    if-le p1, v2, :cond_6

    .line 144
    .line 145
    return-object v0

    .line 146
    :cond_6
    iget-wide v2, p3, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 147
    .line 148
    const-wide/16 v4, 0x1

    .line 149
    .line 150
    add-long/2addr v2, v4

    .line 151
    iput-wide v2, p3, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 152
    .line 153
    add-int/2addr p1, v1

    .line 154
    iput p1, p3, Lcom/mycompany/app/main/MainUri$NumItem;->f:I

    .line 155
    .line 156
    invoke-static {p0, v6, p2, p3}, Lcom/mycompany/app/main/MainUriVol;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/mycompany/app/main/MainUri$NumItem;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    return-object p0

    .line 161
    :cond_7
    :goto_4
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, "vnd.android.document/directory"

    .line 2
    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x1d

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    if-eqz p0, :cond_8

    .line 13
    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    const-string p1, "external_primary"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-object p1, v3

    .line 32
    goto :goto_3

    .line 33
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/provider/MediaStore$Downloads;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    if-nez v5, :cond_3

    .line 38
    .line 39
    goto :goto_4

    .line 40
    :cond_3
    const/4 p1, 0x0

    .line 41
    :try_start_1
    const-string v7, "_display_name=? AND mime_type=?"

    .line 42
    .line 43
    filled-new-array {p2, v0}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v9, 0x0

    .line 53
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 54
    .line 55
    .line 56
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 60
    .line 61
    .line 62
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    goto :goto_1

    .line 67
    :catch_1
    move-object v1, v3

    .line 68
    :catch_2
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 69
    .line 70
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catch_3
    move-object p1, v3

    .line 75
    :catch_4
    move-object v3, v5

    .line 76
    goto :goto_3

    .line 77
    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 78
    .line 79
    return-object p2

    .line 80
    :cond_6
    new-instance p1, Landroid/content/ContentValues;

    .line 81
    .line 82
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 83
    .line 84
    .line 85
    :try_start_4
    const-string v1, "_display_name"

    .line 86
    .line 87
    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v1, "mime_type"

    .line 91
    .line 92
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0, v5, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUri;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 113
    return-object p0

    .line 114
    :goto_3
    move-object v5, v3

    .line 115
    :cond_7
    invoke-static {p2}, Lcom/mycompany/app/main/MainUri;->g(Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$NumItem;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-static {p0, v5, p1, p2}, Lcom/mycompany/app/main/MainUriVol;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/mycompany/app/main/MainUri$NumItem;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :cond_8
    :goto_4
    return-object v3
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$NumItem;)Lcom/mycompany/app/main/MainUri$UriItem;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    if-nez p5, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    const/16 v2, 0x14

    .line 11
    .line 12
    :try_start_0
    iget v3, p5, Lcom/mycompany/app/main/MainUri$NumItem;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    const-string v4, "_display_name"

    .line 15
    .line 16
    if-le v3, v2, :cond_1

    .line 17
    .line 18
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v5, p5, Lcom/mycompany/app/main/MainUri$NumItem;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v5, "_"

    .line 29
    .line 30
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v5, p5, Lcom/mycompany/app/main/MainUri$NumItem;->b:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-object v5, p5, Lcom/mycompany/app/main/MainUri$NumItem;->c:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-wide v5, p5, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 72
    .line 73
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v5, p5, Lcom/mycompany/app/main/MainUri$NumItem;->d:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    :goto_0
    if-eqz v3, :cond_2

    .line 97
    .line 98
    invoke-static {p0, v3, p3, p4, v1}, Lcom/mycompany/app/main/MainUriVol;->e(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 99
    .line 100
    .line 101
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    return-object p0

    .line 103
    :catch_0
    :cond_2
    iget v3, p5, Lcom/mycompany/app/main/MainUri$NumItem;->f:I

    .line 104
    .line 105
    if-le v3, v2, :cond_3

    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_3
    iget-wide v4, p5, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 109
    .line 110
    const-wide/16 v6, 0x1

    .line 111
    .line 112
    add-long/2addr v4, v6

    .line 113
    iput-wide v4, p5, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 114
    .line 115
    add-int/2addr v3, v1

    .line 116
    iput v3, p5, Lcom/mycompany/app/main/MainUri$NumItem;->f:I

    .line 117
    .line 118
    invoke-static/range {p0 .. p5}, Lcom/mycompany/app/main/MainUriVol;->c(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$NumItem;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :cond_4
    :goto_1
    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    if-eqz p0, :cond_8

    .line 10
    .line 11
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const-string p1, "external_primary"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-object v1, v2

    .line 29
    goto :goto_3

    .line 30
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/provider/MediaStore$Downloads;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    return-object v2

    .line 37
    :cond_3
    :try_start_1
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->V0(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->t2(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_4

    .line 50
    .line 51
    invoke-static {v1}, Lcom/mycompany/app/compress/Compress;->H(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catch_1
    move-object v1, v2

    .line 59
    :catch_2
    move-object v2, v0

    .line 60
    goto :goto_3

    .line 61
    :cond_4
    :goto_1
    const-string v3, "application/octet-stream"

    .line 62
    .line 63
    :cond_5
    new-instance v1, Landroid/content/ContentValues;

    .line 64
    .line 65
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .line 67
    .line 68
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_6

    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v4, "/"

    .line 85
    .line 86
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v4, "relative_path"

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_6
    const-string v2, "_display_name"

    .line 102
    .line 103
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v2, "mime_type"

    .line 107
    .line 108
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    if-eqz v2, :cond_7

    .line 120
    .line 121
    const/4 v3, 0x1

    .line 122
    invoke-static {p0, v2, p1, p2, v3}, Lcom/mycompany/app/main/MainUriVol;->e(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 123
    .line 124
    .line 125
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 126
    return-object p0

    .line 127
    :cond_7
    move-object v4, v0

    .line 128
    :goto_2
    move-object v6, p1

    .line 129
    move-object v5, v1

    .line 130
    goto :goto_4

    .line 131
    :goto_3
    move-object v4, v2

    .line 132
    goto :goto_2

    .line 133
    :goto_4
    invoke-static {p3}, Lcom/mycompany/app/main/MainUri;->g(Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$NumItem;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    move-object v3, p0

    .line 138
    move-object v7, p2

    .line 139
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/main/MainUriVol;->c(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$NumItem;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    :cond_8
    :goto_5
    return-object v2
.end method

.method public static e(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mycompany/app/main/MainUri$UriItem;
    .locals 3

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    :try_start_0
    new-instance v0, Lcom/mycompany/app/main/MainUri$UriItem;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/mycompany/app/main/MainUri$UriItem;->b:Landroid/net/Uri;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    const-string v2, "/"

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    sget-object p2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iput-object p2, v0, Lcom/mycompany/app/main/MainUri$UriItem;->c:Ljava/lang/String;

    .line 61
    .line 62
    iput-object p3, v0, Lcom/mycompany/app/main/MainUri$UriItem;->d:Ljava/lang/String;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    sget-object p2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    iput-object p2, v0, Lcom/mycompany/app/main/MainUri$UriItem;->c:Ljava/lang/String;

    .line 86
    .line 87
    sget-object p2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 88
    .line 89
    iput-object p2, v0, Lcom/mycompany/app/main/MainUri$UriItem;->d:Ljava/lang/String;

    .line 90
    .line 91
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->b(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->c()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    iput-object p2, v0, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 100
    .line 101
    if-eqz p4, :cond_3

    .line 102
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 104
    .line 105
    .line 106
    move-result-wide p0

    .line 107
    iput-wide p0, v0, Lcom/mycompany/app/main/MainUri$UriItem;->g:J

    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_3
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->f()J

    .line 111
    .line 112
    .line 113
    move-result-wide p2

    .line 114
    iput-wide p2, v0, Lcom/mycompany/app/main/MainUri$UriItem;->g:J

    .line 115
    .line 116
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->g()J

    .line 117
    .line 118
    .line 119
    move-result-wide p1

    .line 120
    iput-wide p1, v0, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 121
    .line 122
    const-wide/16 p3, 0x0

    .line 123
    .line 124
    cmp-long p1, p1, p3

    .line 125
    .line 126
    if-nez p1, :cond_4

    .line 127
    .line 128
    iget-object p1, v0, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUri;->l(Landroid/content/Context;Ljava/lang/String;)J

    .line 131
    .line 132
    .line 133
    move-result-wide p0

    .line 134
    iput-wide p0, v0, Lcom/mycompany/app/main/MainUri$UriItem;->h:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    .line 136
    :cond_4
    return-object v0

    .line 137
    :catch_0
    :cond_5
    :goto_1
    const/4 p0, 0x0

    .line 138
    return-object p0
.end method

.method public static f(Landroid/content/Context;Landroid/net/Uri;Lcom/mycompany/app/main/MainUri$NumItem;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    if-eqz p1, :cond_5

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :cond_0
    const/16 v1, 0x14

    .line 11
    .line 12
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 15
    .line 16
    .line 17
    iget v3, p2, Lcom/mycompany/app/main/MainUri$NumItem;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    const-string v4, "_display_name"

    .line 20
    .line 21
    if-le v3, v1, :cond_1

    .line 22
    .line 23
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v5, p2, Lcom/mycompany/app/main/MainUri$NumItem;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v5, "_"

    .line 34
    .line 35
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v5, p2, Lcom/mycompany/app/main/MainUri$NumItem;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object v5, p2, Lcom/mycompany/app/main/MainUri$NumItem;->c:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-wide v5, p2, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 69
    .line 70
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v5, p2, Lcom/mycompany/app/main/MainUri$NumItem;->d:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    const-string p3, "application/octet-stream"

    .line 92
    .line 93
    :cond_2
    const-string v3, "mime_type"

    .line 94
    .line 95
    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3, p1, v2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-lez v2, :cond_3

    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    invoke-static {p0, p1, v0, v0, v2}, Lcom/mycompany/app/main/MainUriVol;->e(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 110
    .line 111
    .line 112
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    return-object p0

    .line 114
    :catch_0
    :cond_3
    iget v2, p2, Lcom/mycompany/app/main/MainUri$NumItem;->f:I

    .line 115
    .line 116
    if-le v2, v1, :cond_4

    .line 117
    .line 118
    return-object v0

    .line 119
    :cond_4
    iget-wide v0, p2, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 120
    .line 121
    const-wide/16 v3, 0x1

    .line 122
    .line 123
    add-long/2addr v0, v3

    .line 124
    iput-wide v0, p2, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 125
    .line 126
    add-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    iput v2, p2, Lcom/mycompany/app/main/MainUri$NumItem;->f:I

    .line 129
    .line 130
    invoke-static {p0, p1, p2, p3}, Lcom/mycompany/app/main/MainUriVol;->f(Landroid/content/Context;Landroid/net/Uri;Lcom/mycompany/app/main/MainUri$NumItem;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :cond_5
    :goto_1
    return-object v0
.end method
