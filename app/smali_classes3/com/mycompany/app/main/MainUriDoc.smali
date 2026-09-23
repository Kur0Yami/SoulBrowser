.class public Lcom/mycompany/app/main/MainUriDoc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/Uri;Lcom/mycompany/app/main/MainUri$NumItem;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/16 v1, 0x14

    .line 10
    .line 11
    :try_start_0
    iget v2, p2, Lcom/mycompany/app/main/MainUri$NumItem;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    const-string v3, "vnd.android.document/directory"

    .line 14
    .line 15
    if-le v2, v1, :cond_1

    .line 16
    .line 17
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v4, p2, Lcom/mycompany/app/main/MainUri$NumItem;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v4, "_"

    .line 28
    .line 29
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v4, p2, Lcom/mycompany/app/main/MainUri$NumItem;->b:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v4, p1, v3, v2}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v4, p2, Lcom/mycompany/app/main/MainUri$NumItem;->c:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-wide v4, p2, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 68
    .line 69
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v4, p2, Lcom/mycompany/app/main/MainUri$NumItem;->d:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v4, p1, v3, v2}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    :goto_0
    if-eqz v2, :cond_2

    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    return-object p0

    .line 96
    :catch_0
    :cond_2
    iget v2, p2, Lcom/mycompany/app/main/MainUri$NumItem;->f:I

    .line 97
    .line 98
    if-le v2, v1, :cond_3

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_3
    iget-wide v0, p2, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 102
    .line 103
    const-wide/16 v3, 0x1

    .line 104
    .line 105
    add-long/2addr v0, v3

    .line 106
    iput-wide v0, p2, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 107
    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 109
    .line 110
    iput v2, p2, Lcom/mycompany/app/main/MainUri$NumItem;->f:I

    .line 111
    .line 112
    invoke-static {p0, p1, p2}, Lcom/mycompany/app/main/MainUriDoc;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/mycompany/app/main/MainUri$NumItem;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :cond_4
    :goto_1
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "vnd.android.document/directory"

    .line 23
    .line 24
    invoke-static {v0, p1, v1, p2}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    return-object p0

    .line 35
    :catch_0
    move-object v0, p1

    .line 36
    :catch_1
    move-object p1, v0

    .line 37
    :cond_2
    invoke-static {p2}, Lcom/mycompany/app/main/MainUri;->g(Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$NumItem;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p0, p1, p2}, Lcom/mycompany/app/main/MainUriDoc;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/mycompany/app/main/MainUri$NumItem;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$NumItem;)Lcom/mycompany/app/main/MainUri$UriItem;
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
    if-nez p4, :cond_0

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
    iget v3, p4, Lcom/mycompany/app/main/MainUri$NumItem;->f:I

    .line 13
    .line 14
    if-le v3, v2, :cond_1

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v4, p4, Lcom/mycompany/app/main/MainUri$NumItem;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, "_"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v4, p4, Lcom/mycompany/app/main/MainUri$NumItem;->b:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v4, p1, p3, v3}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v4, p4, Lcom/mycompany/app/main/MainUri$NumItem;->c:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-wide v4, p4, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 67
    .line 68
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v4, p4, Lcom/mycompany/app/main/MainUri$NumItem;->d:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v4, p1, p3, v3}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :goto_0
    if-eqz p1, :cond_2

    .line 89
    .line 90
    invoke-static {p0, p1, p2, v1}, Lcom/mycompany/app/main/MainUriDoc;->d(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 91
    .line 92
    .line 93
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-object p0

    .line 95
    :catch_0
    :cond_2
    iget v3, p4, Lcom/mycompany/app/main/MainUri$NumItem;->f:I

    .line 96
    .line 97
    if-le v3, v2, :cond_3

    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_3
    iget-wide v4, p4, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 101
    .line 102
    const-wide/16 v6, 0x1

    .line 103
    .line 104
    add-long/2addr v4, v6

    .line 105
    iput-wide v4, p4, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 106
    .line 107
    add-int/2addr v3, v1

    .line 108
    iput v3, p4, Lcom/mycompany/app/main/MainUri$NumItem;->f:I

    .line 109
    .line 110
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mycompany/app/main/MainUriDoc;->c(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$NumItem;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :cond_4
    :goto_1
    return-object v0
.end method

.method public static d(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/mycompany/app/main/MainUri$UriItem;
    .locals 3

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Lcom/mycompany/app/main/MainUri$UriItem;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, v0, Lcom/mycompany/app/main/MainUri$UriItem;->b:Landroid/net/Uri;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, v0, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iput-object p2, v0, Lcom/mycompany/app/main/MainUri$UriItem;->c:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p0, p2}, Lcom/mycompany/app/main/MainUri;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iput-object p2, v0, Lcom/mycompany/app/main/MainUri$UriItem;->d:Ljava/lang/String;

    .line 32
    .line 33
    :cond_1
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->b(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->c()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, v0, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz p3, :cond_2

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide p0

    .line 49
    iput-wide p0, v0, Lcom/mycompany/app/main/MainUri$UriItem;->g:J

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->f()J

    .line 53
    .line 54
    .line 55
    move-result-wide p2

    .line 56
    iput-wide p2, v0, Lcom/mycompany/app/main/MainUri$UriItem;->g:J

    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->g()J

    .line 59
    .line 60
    .line 61
    move-result-wide p1

    .line 62
    iput-wide p1, v0, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 63
    .line 64
    const-wide/16 v1, 0x0

    .line 65
    .line 66
    cmp-long p1, p1, v1

    .line 67
    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    iget-object p1, v0, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUri;->l(Landroid/content/Context;Ljava/lang/String;)J

    .line 73
    .line 74
    .line 75
    move-result-wide p0

    .line 76
    iput-wide p0, v0, Lcom/mycompany/app/main/MainUri$UriItem;->h:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    :cond_3
    return-object v0

    .line 79
    :catch_0
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 80
    return-object p0
.end method

.method public static e(Landroid/content/Context;Landroid/net/Uri;Lcom/mycompany/app/main/MainUri$NumItem;)Lcom/mycompany/app/main/MainUri$UriItem;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/16 v1, 0x14

    .line 10
    .line 11
    :try_start_0
    iget v2, p2, Lcom/mycompany/app/main/MainUri$NumItem;->f:I

    .line 12
    .line 13
    if-le v2, v1, :cond_1

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v3, p2, Lcom/mycompany/app/main/MainUri$NumItem;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, "_"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v3, p2, Lcom/mycompany/app/main/MainUri$NumItem;->b:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v3, p1, v2}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-object v3, p2, Lcom/mycompany/app/main/MainUri$NumItem;->c:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-wide v3, p2, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 66
    .line 67
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v3, p2, Lcom/mycompany/app/main/MainUri$NumItem;->d:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v3, p1, v2}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :goto_0
    if-eqz p1, :cond_2

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    invoke-static {p0, p1, v0, v2}, Lcom/mycompany/app/main/MainUriDoc;->d(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 91
    .line 92
    .line 93
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-object p0

    .line 95
    :catch_0
    :cond_2
    iget v2, p2, Lcom/mycompany/app/main/MainUri$NumItem;->f:I

    .line 96
    .line 97
    if-le v2, v1, :cond_3

    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_3
    iget-wide v0, p2, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 101
    .line 102
    const-wide/16 v3, 0x1

    .line 103
    .line 104
    add-long/2addr v0, v3

    .line 105
    iput-wide v0, p2, Lcom/mycompany/app/main/MainUri$NumItem;->e:J

    .line 106
    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 108
    .line 109
    iput v2, p2, Lcom/mycompany/app/main/MainUri$NumItem;->f:I

    .line 110
    .line 111
    invoke-static {p0, p1, p2}, Lcom/mycompany/app/main/MainUriDoc;->e(Landroid/content/Context;Landroid/net/Uri;Lcom/mycompany/app/main/MainUri$NumItem;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :cond_4
    :goto_1
    return-object v0
.end method
