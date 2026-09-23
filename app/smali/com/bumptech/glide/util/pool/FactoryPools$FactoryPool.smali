.class final Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/pool/FactoryPools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FactoryPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/core/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/util/pool/FactoryPools$Factory;

.field public final b:Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;

.field public final c:Landroidx/core/util/Pools$SynchronizedPool;


# direct methods
.method public constructor <init>(Landroidx/core/util/Pools$SynchronizedPool;Lcom/bumptech/glide/util/pool/FactoryPools$Factory;Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->c:Landroidx/core/util/Pools$SynchronizedPool;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->a:Lcom/bumptech/glide/util/pool/FactoryPools$Factory;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->b:Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;->b()Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    check-cast v0, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;

    .line 14
    .line 15
    iput-boolean v1, v0, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;->a:Z

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->b:Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;->a(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->c:Landroidx/core/util/Pools$SynchronizedPool;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/core/util/Pools$SynchronizedPool;->a(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public final b()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->c:Landroidx/core/util/Pools$SynchronizedPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->a:Lcom/bumptech/glide/util/pool/FactoryPools$Factory;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/bumptech/glide/util/pool/FactoryPools$Factory;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x2

    .line 16
    const-string v2, "FactoryPools"

    .line 17
    .line 18
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, "Created new "

    .line 27
    .line 28
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    instance-of v1, v0, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    move-object v1, v0

    .line 50
    check-cast v1, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;

    .line 51
    .line 52
    invoke-interface {v1}, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;->b()Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x0

    .line 57
    check-cast v1, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;

    .line 58
    .line 59
    iput-boolean v2, v1, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;->a:Z

    .line 60
    .line 61
    :cond_1
    return-object v0
.end method
