.class public Lcom/mycompany/app/down/DownSaveSplit;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IIZZIIZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move/from16 v7, p3

    .line 1
    const-string v8, "bytes="

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v9, 0x1

    if-nez v1, :cond_0

    iget-object v1, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object/from16 v11, p10

    move-object v1, v6

    move v3, v9

    goto/16 :goto_24

    :cond_1
    if-eqz p5, :cond_2

    .line 3
    iget-object v1, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    sget v3, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 4
    const-string v3, "/"

    .line 5
    invoke-static {v1, v3}, Landroid/support/v4/media/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-static/range {p3 .. p4}, Lcom/mycompany/app/main/MainUtil;->x1(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    const-string v3, "a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v10, p4

    :goto_0
    move-object v11, v1

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    move/from16 v10, p4

    invoke-static {v7, v10, v1}, Lcom/mycompany/app/main/MainDownSvc;->v(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 10
    :goto_1
    invoke-static {v11}, Lcom/mycompany/app/main/MainDownSvc;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v12, 0x0

    cmp-long v1, v3, v12

    if-lez v1, :cond_5

    if-nez p9, :cond_3

    .line 12
    iget-wide v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    add-long/2addr v0, v3

    iput-wide v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    :cond_3
    if-eqz p5, :cond_4

    .line 13
    iget-wide v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->D:J

    add-long/2addr v0, v3

    iput-wide v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->D:J

    .line 14
    iget v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->z:I

    add-int/2addr v0, v9

    iput v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->z:I

    goto :goto_2

    .line 15
    :cond_4
    iget-wide v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->C:J

    add-long/2addr v0, v3

    iput-wide v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->C:J

    .line 16
    iget v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->y:I

    add-int/2addr v0, v9

    iput v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->y:I

    .line 17
    :goto_2
    invoke-static {v6}, Lcom/mycompany/app/down/DownSaveSplit;->f(Lcom/mycompany/app/main/MainDownSvc$DownItem;)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    return-void

    .line 18
    :cond_5
    invoke-static {v0, v11}, Lcom/mycompany/app/main/MainUtil;->g1(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v14

    if-nez p9, :cond_6

    .line 19
    iget-wide v3, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    add-long/2addr v3, v14

    iput-wide v3, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 20
    :cond_6
    iget-wide v3, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    cmp-long v1, v3, v12

    move-wide/from16 v16, v12

    if-eqz v1, :cond_7

    iget-wide v12, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    cmp-long v1, v3, v12

    if-gez v1, :cond_7

    iput-wide v12, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    :cond_7
    if-nez p6, :cond_a

    cmp-long v1, v14, v16

    if-lez v1, :cond_a

    .line 21
    iget-object v1, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/mycompany/app/main/MainUtil;->w0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v1, v3, v16

    if-lez v1, :cond_9

    cmp-long v1, v14, v3

    if-ltz v1, :cond_9

    .line 22
    invoke-static {v11}, Lcom/mycompany/app/main/MainDownSvc;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    if-eqz p5, :cond_8

    .line 24
    iget-wide v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->D:J

    add-long/2addr v0, v14

    iput-wide v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->D:J

    .line 25
    iget v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->z:I

    add-int/2addr v0, v9

    iput v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->z:I

    goto :goto_3

    .line 26
    :cond_8
    iget-wide v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->C:J

    add-long/2addr v0, v14

    iput-wide v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->C:J

    .line 27
    iget v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->y:I

    add-int/2addr v0, v9

    iput v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->y:I

    .line 28
    :goto_3
    invoke-static {v6}, Lcom/mycompany/app/down/DownSaveSplit;->f(Lcom/mycompany/app/main/MainDownSvc$DownItem;)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    return-void

    :cond_9
    move-wide v12, v3

    goto :goto_4

    :cond_a
    move-wide/from16 v12, v16

    .line 29
    :goto_4
    iget v1, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    const/4 v3, 0x2

    const/16 v18, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x0

    if-eqz p6, :cond_10

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_8

    .line 31
    :cond_b
    iget v1, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 32
    :try_start_0
    invoke-static {v11, v5}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    :try_start_1
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v12

    .line 34
    array-length v13, v12

    .line 35
    iget-wide v14, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    int-to-long v3, v13

    add-long/2addr v14, v3

    iput-wide v14, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 36
    iget-wide v3, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    cmp-long v16, v3, v16

    if-eqz v16, :cond_c

    cmp-long v3, v3, v14

    if-gez v3, :cond_c

    iput-wide v14, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    goto :goto_5

    :catch_0
    move-object/from16 v18, v8

    goto :goto_6

    .line 37
    :cond_c
    :goto_5
    invoke-virtual {v8, v12, v5, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v9

    goto :goto_7

    :catch_1
    :goto_6
    move-object/from16 v8, v18

    const/4 v1, 0x4

    :goto_7
    if-eqz v8, :cond_d

    .line 38
    :try_start_2
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_d
    if-eqz v5, :cond_f

    .line 39
    invoke-static {v11}, Lcom/mycompany/app/main/MainDownSvc;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v1, 0x4

    :cond_f
    :goto_9
    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v4, p10

    move v0, v1

    move-object v1, v6

    const/4 v10, 0x0

    :goto_a
    move-object/from16 v9, v19

    goto/16 :goto_23

    :cond_10
    if-eqz p5, :cond_14

    .line 41
    iget-object v3, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->j:Ljava/util/List;

    if-eqz v3, :cond_18

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 42
    iget v3, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->w:I

    sub-int v3, v7, v3

    .line 43
    iget-object v4, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->j:Ljava/util/List;

    iget-object v5, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 44
    invoke-static {v3, v4}, Lcom/mycompany/app/down/DownSaveSplit;->c(ILjava/util/List;)Lcom/mycompany/app/main/MainDownSvc$EncItem;

    move-result-object v4

    if-nez v4, :cond_11

    move-object/from16 v10, v18

    goto :goto_b

    .line 45
    :cond_11
    iget-object v10, v4, Lcom/mycompany/app/main/MainDownSvc$EncItem;->c:[B

    if-eqz v10, :cond_12

    goto :goto_b

    .line 46
    :cond_12
    iget-object v10, v4, Lcom/mycompany/app/main/MainDownSvc$EncItem;->b:Ljava/lang/String;

    invoke-static {v0, v10, v5}, Lcom/mycompany/app/down/DownSaveSplit;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_13

    .line 47
    iput-object v5, v4, Lcom/mycompany/app/main/MainDownSvc$EncItem;->c:[B

    .line 48
    :cond_13
    iget-object v10, v4, Lcom/mycompany/app/main/MainDownSvc$EncItem;->c:[B

    .line 49
    :goto_b
    iget-object v4, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->k:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/mycompany/app/down/DownSaveSplit;->e(ILjava/util/ArrayList;)[B

    move-result-object v3

    .line 50
    invoke-static {v10, v3}, Lcom/mycompany/app/down/DownSaveSplit;->b([B[B)Ljavax/crypto/Cipher;

    move-result-object v3

    :goto_c
    move-object v10, v3

    goto :goto_e

    .line 51
    :cond_14
    iget-object v3, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->h:Ljava/util/List;

    if-eqz v3, :cond_18

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 52
    iget-object v3, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->h:Ljava/util/List;

    iget-object v4, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 53
    invoke-static {v7, v3}, Lcom/mycompany/app/down/DownSaveSplit;->c(ILjava/util/List;)Lcom/mycompany/app/main/MainDownSvc$EncItem;

    move-result-object v3

    if-nez v3, :cond_15

    move-object/from16 v5, v18

    goto :goto_d

    .line 54
    :cond_15
    iget-object v5, v3, Lcom/mycompany/app/main/MainDownSvc$EncItem;->c:[B

    if-eqz v5, :cond_16

    goto :goto_d

    .line 55
    :cond_16
    iget-object v5, v3, Lcom/mycompany/app/main/MainDownSvc$EncItem;->b:Ljava/lang/String;

    invoke-static {v0, v5, v4}, Lcom/mycompany/app/down/DownSaveSplit;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_17

    .line 56
    iput-object v4, v3, Lcom/mycompany/app/main/MainDownSvc$EncItem;->c:[B

    .line 57
    :cond_17
    iget-object v5, v3, Lcom/mycompany/app/main/MainDownSvc$EncItem;->c:[B

    .line 58
    :goto_d
    iget-object v3, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->i:Ljava/util/ArrayList;

    invoke-static {v7, v3}, Lcom/mycompany/app/down/DownSaveSplit;->e(ILjava/util/ArrayList;)[B

    move-result-object v3

    .line 59
    invoke-static {v5, v3}, Lcom/mycompany/app/down/DownSaveSplit;->b([B[B)Ljavax/crypto/Cipher;

    move-result-object v3

    goto :goto_c

    :cond_18
    move-object/from16 v10, v18

    .line 60
    :goto_e
    iget-object v4, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    move v3, v1

    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v0, -0x1

    move/from16 v20, v3

    move-object v3, v2

    move-object/from16 v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 61
    iget v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    if-eq v0, v9, :cond_19

    goto/16 :goto_25

    :cond_19
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p8

    move-object/from16 v11, p10

    move-object v1, v6

    move-object/from16 v9, v19

    const/4 v10, 0x0

    move/from16 v6, p6

    .line 62
    invoke-static/range {v0 .. v11}, Lcom/mycompany/app/down/DownSaveSplit;->g(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IIZZIILjava/lang/String;ZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V

    return-void

    :cond_1a
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p10

    move-object v1, v6

    const/16 v22, 0x0

    cmp-long v5, v14, v16

    if-lez v5, :cond_1b

    move v5, v9

    goto :goto_f

    :cond_1b
    const/4 v5, 0x0

    :goto_f
    if-eqz v5, :cond_1d

    .line 63
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v7, v12, v16

    if-lez v7, :cond_1c

    const-wide/16 v7, 0x1

    sub-long/2addr v12, v7

    .line 66
    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_10

    :catch_3
    move/from16 v23, p7

    move/from16 v13, p8

    move-object/from16 v6, v18

    move/from16 v10, v22

    const/4 v7, 0x0

    goto/16 :goto_21

    .line 67
    :cond_1c
    :goto_10
    const-string v7, "Accept-Ranges"

    const-string v8, "bytes"

    invoke-virtual {v0, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v7, "Range"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 69
    :cond_1d
    :try_start_4
    invoke-virtual {v0, v9}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 70
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 71
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->s3(I)I

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_12

    if-ne v6, v9, :cond_1e

    add-int/lit8 v5, p7, 0x1

    move/from16 v13, p8

    move-object/from16 v6, v18

    move/from16 v10, v22

    :goto_11
    const/16 v20, 0x4

    const/16 v23, 0x0

    goto/16 :goto_1f

    :cond_1e
    const/4 v7, 0x2

    if-ne v6, v7, :cond_20

    .line 72
    :try_start_5
    const-string v5, "Location"

    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    if-nez v6, :cond_1f

    move-object/from16 v19, v5

    goto :goto_14

    :catch_4
    move/from16 v13, p8

    move-object/from16 v6, v18

    :goto_12
    move/from16 v10, v22

    const/4 v7, 0x0

    :goto_13
    const/16 v23, 0x0

    goto/16 :goto_21

    :cond_1f
    :goto_14
    move/from16 v13, p8

    move-object/from16 v6, v18

    move/from16 v10, v22

    const/4 v5, 0x0

    goto :goto_11

    .line 74
    :cond_20
    :try_start_6
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_11

    .line 75
    :try_start_7
    invoke-static {v2, v11, v5}, Lcom/mycompany/app/main/MainUtil;->V2(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_10

    const/16 v8, 0x400

    .line 76
    :try_start_8
    new-array v12, v8, [B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f

    move/from16 v13, p8

    .line 77
    :goto_15
    :try_start_9
    iget v7, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    if-ne v7, v9, :cond_25

    const/4 v7, 0x0

    invoke-virtual {v6, v12, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    const/4 v8, -0x1

    if-eq v9, v8, :cond_25

    int-to-long v7, v9

    add-long/2addr v14, v7

    .line 78
    :try_start_a
    iget-wide v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    add-long/2addr v2, v7

    iput-wide v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 79
    iget-wide v7, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    cmp-long v13, v7, v16

    if-eqz v13, :cond_21

    cmp-long v7, v7, v2

    if-gez v7, :cond_21

    iput-wide v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J
    :try_end_a
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_17

    :catch_5
    move-object/from16 v18, v5

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v13, 0x0

    goto :goto_13

    :catch_6
    const/4 v13, 0x0

    :goto_16
    const/16 v22, 0x1

    goto :goto_19

    :cond_21
    :goto_17
    if-eqz v10, :cond_22

    const/4 v7, 0x0

    .line 80
    :try_start_b
    invoke-virtual {v10, v12, v7, v9}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v2

    .line 81
    array-length v3, v2

    invoke-virtual {v5, v2, v7, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_18

    .line 82
    :catch_7
    :try_start_c
    invoke-virtual {v5, v12, v7, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_18

    :catch_8
    move-object/from16 v18, v5

    move v13, v7

    move/from16 v23, v13

    const/4 v10, 0x1

    goto/16 :goto_21

    :catch_9
    move v13, v7

    goto :goto_16

    :cond_22
    const/4 v7, 0x0

    .line 83
    :try_start_d
    invoke-virtual {v5, v12, v7, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 84
    :goto_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 85
    iget-wide v7, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    cmp-long v9, v7, v16

    if-eqz v9, :cond_23

    sub-long v7, v2, v7

    const-wide/16 v24, 0x320

    cmp-long v7, v7, v24

    if-lez v7, :cond_24

    .line 86
    :cond_23
    iput-wide v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 87
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 88
    invoke-interface {v4, v1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->d(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    :cond_24
    const/16 v8, 0x400

    const/4 v9, 0x1

    const/4 v13, 0x0

    const/16 v22, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    goto :goto_15

    :catch_a
    move-object/from16 v18, v5

    goto/16 :goto_12

    :catch_b
    :cond_25
    :goto_19
    if-eqz v10, :cond_26

    .line 89
    :try_start_e
    invoke-virtual {v10}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v2

    .line 90
    array-length v3, v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    const/4 v7, 0x0

    :try_start_f
    invoke-virtual {v5, v2, v7, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_1a

    :catch_c
    :cond_26
    const/4 v7, 0x0

    .line 91
    :catch_d
    :goto_1a
    :try_start_10
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    if-eqz p5, :cond_27

    .line 92
    iget-wide v8, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->D:J

    add-long/2addr v8, v14

    iput-wide v8, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->D:J

    .line 93
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->z:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->z:I

    goto :goto_1e

    :catch_e
    :goto_1b
    move-object/from16 v18, v5

    :goto_1c
    move/from16 v23, v7

    :goto_1d
    move/from16 v10, v22

    goto :goto_21

    .line 94
    :cond_27
    iget-wide v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->C:J

    add-long/2addr v2, v14

    iput-wide v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->C:J

    .line 95
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->y:I

    const/16 v21, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->y:I

    .line 96
    :goto_1e
    invoke-static {v1}, Lcom/mycompany/app/down/DownSaveSplit;->f(Lcom/mycompany/app/main/MainDownSvc$DownItem;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    move-object/from16 v18, v5

    move v5, v7

    move/from16 v10, v22

    const/16 v23, 0x1

    goto :goto_1f

    :cond_28
    move-object/from16 v18, v5

    move v5, v7

    move/from16 v23, v5

    move/from16 v10, v22

    :goto_1f
    move/from16 v7, v23

    goto :goto_22

    :catch_f
    const/4 v7, 0x0

    move/from16 v13, p8

    goto :goto_1b

    :catch_10
    const/4 v7, 0x0

    move/from16 v13, p8

    goto :goto_1c

    :catch_11
    const/4 v7, 0x0

    move/from16 v13, p8

    move/from16 v23, v7

    :goto_20
    move-object/from16 v6, v18

    goto :goto_1d

    :catch_12
    const/4 v7, 0x0

    move/from16 v23, p7

    move/from16 v13, p8

    goto :goto_20

    :goto_21
    move/from16 v5, v23

    const/16 v20, 0x4

    :goto_22
    if-eqz v18, :cond_29

    .line 97
    :try_start_11
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_13

    :catch_13
    :cond_29
    if-eqz v6, :cond_2a

    .line 98
    :try_start_12
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_14

    .line 99
    :catch_14
    :cond_2a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v7, :cond_2b

    .line 100
    invoke-static {v11}, Lcom/mycompany/app/main/MainDownSvc;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_2b
    move v7, v5

    move v8, v13

    move/from16 v0, v20

    goto/16 :goto_a

    .line 102
    :goto_23
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2c

    goto :goto_25

    :cond_2c
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2d

    .line 103
    invoke-interface {v4, v1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->c(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    goto :goto_25

    :cond_2d
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2e

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v11, v4

    move/from16 v4, p4

    .line 104
    invoke-static/range {v0 .. v11}, Lcom/mycompany/app/down/DownSaveSplit;->g(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IIZZIILjava/lang/String;ZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V

    goto :goto_25

    .line 105
    :goto_24
    iget v0, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    if-eq v0, v3, :cond_2f

    :cond_2e
    :goto_25
    return-void

    .line 106
    :cond_2f
    invoke-interface {v11, v1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    return-void
.end method

.method public static b([B[B)Ljavax/crypto/Cipher;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    if-nez p1, :cond_1

    .line 6
    .line 7
    const/16 p1, 0x10

    .line 8
    .line 9
    new-array p1, p1, [B

    .line 10
    .line 11
    :cond_1
    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    .line 12
    .line 13
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 18
    .line 19
    const-string v3, "AES"

    .line 20
    .line 21
    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    invoke-virtual {v1, p1, v2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :catch_0
    return-object v0
.end method

.method public static c(ILjava/util/List;)Lcom/mycompany/app/main/MainDownSvc$EncItem;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    if-ltz p0, :cond_5

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lt p0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/mycompany/app/main/MainDownSvc$EncItem;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$EncItem;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$EncItem;->a:I

    .line 32
    .line 33
    if-ne p0, v2, :cond_3

    .line 34
    .line 35
    :goto_0
    return-object v1

    .line 36
    :cond_3
    if-ltz v2, :cond_5

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-lt v2, p0, :cond_4

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lcom/mycompany/app/main/MainDownSvc$EncItem;

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_5
    :goto_1
    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6

    .line 1
    const/4 v1, -0x1

    .line 2
    const/4 v5, 0x0

    .line 3
    const/4 v0, -0x1

    .line 4
    move-object v2, p0

    .line 5
    move-object v3, p1

    .line 6
    move-object v4, p2

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 p1, 0x0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    const/4 p2, 0x1

    .line 16
    const/4 v0, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 24
    .line 25
    .line 26
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 27
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x400

    .line 33
    .line 34
    :try_start_2
    new-array v3, v2, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 35
    .line 36
    :goto_0
    :try_start_3
    invoke-virtual {p2, v3, v0, v2}, Ljava/io/InputStream;->read([BII)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, -0x1

    .line 41
    if-eq v4, v5, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1, v3, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 48
    .line 49
    .line 50
    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 51
    goto :goto_2

    .line 52
    :catch_1
    move-object v1, p1

    .line 53
    goto :goto_1

    .line 54
    :catch_2
    move-object p2, p1

    .line 55
    move-object v1, p2

    .line 56
    :catch_3
    :goto_1
    move-object v2, p1

    .line 57
    :goto_2
    if-eqz v1, :cond_2

    .line 58
    .line 59
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 60
    .line 61
    .line 62
    :catch_4
    :cond_2
    if-eqz p2, :cond_3

    .line 63
    .line 64
    :try_start_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 65
    .line 66
    .line 67
    :catch_5
    :cond_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 68
    .line 69
    .line 70
    if-nez v2, :cond_4

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    array-length p0, v2

    .line 74
    if-nez p0, :cond_5

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_5
    rem-int/lit8 p1, p0, 0x10

    .line 78
    .line 79
    if-nez p1, :cond_6

    .line 80
    .line 81
    move-object p1, v2

    .line 82
    goto :goto_3

    .line 83
    :cond_6
    rsub-int/lit8 p1, p1, 0x10

    .line 84
    .line 85
    add-int/2addr p1, p0

    .line 86
    new-array p1, p1, [B

    .line 87
    .line 88
    invoke-static {v2, v0, p1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    .line 90
    .line 91
    :goto_3
    return-object p1
.end method

.method public static e(ILjava/util/ArrayList;)[B
    .locals 6

    .line 1
    invoke-static {p0, p1}, Lcom/mycompany/app/down/DownSaveSplit;->c(ILjava/util/List;)Lcom/mycompany/app/main/MainDownSvc$EncItem;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$EncItem;->c:[B

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$EncItem;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const-string v1, "0x"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x2

    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    const-string v1, "0X"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    const/16 v3, 0x10

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    :catch_0
    move-object v0, p1

    .line 61
    goto :goto_0

    .line 62
    :cond_5
    :try_start_1
    new-instance v1, Ljava/math/BigInteger;

    .line 63
    .line 64
    invoke-direct {v1, v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-nez v0, :cond_6

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_6
    array-length v1, v0

    .line 75
    if-ge v1, v2, :cond_7

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_7
    aget-byte v2, v0, v4

    .line 79
    .line 80
    if-eqz v2, :cond_8

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_8
    const/4 v2, 0x1

    .line 84
    sub-int/2addr v1, v2

    .line 85
    new-array v5, v1, [B

    .line 86
    .line 87
    invoke-static {v0, v2, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    .line 89
    .line 90
    move-object v0, v5

    .line 91
    :goto_0
    if-nez v0, :cond_9

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_9
    :try_start_2
    array-length v1, v0

    .line 95
    if-nez v1, :cond_a

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_a
    rem-int/lit8 v2, v1, 0x10

    .line 99
    .line 100
    if-nez v2, :cond_b

    .line 101
    .line 102
    move-object p1, v0

    .line 103
    goto :goto_1

    .line 104
    :cond_b
    sub-int/2addr v3, v2

    .line 105
    add-int/2addr v3, v1

    .line 106
    new-array v2, v3, [B

    .line 107
    .line 108
    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    .line 110
    .line 111
    move-object p1, v2

    .line 112
    :catch_1
    :goto_1
    if-eqz p1, :cond_c

    .line 113
    .line 114
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$EncItem;->c:[B

    .line 115
    .line 116
    :cond_c
    iget-object p0, p0, Lcom/mycompany/app/main/MainDownSvc$EncItem;->c:[B

    .line 117
    .line 118
    return-object p0
.end method

.method public static f(Lcom/mycompany/app/main/MainDownSvc$DownItem;)J
    .locals 9

    .line 1
    iget v0, p0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->y:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    :goto_0
    move v0, v1

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget v1, p0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->w:I

    .line 9
    .line 10
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    :goto_1
    iget-wide v1, p0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->C:J

    .line 14
    .line 15
    long-to-float v1, v1

    .line 16
    int-to-float v0, v0

    .line 17
    div-float/2addr v1, v0

    .line 18
    float-to-long v0, v1

    .line 19
    iget v2, p0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->w:I

    .line 20
    .line 21
    int-to-long v2, v2

    .line 22
    mul-long/2addr v0, v2

    .line 23
    iget v2, p0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->x:I

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    if-lez v2, :cond_4

    .line 28
    .line 29
    iget v5, p0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->z:I

    .line 30
    .line 31
    if-lez v5, :cond_3

    .line 32
    .line 33
    if-le v5, v2, :cond_2

    .line 34
    .line 35
    move v5, v2

    .line 36
    :cond_2
    iget-wide v6, p0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->D:J

    .line 37
    .line 38
    long-to-float v6, v6

    .line 39
    int-to-float v5, v5

    .line 40
    div-float/2addr v6, v5

    .line 41
    float-to-long v5, v6

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    iget-wide v5, p0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->E:J

    .line 44
    .line 45
    :goto_2
    int-to-long v7, v2

    .line 46
    mul-long/2addr v5, v7

    .line 47
    goto :goto_3

    .line 48
    :cond_4
    move-wide v5, v3

    .line 49
    :goto_3
    iget-wide v7, p0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 50
    .line 51
    cmp-long p0, v7, v3

    .line 52
    .line 53
    if-nez p0, :cond_5

    .line 54
    .line 55
    add-long/2addr v0, v5

    .line 56
    return-wide v0

    .line 57
    :cond_5
    add-long/2addr v7, v0

    .line 58
    add-long/2addr v7, v5

    .line 59
    long-to-float p0, v7

    .line 60
    const/high16 v0, 0x40000000    # 2.0f

    .line 61
    .line 62
    div-float/2addr p0, v0

    .line 63
    float-to-long v0, p0

    .line 64
    return-wide v0
.end method

.method public static g(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IIZZIILjava/lang/String;ZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V
    .locals 15

    .line 1
    move-object/from16 v6, p1

    .line 2
    .line 3
    move/from16 v3, p7

    .line 4
    .line 5
    move/from16 v0, p8

    .line 6
    .line 7
    move-object/from16 v7, p11

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
    move-object/from16 v8, p2

    .line 20
    .line 21
    move-wide v11, v4

    .line 22
    move v4, v0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    invoke-interface {v7, v6}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->c(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_2

    .line 33
    .line 34
    move-object/from16 v8, p9

    .line 35
    .line 36
    :goto_1
    move v4, v0

    .line 37
    move-wide v11, v1

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    if-nez p10, :cond_3

    .line 40
    .line 41
    iget-object v4, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    sget-boolean v4, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    iput-object v4, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 53
    .line 54
    move-object/from16 v8, p2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    sget v4, Lcom/mycompany/app/pref/PrefZone;->k0:I

    .line 58
    .line 59
    if-ge v0, v4, :cond_6

    .line 60
    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    const-wide/16 v4, 0x7d0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :goto_2
    cmp-long v0, v11, v1

    .line 67
    .line 68
    const/4 v13, 0x1

    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    :try_start_0
    new-instance v0, Lcom/mycompany/app/down/DownSaveSplit$2;

    .line 72
    .line 73
    move-object v5, p0

    .line 74
    move/from16 v1, p3

    .line 75
    .line 76
    move/from16 v2, p4

    .line 77
    .line 78
    move/from16 v9, p5

    .line 79
    .line 80
    move/from16 v10, p6

    .line 81
    .line 82
    invoke-direct/range {v0 .. v10}, Lcom/mycompany/app/down/DownSaveSplit$2;-><init>(IIIILandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;Ljava/lang/String;ZZ)V

    .line 83
    .line 84
    .line 85
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :catch_0
    iput-boolean v13, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->N:Z

    .line 90
    .line 91
    invoke-interface {v7, v6}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    invoke-interface {v7}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->a()Landroid/os/Handler;

    .line 96
    .line 97
    .line 98
    move-result-object v14

    .line 99
    if-nez v14, :cond_5

    .line 100
    .line 101
    invoke-interface {v7, v6}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_5
    :try_start_1
    new-instance v0, Lcom/mycompany/app/down/DownSaveSplit$1;

    .line 106
    .line 107
    move-object v5, p0

    .line 108
    move/from16 v1, p3

    .line 109
    .line 110
    move/from16 v2, p4

    .line 111
    .line 112
    move/from16 v9, p5

    .line 113
    .line 114
    move/from16 v10, p6

    .line 115
    .line 116
    move/from16 v3, p7

    .line 117
    .line 118
    invoke-direct/range {v0 .. v10}, Lcom/mycompany/app/down/DownSaveSplit$1;-><init>(IIIILandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;Ljava/lang/String;ZZ)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v14, v0, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :catch_1
    iput-boolean v13, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->N:Z

    .line 126
    .line 127
    invoke-interface {v7, v6}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_6
    invoke-interface {v7, v6}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method
