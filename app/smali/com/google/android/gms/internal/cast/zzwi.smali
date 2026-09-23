.class public abstract Lcom/google/android/gms/internal/cast/zzwi;
.super Lcom/google/android/gms/internal/cast/zzwg;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# virtual methods
.method public bridge synthetic b()Ljava/util/concurrent/Future;
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method public abstract c()Lcom/google/common/util/concurrent/ListenableFuture;
.end method

.method public final k(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzwi;->c()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->k(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
