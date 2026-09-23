.class public Lnet/lingala/zip4j/zip/ZipEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public static a(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->c:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 11
    .line 12
    const-string v0, "unsupported compression type"

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :cond_1
    :goto_0
    if-ne v0, v1, :cond_3

    .line 19
    .line 20
    iget v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->f:I

    .line 21
    .line 22
    if-gez v0, :cond_3

    .line 23
    .line 24
    const/16 v1, 0x9

    .line 25
    .line 26
    if-gt v0, v1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 30
    .line 31
    const-string v0, "invalid compression level. compression level dor deflate should be in the range of 0-9"

    .line 32
    .line 33
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->g:Z

    .line 38
    .line 39
    if-eqz v0, :cond_7

    .line 40
    .line 41
    iget v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->h:I

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    const/16 v1, 0x63

    .line 46
    .line 47
    if-ne v0, v1, :cond_4

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 51
    .line 52
    const-string v0, "unsupported encryption method"

    .line 53
    .line 54
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_5
    :goto_2
    iget-object p0, p0, Lnet/lingala/zip4j/model/ZipParameters;->i:[C

    .line 59
    .line 60
    if-eqz p0, :cond_6

    .line 61
    .line 62
    array-length p0, p0

    .line 63
    if-lez p0, :cond_6

    .line 64
    .line 65
    return-void

    .line 66
    :cond_6
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 67
    .line 68
    const-string v0, "input password is empty or null"

    .line 69
    .line 70
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_7
    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->h:I

    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final b()Ljava/io/RandomAccessFile;
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    .line 2
    .line 3
    iget-object v0, v0, Lnet/lingala/zip4j/model/ZipModel;->l:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->l(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 37
    .line 38
    const-string v2, "rw"

    .line 39
    .line 40
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :goto_1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 47
    .line 48
    .line 49
    throw v1

    .line 50
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 51
    .line 52
    const-string v1, "invalid output path"

    .line 53
    .line 54
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public final c(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 9

    .line 1
    const-string p2, "offsetCentralDir"

    .line 2
    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    .line 4
    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-object v1, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 8
    .line 9
    if-eqz v1, :cond_6

    .line 10
    .line 11
    iget-object v1, v1, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-eqz v1, :cond_6

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-gtz v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_6

    .line 22
    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v1

    .line 26
    move-object v4, v2

    .line 27
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-ge v3, v5, :cond_4

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Ljava/io/File;

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-static {v0, v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->g(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    if-eqz v5, :cond_3

    .line 52
    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 56
    .line 57
    .line 58
    move-object v4, v2

    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_5

    .line 62
    :catch_0
    move-exception p1

    .line 63
    goto :goto_4

    .line 64
    :cond_1
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v5, p3}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->c(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iget-boolean v6, p3, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    .line 72
    .line 73
    if-eqz v6, :cond_2

    .line 74
    .line 75
    const/4 p1, 0x3

    .line 76
    iput p1, p3, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:I

    .line 77
    .line 78
    iput v1, p3, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:I

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_2
    if-nez v4, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0}, Lnet/lingala/zip4j/zip/ZipEngine;->b()Ljava/io/RandomAccessFile;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-eqz v6, :cond_3

    .line 94
    .line 95
    :try_start_1
    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 102
    .line 103
    .line 104
    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    const-wide/16 v7, 0x0

    .line 106
    .line 107
    cmp-long v7, v5, v7

    .line 108
    .line 109
    if-ltz v7, :cond_3

    .line 110
    .line 111
    :try_start_2
    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catch_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 116
    .line 117
    const-string p2, "Error while parsing offset central directory. Cannot update already existing file header"

    .line 118
    .line 119
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :catch_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 124
    .line 125
    const-string p2, "NumberFormatException while parsing offset central directory. Cannot update already existing file header"

    .line 126
    .line 127
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_4
    :goto_3
    if-eqz v4, :cond_6

    .line 135
    .line 136
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 137
    .line 138
    .line 139
    :catch_3
    return-void

    .line 140
    :goto_4
    :try_start_4
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 141
    .line 142
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 143
    .line 144
    .line 145
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    :goto_5
    if-eqz v4, :cond_5

    .line 147
    .line 148
    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 149
    .line 150
    .line 151
    :catch_4
    :cond_5
    throw p1

    .line 152
    :cond_6
    :goto_6
    return-void
.end method
