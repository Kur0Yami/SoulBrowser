.class Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Factory<",
        "Lcom/bumptech/glide/load/engine/EngineJob<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;->a:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineJob;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;->a:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v2, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->a:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v3, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->b:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 10
    .line 11
    move-object v4, v3

    .line 12
    iget-object v3, v4, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->c:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 13
    .line 14
    move-object v5, v4

    .line 15
    iget-object v4, v5, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->d:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 16
    .line 17
    move-object v6, v5

    .line 18
    iget-object v5, v6, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->e:Lcom/bumptech/glide/load/engine/Engine;

    .line 19
    .line 20
    move-object v7, v6

    .line 21
    iget-object v6, v7, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->f:Lcom/bumptech/glide/load/engine/Engine;

    .line 22
    .line 23
    iget-object v7, v7, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->g:Landroidx/core/util/Pools$Pool;

    .line 24
    .line 25
    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/engine/EngineJob;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/Engine;Landroidx/core/util/Pools$Pool;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method
