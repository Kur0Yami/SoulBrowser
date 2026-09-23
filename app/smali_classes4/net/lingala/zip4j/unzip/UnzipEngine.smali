.class public Lnet/lingala/zip4j/unzip/UnzipEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/lingala/zip4j/model/ZipModel;

.field public b:Lnet/lingala/zip4j/model/FileHeader;

.field public c:I

.field public d:Lnet/lingala/zip4j/model/LocalFileHeader;

.field public e:Lnet/lingala/zip4j/crypto/IDecrypter;

.field public f:Ljava/util/zip/CRC32;


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget v1, v0, Lnet/lingala/zip4j/model/FileHeader;->s:I

    .line 6
    .line 7
    const/16 v2, 0x63

    .line 8
    .line 9
    if-ne v1, v2, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->e:Lnet/lingala/zip4j/crypto/IDecrypter;

    .line 12
    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    instance-of v2, v1, Lnet/lingala/zip4j/crypto/AESDecrypter;

    .line 16
    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    check-cast v1, Lnet/lingala/zip4j/crypto/AESDecrypter;

    .line 20
    .line 21
    iget-object v1, v1, Lnet/lingala/zip4j/crypto/AESDecrypter;->b:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 22
    .line 23
    iget-object v1, v1, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->a:Ljavax/crypto/Mac;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->e:Lnet/lingala/zip4j/crypto/IDecrypter;

    .line 30
    .line 31
    check-cast v2, Lnet/lingala/zip4j/crypto/AESDecrypter;

    .line 32
    .line 33
    iget-object v2, v2, Lnet/lingala/zip4j/crypto/AESDecrypter;->i:[B

    .line 34
    .line 35
    const/16 v3, 0xa

    .line 36
    .line 37
    new-array v4, v3, [B

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-static {v1, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v3, "invalid CRC (MAC) for file: "

    .line 57
    .line 58
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, v0, Lnet/lingala/zip4j/model/FileHeader;->p:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v1

    .line 74
    :cond_1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v3, "CRC (MAC) check failed for "

    .line 79
    .line 80
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v0, Lnet/lingala/zip4j/model/FileHeader;->p:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v1

    .line 96
    :cond_2
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->f:Ljava/util/zip/CRC32;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 99
    .line 100
    .line 101
    move-result-wide v1

    .line 102
    const-wide v3, 0xffffffffL

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    and-long/2addr v1, v3

    .line 108
    iget-wide v5, v0, Lnet/lingala/zip4j/model/FileHeader;->g:J

    .line 109
    .line 110
    and-long/2addr v3, v5

    .line 111
    cmp-long v1, v1, v3

    .line 112
    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v2, "invalid CRC for file: "

    .line 118
    .line 119
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, v0, Lnet/lingala/zip4j/model/FileHeader;->p:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 132
    .line 133
    iget-boolean v2, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->m:Z

    .line 134
    .line 135
    if-eqz v2, :cond_3

    .line 136
    .line 137
    iget v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->n:I

    .line 138
    .line 139
    if-nez v1, :cond_3

    .line 140
    .line 141
    const-string v1, " - Wrong Password?"

    .line 142
    .line 143
    invoke-static {v0, v1}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    :cond_3
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 148
    .line 149
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v1

    .line 153
    :cond_4
    :goto_0
    return-void
.end method

.method public final b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->c()Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 11
    .line 12
    new-instance v3, Ljava/io/File;

    .line 13
    .line 14
    iget-object v4, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    .line 15
    .line 16
    iget-object v4, v4, Lnet/lingala/zip4j/model/ZipModel;->l:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v4, "r"

    .line 22
    .line 23
    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    move-object v1, v2

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_2

    .line 30
    :catch_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    new-instance v2, Lnet/lingala/zip4j/core/HeaderReader;

    .line 33
    .line 34
    invoke-direct {v2, v1}, Lnet/lingala/zip4j/core/HeaderReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Lnet/lingala/zip4j/core/HeaderReader;->g(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iput-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 42
    .line 43
    iget v2, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->d:I

    .line 44
    .line 45
    iget v0, v0, Lnet/lingala/zip4j/model/FileHeader;->e:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    if-eq v2, v0, :cond_1

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    :catch_1
    return v0

    .line 54
    :cond_1
    const/4 v0, 0x1

    .line 55
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 56
    .line 57
    .line 58
    :catch_2
    return v0

    .line 59
    :goto_1
    :try_start_3
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 60
    .line 61
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 62
    .line 63
    .line 64
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    :goto_2
    if-eqz v1, :cond_2

    .line 66
    .line 67
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 68
    .line 69
    .line 70
    :catch_3
    :cond_2
    throw v0
.end method

.method public final c()Ljava/io/RandomAccessFile;
    .locals 6

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    .line 2
    .line 3
    iget-boolean v1, v0, Lnet/lingala/zip4j/model/ZipModel;->j:Z

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    .line 8
    .line 9
    iget v1, v1, Lnet/lingala/zip4j/model/FileHeader;->m:I

    .line 10
    .line 11
    add-int/lit8 v2, v1, 0x1

    .line 12
    .line 13
    iput v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->c:I

    .line 14
    .line 15
    iget-object v3, v0, Lnet/lingala/zip4j/model/ZipModel;->l:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, v0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 18
    .line 19
    iget v0, v0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->b:I

    .line 20
    .line 21
    if-ne v1, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0x9

    .line 25
    .line 26
    const-string v4, "."

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    if-lt v1, v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ".z"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ".z0"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 89
    .line 90
    const-string v1, "r"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->c:I

    .line 96
    .line 97
    const/4 v2, 0x1

    .line 98
    if-ne v1, v2, :cond_3

    .line 99
    .line 100
    const/4 v1, 0x4

    .line 101
    new-array v1, v1, [B

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    int-to-long v1, v1

    .line 111
    const-wide/32 v3, 0x8074b50

    .line 112
    .line 113
    .line 114
    cmp-long v1, v1, v3

    .line 115
    .line 116
    if-nez v1, :cond_2

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 120
    .line 121
    const-string v1, "invalid first part split file signature"

    .line 122
    .line 123
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    goto :goto_2

    .line 129
    :catch_1
    move-exception v0

    .line 130
    goto :goto_3

    .line 131
    :cond_3
    :goto_1
    return-object v0

    .line 132
    :goto_2
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 133
    .line 134
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 135
    .line 136
    .line 137
    throw v1

    .line 138
    :goto_3
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 139
    .line 140
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 141
    .line 142
    .line 143
    throw v1

    .line 144
    :cond_4
    const/4 v0, 0x0

    .line 145
    return-object v0
.end method

.method public final d()Ljava/io/RandomAccessFile;
    .locals 4

    .line 1
    const-string v0, "r"

    .line 2
    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v2, v1, Lnet/lingala/zip4j/model/ZipModel;->l:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->l(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    :try_start_0
    iget-boolean v2, v1, Lnet/lingala/zip4j/model/ZipModel;->j:Z

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->c()Ljava/io/RandomAccessFile;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    goto :goto_0

    .line 26
    :catch_1
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 29
    .line 30
    new-instance v3, Ljava/io/File;

    .line 31
    .line 32
    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipModel;->l:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-object v2

    .line 41
    :goto_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 44
    .line 45
    .line 46
    throw v1

    .line 47
    :goto_1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 48
    .line 49
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 50
    .line 51
    .line 52
    throw v1

    .line 53
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 54
    .line 55
    const-string v1, "input parameter is null in getFilePointer"

    .line 56
    .line 57
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public final e(Ljava/io/RandomAccessFile;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->f(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 13
    .line 14
    .line 15
    throw v0

    .line 16
    :catch_1
    move-exception p1

    .line 17
    throw p1

    .line 18
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 19
    .line 20
    const-string v0, "local file header is null, cannot initialize input stream"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public final f(Ljava/io/RandomAccessFile;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 6
    .line 7
    if-eqz v2, :cond_14

    .line 8
    .line 9
    iget-boolean v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->m:Z

    .line 10
    .line 11
    if-eqz v3, :cond_13

    .line 12
    .line 13
    iget v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->n:I

    .line 14
    .line 15
    const/4 v4, 0x5

    .line 16
    const/16 v5, 0x18

    .line 17
    .line 18
    const/4 v6, 0x3

    .line 19
    const/4 v7, 0x0

    .line 20
    const/16 v8, 0xc

    .line 21
    .line 22
    if-nez v3, :cond_5

    .line 23
    .line 24
    new-instance v3, Lnet/lingala/zip4j/crypto/StandardDecrypter;

    .line 25
    .line 26
    iget-object v9, v1, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    .line 27
    .line 28
    :try_start_0
    new-array v10, v8, [B

    .line 29
    .line 30
    iget-wide v11, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->l:J

    .line 31
    .line 32
    invoke-virtual {v0, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v10, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    if-eqz v9, :cond_4

    .line 42
    .line 43
    new-instance v0, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    .line 44
    .line 45
    invoke-direct {v0}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, v3, Lnet/lingala/zip4j/crypto/StandardDecrypter;->a:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    .line 49
    .line 50
    iget-object v2, v9, Lnet/lingala/zip4j/model/FileHeader;->h:[B

    .line 51
    .line 52
    aget-byte v11, v2, v6

    .line 53
    .line 54
    aget-byte v2, v2, v6

    .line 55
    .line 56
    shr-int/lit8 v6, v2, 0x8

    .line 57
    .line 58
    and-int/lit16 v6, v6, 0xff

    .line 59
    .line 60
    int-to-byte v6, v6

    .line 61
    shr-int/lit8 v11, v2, 0x10

    .line 62
    .line 63
    and-int/lit16 v11, v11, 0xff

    .line 64
    .line 65
    int-to-byte v11, v11

    .line 66
    shr-int/2addr v2, v5

    .line 67
    and-int/lit16 v2, v2, 0xff

    .line 68
    .line 69
    int-to-byte v2, v2

    .line 70
    if-gtz v6, :cond_3

    .line 71
    .line 72
    if-gtz v11, :cond_3

    .line 73
    .line 74
    if-gtz v2, :cond_3

    .line 75
    .line 76
    iget-object v2, v9, Lnet/lingala/zip4j/model/FileHeader;->t:[C

    .line 77
    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    array-length v5, v2

    .line 81
    if-lez v5, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->b([C)V

    .line 84
    .line 85
    .line 86
    :try_start_1
    aget-byte v2, v10, v7

    .line 87
    .line 88
    :cond_0
    :goto_0
    if-ge v7, v8, :cond_1

    .line 89
    .line 90
    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->a()B

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    xor-int/2addr v4, v2

    .line 95
    int-to-byte v4, v4

    .line 96
    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->c(B)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v7, v7, 0x1

    .line 100
    .line 101
    if-eq v7, v8, :cond_0

    .line 102
    .line 103
    aget-byte v2, v10, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    iput-object v3, v1, Lnet/lingala/zip4j/unzip/UnzipEngine;->e:Lnet/lingala/zip4j/crypto/IDecrypter;

    .line 109
    .line 110
    return-void

    .line 111
    :goto_1
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 112
    .line 113
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 114
    .line 115
    .line 116
    throw v2

    .line 117
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 118
    .line 119
    const-string v2, "Wrong password!"

    .line 120
    .line 121
    invoke-direct {v0, v2, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    throw v0

    .line 125
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    const-string v2, "Invalid CRC in File Header"

    .line 128
    .line 129
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 134
    .line 135
    const-string v2, "one of more of the input parameters were null in StandardDecryptor"

    .line 136
    .line 137
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :catch_1
    move-exception v0

    .line 142
    goto :goto_2

    .line 143
    :catch_2
    move-exception v0

    .line 144
    goto :goto_3

    .line 145
    :goto_2
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 146
    .line 147
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 148
    .line 149
    .line 150
    throw v2

    .line 151
    :goto_3
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 152
    .line 153
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 154
    .line 155
    .line 156
    throw v2

    .line 157
    :cond_5
    const/16 v9, 0x63

    .line 158
    .line 159
    if-ne v3, v9, :cond_12

    .line 160
    .line 161
    new-instance v3, Lnet/lingala/zip4j/crypto/AESDecrypter;

    .line 162
    .line 163
    iget-object v9, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->q:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    .line 164
    .line 165
    const/4 v10, 0x0

    .line 166
    const/16 v11, 0x10

    .line 167
    .line 168
    const/4 v12, 0x1

    .line 169
    const/16 v13, 0x8

    .line 170
    .line 171
    const/4 v14, 0x2

    .line 172
    if-nez v9, :cond_6

    .line 173
    .line 174
    move-object v9, v10

    .line 175
    goto :goto_5

    .line 176
    :cond_6
    :try_start_2
    iget v9, v9, Lnet/lingala/zip4j/model/AESExtraDataRecord;->e:I

    .line 177
    .line 178
    if-eq v9, v12, :cond_9

    .line 179
    .line 180
    if-eq v9, v14, :cond_8

    .line 181
    .line 182
    if-ne v9, v6, :cond_7

    .line 183
    .line 184
    move v9, v11

    .line 185
    goto :goto_4

    .line 186
    :cond_7
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 187
    .line 188
    const-string v2, "unable to determine salt length: invalid aes key strength"

    .line 189
    .line 190
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v0

    .line 194
    :cond_8
    move v9, v8

    .line 195
    goto :goto_4

    .line 196
    :cond_9
    move v9, v13

    .line 197
    :goto_4
    new-array v9, v9, [B

    .line 198
    .line 199
    iget-wide v4, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->l:J

    .line 200
    .line 201
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 205
    .line 206
    .line 207
    :goto_5
    :try_start_3
    new-array v4, v14, [B

    .line 208
    .line 209
    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 210
    .line 211
    .line 212
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 213
    .line 214
    .line 215
    iput v12, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->j:I

    .line 216
    .line 217
    iput v7, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->m:I

    .line 218
    .line 219
    iput-object v10, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->i:[B

    .line 220
    .line 221
    new-array v0, v11, [B

    .line 222
    .line 223
    iput-object v0, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->k:[B

    .line 224
    .line 225
    new-array v0, v11, [B

    .line 226
    .line 227
    iput-object v0, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->l:[B

    .line 228
    .line 229
    iget-object v0, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->q:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    .line 230
    .line 231
    if-eqz v0, :cond_11

    .line 232
    .line 233
    iget v0, v0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->e:I

    .line 234
    .line 235
    if-eq v0, v12, :cond_c

    .line 236
    .line 237
    if-eq v0, v14, :cond_b

    .line 238
    .line 239
    if-ne v0, v6, :cond_a

    .line 240
    .line 241
    const/16 v0, 0x20

    .line 242
    .line 243
    iput v0, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->c:I

    .line 244
    .line 245
    iput v0, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->d:I

    .line 246
    .line 247
    iput v11, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->e:I

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_a
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 251
    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    const-string v4, "invalid aes key strength for file: "

    .line 255
    .line 256
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object v2, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->k:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v0

    .line 272
    :cond_b
    const/16 v15, 0x18

    .line 273
    .line 274
    iput v15, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->c:I

    .line 275
    .line 276
    iput v15, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->d:I

    .line 277
    .line 278
    iput v8, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->e:I

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_c
    iput v11, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->c:I

    .line 282
    .line 283
    iput v11, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->d:I

    .line 284
    .line 285
    iput v13, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->e:I

    .line 286
    .line 287
    :goto_6
    iget-object v0, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->o:[C

    .line 288
    .line 289
    if-eqz v0, :cond_10

    .line 290
    .line 291
    array-length v5, v0

    .line 292
    if-lez v5, :cond_10

    .line 293
    .line 294
    :try_start_4
    new-instance v5, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    .line 295
    .line 296
    invoke-direct {v5, v9}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;-><init>([B)V

    .line 297
    .line 298
    .line 299
    new-instance v6, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;

    .line 300
    .line 301
    invoke-direct {v6, v5}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;-><init>(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;)V

    .line 302
    .line 303
    .line 304
    iget v5, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->c:I

    .line 305
    .line 306
    iget v8, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->d:I

    .line 307
    .line 308
    add-int/2addr v5, v8

    .line 309
    add-int/2addr v5, v14

    .line 310
    invoke-virtual {v6, v0, v5}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->a([CI)[B

    .line 311
    .line 312
    .line 313
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 314
    array-length v5, v0

    .line 315
    iget v6, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->c:I

    .line 316
    .line 317
    iget v8, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->d:I

    .line 318
    .line 319
    add-int v9, v6, v8

    .line 320
    .line 321
    add-int/2addr v9, v14

    .line 322
    if-ne v5, v9, :cond_f

    .line 323
    .line 324
    new-array v5, v6, [B

    .line 325
    .line 326
    iput-object v5, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->f:[B

    .line 327
    .line 328
    new-array v8, v8, [B

    .line 329
    .line 330
    iput-object v8, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->g:[B

    .line 331
    .line 332
    new-array v8, v14, [B

    .line 333
    .line 334
    iput-object v8, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->h:[B

    .line 335
    .line 336
    invoke-static {v0, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    .line 338
    .line 339
    iget v5, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->c:I

    .line 340
    .line 341
    iget-object v6, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->g:[B

    .line 342
    .line 343
    iget v8, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->d:I

    .line 344
    .line 345
    invoke-static {v0, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    .line 347
    .line 348
    iget v5, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->c:I

    .line 349
    .line 350
    iget v6, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->d:I

    .line 351
    .line 352
    add-int/2addr v5, v6

    .line 353
    iget-object v6, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->h:[B

    .line 354
    .line 355
    invoke-static {v0, v5, v6, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    .line 357
    .line 358
    iget-object v0, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->h:[B

    .line 359
    .line 360
    if-eqz v0, :cond_e

    .line 361
    .line 362
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-eqz v0, :cond_d

    .line 367
    .line 368
    new-instance v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;

    .line 369
    .line 370
    iget-object v2, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->f:[B

    .line 371
    .line 372
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/crypto/engine/AESEngine;-><init>([B)V

    .line 373
    .line 374
    .line 375
    iput-object v0, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->a:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    .line 376
    .line 377
    new-instance v0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 378
    .line 379
    invoke-direct {v0}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;-><init>()V

    .line 380
    .line 381
    .line 382
    iput-object v0, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->b:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 383
    .line 384
    iget-object v2, v3, Lnet/lingala/zip4j/crypto/AESDecrypter;->g:[B

    .line 385
    .line 386
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->a([B)V

    .line 387
    .line 388
    .line 389
    iput-object v3, v1, Lnet/lingala/zip4j/unzip/UnzipEngine;->e:Lnet/lingala/zip4j/crypto/IDecrypter;

    .line 390
    .line 391
    return-void

    .line 392
    :cond_d
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 393
    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    const-string v4, "Wrong Password for file: "

    .line 397
    .line 398
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    iget-object v2, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->k:Ljava/lang/String;

    .line 402
    .line 403
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    const/4 v3, 0x5

    .line 411
    invoke-direct {v0, v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    .line 412
    .line 413
    .line 414
    throw v0

    .line 415
    :cond_e
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 416
    .line 417
    const-string v2, "invalid derived password verifier for AES"

    .line 418
    .line 419
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    throw v0

    .line 423
    :cond_f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 424
    .line 425
    const-string v2, "invalid derived key"

    .line 426
    .line 427
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    throw v0

    .line 431
    :catch_3
    move-exception v0

    .line 432
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 433
    .line 434
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 435
    .line 436
    .line 437
    throw v2

    .line 438
    :cond_10
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 439
    .line 440
    const-string v2, "empty or null password provided for AES Decryptor"

    .line 441
    .line 442
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw v0

    .line 446
    :cond_11
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 447
    .line 448
    const-string v2, "invalid aes extra data record - in init method of AESDecryptor"

    .line 449
    .line 450
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw v0

    .line 454
    :catch_4
    move-exception v0

    .line 455
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 456
    .line 457
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 458
    .line 459
    .line 460
    throw v2

    .line 461
    :catch_5
    move-exception v0

    .line 462
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 463
    .line 464
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 465
    .line 466
    .line 467
    throw v2

    .line 468
    :cond_12
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 469
    .line 470
    const-string v2, "unsupported encryption method"

    .line 471
    .line 472
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    throw v0

    .line 476
    :cond_13
    return-void

    .line 477
    :cond_14
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 478
    .line 479
    const-string v2, "local file header is null, cannot init decrypter"

    .line 480
    .line 481
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    throw v0
.end method

.method public final g()Ljava/io/RandomAccessFile;
    .locals 6

    .line 1
    const-string v0, "zip split file does not exist: "

    .line 2
    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    .line 4
    .line 5
    iget-object v2, v1, Lnet/lingala/zip4j/model/ZipModel;->l:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->c:I

    .line 8
    .line 9
    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 10
    .line 11
    iget v1, v1, Lnet/lingala/zip4j/model/EndCentralDirRecord;->b:I

    .line 12
    .line 13
    if-ne v3, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v1, 0x9

    .line 17
    .line 18
    const-string v4, "."

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    if-lt v3, v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ".z"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->c:I

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v2, ".z0"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->c:I

    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    :goto_0
    iget v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->c:I

    .line 89
    .line 90
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    iput v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->c:I

    .line 93
    .line 94
    :try_start_0
    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->a(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v1
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 101
    .line 102
    const-string v1, "r"

    .line 103
    .line 104
    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    .line 109
    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v1
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Ljava/io/IOException;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v1
.end method
