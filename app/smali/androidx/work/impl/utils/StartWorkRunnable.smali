.class public Landroidx/work/impl/utils/StartWorkRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# instance fields
.field public c:Landroidx/work/impl/WorkManagerImpl;

.field public f:Ljava/lang/String;

.field public g:Landroidx/work/WorkerParameters$RuntimeExtras;


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/StartWorkRunnable;->c:Landroidx/work/impl/WorkManagerImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->f:Landroidx/work/impl/Processor;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/work/impl/utils/StartWorkRunnable;->f:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/work/impl/utils/StartWorkRunnable;->g:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/Processor;->h(Ljava/lang/String;Landroidx/work/WorkerParameters$RuntimeExtras;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
