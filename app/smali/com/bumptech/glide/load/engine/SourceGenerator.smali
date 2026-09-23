.class Lcom/bumptech/glide/load/engine/SourceGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator;
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;


# instance fields
.field public final c:Lcom/bumptech/glide/load/engine/DecodeHelper;

.field public final f:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

.field public volatile g:I

.field public volatile h:Lcom/bumptech/glide/load/engine/DataCacheGenerator;

.field public volatile i:Ljava/lang/Object;

.field public volatile j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

.field public volatile k:Lcom/bumptech/glide/load/engine/DataCacheKey;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->c:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->f:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->f:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->d()Lcom/bumptech/glide/load/DataSource;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast p4, Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 12
    .line 13
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->i:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->i:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->i:Ljava/lang/Object;

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/SourceGenerator;->d(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const/4 v3, 0x3

    .line 20
    const-string v4, "SourceGenerator"

    .line 21
    .line 22
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const-string v3, "Failed to properly rewind or write data to cache"

    .line 29
    .line 30
    invoke-static {v4, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->h:Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->h:Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->b()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    :goto_0
    return v2

    .line 46
    :cond_1
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->h:Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 52
    .line 53
    iget v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->g:I

    .line 54
    .line 55
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->c:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->b()Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-ge v1, v3, :cond_4

    .line 66
    .line 67
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->c:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->b()Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget v3, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->g:I

    .line 74
    .line 75
    add-int/lit8 v4, v3, 0x1

    .line 76
    .line 77
    iput v4, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->g:I

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 84
    .line 85
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->c:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 92
    .line 93
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/DecodeHelper;->p:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 94
    .line 95
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 96
    .line 97
    iget-object v3, v3, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 98
    .line 99
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/DataFetcher;->d()Lcom/bumptech/glide/load/DataSource;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->c(Lcom/bumptech/glide/load/DataSource;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_3

    .line 108
    .line 109
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->c:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 110
    .line 111
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 112
    .line 113
    iget-object v3, v3, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 114
    .line 115
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/DataFetcher;->a()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/LoadPath;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_2

    .line 124
    .line 125
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 126
    .line 127
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 128
    .line 129
    iget-object v1, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 130
    .line 131
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->c:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 132
    .line 133
    iget-object v3, v3, Lcom/bumptech/glide/load/engine/DecodeHelper;->o:Lcom/bumptech/glide/Priority;

    .line 134
    .line 135
    new-instance v4, Lcom/bumptech/glide/load/engine/SourceGenerator$1;

    .line 136
    .line 137
    invoke-direct {v4, p0, v0}, Lcom/bumptech/glide/load/engine/SourceGenerator$1;-><init>(Lcom/bumptech/glide/load/engine/SourceGenerator;Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v1, v3, v4}, Lcom/bumptech/glide/load/data/DataFetcher;->e(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    .line 141
    .line 142
    .line 143
    move v0, v2

    .line 144
    goto :goto_1

    .line 145
    :cond_4
    return v0
.end method

.method public final c(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->f:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 2
    .line 3
    iget-object p4, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 4
    .line 5
    iget-object p4, p4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 6
    .line 7
    invoke-interface {p4}, Lcom/bumptech/glide/load/data/DataFetcher;->d()Lcom/bumptech/glide/load/DataSource;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    move-object v5, p1

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p2

    .line 14
    move-object v3, p3

    .line 15
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->c(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 13

    .line 1
    const-string v0, "SourceGenerator"

    .line 2
    .line 3
    const-string v1, "Attempt to write: "

    .line 4
    .line 5
    const-string v2, "Finished encoding source to cache, key: "

    .line 6
    .line 7
    sget v3, Lcom/bumptech/glide/util/LogTime;->b:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const/4 v5, 0x0

    .line 14
    :try_start_0
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->c:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 15
    .line 16
    iget-object v6, v6, Lcom/bumptech/glide/load/engine/DecodeHelper;->c:Lcom/bumptech/glide/GlideContext;

    .line 17
    .line 18
    invoke-virtual {v6}, Lcom/bumptech/glide/GlideContext;->b()Lcom/bumptech/glide/Registry;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-virtual {v6, p1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/DataRewinder;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-interface {v6}, Lcom/bumptech/glide/load/data/DataRewinder;->a()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    iget-object v8, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->c:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 31
    .line 32
    iget-object v8, v8, Lcom/bumptech/glide/load/engine/DecodeHelper;->c:Lcom/bumptech/glide/GlideContext;

    .line 33
    .line 34
    invoke-virtual {v8}, Lcom/bumptech/glide/GlideContext;->b()Lcom/bumptech/glide/Registry;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    iget-object v8, v8, Lcom/bumptech/glide/Registry;->b:Lcom/bumptech/glide/provider/EncoderRegistry;

    .line 39
    .line 40
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    invoke-virtual {v8, v9}, Lcom/bumptech/glide/provider/EncoderRegistry;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/Encoder;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    if-eqz v8, :cond_3

    .line 49
    .line 50
    new-instance v9, Lcom/bumptech/glide/load/engine/DataCacheWriter;

    .line 51
    .line 52
    iget-object v10, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->c:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 53
    .line 54
    iget-object v10, v10, Lcom/bumptech/glide/load/engine/DecodeHelper;->i:Lcom/bumptech/glide/load/Options;

    .line 55
    .line 56
    invoke-direct {v9, v8, v7, v10}, Lcom/bumptech/glide/load/engine/DataCacheWriter;-><init>(Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)V

    .line 57
    .line 58
    .line 59
    new-instance v7, Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 60
    .line 61
    iget-object v10, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 62
    .line 63
    iget-object v10, v10, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->a:Lcom/bumptech/glide/load/Key;

    .line 64
    .line 65
    iget-object v11, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->c:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 66
    .line 67
    iget-object v12, v11, Lcom/bumptech/glide/load/engine/DecodeHelper;->n:Lcom/bumptech/glide/load/Key;

    .line 68
    .line 69
    invoke-direct {v7, v10, v12}, Lcom/bumptech/glide/load/engine/DataCacheKey;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;)V

    .line 70
    .line 71
    .line 72
    iget-object v10, v11, Lcom/bumptech/glide/load/engine/DecodeHelper;->h:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    .line 73
    .line 74
    invoke-interface {v10}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->a()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-interface {v10, v7, v9}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->a(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V

    .line 79
    .line 80
    .line 81
    const/4 v9, 0x2

    .line 82
    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 83
    .line 84
    .line 85
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    const-string v11, ", data: "

    .line 87
    .line 88
    if-eqz v9, :cond_0

    .line 89
    .line 90
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, ", encoder: "

    .line 105
    .line 106
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, ", duration: "

    .line 113
    .line 114
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-static {v3, v4}, Lcom/bumptech/glide/util/LogTime;->a(J)D

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    move-object p1, v0

    .line 134
    goto/16 :goto_2

    .line 135
    .line 136
    :cond_0
    :goto_0
    invoke-interface {v10, v7}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->b(Lcom/bumptech/glide/load/Key;)Ljava/io/File;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const/4 v3, 0x1

    .line 141
    if-eqz v2, :cond_1

    .line 142
    .line 143
    iput-object v7, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->k:Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 144
    .line 145
    new-instance p1, Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    .line 146
    .line 147
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 148
    .line 149
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->a:Lcom/bumptech/glide/load/Key;

    .line 150
    .line 151
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->c:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 156
    .line 157
    invoke-direct {p1, v0, v1, p0}, Lcom/bumptech/glide/load/engine/DataCacheGenerator;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    .line 158
    .line 159
    .line 160
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->h:Lcom/bumptech/glide/load/engine/DataCacheGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .line 162
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 163
    .line 164
    iget-object p1, p1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 165
    .line 166
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->b()V

    .line 167
    .line 168
    .line 169
    return v3

    .line 170
    :cond_1
    const/4 v2, 0x3

    .line 171
    :try_start_2
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_2

    .line 176
    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->k:Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 183
    .line 184
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string p1, " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly..."

    .line 194
    .line 195
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    .line 204
    .line 205
    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->f:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 206
    .line 207
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 208
    .line 209
    iget-object v8, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->a:Lcom/bumptech/glide/load/Key;

    .line 210
    .line 211
    invoke-interface {v6}, Lcom/bumptech/glide/load/data/DataRewinder;->a()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 216
    .line 217
    iget-object v10, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 218
    .line 219
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 220
    .line 221
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 222
    .line 223
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->d()Lcom/bumptech/glide/load/DataSource;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 228
    .line 229
    iget-object v12, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->a:Lcom/bumptech/glide/load/Key;

    .line 230
    .line 231
    move-object v7, p1

    .line 232
    check-cast v7, Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 233
    .line 234
    invoke-virtual/range {v7 .. v12}, Lcom/bumptech/glide/load/engine/DecodeJob;->c(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 235
    .line 236
    .line 237
    return v5

    .line 238
    :goto_1
    move v5, v3

    .line 239
    goto :goto_2

    .line 240
    :catchall_1
    move-exception v0

    .line 241
    move-object p1, v0

    .line 242
    goto :goto_1

    .line 243
    :cond_3
    :try_start_4
    new-instance p1, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;

    .line 244
    .line 245
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v2, "Failed to find source encoder for data class: "

    .line 252
    .line 253
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 267
    :goto_2
    if-nez v5, :cond_4

    .line 268
    .line 269
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 270
    .line 271
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 272
    .line 273
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->b()V

    .line 274
    .line 275
    .line 276
    :cond_4
    throw p1
.end method
