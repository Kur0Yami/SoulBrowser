.class final synthetic Lcom/google/android/gms/internal/cast/zzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/cast/zzj;

.field public final synthetic f:Lcom/google/android/gms/internal/cast/zzqr;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzj;Lcom/google/android/gms/internal/cast/zzqr;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->c:Lcom/google/android/gms/internal/cast/zzj;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzg;->f:Lcom/google/android/gms/internal/cast/zzqr;

    iput p3, p0, Lcom/google/android/gms/internal/cast/zzg;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzg;->c:Lcom/google/android/gms/internal/cast/zzj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzg;->f:Lcom/google/android/gms/internal/cast/zzqr;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/cast/zzg;->g:I

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/cast/zzj;->j:Lcom/google/android/gms/internal/cast/zzcn;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    monitor-enter v3

    .line 13
    :try_start_0
    new-instance v4, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 14
    .line 15
    invoke-direct {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v5, v3, Lcom/google/android/gms/internal/cast/zzcn;->a:Lcom/google/android/gms/internal/cast/zzfu;

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    new-instance v7, Lcom/google/android/gms/internal/cast/zzft;

    .line 28
    .line 29
    invoke-direct {v7, v5}, Lcom/google/android/gms/internal/cast/zzft;-><init>(Lcom/google/android/gms/internal/cast/zzfu;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    const/16 v7, 0x1195

    .line 37
    .line 38
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    new-instance v6, Lcom/google/android/gms/internal/cast/zzcm;

    .line 51
    .line 52
    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/cast/zzcm;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v6}, Lcom/google/android/gms/tasks/Task;->g(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    new-instance v6, Lcom/google/android/gms/internal/cast/zzck;

    .line 60
    .line 61
    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/cast/zzck;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v6}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 65
    .line 66
    .line 67
    new-instance v5, Lcom/google/android/gms/internal/cast/zzcl;

    .line 68
    .line 69
    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/cast/zzcl;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 70
    .line 71
    .line 72
    iget-wide v6, v3, Lcom/google/android/gms/internal/cast/zzcn;->b:J

    .line 73
    .line 74
    const-wide/16 v8, 0x3e8

    .line 75
    .line 76
    mul-long/2addr v6, v8

    .line 77
    iget-object v8, v3, Lcom/google/android/gms/internal/cast/zzcn;->c:Lcom/google/android/gms/internal/cast/zzfk;

    .line 78
    .line 79
    invoke-virtual {v8, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    .line 81
    .line 82
    iget-object v4, v4, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Lcom/google/android/gms/tasks/zzw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    monitor-exit v3

    .line 85
    new-instance v3, Lcom/google/android/gms/internal/cast/zzh;

    .line 86
    .line 87
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzh;-><init>(Lcom/google/android/gms/internal/cast/zzj;Lcom/google/android/gms/internal/cast/zzqr;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v3}, Lcom/google/android/gms/tasks/Task;->g(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw v0
.end method
