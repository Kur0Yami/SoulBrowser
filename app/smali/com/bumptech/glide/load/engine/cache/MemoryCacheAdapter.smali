.class public Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/MemoryCache;


# instance fields
.field public a:Lcom/bumptech/glide/load/engine/Engine;


# virtual methods
.method public final a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Lcom/bumptech/glide/load/engine/Engine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;->a:Lcom/bumptech/glide/load/engine/Engine;

    .line 2
    .line 3
    return-void
.end method

.method public final d(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;->a:Lcom/bumptech/glide/load/engine/Engine;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/engine/Engine;->h(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method public final e(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method
