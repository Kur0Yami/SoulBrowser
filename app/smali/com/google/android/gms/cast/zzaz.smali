.class final synthetic Lcom/google/android/gms/cast/zzaz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/zzbm;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbm;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzaz;->a:Lcom/google/android/gms/cast/zzbm;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzaz;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/cast/zzaz;->a:Lcom/google/android/gms/cast/zzbm;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/cast/zzaz;->b:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, Lcom/google/android/gms/cast/internal/zzy;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/cast/zzbm;->k()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "Not connected to device"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/google/android/gms/cast/internal/zzah;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzff;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/zza;->I1()Landroid/os/Parcel;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/cast/zzc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x5

    .line 43
    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/cast/zza;->v2(ILandroid/os/Parcel;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, v0, Lcom/google/android/gms/cast/zzbm;->i:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter p1

    .line 49
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/cast/zzbm;->f:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 54
    .line 55
    const/16 v1, 0x7d1

    .line 56
    .line 57
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->fromStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Exception;)V

    .line 65
    .line 66
    .line 67
    monitor-exit p1

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p2

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iput-object p2, v0, Lcom/google/android/gms/cast/zzbm;->f:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 72
    .line 73
    monitor-exit p1

    .line 74
    return-void

    .line 75
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p2
.end method
