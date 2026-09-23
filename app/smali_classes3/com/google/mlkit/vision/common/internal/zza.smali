.class public final synthetic Lcom/google/mlkit/vision/common/internal/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/mlkit/vision/text/internal/zzn;

.field public final synthetic b:Lcom/google/mlkit/vision/common/InputImage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/vision/text/internal/zzn;Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/mlkit/vision/common/internal/zza;->a:Lcom/google/mlkit/vision/text/internal/zzn;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/mlkit/vision/common/internal/zza;->b:Lcom/google/mlkit/vision/common/InputImage;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/zza;->a:Lcom/google/mlkit/vision/text/internal/zzn;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/mlkit/vision/common/internal/zza;->b:Lcom/google/mlkit/vision/common/InputImage;

    .line 4
    .line 5
    const-class v2, Ljava/lang/Throwable;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->d()Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->a()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v0, v0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->f:Lcom/google/mlkit/common/sdkinternal/MLTask;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/MLTask;->d(Lcom/google/mlkit/common/sdkinternal/MLTaskInput;)Lcom/google/mlkit/vision/text/Text;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->close()V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_1
    move-exception v1

    .line 30
    :try_start_2
    const-string v3, "addSuppressed"

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    new-array v5, v4, [Ljava/lang/Class;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    aput-object v2, v5, v6

    .line 37
    .line 38
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-array v3, v4, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object v1, v3, v6

    .line 45
    .line 46
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    .line 48
    .line 49
    :catch_0
    :goto_0
    throw v0
.end method
