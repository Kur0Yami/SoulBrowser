.class public Lcom/mycompany/app/image/ImageViewWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static g(Landroid/content/Context;Lcom/mycompany/app/image/ImageViewActivity;ILandroid/view/Window;Landroid/content/Intent;Lcom/mycompany/app/image/ImageViewActivity$SavedItem;)Lcom/mycompany/app/image/ImageViewWrapper;
    .locals 16

    move/from16 v0, p2

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageEffect;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/image/ImageViewPageEffect;-><init>(Landroid/content/Context;Lcom/mycompany/app/image/ImageViewActivity;Landroid/view/Window;Landroid/content/Intent;Lcom/mycompany/app/image/ImageViewActivity$SavedItem;)V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageScroll;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/image/ImageViewPageScroll;-><init>(Landroid/content/Context;Lcom/mycompany/app/image/ImageViewActivity;Landroid/view/Window;Landroid/content/Intent;Lcom/mycompany/app/image/ImageViewActivity$SavedItem;)V

    return-object v0

    :cond_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 3
    const-string v9, "EXTRA_LOAD_TYPE"

    const-string v10, "EXTRA_PRELOAD"

    const-string v11, "EXTRA_REFERER"

    const-string v12, "EXTRA_PAGE"

    const-string v8, "EXTRA_NAME"

    const-string v15, "EXTRA_INDEX"

    const-string v7, "EXTRA_TYPE"

    const-string v14, "EXTRA_BOOK"

    const-string v13, "EXTRA_PATH"

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    .line 4
    new-instance v0, Lcom/mycompany/app/image/ImageViewListVert;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->g:Z

    .line 7
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->a:Landroid/content/Context;

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 9
    iput-object v4, v0, Lcom/mycompany/app/image/ImageViewListVert;->c:Landroid/view/Window;

    .line 10
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    sget-boolean v2, Lcom/mycompany/app/pref/PrefImage;->s:Z

    xor-int/2addr v2, v1

    iput-boolean v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->e:Z

    goto :goto_0

    .line 12
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefImage;->s:Z

    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->e:Z

    .line 13
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListVert;->S0()V

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->k:Z

    if-eqz v6, :cond_3

    .line 15
    iget-boolean v1, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->a:Z

    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->j:Z

    .line 16
    iget-object v1, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->l:Ljava/lang/String;

    .line 17
    iget-boolean v1, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->c:Z

    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->m:Z

    .line 18
    iget v2, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->e:I

    iput v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->n:I

    .line 19
    iget v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->m:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->r:I

    .line 20
    iget-object v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->i:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->s:Ljava/lang/String;

    .line 21
    iget v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->f:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->t:I

    .line 22
    iget-object v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->g:Lcom/mycompany/app/compress/Compress;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->D:Lcom/mycompany/app/compress/Compress;

    .line 23
    iget-object v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->h:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->u:Ljava/lang/String;

    .line 24
    iget v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->j:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->v:I

    .line 25
    iget v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->k:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->w:I

    .line 26
    iget v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->l:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->x:I

    .line 27
    iget-boolean v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->n:Z

    iput-boolean v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->R:Z

    .line 28
    iget v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->o:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->O:I

    if-eqz v1, :cond_12

    .line 29
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->J:Lcom/mycompany/app/image/ImageListAdapter;

    if-eqz v1, :cond_12

    .line 30
    iget-object v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->d:Ljava/util/ArrayList;

    .line 31
    iput-object v3, v1, Lcom/mycompany/app/image/ImageListAdapter;->r:Ljava/util/ArrayList;

    .line 32
    iput v2, v1, Lcom/mycompany/app/image/ImageListAdapter;->s:I

    goto/16 :goto_1

    :cond_3
    if-nez v5, :cond_4

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->t:I

    if-nez v2, :cond_5

    goto/16 :goto_1

    :cond_5
    const/4 v1, -0x1

    .line 34
    invoke-virtual {v5, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_6

    goto/16 :goto_1

    .line 35
    :cond_6
    iget v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->t:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    .line 36
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    move-result-object v1

    if-nez v1, :cond_7

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v5, v14, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 38
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->r:I

    .line 39
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->s:Ljava/lang/String;

    .line 40
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->u:Ljava/lang/String;

    .line 41
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->v:I

    if-nez v2, :cond_8

    .line 42
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->q:Z

    if-eqz v2, :cond_12

    .line 43
    :cond_8
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    iput v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->w:I

    .line 44
    iget v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->x:I

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x2

    if-ne v1, v3, :cond_d

    .line 45
    invoke-virtual {v5, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->u:Ljava/lang/String;

    .line 46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->j:Z

    .line 48
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->k:Z

    goto/16 :goto_1

    .line 49
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v5, v14, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 51
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->r:I

    .line 52
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->s:Ljava/lang/String;

    .line 53
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->u:Ljava/lang/String;

    .line 54
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->v:I

    if-nez v2, :cond_c

    .line 55
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->q:Z

    if-eqz v2, :cond_12

    .line 56
    :cond_c
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    iput v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->w:I

    .line 57
    iget v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->x:I

    goto/16 :goto_1

    :cond_d
    const/4 v3, 0x3

    if-ne v1, v3, :cond_11

    .line 58
    invoke-virtual {v5, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->u:Ljava/lang/String;

    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    .line 60
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->j:Z

    .line 61
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->k:Z

    goto :goto_1

    .line 62
    :cond_e
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_1

    :cond_f
    const/4 v2, 0x0

    .line 63
    invoke-virtual {v5, v14, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 64
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->r:I

    .line 65
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->s:Ljava/lang/String;

    .line 66
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->u:Ljava/lang/String;

    .line 67
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->v:I

    if-nez v2, :cond_10

    .line 68
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->q:Z

    if-eqz v2, :cond_12

    .line 69
    :cond_10
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    iput v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->w:I

    .line 70
    iget v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->x:I

    goto :goto_1

    :cond_11
    const/16 v3, 0xc

    if-ne v1, v3, :cond_12

    .line 71
    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->s:Ljava/lang/String;

    .line 72
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mycompany/app/data/DataUrl;->a()I

    move-result v1

    iput v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->v:I

    .line 73
    iput v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->w:I

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v5, v12, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->x:I

    .line 75
    invoke-virtual {v5, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->l:Ljava/lang/String;

    .line 76
    invoke-virtual {v5, v10, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->m:Z

    .line 77
    invoke-virtual {v5, v9, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->n:I

    .line 78
    :cond_12
    :goto_1
    iget v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->t:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_13

    const/4 v3, 0x2

    if-eq v1, v3, :cond_13

    const/4 v3, 0x3

    if-eq v1, v3, :cond_13

    const/16 v3, 0xc

    if-eq v1, v3, :cond_13

    .line 79
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->a:Landroid/content/Context;

    sget v2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 80
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListVert;->d0()V

    return-object v0

    .line 81
    :cond_13
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v3, 0x1

    .line 82
    iput-boolean v3, v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 83
    iput-boolean v3, v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->b:Z

    .line 84
    iput-boolean v3, v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->e:Z

    .line 85
    new-instance v2, Lcom/nostra13/universalimageloader/core/display/NoneBitmapDisplayer;

    .line 86
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v2, v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 88
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-direct {v2, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 89
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->b0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 90
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->I0:Landroid/os/Handler;

    .line 91
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->b:Lcom/mycompany/app/image/ImageViewActivity;

    if-nez v1, :cond_14

    goto :goto_2

    .line 92
    :cond_14
    new-instance v2, Lcom/mycompany/app/image/ImageViewListVert$29;

    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewListVert$29;-><init>(Lcom/mycompany/app/image/ImageViewListVert;)V

    .line 93
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 94
    :goto_2
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListVert;->W0()V

    .line 95
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_16

    .line 96
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->b:Lcom/mycompany/app/image/ImageViewActivity;

    if-nez v1, :cond_15

    const/4 v1, 0x0

    goto :goto_3

    .line 97
    :cond_15
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_16

    .line 98
    new-instance v2, Lcom/mycompany/app/image/ImageViewListVert$1;

    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewListVert$1;-><init>(Lcom/mycompany/app/image/ImageViewListVert;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 99
    :cond_16
    new-instance v1, Lcom/mycompany/app/image/ImageViewListVert$EventHandler;

    invoke-direct {v1, v0}, Lcom/mycompany/app/image/ImageViewListVert$EventHandler;-><init>(Lcom/mycompany/app/image/ImageViewListVert;)V

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->z:Lcom/mycompany/app/image/ImageViewListVert$EventHandler;

    .line 100
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->b:Lcom/mycompany/app/image/ImageViewActivity;

    if-nez v1, :cond_17

    goto/16 :goto_4

    .line 101
    :cond_17
    new-instance v2, Lcom/mycompany/app/view/MySizeFrame;

    .line 102
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v3, Lcom/mycompany/app/image/ImageListVert;

    invoke-direct {v3, v1}, Lcom/mycompany/app/image/ImageListVert;-><init>(Lcom/mycompany/app/image/ImageViewActivity;)V

    .line 105
    invoke-virtual {v2, v3, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 106
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v2, v5, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 108
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 109
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 110
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_white_24:I

    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 111
    sget v6, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v6, v6

    sget v7, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const v6, -0x5e8a8a8b

    const/high16 v7, -0x5f000000

    .line 112
    invoke-virtual {v4, v7, v6}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    const/16 v6, 0x8

    .line 113
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 114
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x11

    .line 115
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 116
    invoke-virtual {v2, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v8, Lcom/mycompany/app/view/MyCoverView;

    sget v9, Lcom/mycompany/app/main/MainApp;->y1:I

    sget v10, Lcom/mycompany/app/main/MainApp;->z1:I

    const/4 v11, -0x1

    invoke-direct {v8, v1, v11, v9, v10}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 118
    invoke-virtual {v8, v7}, Lcom/mycompany/app/view/MyCoverView;->setBackColor(I)V

    .line 119
    invoke-virtual {v8, v6}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 120
    invoke-virtual {v2, v8, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 121
    new-instance v7, Lcom/mycompany/app/image/ImageCoverView;

    invoke-direct {v7, v1}, Lcom/mycompany/app/image/ImageCoverView;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v7, v6}, Lcom/mycompany/app/image/ImageCoverView;->setVisibility(I)V

    .line 123
    invoke-virtual {v2, v7, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 124
    new-instance v6, Lcom/mycompany/app/image/ImageViewControl;

    invoke-direct {v6, v1}, Lcom/mycompany/app/image/ImageViewControl;-><init>(Landroid/content/Context;)V

    .line 125
    iget v9, v0, Lcom/mycompany/app/image/ImageViewListVert;->d:I

    invoke-virtual {v6, v9}, Lcom/mycompany/app/image/ImageViewControl;->setNaviHeight(I)V

    const/4 v9, 0x4

    .line 126
    invoke-virtual {v6, v9}, Lcom/mycompany/app/image/ImageViewControl;->setVisibility(I)V

    .line 127
    invoke-virtual {v2, v6, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 128
    new-instance v9, Lcom/mycompany/app/view/MyFadeLinear;

    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyFadeLinear;-><init>(Landroid/content/Context;)V

    .line 129
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    invoke-virtual {v9, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 130
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->round_guide_16:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v10, 0x3e8

    .line 131
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyFadeLinear;->setShowTime(I)V

    const/16 v10, 0x258

    .line 132
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyFadeLinear;->setAnimTime(I)V

    const/4 v10, 0x1

    .line 133
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyFadeLinear;->setAutoHide(Z)V

    .line 134
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyFadeLinear;->setBlocking(Z)V

    .line 135
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x8

    .line 136
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyFadeLinear;->setVisibility(I)V

    const/high16 v10, 0x43040000    # 132.0f

    .line 137
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    .line 138
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v11, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x11

    .line 139
    iput v10, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 140
    invoke-virtual {v2, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v11, 0x42a80000    # 84.0f

    .line 142
    invoke-static {v1, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v11

    float-to-int v11, v11

    .line 143
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v11, 0x1

    .line 144
    iput v11, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 145
    invoke-virtual {v9, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v13, 0x0

    .line 147
    invoke-direct {v12, v1, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v14, 0x41800000    # 16.0f

    .line 149
    invoke-virtual {v12, v11, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v15, -0x1

    .line 150
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v15, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 153
    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 154
    invoke-virtual {v9, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 156
    invoke-direct {v14, v1, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 158
    invoke-virtual {v14, v11, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/16 v1, -0x100

    .line 159
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v1, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    iput v13, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 162
    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 163
    invoke-virtual {v9, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 165
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->I:Lcom/mycompany/app/image/ImageListVert;

    .line 166
    iput-object v5, v0, Lcom/mycompany/app/image/ImageViewListVert;->M:Landroid/widget/ImageView;

    .line 167
    iput-object v4, v0, Lcom/mycompany/app/image/ImageViewListVert;->P:Lcom/mycompany/app/view/MyButtonImage;

    .line 168
    iput-object v8, v0, Lcom/mycompany/app/image/ImageViewListVert;->S:Lcom/mycompany/app/view/MyCoverView;

    .line 169
    iput-object v7, v0, Lcom/mycompany/app/image/ImageViewListVert;->T:Lcom/mycompany/app/image/ImageCoverView;

    .line 170
    iput-object v6, v0, Lcom/mycompany/app/image/ImageViewListVert;->U:Lcom/mycompany/app/image/ImageViewControl;

    .line 171
    iput-object v9, v0, Lcom/mycompany/app/image/ImageViewListVert;->X:Lcom/mycompany/app/view/MyFadeLinear;

    .line 172
    iput-object v10, v0, Lcom/mycompany/app/image/ImageViewListVert;->Y:Landroid/view/View;

    .line 173
    iput-object v12, v0, Lcom/mycompany/app/image/ImageViewListVert;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 174
    iput-object v14, v0, Lcom/mycompany/app/image/ImageViewListVert;->a0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 175
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->b:Lcom/mycompany/app/image/ImageViewActivity;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 176
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->H:Lcom/mycompany/app/view/MySizeFrame;

    if-nez v1, :cond_18

    :goto_4
    return-object v0

    .line 177
    :cond_18
    new-instance v2, Lcom/mycompany/app/image/ImageViewListVert$2;

    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewListVert$2;-><init>(Lcom/mycompany/app/image/ImageViewListVert;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-object v0

    :cond_19
    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    .line 178
    new-instance v0, Lcom/mycompany/app/image/ImageViewListHori;

    .line 179
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 180
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->g:Z

    .line 181
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    .line 182
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 183
    iput-object v4, v0, Lcom/mycompany/app/image/ImageViewListHori;->c:Landroid/view/Window;

    .line 184
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 185
    sget-boolean v2, Lcom/mycompany/app/pref/PrefImage;->s:Z

    xor-int/2addr v2, v1

    iput-boolean v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->e:Z

    goto :goto_5

    .line 186
    :cond_1a
    sget-boolean v1, Lcom/mycompany/app/pref/PrefImage;->s:Z

    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->e:Z

    .line 187
    :goto_5
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListHori;->S0()V

    const/4 v2, 0x0

    .line 188
    iput-boolean v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->k:Z

    if-eqz v6, :cond_1b

    .line 189
    iget-boolean v1, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->a:Z

    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->j:Z

    .line 190
    iget-object v1, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->l:Ljava/lang/String;

    .line 191
    iget-boolean v1, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->c:Z

    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->m:Z

    .line 192
    iget v2, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->e:I

    iput v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->n:I

    .line 193
    iget v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->m:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->r:I

    .line 194
    iget-object v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->i:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->s:Ljava/lang/String;

    .line 195
    iget v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->f:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->t:I

    .line 196
    iget-object v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->g:Lcom/mycompany/app/compress/Compress;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->D:Lcom/mycompany/app/compress/Compress;

    .line 197
    iget-object v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->h:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->u:Ljava/lang/String;

    .line 198
    iget v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->j:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->v:I

    .line 199
    iget v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->k:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->w:I

    .line 200
    iget v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->l:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->x:I

    .line 201
    iget-boolean v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->n:Z

    iput-boolean v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->R:Z

    .line 202
    iget v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->o:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->O:I

    if-eqz v1, :cond_2a

    .line 203
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->J:Lcom/mycompany/app/image/ImageListAdapter;

    if-eqz v1, :cond_2a

    .line 204
    iget-object v3, v6, Lcom/mycompany/app/image/ImageViewActivity$SavedItem;->d:Ljava/util/ArrayList;

    .line 205
    iput-object v3, v1, Lcom/mycompany/app/image/ImageListAdapter;->r:Ljava/util/ArrayList;

    .line 206
    iput v2, v1, Lcom/mycompany/app/image/ImageListAdapter;->s:I

    goto/16 :goto_6

    :cond_1b
    if-nez v5, :cond_1c

    goto/16 :goto_6

    :cond_1c
    const/4 v2, 0x0

    .line 207
    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->t:I

    if-nez v1, :cond_1d

    goto/16 :goto_6

    :cond_1d
    const/4 v1, -0x1

    .line 208
    invoke-virtual {v5, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1e

    goto/16 :goto_6

    .line 209
    :cond_1e
    iget v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->t:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_21

    .line 210
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    move-result-object v1

    if-nez v1, :cond_1f

    goto/16 :goto_6

    :cond_1f
    const/4 v2, 0x0

    .line 211
    invoke-virtual {v5, v14, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 212
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->r:I

    .line 213
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->s:Ljava/lang/String;

    .line 214
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->u:Ljava/lang/String;

    .line 215
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->v:I

    if-nez v2, :cond_20

    .line 216
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->q:Z

    if-eqz v2, :cond_2a

    .line 217
    :cond_20
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    iput v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->w:I

    .line 218
    iget v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->x:I

    goto/16 :goto_6

    :cond_21
    const/4 v3, 0x2

    if-ne v1, v3, :cond_25

    .line 219
    invoke-virtual {v5, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->u:Ljava/lang/String;

    .line 220
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    const/4 v1, 0x1

    .line 221
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->j:Z

    .line 222
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->k:Z

    goto/16 :goto_6

    .line 223
    :cond_22
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    move-result-object v1

    if-nez v1, :cond_23

    goto/16 :goto_6

    :cond_23
    const/4 v2, 0x0

    .line 224
    invoke-virtual {v5, v14, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 225
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->r:I

    .line 226
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->s:Ljava/lang/String;

    .line 227
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->u:Ljava/lang/String;

    .line 228
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->v:I

    if-nez v2, :cond_24

    .line 229
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->q:Z

    if-eqz v2, :cond_2a

    .line 230
    :cond_24
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    iput v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->w:I

    .line 231
    iget v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->x:I

    goto/16 :goto_6

    :cond_25
    const/4 v3, 0x3

    if-ne v1, v3, :cond_29

    .line 232
    invoke-virtual {v5, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->u:Ljava/lang/String;

    .line 233
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x1

    .line 234
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->j:Z

    .line 235
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->k:Z

    goto :goto_6

    .line 236
    :cond_26
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    move-result-object v1

    if-nez v1, :cond_27

    goto :goto_6

    :cond_27
    const/4 v2, 0x0

    .line 237
    invoke-virtual {v5, v14, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 238
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->r:I

    .line 239
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->s:Ljava/lang/String;

    .line 240
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->u:Ljava/lang/String;

    .line 241
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    iput v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->v:I

    if-nez v2, :cond_28

    .line 242
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->q:Z

    if-eqz v2, :cond_2a

    .line 243
    :cond_28
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    iput v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->w:I

    .line 244
    iget v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    iput v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->x:I

    goto :goto_6

    :cond_29
    const/16 v3, 0xc

    if-ne v1, v3, :cond_2a

    .line 245
    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->s:Ljava/lang/String;

    .line 246
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mycompany/app/data/DataUrl;->a()I

    move-result v1

    iput v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->v:I

    .line 247
    iput v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->w:I

    const/4 v2, 0x0

    .line 248
    invoke-virtual {v5, v12, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->x:I

    .line 249
    invoke-virtual {v5, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->l:Ljava/lang/String;

    .line 250
    invoke-virtual {v5, v10, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->m:Z

    .line 251
    invoke-virtual {v5, v9, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->n:I

    .line 252
    :cond_2a
    :goto_6
    iget v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->t:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2b

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2b

    const/16 v3, 0xc

    if-eq v1, v3, :cond_2b

    .line 253
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    sget v2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 254
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListHori;->d0()V

    return-object v0

    .line 255
    :cond_2b
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v3, 0x1

    .line 256
    iput-boolean v3, v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 257
    iput-boolean v3, v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->b:Z

    .line 258
    iput-boolean v3, v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->e:Z

    .line 259
    new-instance v2, Lcom/nostra13/universalimageloader/core/display/NoneBitmapDisplayer;

    .line 260
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object v2, v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 262
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-direct {v2, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 263
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->b0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 264
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->J0:Landroid/os/Handler;

    .line 265
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    if-nez v1, :cond_2c

    goto :goto_7

    .line 266
    :cond_2c
    new-instance v2, Lcom/mycompany/app/image/ImageViewListHori$29;

    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewListHori$29;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 267
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 268
    :goto_7
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListHori;->W0()V

    .line 269
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_2e

    .line 270
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    if-nez v1, :cond_2d

    const/4 v13, 0x0

    goto :goto_8

    .line 271
    :cond_2d
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    move-result-object v13

    :goto_8
    if-eqz v13, :cond_2e

    .line 272
    new-instance v1, Lcom/mycompany/app/image/ImageViewListHori$1;

    invoke-direct {v1, v0}, Lcom/mycompany/app/image/ImageViewListHori$1;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    invoke-virtual {v13, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 273
    :cond_2e
    new-instance v1, Lcom/mycompany/app/image/ImageViewListHori$EventHandler;

    invoke-direct {v1, v0}, Lcom/mycompany/app/image/ImageViewListHori$EventHandler;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->z:Lcom/mycompany/app/image/ImageViewListHori$EventHandler;

    .line 274
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    if-nez v1, :cond_2f

    goto/16 :goto_9

    .line 275
    :cond_2f
    new-instance v2, Lcom/mycompany/app/view/MySizeFrame;

    .line 276
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 277
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v3, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    new-instance v3, Lcom/mycompany/app/image/ImageListHori;

    invoke-direct {v3, v1}, Lcom/mycompany/app/image/ImageListHori;-><init>(Lcom/mycompany/app/image/ImageViewActivity;)V

    .line 279
    invoke-virtual {v2, v3, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 280
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 281
    invoke-virtual {v2, v4, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 282
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 283
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 284
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_white_24:I

    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 285
    sget v6, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v6, v6

    sget v7, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const v6, -0x5e8a8a8b

    const/high16 v7, -0x5f000000

    .line 286
    invoke-virtual {v5, v7, v6}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    const/16 v10, 0x8

    .line 287
    invoke-virtual {v5, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 288
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x11

    .line 289
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 290
    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    new-instance v6, Lcom/mycompany/app/view/MyCoverView;

    sget v8, Lcom/mycompany/app/main/MainApp;->y1:I

    sget v9, Lcom/mycompany/app/main/MainApp;->z1:I

    const/4 v11, -0x1

    invoke-direct {v6, v1, v11, v8, v9}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 292
    invoke-virtual {v6, v7}, Lcom/mycompany/app/view/MyCoverView;->setBackColor(I)V

    .line 293
    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 294
    invoke-virtual {v2, v6, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 295
    new-instance v7, Lcom/mycompany/app/image/ImageCoverView;

    invoke-direct {v7, v1}, Lcom/mycompany/app/image/ImageCoverView;-><init>(Landroid/content/Context;)V

    .line 296
    invoke-virtual {v7, v10}, Lcom/mycompany/app/image/ImageCoverView;->setVisibility(I)V

    .line 297
    invoke-virtual {v2, v7, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 298
    new-instance v8, Lcom/mycompany/app/image/ImageViewControl;

    invoke-direct {v8, v1}, Lcom/mycompany/app/image/ImageViewControl;-><init>(Landroid/content/Context;)V

    .line 299
    iget v9, v0, Lcom/mycompany/app/image/ImageViewListHori;->d:I

    invoke-virtual {v8, v9}, Lcom/mycompany/app/image/ImageViewControl;->setNaviHeight(I)V

    const/4 v9, 0x4

    .line 300
    invoke-virtual {v8, v9}, Lcom/mycompany/app/image/ImageViewControl;->setVisibility(I)V

    .line 301
    invoke-virtual {v2, v8, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 302
    new-instance v9, Lcom/mycompany/app/view/MyFadeLinear;

    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyFadeLinear;-><init>(Landroid/content/Context;)V

    .line 303
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    invoke-virtual {v9, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 304
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->round_guide_16:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v10, 0x3e8

    .line 305
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyFadeLinear;->setShowTime(I)V

    const/16 v10, 0x258

    .line 306
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyFadeLinear;->setAnimTime(I)V

    const/4 v10, 0x1

    .line 307
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyFadeLinear;->setAutoHide(Z)V

    .line 308
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyFadeLinear;->setBlocking(Z)V

    .line 309
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x8

    .line 310
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyFadeLinear;->setVisibility(I)V

    const/high16 v10, 0x43040000    # 132.0f

    .line 311
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    .line 312
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v11, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x11

    .line 313
    iput v10, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 314
    invoke-virtual {v2, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v11, 0x42a80000    # 84.0f

    .line 316
    invoke-static {v1, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v11

    float-to-int v11, v11

    .line 317
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v11, 0x1

    .line 318
    iput v11, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 319
    invoke-virtual {v9, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v13, 0x0

    .line 321
    invoke-direct {v12, v1, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 322
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v14, 0x41800000    # 16.0f

    .line 323
    invoke-virtual {v12, v11, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v15, -0x1

    .line 324
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v15, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 326
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 327
    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 328
    invoke-virtual {v9, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 330
    invoke-direct {v14, v1, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 331
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 332
    invoke-virtual {v14, v11, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/16 v1, -0x100

    .line 333
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 334
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v1, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 335
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    iput v13, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 336
    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 337
    invoke-virtual {v9, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 339
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->I:Lcom/mycompany/app/image/ImageListHori;

    .line 340
    iput-object v4, v0, Lcom/mycompany/app/image/ImageViewListHori;->M:Landroid/widget/ImageView;

    .line 341
    iput-object v5, v0, Lcom/mycompany/app/image/ImageViewListHori;->P:Lcom/mycompany/app/view/MyButtonImage;

    .line 342
    iput-object v6, v0, Lcom/mycompany/app/image/ImageViewListHori;->S:Lcom/mycompany/app/view/MyCoverView;

    .line 343
    iput-object v7, v0, Lcom/mycompany/app/image/ImageViewListHori;->T:Lcom/mycompany/app/image/ImageCoverView;

    .line 344
    iput-object v8, v0, Lcom/mycompany/app/image/ImageViewListHori;->U:Lcom/mycompany/app/image/ImageViewControl;

    .line 345
    iput-object v9, v0, Lcom/mycompany/app/image/ImageViewListHori;->X:Lcom/mycompany/app/view/MyFadeLinear;

    .line 346
    iput-object v10, v0, Lcom/mycompany/app/image/ImageViewListHori;->Y:Landroid/view/View;

    .line 347
    iput-object v12, v0, Lcom/mycompany/app/image/ImageViewListHori;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 348
    iput-object v14, v0, Lcom/mycompany/app/image/ImageViewListHori;->a0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 349
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 350
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    if-nez v1, :cond_30

    :goto_9
    return-object v0

    .line 351
    :cond_30
    new-instance v2, Lcom/mycompany/app/image/ImageViewListHori$2;

    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewListHori$2;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-object v0

    .line 352
    :cond_31
    new-instance v0, Lcom/mycompany/app/image/ImageViewWrapper;

    .line 353
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method


# virtual methods
.method public F(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
.end method

.method public G()V
    .locals 0

    .line 1
    return-void
.end method

.method public H(I)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public I(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public J()V
    .locals 0

    .line 1
    return-void
.end method

.method public K()V
    .locals 0

    .line 1
    return-void
.end method

.method public L()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public M(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public e()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    return v0
.end method

.method public j(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
.end method
