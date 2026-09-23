.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_text_common/zzua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

.field public final synthetic f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;

.field public final synthetic g:J

.field public final synthetic h:Lcom/google/mlkit/vision/text/internal/zzr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;JLcom/google/mlkit/vision/text/internal/zzr;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzua;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzua;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;

    .line 9
    .line 10
    iput-wide p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzua;->g:J

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzua;->h:Lcom/google/mlkit/vision/text/internal/zzr;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;->n1:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzua;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->j:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_1

    .line 12
    .line 13
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzao;

    .line 14
    .line 15
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzba;

    .line 16
    .line 17
    invoke-direct {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzba;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzba;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    iput-object v4, v3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzal;->g:Ljava/util/Map;

    .line 30
    .line 31
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbp;

    .line 46
    .line 47
    iget-wide v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzua;->g:J

    .line 48
    .line 49
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzua;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;

    .line 54
    .line 55
    invoke-interface {v2, v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcc;->b(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;Ljava/lang/Long;)Z

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->d(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;J)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-nez v4, :cond_2

    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->i:Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->c()Ljava/util/concurrent/Executor;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztx;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzua;->h:Lcom/google/mlkit/vision/text/internal/zzr;

    .line 85
    .line 86
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztx;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;Lcom/google/mlkit/vision/text/internal/zzr;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
