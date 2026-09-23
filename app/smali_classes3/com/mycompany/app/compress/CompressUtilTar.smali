.class public Lcom/mycompany/app/compress/CompressUtilTar;
.super Lcom/mycompany/app/compress/Compress;
.source "SourceFile"


# virtual methods
.method public final M()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 20
    .line 21
    iput v0, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x1

    .line 25
    :try_start_0
    iget-object v3, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Lcom/mycompany/app/compress/CompressUtilTar;->V(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    .line 28
    .line 29
    .line 30
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->e()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_6

    .line 40
    .line 41
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-static {v4, v2, v2}, Lcom/mycompany/app/compress/Compress;->C(Ljava/lang/String;ZZ)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-static {v4}, Lcom/mycompany/app/compress/CompressUtil;->b(Ljava/lang/String;)Lcom/mycompany/app/compress/Compress$SortItem;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-nez v4, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    iget-object v5, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 67
    .line 68
    if-nez v5, :cond_5

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_5
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_6
    move v2, v0

    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-object v3, v1

    .line 78
    :catch_1
    :goto_1
    if-eqz v3, :cond_7

    .line 79
    .line 80
    :try_start_2
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 81
    .line 82
    .line 83
    :catch_2
    :cond_7
    if-eqz v2, :cond_8

    .line 84
    .line 85
    iput-object v1, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_8
    iget-object v2, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 89
    .line 90
    if-eqz v2, :cond_d

    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_9

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_9
    iget-object v2, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    iput v2, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 106
    .line 107
    if-lez v2, :cond_d

    .line 108
    .line 109
    iget-object v2, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 110
    .line 111
    if-eqz v2, :cond_d

    .line 112
    .line 113
    iget-object v3, p0, Lcom/mycompany/app/compress/Compress;->h:Ljava/util/ArrayList;

    .line 114
    .line 115
    if-nez v3, :cond_a

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_a
    new-instance v3, Lcom/mycompany/app/compress/CompressUtil$CompressSort;

    .line 119
    .line 120
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 121
    .line 122
    .line 123
    :try_start_3
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 124
    .line 125
    .line 126
    :catch_3
    iget-object v2, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    :goto_2
    if-ge v0, v3, :cond_c

    .line 133
    .line 134
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    add-int/lit8 v0, v0, 0x1

    .line 139
    .line 140
    check-cast v4, Lcom/mycompany/app/compress/Compress$SortItem;

    .line 141
    .line 142
    iget-object v5, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 143
    .line 144
    if-eqz v5, :cond_d

    .line 145
    .line 146
    iget-object v5, p0, Lcom/mycompany/app/compress/Compress;->h:Ljava/util/ArrayList;

    .line 147
    .line 148
    if-nez v5, :cond_b

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_b
    iget-object v4, v4, Lcom/mycompany/app/compress/Compress$SortItem;->a:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_c
    iput-object v1, p0, Lcom/mycompany/app/compress/Compress;->i:Ljava/util/ArrayList;

    .line 158
    .line 159
    :cond_d
    :goto_3
    return-void
.end method

.method public final N()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_0
    iget-object v3, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Lcom/mycompany/app/compress/CompressUtilTar;->V(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    move v3, v0

    .line 25
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->e()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 26
    .line 27
    .line 28
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v4, v0

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move v3, v0

    .line 37
    :catch_1
    move v4, v1

    .line 38
    :goto_1
    if-eqz v2, :cond_3

    .line 39
    .line 40
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 41
    .line 42
    .line 43
    :catch_2
    :cond_3
    if-eqz v4, :cond_4

    .line 44
    .line 45
    :goto_2
    return v0

    .line 46
    :cond_4
    iput v3, p0, Lcom/mycompany/app/compress/Compress;->j:I

    .line 47
    .line 48
    if-lez v3, :cond_5

    .line 49
    .line 50
    move v0, v1

    .line 51
    :cond_5
    return v0
.end method

.method public final V(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    .locals 5

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    sget-object v1, Lcom/mycompany/app/main/MainConst;->J:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 22
    .line 23
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->Y1(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v3, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {v3, v1, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    move-object v2, v3

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    xor-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    :goto_0
    if-eqz v1, :cond_2

    .line 48
    .line 49
    :try_start_1
    iput-object v0, p0, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->a:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->Y1(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    .line 63
    .line 64
    move-object v2, v0

    .line 65
    :catch_1
    :cond_2
    return-object v2
.end method

.method public final o(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 15
    .line 16
    const-string v3, "/"

    .line 17
    .line 18
    invoke-static {v0, v2, v3}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object p1, v1

    .line 38
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/mycompany/app/compress/CompressUtilTar;->V(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->e()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    return-object v0

    .line 71
    :catch_0
    move-object v0, v1

    .line 72
    :catch_1
    :cond_4
    if-eqz v0, :cond_5

    .line 73
    .line 74
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 75
    .line 76
    .line 77
    :catch_2
    :cond_5
    :goto_1
    return-object v1
.end method

.method public final p(I)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->h:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v0, :cond_a

    .line 15
    .line 16
    if-ltz p1, :cond_a

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    sub-int/2addr v0, v2

    .line 24
    if-le p1, v0, :cond_1

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->U2(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->h:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    :catch_0
    :cond_3
    :goto_0
    move-object p1, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/mycompany/app/compress/CompressUtilTar;->V(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    .line 62
    .line 63
    .line 64
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->e()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-eqz v3, :cond_6

    .line 73
    .line 74
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_5

    .line 83
    .line 84
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getSize()J

    .line 85
    .line 86
    .line 87
    move-result-wide v3

    .line 88
    long-to-int p1, v3

    .line 89
    invoke-static {v0, p1}, Lcom/mycompany/app/compress/CompressUtil;->d(Ljava/io/InputStream;I)[B

    .line 90
    .line 91
    .line 92
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 93
    goto :goto_1

    .line 94
    :catch_1
    move-object v0, v1

    .line 95
    :catch_2
    :cond_6
    if-eqz v0, :cond_3

    .line 96
    .line 97
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :goto_1
    if-nez p1, :cond_7

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_7
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 105
    .line 106
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 110
    .line 111
    array-length v1, p1

    .line 112
    invoke-static {p1, v1, v0}, Lcom/mycompany/app/main/BitmapUtil;->b([BILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 113
    .line 114
    .line 115
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 116
    .line 117
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 118
    .line 119
    if-gt v1, v2, :cond_8

    .line 120
    .line 121
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 122
    .line 123
    if-le v3, v2, :cond_9

    .line 124
    .line 125
    :cond_8
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 126
    .line 127
    invoke-static {v1, v3, v2, v2}, Lcom/mycompany/app/main/MainUtil;->e0(IIII)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 132
    .line 133
    :cond_9
    const/4 v1, 0x0

    .line 134
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 135
    .line 136
    array-length v1, p1

    .line 137
    invoke-static {p1, v1, v0}, Lcom/mycompany/app/main/BitmapUtil;->b([BILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    :cond_a
    :goto_2
    return-object v1
.end method

.method public final s()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    return v0
.end method
