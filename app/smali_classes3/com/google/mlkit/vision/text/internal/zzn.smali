.class public final Lcom/google/mlkit/vision/text/internal/zzn;
.super Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/vision/text/TextRecognizer;


# instance fields
.field public final j:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;-><init>(Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;Ljava/util/concurrent/Executor;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/google/mlkit/vision/text/internal/zzn;->j:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 5
    .line 6
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p4}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->g()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;->g:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;

    .line 21
    .line 22
    :goto_0
    iput-object p2, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;

    .line 23
    .line 24
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrx;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsa;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface {p4}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->d()I

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    invoke-static {p4}, Lcom/google/mlkit/vision/text/internal/LoggingUtils;->a(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsb;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    iput-object p4, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsa;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsb;

    .line 43
    .line 44
    new-instance p4, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;

    .line 45
    .line 46
    invoke-direct {p4, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsa;)V

    .line 47
    .line 48
    .line 49
    iput-object p4, p2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrx;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;

    .line 50
    .line 51
    new-instance p4, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrz;

    .line 52
    .line 53
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrx;)V

    .line 54
    .line 55
    .line 56
    iput-object p4, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;->d:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrz;

    .line 57
    .line 58
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;

    .line 59
    .line 60
    const/4 p4, 0x1

    .line 61
    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;I)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;->l:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;

    .line 65
    .line 66
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->c()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->c()Ljava/util/concurrent/Executor;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztw;

    .line 75
    .line 76
    invoke-direct {v1, p3, p2, p1, p4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;Lcom/google/android/gms/internal/mlkit_vision_text_common/zztr;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final e(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "InputImage can not be null"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    .line 16
    .line 17
    const-string v0, "This detector is already closed!"

    .line 18
    .line 19
    const/16 v1, 0xe

    .line 20
    .line 21
    invoke-direct {p1, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    .line 29
    return-object p1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    :try_start_1
    iget v0, p1, Lcom/google/mlkit/vision/common/InputImage;->b:I

    .line 33
    .line 34
    const/16 v1, 0x20

    .line 35
    .line 36
    if-lt v0, v1, :cond_1

    .line 37
    .line 38
    iget v0, p1, Lcom/google/mlkit/vision/common/InputImage;->c:I

    .line 39
    .line 40
    if-lt v0, v1, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->f:Lcom/google/mlkit/common/sdkinternal/MLTask;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->h:Ljava/util/concurrent/Executor;

    .line 45
    .line 46
    new-instance v2, Lcom/google/mlkit/vision/common/internal/zza;

    .line 47
    .line 48
    invoke-direct {v2, p0, p1}, Lcom/google/mlkit/vision/common/internal/zza;-><init>(Lcom/google/mlkit/vision/text/internal/zzn;Lcom/google/mlkit/vision/common/InputImage;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->g:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/google/android/gms/tasks/CancellationTokenSource;->a:Lcom/google/android/gms/tasks/zzb;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/mlkit/common/sdkinternal/ModelResource;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    .line 56
    .line 57
    .line 58
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    monitor-exit p0

    .line 60
    return-object p1

    .line 61
    :cond_1
    :try_start_2
    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    .line 62
    .line 63
    const-string v0, "InputImage width and height should be at least 32!"

    .line 64
    .line 65
    const/4 v1, 0x3

    .line 66
    invoke-direct {p1, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 70
    .line 71
    .line 72
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    monitor-exit p0

    .line 74
    return-object p1

    .line 75
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    throw p1
.end method

.method public final getOptionalFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzn;->j:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/mlkit/vision/text/internal/TextOptionalModuleUtils;->a(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)[Lcom/google/android/gms/common/Feature;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
