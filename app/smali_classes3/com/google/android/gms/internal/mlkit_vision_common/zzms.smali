.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzms;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/gms/internal/mlkit_vision_common/zzmr;


# direct methods
.method public static declared-synchronized a(Lcom/google/android/gms/internal/mlkit_vision_common/zzme;)Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzms;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzms;->a:Lcom/google/android/gms/internal/mlkit_vision_common/zzmr;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmr;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzms;->a:Lcom/google/android/gms/internal/mlkit_vision_common/zzmr;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzms;->a:Lcom/google/android/gms/internal/mlkit_vision_common/zzmr;

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-object p0

    .line 28
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p0
.end method

.method public static declared-synchronized b()Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzms;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzly;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "vision-common"

    .line 10
    .line 11
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzly;->a:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    iput-boolean v2, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzly;->b:Z

    .line 15
    .line 16
    iget-byte v3, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzly;->d:B

    .line 17
    .line 18
    or-int/2addr v3, v2

    .line 19
    int-to-byte v3, v3

    .line 20
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzly;->c:I

    .line 21
    .line 22
    or-int/lit8 v2, v3, 0x2

    .line 23
    .line 24
    int-to-byte v2, v2

    .line 25
    iput-byte v2, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzly;->d:B

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzly;->a()Lcom/google/android/gms/internal/mlkit_vision_common/zzme;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzms;->a(Lcom/google/android/gms/internal/mlkit_vision_common/zzme;)Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    .line 32
    .line 33
    .line 34
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit v0

    .line 36
    return-object v1

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw v1
.end method
