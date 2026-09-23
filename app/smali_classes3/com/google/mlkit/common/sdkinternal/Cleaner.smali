.class public Lcom/google/mlkit/common/sdkinternal/Cleaner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/common/sdkinternal/Cleaner$Cleanable;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/ReferenceQueue;

.field public final b:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->a:Ljava/lang/ref/ReferenceQueue;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->b:Ljava/util/Set;

    .line 21
    .line 22
    return-void
.end method

.method public static a()Lcom/google/mlkit/common/sdkinternal/Cleaner;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/mlkit/common/sdkinternal/Cleaner;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/mlkit/common/sdkinternal/zza;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/mlkit/common/sdkinternal/zzd;

    .line 12
    .line 13
    iget-object v3, v0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->a:Ljava/lang/ref/ReferenceQueue;

    .line 14
    .line 15
    iget-object v4, v0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->b:Ljava/util/Set;

    .line 16
    .line 17
    invoke-direct {v2, v0, v3, v4, v1}, Lcom/google/mlkit/common/sdkinternal/zzd;-><init>(Lcom/google/mlkit/common/sdkinternal/Cleaner;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;Lcom/google/mlkit/common/sdkinternal/zza;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/google/mlkit/common/sdkinternal/zzb;

    .line 24
    .line 25
    invoke-direct {v1, v3, v4}, Lcom/google/mlkit/common/sdkinternal/zzb;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Ljava/lang/Thread;

    .line 29
    .line 30
    const-string v3, "MlKitCleaner"

    .line 31
    .line 32
    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method
