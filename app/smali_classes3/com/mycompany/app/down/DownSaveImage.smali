.class public Lcom/mycompany/app/down/DownSaveImage;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;IZJIILcom/mycompany/app/main/MainDownSvc$DownImageListener;)V
    .locals 20

    move-object/from16 v6, p1

    move/from16 v7, p3

    .line 1
    const-string v8, "/"

    if-eqz v6, :cond_1d

    if-ltz v7, :cond_1d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_0

    goto/16 :goto_16

    .line 2
    :cond_0
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/mycompany/app/main/MainDownSvc$ImageItem;

    if-nez v9, :cond_1

    goto/16 :goto_16

    .line 3
    :cond_1
    iget-object v0, v9, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v9, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move/from16 v4, p4

    move-object/from16 v12, p9

    move-object v7, v6

    goto/16 :goto_15

    :cond_3
    const/4 v10, 0x1

    .line 4
    iput v10, v9, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->g:I

    .line 5
    iget-object v3, v9, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->a:Ljava/lang/String;

    iget-object v4, v9, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    move v1, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-nez v0, :cond_5

    .line 6
    invoke-interface/range {p9 .. p9}, Lcom/mycompany/app/main/MainDownSvc$DownImageListener;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_16

    :cond_4
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v8, p8

    move-object/from16 v12, p9

    move-object v1, v6

    move-wide/from16 v5, p5

    .line 7
    invoke-static/range {v0 .. v12}, Lcom/mycompany/app/down/DownSaveImage;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;IZJIILcom/mycompany/app/main/MainDownSvc$ImageItem;Ljava/lang/String;ZLcom/mycompany/app/main/MainDownSvc$DownImageListener;)V

    return-void

    :cond_5
    move-object/from16 v2, p0

    move-object/from16 v12, p9

    move-object v13, v9

    move v9, v7

    const/4 v4, 0x0

    .line 8
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    move-object/from16 v14, p2

    .line 9
    :try_start_1
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v6, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 14
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 15
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 16
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->s3(I)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    if-ne v6, v1, :cond_6

    add-int/lit8 v6, p7, 0x1

    move v1, v4

    :goto_0
    move/from16 v16, v11

    const/4 v3, 0x0

    const/4 v15, 0x0

    move/from16 v11, p8

    goto/16 :goto_8

    :cond_6
    const/4 v15, 0x2

    if-ne v6, v15, :cond_8

    .line 17
    :try_start_3
    const-string v6, "Location"

    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-static {v6}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v15, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->a:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    move-object v10, v6

    goto :goto_5

    :catch_0
    move v1, v4

    :goto_1
    move/from16 v16, v11

    :goto_2
    const/4 v6, 0x0

    :goto_3
    const/4 v15, 0x0

    :goto_4
    move/from16 v11, p8

    goto/16 :goto_a

    :cond_7
    :goto_5
    move v1, v4

    move v6, v1

    goto :goto_0

    .line 19
    :cond_8
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 20
    :try_start_4
    invoke-static {v5, v4}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    const/16 v3, 0x400

    .line 21
    :try_start_5
    new-array v10, v3, [B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move/from16 v16, v11

    move/from16 v11, p8

    .line 22
    :goto_6
    :try_start_6
    invoke-interface {v12}, Lcom/mycompany/app/main/MainDownSvc$DownImageListener;->isRunning()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual {v6, v10, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    .line 23
    :try_start_7
    invoke-virtual {v15, v10, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move v11, v4

    const/4 v1, 0x1

    const/16 v3, 0x400

    const/16 v16, 0x1

    goto :goto_6

    :catch_1
    move v1, v4

    move v11, v1

    const/16 v16, 0x1

    goto :goto_a

    :catch_2
    move v11, v4

    const/16 v16, 0x1

    goto :goto_7

    :catch_3
    move v1, v4

    goto :goto_a

    .line 24
    :catch_4
    :cond_9
    :goto_7
    :try_start_8
    invoke-interface {v12}, Lcom/mycompany/app/main/MainDownSvc$DownImageListener;->isRunning()Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-object v3, v6

    const/4 v10, 0x0

    move v6, v4

    :goto_8
    move v7, v6

    goto :goto_b

    :catch_5
    move v1, v4

    move/from16 v16, v11

    goto :goto_4

    :catch_6
    move v1, v4

    move/from16 v16, v11

    goto :goto_3

    :catch_7
    move/from16 v1, p7

    goto :goto_1

    :catch_8
    :goto_9
    move/from16 v1, p7

    move/from16 v16, v11

    const/4 v5, 0x0

    goto :goto_2

    :catch_9
    move-object/from16 v14, p2

    goto :goto_9

    :goto_a
    move v7, v1

    move v1, v4

    move-object v3, v6

    const/4 v10, 0x0

    :goto_b
    if-eqz v15, :cond_a

    .line 25
    :try_start_9
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    :catch_a
    :cond_a
    if-eqz v3, :cond_b

    .line 26
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    .line 27
    :catch_b
    :cond_b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v1, :cond_19

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v18, 0x0

    cmp-long v3, v0, v18

    if-lez v3, :cond_c

    const/4 v3, 0x1

    goto :goto_c

    :cond_c
    move v3, v4

    :goto_c
    if-eqz v3, :cond_e

    .line 29
    iget-object v3, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->c:Ljava/lang/String;

    iget-object v6, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->e:Ljava/lang/String;

    .line 30
    iget-object v15, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->d:Ljava/lang/String;

    invoke-static {v2, v3, v15, v6}, Lcom/mycompany/app/main/MainUri;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 31
    iget-object v6, v3, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    invoke-static {v2, v5, v6}, Lcom/mycompany/app/main/MainUtil;->w6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    move v15, v5

    goto :goto_d

    :cond_d
    move v15, v4

    goto :goto_d

    :cond_e
    move v15, v3

    const/4 v3, 0x0

    :goto_d
    if-eqz v15, :cond_18

    .line 32
    iget-boolean v5, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->f:Z

    if-eqz v5, :cond_13

    .line 33
    iget-object v5, v3, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    iget-object v6, v3, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 34
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G5(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    move/from16 p7, v7

    goto :goto_e

    :cond_10
    const/16 v5, 0x2e

    .line 35
    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    move/from16 p7, v7

    if-lez v5, :cond_11

    .line 36
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_11

    .line 37
    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 38
    :cond_11
    const-string v4, ".gif"

    .line 39
    invoke-static {v6, v4}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :goto_e
    const/4 v4, 0x0

    .line 40
    :goto_f
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 41
    iget-object v5, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->c:Ljava/lang/String;

    iget-object v6, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->d:Ljava/lang/String;

    invoke-static {v2, v5, v6, v4}, Lcom/mycompany/app/main/MainUri;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 42
    iget-object v5, v3, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    iget-object v6, v4, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v2, v5, v6, v7, v7}, Lcom/mycompany/app/main/MainUri;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v5

    if-nez v5, :cond_14

    :cond_12
    :goto_10
    const/4 v4, 0x0

    goto :goto_11

    :cond_13
    move/from16 p7, v7

    goto :goto_10

    .line 43
    :cond_14
    :goto_11
    iget-object v5, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/mycompany/app/main/MainUri;->q(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 44
    iget-object v5, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->c:Ljava/lang/String;

    .line 45
    iget-object v6, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->d:Ljava/lang/String;

    goto :goto_12

    .line 46
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    iget-object v6, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v6, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 51
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v6, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 54
    iget-object v6, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->d:Ljava/lang/String;

    goto :goto_12

    .line 55
    :cond_16
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 56
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    :goto_12
    if-eqz v4, :cond_17

    .line 57
    iput-object v5, v4, Lcom/mycompany/app/main/MainUri$UriItem;->c:Ljava/lang/String;

    .line 58
    iput-object v6, v4, Lcom/mycompany/app/main/MainUri$UriItem;->d:Ljava/lang/String;

    .line 59
    iput-wide v0, v4, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 60
    iget-object v1, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->a:Ljava/lang/String;

    iget-object v2, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v5, p5

    move-object v3, v4

    move/from16 v4, p4

    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/db/book/DbBookDown;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;ZJ)J

    goto :goto_13

    :cond_17
    move-object/from16 v7, p1

    .line 61
    iput-object v5, v3, Lcom/mycompany/app/main/MainUri$UriItem;->c:Ljava/lang/String;

    .line 62
    iput-object v6, v3, Lcom/mycompany/app/main/MainUri$UriItem;->d:Ljava/lang/String;

    .line 63
    iput-wide v0, v3, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 64
    iget-object v1, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->a:Ljava/lang/String;

    iget-object v2, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v4, p4

    move-wide/from16 v5, p5

    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/db/book/DbBookDown;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;ZJ)J

    goto :goto_13

    :cond_18
    move/from16 v4, p4

    move/from16 p7, v7

    move-object/from16 v7, p1

    :goto_13
    move v1, v15

    goto :goto_14

    :cond_19
    move/from16 v4, p4

    move/from16 p7, v7

    move-object/from16 v7, p1

    .line 65
    :goto_14
    invoke-interface {v12}, Lcom/mycompany/app/main/MainDownSvc$DownImageListener;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_16

    :cond_1a
    if-eqz v1, :cond_1b

    const/4 v0, 0x3

    .line 66
    iput v0, v13, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->g:I

    .line 67
    invoke-interface {v12, v7, v4}, Lcom/mycompany/app/main/MainDownSvc$DownImageListener;->b(Ljava/util/List;Z)V

    return-void

    :cond_1b
    move-object/from16 v0, p0

    move-wide/from16 v5, p5

    move-object v1, v7

    move v3, v9

    move v8, v11

    move-object v9, v13

    move-object v2, v14

    move/from16 v11, v16

    move/from16 v7, p7

    .line 68
    invoke-static/range {v0 .. v12}, Lcom/mycompany/app/down/DownSaveImage;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;IZJIILcom/mycompany/app/main/MainDownSvc$ImageItem;Ljava/lang/String;ZLcom/mycompany/app/main/MainDownSvc$DownImageListener;)V

    return-void

    .line 69
    :goto_15
    invoke-interface {v12}, Lcom/mycompany/app/main/MainDownSvc$DownImageListener;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_16

    :cond_1c
    const/4 v0, 0x4

    .line 70
    iput v0, v9, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->g:I

    .line 71
    invoke-interface {v12, v7, v4}, Lcom/mycompany/app/main/MainDownSvc$DownImageListener;->b(Ljava/util/List;Z)V

    :cond_1d
    :goto_16
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;IZJIILcom/mycompany/app/main/MainDownSvc$ImageItem;Ljava/lang/String;ZLcom/mycompany/app/main/MainDownSvc$DownImageListener;)V
    .locals 16

    .line 1
    move-object/from16 v10, p1

    .line 2
    .line 3
    move/from16 v11, p4

    .line 4
    .line 5
    move/from16 v2, p7

    .line 6
    .line 7
    move/from16 v0, p8

    .line 8
    .line 9
    move-object/from16 v8, p9

    .line 10
    .line 11
    move-object/from16 v7, p12

    .line 12
    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    const/4 v12, 0x4

    .line 16
    if-lez v2, :cond_1

    .line 17
    .line 18
    const/16 v1, 0x168

    .line 19
    .line 20
    if-ge v2, v1, :cond_0

    .line 21
    .line 22
    const-wide/16 v5, 0x2710

    .line 23
    .line 24
    :goto_0
    move-wide v13, v5

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    iput v12, v8, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->g:I

    .line 27
    .line 28
    invoke-interface {v7, v10, v11}, Lcom/mycompany/app/main/MainDownSvc$DownImageListener;->b(Ljava/util/List;Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    move-object/from16 v1, p10

    .line 39
    .line 40
    iput-object v1, v8, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->a:Ljava/lang/String;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    if-nez p11, :cond_3

    .line 44
    .line 45
    iget-object v1, v8, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    iput-object v1, v8, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->b:Ljava/lang/String;

    .line 57
    .line 58
    :goto_1
    move-wide v13, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    sget v1, Lcom/mycompany/app/pref/PrefZone;->k0:I

    .line 61
    .line 62
    if-ge v0, v1, :cond_6

    .line 63
    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    const-wide/16 v5, 0x7d0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :goto_2
    cmp-long v1, v13, v3

    .line 70
    .line 71
    if-nez v1, :cond_4

    .line 72
    .line 73
    move v3, v0

    .line 74
    :try_start_0
    new-instance v0, Lcom/mycompany/app/down/DownSaveImage$2;

    .line 75
    .line 76
    move-object/from16 v6, p0

    .line 77
    .line 78
    move-object/from16 v9, p2

    .line 79
    .line 80
    move/from16 v1, p3

    .line 81
    .line 82
    move-wide/from16 v4, p5

    .line 83
    .line 84
    invoke-direct/range {v0 .. v11}, Lcom/mycompany/app/down/DownSaveImage$2;-><init>(IIIJLandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownImageListener;Lcom/mycompany/app/main/MainDownSvc$ImageItem;Ljava/lang/String;Ljava/util/List;Z)V

    .line 85
    .line 86
    .line 87
    move-object/from16 v6, p0

    .line 88
    .line 89
    invoke-static {v6, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :catch_0
    iput v12, v8, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->g:I

    .line 94
    .line 95
    invoke-interface {v7, v10, v11}, Lcom/mycompany/app/main/MainDownSvc$DownImageListener;->b(Ljava/util/List;Z)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    move-object/from16 v6, p0

    .line 100
    .line 101
    move v3, v0

    .line 102
    invoke-interface {v7}, Lcom/mycompany/app/main/MainDownSvc$DownImageListener;->a()Landroid/os/Handler;

    .line 103
    .line 104
    .line 105
    move-result-object v15

    .line 106
    if-nez v15, :cond_5

    .line 107
    .line 108
    iput v12, v8, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->g:I

    .line 109
    .line 110
    invoke-interface {v7, v10, v11}, Lcom/mycompany/app/main/MainDownSvc$DownImageListener;->b(Ljava/util/List;Z)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_5
    :try_start_1
    new-instance v0, Lcom/mycompany/app/down/DownSaveImage$1;

    .line 115
    .line 116
    move-object/from16 v9, p2

    .line 117
    .line 118
    move/from16 v1, p3

    .line 119
    .line 120
    move-wide/from16 v4, p5

    .line 121
    .line 122
    move/from16 v2, p7

    .line 123
    .line 124
    invoke-direct/range {v0 .. v11}, Lcom/mycompany/app/down/DownSaveImage$1;-><init>(IIIJLandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownImageListener;Lcom/mycompany/app/main/MainDownSvc$ImageItem;Ljava/lang/String;Ljava/util/List;Z)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v15, v0, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :catch_1
    iput v12, v8, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->g:I

    .line 132
    .line 133
    invoke-interface {v7, v10, v11}, Lcom/mycompany/app/main/MainDownSvc$DownImageListener;->b(Ljava/util/List;Z)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_6
    iput v12, v8, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->g:I

    .line 138
    .line 139
    invoke-interface {v7, v10, v11}, Lcom/mycompany/app/main/MainDownSvc$DownImageListener;->b(Ljava/util/List;Z)V

    .line 140
    .line 141
    .line 142
    return-void
.end method
