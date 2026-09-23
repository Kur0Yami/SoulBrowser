.class public final Lcom/google/android/gms/internal/mlkit_vision_text_common/zzun;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzum;


# direct methods
.method public static declared-synchronized a(Lcom/google/android/gms/internal/mlkit_vision_text_common/zztu;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzun;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzun;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzum;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzum;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzun;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzum;

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
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzun;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzum;

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;
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

.method public static declared-synchronized b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzun;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzto;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iput-object p0, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzto;->a:Ljava/lang/String;

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    iput-boolean p0, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzto;->b:Z

    .line 15
    .line 16
    iget-byte v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzto;->d:B

    .line 17
    .line 18
    or-int/2addr v2, p0

    .line 19
    int-to-byte v2, v2

    .line 20
    iput p0, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzto;->c:I

    .line 21
    .line 22
    or-int/lit8 p0, v2, 0x2

    .line 23
    .line 24
    int-to-byte p0, p0

    .line 25
    iput-byte p0, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzto;->d:B

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzto;->a()Lcom/google/android/gms/internal/mlkit_vision_text_common/zztu;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzun;->a(Lcom/google/android/gms/internal/mlkit_vision_text_common/zztu;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit v0

    .line 36
    return-object p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 40
    .line 41
    const-string v1, "Null libraryName"

    .line 42
    .line 43
    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p0
.end method
