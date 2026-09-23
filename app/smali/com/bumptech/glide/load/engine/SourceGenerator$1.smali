.class Lcom/bumptech/glide/load/engine/SourceGenerator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

.field public final synthetic f:Lcom/bumptech/glide/load/engine/SourceGenerator;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/SourceGenerator;Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->f:Lcom/bumptech/glide/load/engine/SourceGenerator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->c:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->f:Lcom/bumptech/glide/load/engine/SourceGenerator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->c:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->f:Lcom/bumptech/glide/load/engine/SourceGenerator;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->c:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/bumptech/glide/load/engine/SourceGenerator;->f:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/SourceGenerator;->k:Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 20
    .line 21
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->d()Lcom/bumptech/glide/load/DataSource;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v2, Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 26
    .line 27
    invoke-virtual {v2, v0, p1, v1, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->f:Lcom/bumptech/glide/load/engine/SourceGenerator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->c:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/SourceGenerator;->j:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->f:Lcom/bumptech/glide/load/engine/SourceGenerator;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator$1;->c:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/bumptech/glide/load/engine/SourceGenerator;->c:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/DecodeHelper;->p:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object v3, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 22
    .line 23
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/DataFetcher;->d()Lcom/bumptech/glide/load/DataSource;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->c(Lcom/bumptech/glide/load/DataSource;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iput-object p1, v0, Lcom/bumptech/glide/load/engine/SourceGenerator;->i:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object p1, v0, Lcom/bumptech/glide/load/engine/SourceGenerator;->f:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 36
    .line 37
    check-cast p1, Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 38
    .line 39
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->f:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 40
    .line 41
    iput-object v0, p1, Lcom/bumptech/glide/load/engine/DecodeJob;->w:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 42
    .line 43
    iget-object v0, p1, Lcom/bumptech/glide/load/engine/DecodeJob;->t:Lcom/bumptech/glide/load/engine/EngineJob;

    .line 44
    .line 45
    iget-boolean v1, v0, Lcom/bumptech/glide/load/engine/EngineJob;->q:Z

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/EngineJob;->m:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/EngineJob;->l:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 53
    .line 54
    :goto_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    iget-object v2, v0, Lcom/bumptech/glide/load/engine/SourceGenerator;->f:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 59
    .line 60
    iget-object v4, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->a:Lcom/bumptech/glide/load/Key;

    .line 61
    .line 62
    iget-object v6, v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->c:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 63
    .line 64
    invoke-interface {v6}, Lcom/bumptech/glide/load/data/DataFetcher;->d()Lcom/bumptech/glide/load/DataSource;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    iget-object v8, v0, Lcom/bumptech/glide/load/engine/SourceGenerator;->k:Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 69
    .line 70
    move-object v3, v2

    .line 71
    check-cast v3, Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 72
    .line 73
    move-object v5, p1

    .line 74
    invoke-virtual/range {v3 .. v8}, Lcom/bumptech/glide/load/engine/DecodeJob;->c(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method
