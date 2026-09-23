.class public Lnet/lingala/zip4j/util/CRCUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)J
    .locals 9

    .line 1
    const-string v0, "error while closing the file after calculating crc"

    .line 2
    .line 3
    invoke-static {p0}, Lnet/lingala/zip4j/util/Zip4jUtil;->l(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    invoke-static {p0}, Lnet/lingala/zip4j/util/Zip4jUtil;->b(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->a1(Ljava/lang/String;)Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/16 p0, 0x4000

    .line 18
    .line 19
    new-array p0, p0, [B

    .line 20
    .line 21
    new-instance v2, Ljava/util/zip/CRC32;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, -0x1

    .line 31
    if-eq v3, v4, :cond_1

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v2, p0, v4, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 35
    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    int-to-long v5, v3

    .line 40
    iget-wide v7, p1, Lnet/lingala/zip4j/progress/ProgressMonitor;->b:J

    .line 41
    .line 42
    add-long/2addr v7, v5

    .line 43
    iput-wide v7, p1, Lnet/lingala/zip4j/progress/ProgressMonitor;->b:J

    .line 44
    .line 45
    iget-boolean v3, p1, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    const/4 p0, 0x3

    .line 50
    iput p0, p1, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:I

    .line 51
    .line 52
    iput v4, p1, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    const-wide/16 p0, 0x0

    .line 55
    .line 56
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    .line 58
    .line 59
    return-wide p0

    .line 60
    :catch_0
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 61
    .line 62
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :catch_1
    move-exception p0

    .line 69
    goto :goto_0

    .line 70
    :catch_2
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 77
    .line 78
    .line 79
    return-wide p0

    .line 80
    :catch_3
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 81
    .line 82
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :goto_0
    :try_start_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 87
    .line 88
    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :goto_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 93
    .line 94
    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 95
    .line 96
    .line 97
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    :goto_2
    if-eqz v1, :cond_2

    .line 99
    .line 100
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :catch_4
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 105
    .line 106
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :cond_2
    :goto_3
    throw p0

    .line 111
    :cond_3
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 112
    .line 113
    const-string p1, "input file is null or empty, cannot calculate CRC for the file"

    .line 114
    .line 115
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0
.end method
