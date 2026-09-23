.class public Lnet/lingala/zip4j/util/ArchiveMaintainer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v2, p2, v0

    .line 6
    .line 7
    if-ltz v2, :cond_9

    .line 8
    .line 9
    cmp-long v2, p4, v0

    .line 10
    .line 11
    if-ltz v2, :cond_8

    .line 12
    .line 13
    cmp-long v2, p2, p4

    .line 14
    .line 15
    if-gtz v2, :cond_7

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-boolean v2, p6, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x3

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iput v4, p6, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:I

    .line 27
    .line 28
    iput v3, p6, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 32
    .line 33
    .line 34
    sub-long/2addr p4, p2

    .line 35
    const-wide/16 p2, 0x1000

    .line 36
    .line 37
    cmp-long p2, p4, p2

    .line 38
    .line 39
    if-gez p2, :cond_2

    .line 40
    .line 41
    long-to-int p2, p4

    .line 42
    new-array p2, p2, [B

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/16 p2, 0x1000

    .line 46
    .line 47
    new-array p2, p2, [B

    .line 48
    .line 49
    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    const/4 v2, -0x1

    .line 54
    if-eq p3, v2, :cond_6

    .line 55
    .line 56
    invoke-virtual {p1, p2, v3, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 57
    .line 58
    .line 59
    int-to-long v5, p3

    .line 60
    iget-wide v7, p6, Lnet/lingala/zip4j/progress/ProgressMonitor;->b:J

    .line 61
    .line 62
    add-long/2addr v7, v5

    .line 63
    iput-wide v7, p6, Lnet/lingala/zip4j/progress/ProgressMonitor;->b:J

    .line 64
    .line 65
    iget-boolean p3, p6, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    .line 66
    .line 67
    if-eqz p3, :cond_4

    .line 68
    .line 69
    iput v4, p6, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:I

    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    add-long/2addr v0, v5

    .line 73
    cmp-long p3, v0, p4

    .line 74
    .line 75
    if-nez p3, :cond_5

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    array-length p3, p2

    .line 79
    int-to-long v5, p3

    .line 80
    add-long/2addr v5, v0

    .line 81
    cmp-long p3, v5, p4

    .line 82
    .line 83
    if-lez p3, :cond_3

    .line 84
    .line 85
    sub-long p2, p4, v0

    .line 86
    .line 87
    long-to-int p2, p2

    .line 88
    new-array p2, p2, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    :goto_1
    return-void

    .line 92
    :catch_0
    move-exception p0

    .line 93
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 94
    .line 95
    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :catch_1
    move-exception p0

    .line 100
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 101
    .line 102
    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_7
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 107
    .line 108
    const-string p1, "start offset is greater than end offset, cannot copy file"

    .line 109
    .line 110
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0

    .line 114
    :cond_8
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 115
    .line 116
    const-string p1, "end offset is negative, cannot copy file"

    .line 117
    .line 118
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_9
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 123
    .line 124
    const-string p1, "starting offset is negative, cannot copy file"

    .line 125
    .line 126
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :cond_a
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 131
    .line 132
    const-string p1, "input or output stream is null, cannot copy file"

    .line 133
    .line 134
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0
.end method

.method public static b(Lnet/lingala/zip4j/model/ZipModel;)Ljava/io/RandomAccessFile;
    .locals 3

    .line 1
    const-string v0, "r"

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lnet/lingala/zip4j/model/ZipModel;->l:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->l(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 14
    .line 15
    new-instance v2, Ljava/io/File;

    .line 16
    .line 17
    iget-object p0, p0, Lnet/lingala/zip4j/model/ZipModel;->l:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :catch_0
    move-exception p0

    .line 27
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_0
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 34
    .line 35
    const-string v0, "input parameter is null in getFilePointer, cannot create file handler to remove file"

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public static c(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    const-string v8, "cannot close input stream or output stream when trying to delete a file from zip file"

    if-eqz v0, :cond_15

    .line 2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3
    :try_start_0
    invoke-static/range {p0 .. p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->j(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)I

    move-result v12

    if-ltz v12, :cond_11

    .line 4
    iget-boolean v2, v0, Lnet/lingala/zip4j/model/ZipModel;->j:Z

    if-nez v2, :cond_10

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    iget-object v5, v0, Lnet/lingala/zip4j/model/ZipModel;->l:Ljava/lang/String;

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    rem-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_23
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 9
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_21
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    move-object v13, v2

    .line 10
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1c
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    if-eqz v2, :cond_0

    .line 11
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    iget-object v7, v0, Lnet/lingala/zip4j/model/ZipModel;->l:Ljava/lang/String;

    .line 14
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 15
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_21

    :catch_0
    move-exception v0

    move-object/from16 v7, p2

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    goto/16 :goto_1f

    :catch_1
    move-exception v0

    move-object/from16 v7, p2

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    goto/16 :goto_20

    .line 16
    :cond_0
    :try_start_4
    new-instance v2, Lnet/lingala/zip4j/io/SplitOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v14, -0x1

    .line 17
    invoke-direct {v2, v3, v14, v15}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1e
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1c
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    .line 18
    :try_start_5
    new-instance v3, Ljava/io/File;

    .line 19
    iget-object v4, v0, Lnet/lingala/zip4j/model/ZipModel;->l:Ljava/lang/String;

    .line 20
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_5 .. :try_end_5} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1a
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    .line 21
    :try_start_6
    invoke-static {v0}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->b(Lnet/lingala/zip4j/model/ZipModel;)Ljava/io/RandomAccessFile;

    move-result-object v4
    :try_end_6
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_6 .. :try_end_6} :catch_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_18
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    .line 22
    :try_start_7
    new-instance v5, Lnet/lingala/zip4j/core/HeaderReader;

    invoke-direct {v5, v4}, Lnet/lingala/zip4j/core/HeaderReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 23
    invoke-virtual {v5, v1}, Lnet/lingala/zip4j/core/HeaderReader;->g(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 24
    iget-wide v5, v1, Lnet/lingala/zip4j/model/FileHeader;->o:J

    .line 25
    iget-object v1, v1, Lnet/lingala/zip4j/model/FileHeader;->u:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    :try_end_7
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_7 .. :try_end_7} :catch_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_16
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    if-eqz v1, :cond_1

    move-wide/from16 v16, v14

    .line 26
    :try_start_8
    iget-wide v14, v1, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c:J
    :try_end_8
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    cmp-long v1, v14, v16

    if-eqz v1, :cond_2

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_1
    move-object v11, v4

    :goto_2
    const/4 v10, 0x0

    goto/16 :goto_21

    :catch_2
    move-exception v0

    move-object/from16 v7, p2

    move-object v11, v2

    move-object/from16 v18, v3

    move-object v1, v4

    :goto_3
    const/4 v10, 0x0

    goto/16 :goto_1f

    :catch_3
    move-exception v0

    move-object/from16 v7, p2

    move-object v11, v2

    move-object/from16 v18, v3

    move-object v1, v4

    :goto_4
    const/4 v10, 0x0

    goto/16 :goto_20

    :cond_1
    move-wide/from16 v16, v14

    :cond_2
    move-wide v14, v5

    .line 27
    :goto_5
    :try_start_9
    iget-object v1, v0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 28
    iget-wide v5, v1, Lnet/lingala/zip4j/model/EndCentralDirRecord;->e:J

    .line 29
    iget-boolean v1, v0, Lnet/lingala/zip4j/model/ZipModel;->m:Z
    :try_end_9
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_9 .. :try_end_9} :catch_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_16
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    if-eqz v1, :cond_3

    .line 30
    :try_start_a
    iget-object v1, v0, Lnet/lingala/zip4j/model/ZipModel;->i:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    if-eqz v1, :cond_3

    .line 31
    iget-wide v5, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->d:J
    :try_end_a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 32
    :cond_3
    :try_start_b
    iget-object v1, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 33
    iget-object v1, v1, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v18, 0x0

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    const-wide/16 v19, 0x1

    if-ne v12, v7, :cond_4

    sub-long v21, v5, v19

    move-object/from16 v23, v1

    move-wide/from16 v10, v21

    :goto_6
    move-object/from16 v22, v2

    goto :goto_9

    :cond_4
    add-int/lit8 v7, v12, 0x1

    .line 35
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/lingala/zip4j/model/FileHeader;
    :try_end_b
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_16
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    if-eqz v7, :cond_6

    .line 36
    :try_start_c
    iget-wide v10, v7, Lnet/lingala/zip4j/model/FileHeader;->o:J

    sub-long v10, v10, v19

    .line 37
    iget-object v7, v7, Lnet/lingala/zip4j/model/FileHeader;->u:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    :try_end_c
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v7, :cond_5

    move-object/from16 v23, v1

    move-object/from16 v22, v2

    .line 38
    :try_start_d
    iget-wide v1, v7, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c:J
    :try_end_d
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    cmp-long v7, v1, v16

    if-eqz v7, :cond_7

    sub-long v1, v1, v19

    move-wide v10, v1

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v11, v4

    move-object/from16 v2, v22

    goto :goto_2

    :catch_4
    move-exception v0

    :goto_7
    move-object/from16 v7, p2

    move-object/from16 v18, v3

    move-object v1, v4

    move-object/from16 v11, v22

    goto :goto_3

    :catch_5
    move-exception v0

    :goto_8
    move-object/from16 v7, p2

    move-object/from16 v18, v3

    move-object v1, v4

    move-object/from16 v11, v22

    goto :goto_4

    :cond_5
    move-object/from16 v23, v1

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v22, v2

    goto :goto_1

    :catch_6
    move-exception v0

    move-object/from16 v22, v2

    goto :goto_7

    :catch_7
    move-exception v0

    move-object/from16 v22, v2

    goto :goto_8

    :cond_6
    move-object/from16 v23, v1

    move-object/from16 v22, v2

    move-wide/from16 v10, v16

    :cond_7
    :goto_9
    const-wide/16 v1, 0x0

    cmp-long v7, v14, v1

    if-ltz v7, :cond_f

    cmp-long v1, v10, v1

    if-ltz v1, :cond_f

    if-nez v12, :cond_9

    .line 39
    :try_start_e
    iget-object v1, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 40
    iget-object v1, v1, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_e
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    const/4 v2, 0x1

    if-le v1, v2, :cond_8

    add-long v1, v10, v19

    move-object/from16 v7, p2

    move-wide/from16 v24, v10

    move-object v10, v3

    move-wide/from16 v28, v1

    move-object v1, v4

    move-wide/from16 v3, v28

    move-object/from16 v2, v22

    .line 42
    :try_start_f
    invoke-static/range {v1 .. v7}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->a(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    move-object/from16 v7, p2

    goto/16 :goto_11

    :catchall_4
    move-exception v0

    move-object v11, v1

    move-object v3, v10

    goto/16 :goto_2

    :catch_8
    move-exception v0

    :goto_a
    move-object/from16 v7, p2

    :goto_b
    move-object v11, v2

    :goto_c
    move-object/from16 v18, v10

    goto/16 :goto_3

    :catch_9
    move-exception v0

    :goto_d
    move-object/from16 v7, p2

    :goto_e
    move-object v11, v2

    :goto_f
    move-object/from16 v18, v10

    goto/16 :goto_4

    :cond_8
    move-wide/from16 v24, v10

    move-object v10, v3

    move-object/from16 v7, p2

    move-object v1, v4

    move-object/from16 v2, v22

    goto :goto_11

    :catchall_5
    move-exception v0

    move-object v10, v3

    move-object v1, v4

    move-object/from16 v2, v22

    :goto_10
    move-object v11, v1

    goto/16 :goto_2

    :catch_a
    move-exception v0

    move-object v10, v3

    move-object v1, v4

    move-object/from16 v2, v22

    goto :goto_a

    :catch_b
    move-exception v0

    move-object v10, v3

    move-object v1, v4

    move-object/from16 v2, v22

    goto :goto_d

    :cond_9
    move-object v1, v4

    move-wide/from16 v26, v5

    move-wide/from16 v24, v10

    move-object/from16 v2, v22

    move-object v10, v3

    .line 43
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v12, v3, :cond_a

    const-wide/16 v3, 0x0

    move-object/from16 v7, p2

    move-wide v5, v14

    .line 44
    invoke-static/range {v1 .. v7}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->a(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V
    :try_end_f
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-object/from16 v7, p2

    move-wide v14, v5

    goto :goto_11

    :cond_a
    move-wide v5, v14

    const-wide/16 v3, 0x0

    move-object/from16 v7, p2

    .line 45
    :try_start_10
    invoke-static/range {v1 .. v7}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->a(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    add-long v3, v24, v19

    move-object/from16 v7, p2

    move-wide/from16 v5, v26

    .line 46
    invoke-static/range {v1 .. v7}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->a(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 47
    :goto_11
    iget-boolean v3, v7, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z
    :try_end_10
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_10 .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    if-eqz v3, :cond_b

    const/4 v0, 0x3

    .line 48
    :try_start_11
    iput v0, v7, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:I
    :try_end_11
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_11 .. :try_end_11} :catch_10
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    const/4 v3, 0x0

    .line 49
    :try_start_12
    iput v3, v7, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:I
    :try_end_12
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_12 .. :try_end_12} :catch_e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 50
    :try_start_13
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 51
    invoke-virtual {v2}, Lnet/lingala/zip4j/io/SplitOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v18

    .line 54
    :catch_c
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_6
    move-exception v0

    :goto_12
    move-object v11, v10

    move v10, v3

    move-object v3, v11

    :goto_13
    move-object v11, v1

    goto/16 :goto_21

    :catch_d
    move-exception v0

    :goto_14
    move-object v11, v2

    move-object/from16 v18, v10

    move v10, v3

    goto/16 :goto_1f

    :catch_e
    move-exception v0

    :goto_15
    move-object v11, v2

    move-object/from16 v18, v10

    move v10, v3

    goto/16 :goto_20

    :catchall_7
    move-exception v0

    const/4 v3, 0x0

    goto :goto_12

    :catch_f
    move-exception v0

    const/4 v3, 0x0

    goto :goto_14

    :catch_10
    move-exception v0

    const/4 v3, 0x0

    goto :goto_15

    :cond_b
    const/4 v3, 0x0

    .line 55
    :try_start_14
    iget-object v4, v0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 56
    iget-object v5, v2, Lnet/lingala/zip4j/io/SplitOutputStream;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    .line 57
    iput-wide v5, v4, Lnet/lingala/zip4j/model/EndCentralDirRecord;->e:J

    .line 58
    iget-object v4, v0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 59
    iget v5, v4, Lnet/lingala/zip4j/model/EndCentralDirRecord;->d:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 60
    iput v5, v4, Lnet/lingala/zip4j/model/EndCentralDirRecord;->d:I

    .line 61
    iget-object v4, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 62
    iget-object v4, v4, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 64
    :goto_16
    iget-object v4, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 65
    iget-object v4, v4, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_e

    .line 67
    iget-object v4, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 68
    iget-object v4, v4, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/lingala/zip4j/model/FileHeader;

    .line 70
    iget-wide v4, v4, Lnet/lingala/zip4j/model/FileHeader;->o:J

    .line 71
    iget-object v11, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 72
    iget-object v11, v11, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/lingala/zip4j/model/FileHeader;

    .line 74
    iget-object v11, v11, Lnet/lingala/zip4j/model/FileHeader;->u:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    if-eqz v11, :cond_c

    .line 75
    iget-object v11, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 76
    iget-object v11, v11, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/lingala/zip4j/model/FileHeader;

    .line 78
    iget-object v11, v11, Lnet/lingala/zip4j/model/FileHeader;->u:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-wide/from16 v22, v4

    .line 79
    iget-wide v3, v11, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c:J

    cmp-long v3, v3, v16

    if-eqz v3, :cond_d

    .line 80
    iget-object v3, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 81
    iget-object v3, v3, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/lingala/zip4j/model/FileHeader;

    .line 83
    iget-object v3, v3, Lnet/lingala/zip4j/model/FileHeader;->u:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    .line 84
    iget-wide v4, v3, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c:J

    goto :goto_17

    :catch_11
    move-exception v0

    goto/16 :goto_b

    :catch_12
    move-exception v0

    goto/16 :goto_e

    :cond_c
    move-wide/from16 v22, v4

    :cond_d
    move-wide/from16 v4, v22

    .line 85
    :goto_17
    iget-object v3, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 86
    iget-object v3, v3, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/lingala/zip4j/model/FileHeader;

    sub-long v22, v24, v14

    sub-long v4, v4, v22

    sub-long v4, v4, v19

    .line 88
    iput-wide v4, v3, Lnet/lingala/zip4j/model/FileHeader;->o:J

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_16

    .line 89
    :cond_e
    invoke-static {v0, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->d(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    :try_end_14
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_14 .. :try_end_14} :catch_12
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 90
    :try_start_15
    const-string v3, "offsetCentralDir"

    .line 91
    iget-object v0, v0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 92
    iget-wide v4, v0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->e:J

    .line 93
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {v9, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_15 .. :try_end_15} :catch_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_14
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 95
    :try_start_16
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 96
    invoke-virtual {v2}, Lnet/lingala/zip4j/io/SplitOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_13

    .line 97
    invoke-static {v10, v13}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->d(Ljava/io/File;Ljava/lang/String;)V

    return-object v9

    .line 98
    :catch_13
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_8
    move-exception v0

    move-object v11, v1

    move-object v3, v10

    move v10, v6

    goto/16 :goto_21

    :catch_14
    move-exception v0

    move-object v11, v2

    move-object/from16 v18, v10

    move v10, v6

    goto/16 :goto_1f

    :catch_15
    move-exception v0

    move-object v11, v2

    move-object/from16 v18, v10

    move v10, v6

    goto/16 :goto_20

    :cond_f
    move-object/from16 v7, p2

    move-object v10, v3

    move-object v1, v4

    move-object/from16 v2, v22

    .line 99
    :try_start_17
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "invalid offset for start and end of local file, cannot remove file"

    invoke-direct {v0, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_17 .. :try_end_17} :catch_12
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :catchall_9
    move-exception v0

    move-object v10, v3

    move-object v1, v4

    goto/16 :goto_10

    :catch_16
    move-exception v0

    move-object/from16 v7, p2

    move-object v10, v3

    move-object v1, v4

    goto/16 :goto_b

    :catch_17
    move-exception v0

    move-object/from16 v7, p2

    move-object v10, v3

    move-object v1, v4

    goto/16 :goto_e

    :catchall_a
    move-exception v0

    move-object v10, v3

    const/16 v18, 0x0

    move-object/from16 v11, v18

    goto/16 :goto_2

    :catch_18
    move-exception v0

    move-object/from16 v7, p2

    move-object v10, v3

    const/16 v18, 0x0

    move-object v11, v2

    move-object/from16 v1, v18

    goto/16 :goto_c

    :catch_19
    move-exception v0

    move-object/from16 v7, p2

    move-object v10, v3

    const/16 v18, 0x0

    move-object v11, v2

    move-object/from16 v1, v18

    goto/16 :goto_f

    :catchall_b
    move-exception v0

    const/16 v18, 0x0

    move-object/from16 v3, v18

    :goto_18
    move-object v11, v3

    goto/16 :goto_2

    :catch_1a
    move-exception v0

    move-object/from16 v7, p2

    const/16 v18, 0x0

    move-object v11, v2

    move-object/from16 v1, v18

    goto/16 :goto_3

    :catch_1b
    move-exception v0

    move-object/from16 v7, p2

    const/16 v18, 0x0

    move-object v11, v2

    move-object/from16 v1, v18

    goto/16 :goto_4

    :catchall_c
    move-exception v0

    const/16 v18, 0x0

    :goto_19
    move-object/from16 v2, v18

    move-object v3, v2

    goto :goto_18

    :catch_1c
    move-exception v0

    move-object/from16 v7, p2

    const/16 v18, 0x0

    :goto_1a
    move-object/from16 v1, v18

    move-object v11, v1

    goto/16 :goto_3

    :catch_1d
    move-exception v0

    move-object/from16 v7, p2

    const/16 v18, 0x0

    :goto_1b
    move-object/from16 v1, v18

    move-object v11, v1

    goto/16 :goto_4

    :catch_1e
    move-exception v0

    move-object/from16 v7, p2

    const/16 v18, 0x0

    .line 100
    :try_start_18
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_18
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_18 .. :try_end_18} :catch_20
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1f
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    :catchall_d
    move-exception v0

    goto :goto_19

    :catch_1f
    move-exception v0

    goto :goto_1a

    :catch_20
    move-exception v0

    goto :goto_1b

    :catchall_e
    move-exception v0

    const/16 v18, 0x0

    move-object v13, v2

    goto :goto_19

    :catch_21
    move-exception v0

    move-object/from16 v7, p2

    const/16 v18, 0x0

    move-object v13, v2

    goto :goto_1a

    :catch_22
    move-exception v0

    move-object/from16 v7, p2

    const/16 v18, 0x0

    move-object v13, v2

    goto :goto_1b

    :catchall_f
    move-exception v0

    const/16 v18, 0x0

    :goto_1c
    move-object/from16 v2, v18

    move-object v3, v2

    move-object v11, v3

    move-object v13, v11

    goto/16 :goto_2

    :catch_23
    move-exception v0

    move-object/from16 v7, p2

    const/16 v18, 0x0

    :goto_1d
    move-object/from16 v1, v18

    move-object v11, v1

    move-object v13, v11

    goto/16 :goto_3

    :catch_24
    move-exception v0

    move-object/from16 v7, p2

    const/16 v18, 0x0

    :goto_1e
    move-object/from16 v1, v18

    move-object v11, v1

    move-object v13, v11

    goto/16 :goto_4

    :cond_10
    move-object/from16 v7, p2

    const/16 v18, 0x0

    .line 101
    :try_start_19
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_10
    move-exception v0

    goto :goto_1c

    :catch_25
    move-exception v0

    goto :goto_1d

    :catch_26
    move-exception v0

    goto :goto_1e

    :cond_11
    move-object/from16 v7, p2

    const/16 v18, 0x0

    .line 102
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file header not found in zip model, cannot remove file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_19 .. :try_end_19} :catch_26
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_25
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    .line 103
    :goto_1f
    :try_start_1a
    invoke-virtual {v7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a()V

    .line 104
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :catchall_11
    move-exception v0

    move-object v2, v11

    move-object/from16 v3, v18

    goto/16 :goto_13

    .line 105
    :goto_20
    invoke-virtual {v7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a()V

    .line 106
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_11

    :goto_21
    if-eqz v11, :cond_12

    .line 107
    :try_start_1b
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    :cond_12
    if-eqz v2, :cond_13

    .line 108
    invoke-virtual {v2}, Lnet/lingala/zip4j/io/SplitOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_27

    goto :goto_22

    .line 109
    :catch_27
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_22
    if-eqz v10, :cond_14

    .line 110
    invoke-static {v3, v13}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->d(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_23

    .line 111
    :cond_14
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 113
    :goto_23
    throw v0

    .line 114
    :cond_15
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input parameters is null in maintain zip file, cannot remove file from archive"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 20
    .line 21
    const-string p1, "cannot rename modified zip file"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 28
    .line 29
    const-string p1, "cannot delete old zip file"

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method
