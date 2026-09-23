.class public Lcom/mycompany/app/down/DownSavePath;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IIIIZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v7, p3

    move-object/from16 v9, p8

    .line 1
    const-string v8, "bytes="

    if-eqz v6, :cond_25

    .line 2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v10, 0x1

    if-nez v1, :cond_0

    iget-object v1, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, v6

    goto/16 :goto_19

    .line 3
    :cond_1
    iget v1, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->v:I

    if-ne v1, v10, :cond_2

    move v12, v10

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    :goto_0
    const-wide/16 v13, 0x0

    if-eqz v12, :cond_3

    .line 4
    iget-wide v1, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->A:J

    move-wide v15, v1

    move-wide/from16 v17, v13

    goto :goto_1

    :cond_3
    int-to-long v2, v7

    .line 5
    iget-wide v4, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->F:J

    mul-long/2addr v2, v4

    sub-int/2addr v1, v10

    if-ne v7, v1, :cond_4

    .line 6
    iget-wide v4, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->A:J

    sub-long/2addr v4, v2

    :cond_4
    move-wide/from16 v17, v2

    move-wide v15, v4

    .line 7
    :goto_1
    iget-object v1, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    move/from16 v2, p4

    invoke-static {v7, v2, v1}, Lcom/mycompany/app/main/MainDownSvc;->v(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/mycompany/app/main/MainDownSvc;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v5, v3, v13

    if-lez v5, :cond_8

    if-nez p7, :cond_5

    .line 10
    iget-wide v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    add-long/2addr v0, v3

    iput-wide v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 11
    :cond_5
    iget-wide v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    cmp-long v2, v0, v13

    if-eqz v2, :cond_6

    iget-wide v2, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    iput-wide v2, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 12
    :cond_6
    iget-wide v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    iget-wide v2, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    iput-wide v13, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J

    .line 13
    :cond_7
    iget v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    if-ne v0, v10, :cond_25

    .line 14
    invoke-interface {v9, v6}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->e(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    return-void

    .line 15
    :cond_8
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->g1(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v19

    if-nez p7, :cond_9

    .line 16
    iget-wide v3, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    add-long v3, v3, v19

    iput-wide v3, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 17
    :cond_9
    iget-wide v3, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    cmp-long v5, v3, v13

    move/from16 v22, v12

    if-eqz v5, :cond_a

    iget-wide v11, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    cmp-long v3, v3, v11

    if-gez v3, :cond_a

    iput-wide v11, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 18
    :cond_a
    iget-wide v3, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    iget-wide v11, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J

    cmp-long v3, v3, v11

    if-lez v3, :cond_b

    iput-wide v13, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J

    :cond_b
    cmp-long v11, v15, v13

    if-lez v11, :cond_c

    cmp-long v3, v19, v15

    if-ltz v3, :cond_c

    .line 19
    invoke-static {v1}, Lcom/mycompany/app/main/MainDownSvc;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 21
    iget v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    if-ne v0, v10, :cond_25

    .line 22
    invoke-interface {v9, v6}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->e(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    return-void

    .line 23
    :cond_c
    iget v12, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 24
    iget-object v4, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    move-object v3, v1

    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v0, -0x1

    move-object/from16 v2, p0

    move-wide/from16 v23, v13

    move-object v13, v3

    move-object/from16 v3, p2

    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, v8

    const/4 v8, 0x0

    if-nez v0, :cond_e

    .line 25
    iget v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    if-eq v0, v10, :cond_d

    goto/16 :goto_1a

    :cond_d
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v1, v6

    move/from16 v6, p6

    .line 26
    invoke-static/range {v0 .. v9}, Lcom/mycompany/app/down/DownSavePath;->b(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IIIILjava/lang/String;ZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V

    return-void

    :cond_e
    move-object/from16 v2, p0

    cmp-long v3, v19, v23

    if-lez v3, :cond_f

    move v3, v10

    goto :goto_2

    :cond_f
    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x2

    if-eqz v22, :cond_10

    if-eqz v3, :cond_12

    .line 27
    :cond_10
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-long v7, v17, v19

    .line 28
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13

    if-lez v11, :cond_11

    add-long v17, v17, v15

    const-wide/16 v7, 0x1

    sub-long v7, v17, v7

    .line 30
    :try_start_1
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move/from16 v21, p5

    move/from16 v15, p6

    move-object/from16 v9, p8

    const/4 v1, 0x0

    :goto_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_4
    const/4 v8, 0x0

    goto/16 :goto_17

    .line 31
    :cond_11
    :goto_5
    :try_start_2
    const-string v7, "Accept-Ranges"

    const-string v8, "bytes"

    invoke-virtual {v0, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v7, "Range"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_12
    invoke-virtual {v0, v10}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 34
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 35
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->s3(I)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_13

    if-ne v5, v10, :cond_13

    add-int/lit8 v3, p5, 0x1

    move/from16 v15, p6

    move-object/from16 v9, p8

    move v1, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_6
    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x4

    goto/16 :goto_16

    :cond_13
    if-ne v5, v4, :cond_16

    .line 36
    :try_start_3
    const-string v3, "Location"

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-static {v7}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v3, :cond_14

    move-object/from16 v5, p2

    :try_start_4
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v3, :cond_15

    goto :goto_9

    :catch_1
    :goto_7
    move/from16 v15, p6

    move-object/from16 v9, p8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_8
    const/16 v21, 0x0

    goto/16 :goto_17

    :cond_14
    move-object/from16 v5, p2

    :cond_15
    const/4 v7, 0x0

    :goto_9
    move/from16 v15, p6

    move-object/from16 v9, p8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_6

    :catch_2
    move-object/from16 v5, p2

    goto :goto_7

    :cond_16
    move-object/from16 v5, p2

    .line 38
    :try_start_5
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_12

    .line 39
    :try_start_6
    invoke-static {v2, v13, v3}, Lcom/mycompany/app/main/MainUtil;->V2(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_11

    const/16 v8, 0x400

    .line 40
    :try_start_7
    new-array v11, v8, [B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_10

    move/from16 v15, p6

    const/16 v22, 0x0

    .line 41
    :goto_a
    :try_start_8
    iget v1, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e

    if-ne v1, v10, :cond_1c

    const/4 v1, 0x0

    :try_start_9
    invoke-virtual {v7, v11, v1, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v14
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    const/4 v1, -0x1

    if-eq v14, v1, :cond_1c

    int-to-long v4, v14

    .line 42
    :try_start_a
    iget-wide v1, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    add-long/2addr v1, v4

    iput-wide v1, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 43
    iget-wide v4, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J
    :try_end_a
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    cmp-long v15, v4, v23

    if-eqz v15, :cond_17

    cmp-long v4, v4, v1

    if-gez v4, :cond_17

    :try_start_b
    iput-wide v1, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J
    :try_end_b
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_b

    :catch_3
    move-object/from16 v9, p8

    move-object v5, v7

    move v8, v10

    const/4 v1, 0x0

    const/4 v15, 0x0

    goto :goto_8

    :catch_4
    move-object/from16 v9, p8

    move/from16 v22, v10

    const/4 v1, 0x0

    const/4 v15, 0x0

    goto/16 :goto_13

    .line 44
    :cond_17
    :goto_b
    :try_start_c
    iget-wide v4, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    cmp-long v15, v4, v23

    if-lez v15, :cond_18

    .line 45
    :try_start_d
    div-int/lit8 v15, v14, 0xa

    int-to-long v8, v15

    add-long/2addr v4, v8

    iput-wide v4, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_19

    move-wide/from16 v1, v23

    .line 46
    iput-wide v1, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J

    :cond_18
    :goto_c
    const/4 v1, 0x0

    goto :goto_d

    .line 47
    :cond_19
    iget-wide v1, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_18

    .line 48
    iput-wide v1, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_c

    .line 49
    :goto_d
    :try_start_e
    invoke-virtual {v3, v11, v1, v14}, Ljava/io/OutputStream;->write([BII)V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 51
    iget-wide v8, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    const-wide/16 v23, 0x0

    cmp-long v2, v8, v23

    if-eqz v2, :cond_1b

    sub-long v8, v4, v8

    const-wide/16 v14, 0x320

    cmp-long v2, v8, v14

    if-lez v2, :cond_1a

    goto :goto_e

    :cond_1a
    move-object/from16 v9, p8

    goto :goto_11

    .line 52
    :cond_1b
    :goto_e
    iput-wide v4, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 53
    iget v2, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I
    :try_end_e
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    if-ne v2, v10, :cond_1a

    move-object/from16 v9, p8

    .line 54
    :try_start_f
    invoke-interface {v9, v6}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->d(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    :try_end_f
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_11

    :catch_5
    :goto_f
    move v15, v1

    move/from16 v21, v15

    move-object v5, v7

    move v8, v10

    goto/16 :goto_17

    :catch_6
    :goto_10
    move v15, v1

    move/from16 v22, v10

    goto :goto_13

    :goto_11
    const/4 v4, 0x2

    const/16 v8, 0x400

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move v15, v1

    move/from16 v22, v10

    goto/16 :goto_a

    :catch_7
    move-object/from16 v9, p8

    goto :goto_f

    :catch_8
    move-object/from16 v9, p8

    goto :goto_10

    :catch_9
    move-object/from16 v9, p8

    const/4 v1, 0x0

    goto :goto_f

    :catch_a
    move-object/from16 v9, p8

    const/4 v1, 0x0

    goto :goto_10

    :catch_b
    :cond_1c
    move-object/from16 v9, p8

    const/4 v1, 0x0

    goto :goto_13

    :catch_c
    move-object/from16 v9, p8

    :goto_12
    move/from16 v21, v1

    move-object v5, v7

    move/from16 v8, v22

    goto :goto_17

    :catch_d
    move-object/from16 v9, p8

    :goto_13
    move/from16 v8, v22

    goto :goto_14

    :catch_e
    move-object/from16 v9, p8

    const/4 v1, 0x0

    goto :goto_12

    .line 55
    :goto_14
    :try_start_10
    iget v2, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    if-ne v2, v10, :cond_1d

    move-object v5, v7

    move v11, v10

    :goto_15
    const/4 v7, 0x0

    goto :goto_16

    :cond_1d
    move v11, v1

    move-object v5, v7

    goto :goto_15

    :goto_16
    move-object/from16 v25, v5

    move v5, v1

    move-object/from16 v1, v25

    goto :goto_18

    :catch_f
    move/from16 v21, v1

    move-object v5, v7

    goto :goto_17

    :catch_10
    move-object/from16 v9, p8

    const/4 v1, 0x0

    move/from16 v15, p6

    move/from16 v21, v1

    move-object v5, v7

    goto/16 :goto_4

    :catch_11
    move-object/from16 v9, p8

    const/4 v1, 0x0

    move/from16 v15, p6

    move/from16 v21, v1

    move-object v5, v7

    const/4 v3, 0x0

    goto/16 :goto_4

    :catch_12
    move-object/from16 v9, p8

    const/4 v1, 0x0

    move/from16 v15, p6

    move/from16 v21, v1

    goto/16 :goto_3

    :catch_13
    move-object/from16 v9, p8

    const/4 v1, 0x0

    move/from16 v21, p5

    move/from16 v15, p6

    goto/16 :goto_3

    :goto_17
    move v11, v1

    move-object v1, v5

    move/from16 v5, v21

    const/4 v7, 0x0

    const/4 v12, 0x4

    :goto_18
    if-eqz v3, :cond_1e

    .line 56
    :try_start_11
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_14

    :catch_14
    :cond_1e
    if-eqz v1, :cond_1f

    .line 57
    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_15

    .line 58
    :catch_15
    :cond_1f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v11, :cond_20

    .line 59
    invoke-static {v13}, Lcom/mycompany/app/main/MainDownSvc;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 61
    :cond_20
    iget v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    if-eq v0, v10, :cond_21

    goto :goto_1a

    :cond_21
    const/4 v1, 0x2

    if-ne v12, v1, :cond_22

    .line 62
    invoke-interface {v9, v6}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->c(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    goto :goto_1a

    :cond_22
    const/4 v0, 0x4

    if-ne v12, v0, :cond_23

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v1, v6

    move v6, v15

    .line 63
    invoke-static/range {v0 .. v9}, Lcom/mycompany/app/down/DownSavePath;->b(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IIIILjava/lang/String;ZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V

    goto :goto_1a

    :cond_23
    move-object v1, v6

    .line 64
    invoke-interface {v9, v1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->e(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    goto :goto_1a

    .line 65
    :goto_19
    iget v0, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    if-eq v0, v10, :cond_24

    goto :goto_1a

    .line 66
    :cond_24
    invoke-interface {v9, v1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    :cond_25
    :goto_1a
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IIIILjava/lang/String;ZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V
    .locals 12

    .line 1
    move/from16 v3, p5

    .line 2
    .line 3
    move/from16 v0, p6

    .line 4
    .line 5
    move-object/from16 v7, p9

    .line 6
    .line 7
    if-eqz p1, :cond_7

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    if-lez v3, :cond_1

    .line 12
    .line 13
    const/16 v4, 0x168

    .line 14
    .line 15
    if-ge v3, v4, :cond_0

    .line 16
    .line 17
    const-wide/16 v4, 0x2710

    .line 18
    .line 19
    :goto_0
    move-object v8, p2

    .line 20
    move-wide v9, v4

    .line 21
    move v4, v0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    invoke-interface {v7, p1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->c(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    move-object/from16 v8, p7

    .line 34
    .line 35
    :goto_1
    move v4, v0

    .line 36
    move-wide v9, v1

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    if-nez p8, :cond_3

    .line 39
    .line 40
    iget-object v4, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_3

    .line 47
    .line 48
    sget-boolean v4, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    iput-object v4, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 52
    .line 53
    move-object v8, p2

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    sget v4, Lcom/mycompany/app/pref/PrefZone;->k0:I

    .line 56
    .line 57
    if-ge v0, v4, :cond_6

    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    const-wide/16 v4, 0x7d0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :goto_2
    cmp-long p2, v9, v1

    .line 65
    .line 66
    const/4 v11, 0x1

    .line 67
    if-nez p2, :cond_4

    .line 68
    .line 69
    :try_start_0
    new-instance v0, Lcom/mycompany/app/down/DownSavePath$2;

    .line 70
    .line 71
    move-object v5, p0

    .line 72
    move-object v6, p1

    .line 73
    move v1, p3

    .line 74
    move/from16 v2, p4

    .line 75
    .line 76
    invoke-direct/range {v0 .. v8}, Lcom/mycompany/app/down/DownSavePath$2;-><init>(IIIILandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :catch_0
    iput-boolean v11, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->N:Z

    .line 84
    .line 85
    invoke-interface {v7, p1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    invoke-interface {v7}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->a()Landroid/os/Handler;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    if-nez p2, :cond_5

    .line 94
    .line 95
    invoke-interface {v7, p1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_5
    :try_start_1
    new-instance v0, Lcom/mycompany/app/down/DownSavePath$1;

    .line 100
    .line 101
    move-object v5, p0

    .line 102
    move-object v6, p1

    .line 103
    move v1, p3

    .line 104
    move/from16 v2, p4

    .line 105
    .line 106
    move/from16 v3, p5

    .line 107
    .line 108
    invoke-direct/range {v0 .. v8}, Lcom/mycompany/app/down/DownSavePath$1;-><init>(IIIILandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v0, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catch_1
    iput-boolean v11, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->N:Z

    .line 116
    .line 117
    invoke-interface {v7, p1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    invoke-interface {v7, p1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 122
    .line 123
    .line 124
    :cond_7
    return-void
.end method
