.class public Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder;
.super Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder<",
        "TO;",
        "Ljava/util/concurrent/locks/StampedLock;",
        "Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$Builder<",
        "TO;>;>;"
    }
.end annotation


# virtual methods
.method public final a()Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;-><init>(Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;-><init>(Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor$LVBuilder;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    throw v0
.end method
