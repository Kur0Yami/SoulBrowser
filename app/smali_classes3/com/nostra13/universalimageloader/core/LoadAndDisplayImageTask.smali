.class final Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
    }
.end annotation


# instance fields
.field public final c:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

.field public final f:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

.field public final g:Landroid/os/Handler;

.field public final h:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field public final i:Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;

.field public final j:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field public final k:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field public final l:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field public final q:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field public final r:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public final s:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field public final t:Z

.field public final u:Lcom/mycompany/app/main/MainItem$ViewItem;

.field public final v:I

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->c:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->z:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->c:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->f:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    new-instance p3, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->g:Landroid/os/Handler;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->h:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 28
    .line 29
    iget-object p3, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->k:Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;

    .line 30
    .line 31
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->i:Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;

    .line 32
    .line 33
    iget-object p3, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->n:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 34
    .line 35
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->j:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 36
    .line 37
    iget-object p3, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->o:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 38
    .line 39
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->k:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->l:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->l:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;

    .line 44
    .line 45
    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->a:Ljava/lang/String;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->m:Ljava/lang/String;

    .line 48
    .line 49
    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->b:Ljava/lang/String;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->n:Ljava/lang/String;

    .line 52
    .line 53
    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->c:Ljava/lang/String;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->o:Ljava/lang/String;

    .line 56
    .line 57
    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->d:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->p:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 60
    .line 61
    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->e:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->q:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 64
    .line 65
    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->f:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 66
    .line 67
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->r:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 68
    .line 69
    iget-object p3, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->g:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 70
    .line 71
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->s:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 72
    .line 73
    iget-boolean p1, p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->g:Z

    .line 74
    .line 75
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->t:Z

    .line 76
    .line 77
    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->i:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->u:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 80
    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const/16 p1, 0x8

    .line 87
    .line 88
    :goto_0
    iput p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->v:I

    .line 89
    .line 90
    return-void
.end method

.method public static j(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    if-nez p2, :cond_1

    .line 8
    .line 9
    iget-object p1, p3, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->d:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->t:Z

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->h()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->i()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_1
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->p:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->c:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->e:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->o:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    new-instance v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->p:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->c()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .line 6
    .line 7
    .line 8
    move-result-object v10

    .line 9
    new-instance v2, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->f()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 12
    .line 13
    .line 14
    move-result-object v11

    .line 15
    iget-object v12, v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->r:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 16
    .line 17
    iget-object v4, v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->o:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v7, v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->m:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v8, v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->q:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 22
    .line 23
    iget v9, v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->v:I

    .line 24
    .line 25
    move-object/from16 v3, p1

    .line 26
    .line 27
    move-object/from16 v5, p2

    .line 28
    .line 29
    move-object/from16 v6, p3

    .line 30
    .line 31
    invoke-direct/range {v2 .. v12}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;-><init>(Lcom/mycompany/app/main/MainItem$ViewItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;ILcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->l:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    invoke-interface {v11, v3}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->a(Lcom/mycompany/app/main/MainItem$ViewItem;)Ljava/io/InputStream;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object/from16 v5, p2

    .line 47
    .line 48
    move-object/from16 v6, p3

    .line 49
    .line 50
    invoke-interface {v11, v5, v6}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    :goto_0
    const/4 v6, 0x6

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v9, 0x1

    .line 57
    const/4 v10, 0x0

    .line 58
    if-nez v5, :cond_1

    .line 59
    .line 60
    new-array v0, v9, [Ljava/lang/Object;

    .line 61
    .line 62
    aput-object v4, v0, v8

    .line 63
    .line 64
    const-string v2, "No stream for image [%s]"

    .line 65
    .line 66
    invoke-static {v6, v10, v2, v0}, Lcom/nostra13/universalimageloader/utils/L;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-object v10

    .line 70
    :cond_1
    :try_start_0
    invoke-static {v7}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    if-eqz v11, :cond_2

    .line 75
    .line 76
    invoke-static {v7, v10, v10, v9}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto/16 :goto_b

    .line 83
    .line 84
    :cond_2
    invoke-static {v10, v7}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    :goto_1
    invoke-static {v11}, Lcom/mycompany/app/compress/Compress;->I(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    invoke-static {v5, v2, v11}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->a(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;Z)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    invoke-static {v5, v2}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->c(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    iget-object v13, v12, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->a:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 101
    .line 102
    invoke-virtual {v0, v13, v2}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->b(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/BitmapFactory$Options;

    .line 103
    .line 104
    .line 105
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    const/16 v13, 0x8

    .line 107
    .line 108
    if-eqz v11, :cond_3

    .line 109
    .line 110
    :try_start_1
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->C3(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    goto :goto_3

    .line 115
    :catch_0
    move-object v14, v10

    .line 116
    goto :goto_4

    .line 117
    :cond_3
    invoke-static {v5, v0}, Lcom/mycompany/app/main/BitmapUtil;->e(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 118
    .line 119
    .line 120
    move-result-object v14
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    if-nez v14, :cond_5

    .line 122
    .line 123
    if-eqz v3, :cond_5

    .line 124
    .line 125
    :try_start_2
    iget v15, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 126
    .line 127
    if-ne v15, v13, :cond_5

    .line 128
    .line 129
    invoke-static {v5, v2}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->c(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->C3(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 134
    .line 135
    .line 136
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    :goto_2
    move v11, v9

    .line 140
    goto :goto_3

    .line 141
    :cond_4
    move v11, v8

    .line 142
    goto :goto_3

    .line 143
    :catch_1
    :cond_5
    move-object v0, v14

    .line 144
    :catch_2
    :cond_6
    :goto_3
    move-object v13, v0

    .line 145
    goto :goto_5

    .line 146
    :catch_3
    :goto_4
    :try_start_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 147
    .line 148
    .line 149
    invoke-static {v5, v2}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->c(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    if-eqz v11, :cond_7

    .line 154
    .line 155
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->C3(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    goto :goto_3

    .line 160
    :cond_7
    invoke-static {v5, v0}, Lcom/mycompany/app/main/BitmapUtil;->e(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 161
    .line 162
    .line 163
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    if-nez v0, :cond_6

    .line 165
    .line 166
    if-eqz v3, :cond_6

    .line 167
    .line 168
    :try_start_4
    iget v14, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 169
    .line 170
    if-ne v14, v13, :cond_6

    .line 171
    .line 172
    invoke-static {v5, v2}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->c(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->C3(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 177
    .line 178
    .line 179
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    if-eqz v0, :cond_4

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :goto_5
    invoke-static {v5}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 184
    .line 185
    .line 186
    if-nez v13, :cond_8

    .line 187
    .line 188
    new-array v0, v9, [Ljava/lang/Object;

    .line 189
    .line 190
    aput-object v4, v0, v8

    .line 191
    .line 192
    const-string v2, "Image can\'t be decoded [%s]"

    .line 193
    .line 194
    invoke-static {v6, v10, v2, v0}, Lcom/nostra13/universalimageloader/utils/L;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_a

    .line 198
    .line 199
    :cond_8
    if-eqz v11, :cond_9

    .line 200
    .line 201
    if-eqz v3, :cond_9

    .line 202
    .line 203
    iget-object v0, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 204
    .line 205
    if-eqz v0, :cond_9

    .line 206
    .line 207
    invoke-static {v13}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_9

    .line 212
    .line 213
    iget-object v0, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    invoke-static {v7}, Lcom/mycompany/app/compress/Compress;->h(Ljava/lang/String;)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    if-nez v0, :cond_9

    .line 223
    .line 224
    iget-object v0, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 225
    .line 226
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-static {v3, v4, v8, v7}, Lcom/mycompany/app/compress/Compress;->O(IIILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :cond_9
    iget-object v0, v12, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->b:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;

    .line 241
    .line 242
    iget v0, v0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;->a:I

    .line 243
    .line 244
    new-instance v3, Landroid/graphics/Matrix;

    .line 245
    .line 246
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 247
    .line 248
    .line 249
    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->h:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 250
    .line 251
    sget-object v5, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->i:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 252
    .line 253
    iget-object v6, v2, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->f:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 254
    .line 255
    if-eq v6, v4, :cond_a

    .line 256
    .line 257
    if-ne v6, v5, :cond_16

    .line 258
    .line 259
    :cond_a
    new-instance v4, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 260
    .line 261
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    .line 266
    .line 267
    .line 268
    move-result v10

    .line 269
    invoke-direct {v4, v7, v10, v0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(III)V

    .line 270
    .line 271
    .line 272
    if-ne v6, v5, :cond_b

    .line 273
    .line 274
    move v8, v9

    .line 275
    :cond_b
    iget-object v5, v2, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->d:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 276
    .line 277
    iget v6, v5, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->a:I

    .line 278
    .line 279
    iget v5, v5, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->b:I

    .line 280
    .line 281
    sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->f:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .line 282
    .line 283
    const/high16 v9, 0x3f800000    # 1.0f

    .line 284
    .line 285
    iget v10, v4, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->b:I

    .line 286
    .line 287
    iget v4, v4, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->a:I

    .line 288
    .line 289
    iget-object v11, v2, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->g:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .line 290
    .line 291
    if-ne v11, v7, :cond_10

    .line 292
    .line 293
    int-to-float v2, v4

    .line 294
    int-to-float v7, v6

    .line 295
    div-float v7, v2, v7

    .line 296
    .line 297
    int-to-float v11, v10

    .line 298
    int-to-float v12, v5

    .line 299
    div-float v12, v11, v12

    .line 300
    .line 301
    cmpg-float v14, v7, v12

    .line 302
    .line 303
    if-gez v14, :cond_c

    .line 304
    .line 305
    div-float/2addr v11, v7

    .line 306
    float-to-int v5, v11

    .line 307
    goto :goto_6

    .line 308
    :cond_c
    div-float v6, v2, v12

    .line 309
    .line 310
    float-to-int v6, v6

    .line 311
    :goto_6
    if-nez v8, :cond_d

    .line 312
    .line 313
    if-ge v6, v4, :cond_d

    .line 314
    .line 315
    if-lt v5, v10, :cond_e

    .line 316
    .line 317
    :cond_d
    if-eqz v8, :cond_f

    .line 318
    .line 319
    if-eq v6, v4, :cond_f

    .line 320
    .line 321
    if-eq v5, v10, :cond_f

    .line 322
    .line 323
    :cond_e
    int-to-float v4, v6

    .line 324
    div-float/2addr v4, v2

    .line 325
    goto :goto_9

    .line 326
    :cond_f
    :goto_7
    move v4, v9

    .line 327
    goto :goto_9

    .line 328
    :cond_10
    iget v2, v2, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;->e:I

    .line 329
    .line 330
    if-nez v2, :cond_11

    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_11
    and-int/lit8 v7, v2, 0x20

    .line 334
    .line 335
    const/16 v8, 0x20

    .line 336
    .line 337
    const/16 v11, 0x80

    .line 338
    .line 339
    if-ne v7, v8, :cond_13

    .line 340
    .line 341
    if-le v4, v10, :cond_12

    .line 342
    .line 343
    and-int/2addr v2, v11

    .line 344
    if-ne v2, v11, :cond_12

    .line 345
    .line 346
    div-int/lit8 v4, v4, 0x2

    .line 347
    .line 348
    :cond_12
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->o2()I

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    goto :goto_8

    .line 361
    :cond_13
    and-int/lit8 v7, v2, 0x40

    .line 362
    .line 363
    const/16 v8, 0x40

    .line 364
    .line 365
    if-ne v7, v8, :cond_14

    .line 366
    .line 367
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->o2()I

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 376
    .line 377
    .line 378
    move-result v6

    .line 379
    goto :goto_8

    .line 380
    :cond_14
    if-le v4, v10, :cond_15

    .line 381
    .line 382
    and-int/2addr v2, v11

    .line 383
    if-ne v2, v11, :cond_15

    .line 384
    .line 385
    div-int/lit8 v4, v4, 0x2

    .line 386
    .line 387
    :cond_15
    :goto_8
    int-to-float v2, v6

    .line 388
    int-to-float v4, v4

    .line 389
    div-float/2addr v2, v4

    .line 390
    int-to-float v4, v5

    .line 391
    int-to-float v5, v10

    .line 392
    div-float/2addr v4, v5

    .line 393
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    :goto_9
    invoke-static {v4, v9}, Ljava/lang/Float;->compare(FF)I

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    if-eqz v2, :cond_16

    .line 402
    .line 403
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 404
    .line 405
    .line 406
    :cond_16
    if-eqz v0, :cond_17

    .line 407
    .line 408
    int-to-float v0, v0

    .line 409
    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 410
    .line 411
    .line 412
    :cond_17
    :try_start_5
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    .line 413
    .line 414
    .line 415
    move-result v16

    .line 416
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    .line 417
    .line 418
    .line 419
    move-result v17

    .line 420
    const/16 v19, 0x1

    .line 421
    .line 422
    const/4 v14, 0x0

    .line 423
    const/4 v15, 0x0

    .line 424
    move-object/from16 v18, v3

    .line 425
    .line 426
    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 427
    .line 428
    .line 429
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4

    .line 430
    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    if-nez v2, :cond_18

    .line 435
    .line 436
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 437
    .line 438
    .line 439
    :cond_18
    move-object v13, v0

    .line 440
    :catch_4
    :goto_a
    return-object v13

    .line 441
    :goto_b
    invoke-static {v5}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 442
    .line 443
    .line 444
    throw v0
.end method

.method public final d()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->m:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    return v2

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->f()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->r:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->n:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v1, v0, v3}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->o:Ljava/lang/String;

    .line 32
    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    const/4 v3, 0x0

    .line 37
    const-string v4, "No stream for image [%s]"

    .line 38
    .line 39
    invoke-static {v1, v3, v4, v0}, Lcom/nostra13/universalimageloader/utils/L;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return v2

    .line 43
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->h:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->j:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 46
    .line 47
    invoke-interface {v2, v0, v1, p0}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->c(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z

    .line 48
    .line 49
    .line 50
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 52
    .line 53
    .line 54
    return v0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method public final e(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->t:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->s:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->u:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 8
    .line 9
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/assist/FailReason;-><init>(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-interface {p2, v0, p1, v1}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->h()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->i()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;

    .line 33
    .line 34
    invoke-direct {v0, p0, p1, p2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;-><init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->g:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->c:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-static {v0, v1, p1, p2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->j(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)V

    .line 43
    .line 44
    .line 45
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final f()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->c:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->j:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->k:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->i:Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;

    .line 26
    .line 27
    return-object v0
.end method

.method public final g(Lcom/mycompany/app/main/MainItem$ViewItem;)Landroid/graphics/Bitmap;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    move-object v4, v1

    .line 6
    move v3, v2

    .line 7
    :goto_0
    const/4 v5, 0x0

    .line 8
    const/16 v6, 0x1a

    .line 9
    .line 10
    if-ge v3, v6, :cond_2

    .line 11
    .line 12
    sget-object v6, Lcom/nostra13/universalimageloader/core/ImageLoader;->d:[I

    .line 13
    .line 14
    aget v6, v6, v3

    .line 15
    .line 16
    iget v7, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->v:I

    .line 17
    .line 18
    if-ne v6, v7, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->h:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 22
    .line 23
    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->h:Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 24
    .line 25
    iget-object v7, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->m:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v6, v7}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual {v4, v6}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    move v3, v2

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v3, v5

    .line 47
    :goto_2
    if-nez v3, :cond_3

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    iget-object v3, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->p:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 51
    .line 52
    invoke-interface {v3}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->c()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .line 53
    .line 54
    .line 55
    move-result-object v14

    .line 56
    new-instance v6, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->f()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 59
    .line 60
    .line 61
    move-result-object v15

    .line 62
    iget-object v3, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->r:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 63
    .line 64
    iget-object v8, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->o:Ljava/lang/String;

    .line 65
    .line 66
    const/4 v9, 0x0

    .line 67
    iget-object v10, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->n:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v11, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->m:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v12, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->q:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 72
    .line 73
    iget v13, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->v:I

    .line 74
    .line 75
    move-object/from16 v7, p1

    .line 76
    .line 77
    move-object/from16 v16, v3

    .line 78
    .line 79
    invoke-direct/range {v6 .. v16}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;-><init>(Lcom/mycompany/app/main/MainItem$ViewItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;ILcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 80
    .line 81
    .line 82
    iget-object v3, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->l:Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-nez v7, :cond_4

    .line 92
    .line 93
    :goto_3
    return-object v1

    .line 94
    :cond_4
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    invoke-direct {v1, v7, v8, v5}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(III)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v1, v6}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;->b(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/BitmapFactory$Options;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 112
    .line 113
    if-ne v1, v2, :cond_5

    .line 114
    .line 115
    return-object v4

    .line 116
    :cond_5
    int-to-float v1, v1

    .line 117
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    int-to-float v3, v3

    .line 122
    div-float/2addr v3, v1

    .line 123
    float-to-int v3, v3

    .line 124
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    int-to-float v5, v5

    .line 129
    div-float/2addr v5, v1

    .line 130
    float-to-int v1, v5

    .line 131
    if-nez v3, :cond_6

    .line 132
    .line 133
    move v3, v2

    .line 134
    :cond_6
    if-nez v1, :cond_7

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_7
    move v2, v1

    .line 138
    :goto_4
    :try_start_0
    invoke-static {v3, v2, v4}, Lcom/mycompany/app/main/MainUtil;->k3(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 139
    .line 140
    .line 141
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return-object v1

    .line 143
    :catch_0
    return-object v4
.end method

.method public final h()Z
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->p:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->c:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->e:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->o:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    return v0

    .line 38
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 39
    return v0
.end method

.method public final k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->h:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return v1

    .line 13
    :catch_0
    move-exception v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return v1

    .line 16
    :goto_0
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/L;->a(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final l()Landroid/graphics/Bitmap;
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->n:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->h:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 8
    .line 9
    iget v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->v:I

    .line 10
    .line 11
    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->u:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 12
    .line 13
    const/4 v8, 0x0

    .line 14
    if-eq v6, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-ne v6, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->w:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, v5, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->j:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 29
    .line 30
    iget-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->w:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v0, v9}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    if-eqz v9, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 45
    .line 46
    .line 47
    move-result-wide v9

    .line 48
    cmp-long v9, v9, v3

    .line 49
    .line 50
    if-lez v9, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->b()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v8, v0, v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 60
    .line 61
    .line 62
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-eqz v9, :cond_3

    .line 68
    .line 69
    iput-boolean v2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->y:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    return-object v0

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    move-object v8, v0

    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :catch_0
    move-exception v1

    .line 77
    move-object v8, v0

    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :catch_1
    move-exception v1

    .line 81
    move-object v8, v0

    .line 82
    goto/16 :goto_7

    .line 83
    .line 84
    :catch_2
    move-exception v0

    .line 85
    goto/16 :goto_8

    .line 86
    .line 87
    :catchall_1
    move-exception v1

    .line 88
    goto/16 :goto_5

    .line 89
    .line 90
    :catch_3
    move-exception v1

    .line 91
    goto/16 :goto_6

    .line 92
    .line 93
    :catch_4
    move-exception v1

    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :catch_5
    move-object v0, v8

    .line 97
    goto/16 :goto_9

    .line 98
    .line 99
    :cond_1
    move-object v0, v8

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->b()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v7}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->g(Lcom/mycompany/app/main/MainItem$ViewItem;)Landroid/graphics/Bitmap;

    .line 105
    .line 106
    .line 107
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    :try_start_3
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    if-eqz v9, :cond_3

    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 116
    .line 117
    iget-boolean v9, v7, Lcom/mycompany/app/main/MainItem$ViewItem;->u:Z

    .line 118
    .line 119
    if-eqz v9, :cond_5

    .line 120
    .line 121
    :cond_4
    iget-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->r:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 122
    .line 123
    iget-boolean v9, v9, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->b:Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    .line 125
    if-eqz v9, :cond_5

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_5
    const/4 v2, 0x0

    .line 129
    :goto_2
    iget-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->m:Ljava/lang/String;

    .line 130
    .line 131
    if-eqz v2, :cond_7

    .line 132
    .line 133
    :try_start_4
    iget-object v10, v5, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->j:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 134
    .line 135
    invoke-interface {v10, v9}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    if-eqz v10, :cond_7

    .line 140
    .line 141
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 142
    .line 143
    .line 144
    move-result v11

    .line 145
    if-eqz v11, :cond_7

    .line 146
    .line 147
    invoke-virtual {v10}, Ljava/io/File;->length()J

    .line 148
    .line 149
    .line 150
    move-result-wide v11

    .line 151
    cmp-long v3, v11, v3

    .line 152
    .line 153
    if-lez v3, :cond_7

    .line 154
    .line 155
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->f:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 156
    .line 157
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->z:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 158
    .line 159
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    if-nez v6, :cond_6

    .line 164
    .line 165
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    :cond_6
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->b()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v8, v3, v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    :cond_7
    if-eqz v0, :cond_9

    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-lez v3, :cond_9

    .line 182
    .line 183
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-gtz v3, :cond_8

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_8
    return-object v0

    .line 191
    :cond_9
    :goto_3
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->c:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 192
    .line 193
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->z:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 194
    .line 195
    if-eqz v2, :cond_b

    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->k()Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_b

    .line 202
    .line 203
    iget-object v2, v5, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->j:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 204
    .line 205
    invoke-interface {v2, v9}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    if-eqz v2, :cond_b

    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    if-nez v6, :cond_a

    .line 216
    .line 217
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    :cond_a
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->b()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v8, v2, v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    :cond_b
    if-eqz v0, :cond_c

    .line 228
    .line 229
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-lez v2, :cond_c

    .line 234
    .line 235
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-gtz v2, :cond_d

    .line 240
    .line 241
    :cond_c
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->b()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, v7, v8, v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    :cond_d
    if-eqz v0, :cond_f

    .line 249
    .line 250
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-lez v1, :cond_f

    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-gtz v1, :cond_e

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_e
    return-object v0

    .line 264
    :cond_f
    :goto_4
    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->f:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 265
    .line 266
    invoke-virtual {p0, v1, v8}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->e(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 267
    .line 268
    .line 269
    return-object v0

    .line 270
    :goto_5
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/L;->a(Ljava/lang/Throwable;)V

    .line 271
    .line 272
    .line 273
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->i:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 274
    .line 275
    invoke-virtual {p0, v0, v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->e(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 276
    .line 277
    .line 278
    goto :goto_a

    .line 279
    :goto_6
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/L;->a(Ljava/lang/Throwable;)V

    .line 280
    .line 281
    .line 282
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->h:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 283
    .line 284
    invoke-virtual {p0, v0, v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->e(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 285
    .line 286
    .line 287
    goto :goto_a

    .line 288
    :goto_7
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/L;->a(Ljava/lang/Throwable;)V

    .line 289
    .line 290
    .line 291
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->c:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 292
    .line 293
    invoke-virtual {p0, v0, v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->e(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 294
    .line 295
    .line 296
    goto :goto_a

    .line 297
    :goto_8
    throw v0

    .line 298
    :catch_6
    :goto_9
    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->g:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 299
    .line 300
    invoke-virtual {p0, v1, v8}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->e(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 301
    .line 302
    .line 303
    move-object v8, v0

    .line 304
    :goto_a
    return-object v8
.end method

.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->c:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->c:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->j:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    :try_start_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->c:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->j:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    :try_start_2
    const-string v0, "Task was interrupted [%s]"

    .line 35
    .line 36
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->o:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    new-array v6, v5, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v4, v6, v2

    .line 42
    .line 43
    const/4 v4, 0x6

    .line 44
    invoke-static {v4, v3, v0, v6}, Lcom/nostra13/universalimageloader/utils/L;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    monitor-exit v1

    .line 48
    goto :goto_3

    .line 49
    :cond_0
    :goto_0
    monitor-exit v1

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    throw v0

    .line 53
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->i()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    :goto_3
    if-eqz v5, :cond_2

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->r:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->f:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 73
    .line 74
    .line 75
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->w:Ljava/lang/String;

    .line 76
    .line 77
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->x:Ljava/lang/String;

    .line 78
    .line 79
    iput-boolean v2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->y:Z

    .line 80
    .line 81
    :try_start_3
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->b()V

    .line 82
    .line 83
    .line 84
    iget v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->v:I

    .line 85
    .line 86
    const/4 v3, 0x2

    .line 87
    if-eq v1, v3, :cond_3

    .line 88
    .line 89
    const/4 v3, 0x4

    .line 90
    if-eq v1, v3, :cond_3

    .line 91
    .line 92
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->u:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 93
    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    iget-object v1, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->m:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Lcom/mycompany/app/compress/Compress;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->w:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_3

    .line 113
    .line 114
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->w:Ljava/lang/String;

    .line 115
    .line 116
    const/16 v3, 0x200

    .line 117
    .line 118
    invoke-static {v3, v1}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->x:Ljava/lang/String;

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :catchall_1
    move-exception v1

    .line 126
    goto/16 :goto_9

    .line 127
    .line 128
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->x:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_4

    .line 135
    .line 136
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->h:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 137
    .line 138
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->h:Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 139
    .line 140
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->x:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    goto :goto_5

    .line 147
    :cond_4
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->h:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 148
    .line 149
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->h:Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 150
    .line 151
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->o:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    :goto_5
    if-eqz v1, :cond_6

    .line 158
    .line 159
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_5

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_5
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->g:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 167
    .line 168
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->z:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_6
    :goto_6
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->l()Landroid/graphics/Bitmap;

    .line 172
    .line 173
    .line 174
    move-result-object v1
    :try_end_3
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    if-nez v1, :cond_7

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_7
    :try_start_4
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->b()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->h()Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-nez v3, :cond_b

    .line 189
    .line 190
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->r:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 191
    .line 192
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->r:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 196
    .line 197
    iget-boolean v3, v3, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->a:Z

    .line 198
    .line 199
    if-eqz v3, :cond_9

    .line 200
    .line 201
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->o:Ljava/lang/String;

    .line 202
    .line 203
    iget-boolean v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->y:Z

    .line 204
    .line 205
    if-eqz v4, :cond_8

    .line 206
    .line 207
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->h:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 208
    .line 209
    iget-object v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->h:Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 210
    .line 211
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->x:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v3, v4, v1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 214
    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_8
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->h:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 218
    .line 219
    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->h:Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 220
    .line 221
    invoke-virtual {v4, v3, v1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 222
    .line 223
    .line 224
    :cond_9
    :goto_7
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->r:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->b()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->h()Z

    .line 233
    .line 234
    .line 235
    move-result v3
    :try_end_4
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 236
    if-nez v3, :cond_a

    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 239
    .line 240
    .line 241
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;

    .line 242
    .line 243
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->f:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    .line 244
    .line 245
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->c:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 246
    .line 247
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->z:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 248
    .line 249
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;-><init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    .line 250
    .line 251
    .line 252
    iget-boolean v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->t:Z

    .line 253
    .line 254
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->g:Landroid/os/Handler;

    .line 255
    .line 256
    invoke-static {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->j(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :cond_a
    :try_start_5
    new-instance v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    .line 261
    .line 262
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 263
    .line 264
    .line 265
    throw v1

    .line 266
    :cond_b
    new-instance v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    .line 267
    .line 268
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 269
    .line 270
    .line 271
    throw v1
    :try_end_5
    .catch Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 272
    :catch_1
    :try_start_6
    iget-boolean v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->t:Z

    .line 273
    .line 274
    if-nez v1, :cond_d

    .line 275
    .line 276
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->h()Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-eqz v1, :cond_c

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_c
    new-instance v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$3;

    .line 284
    .line 285
    invoke-direct {v1, p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$3;-><init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V

    .line 286
    .line 287
    .line 288
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->g:Landroid/os/Handler;

    .line 289
    .line 290
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->c:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 291
    .line 292
    invoke-static {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->j(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 293
    .line 294
    .line 295
    :cond_d
    :goto_8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :goto_9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 300
    .line 301
    .line 302
    throw v1
.end method
