.class final synthetic Lcom/google/android/gms/cast/zzay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/zzbm;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbm;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/zzay;->a:Lcom/google/android/gms/cast/zzbm;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/cast/zzay;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/cast/zzay;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/cast/internal/zzy;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/zzay;->a:Lcom/google/android/gms/cast/zzbm;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/cast/zzay;->b:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/cast/zzay;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/cast/zzbm;->k()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const-string v4, "Not connected to device"

    .line 16
    .line 17
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/google/android/gms/cast/internal/zzah;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzff;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/zza;->I1()Landroid/os/Parcel;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/cast/zzc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/cast/zzc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 49
    .line 50
    .line 51
    const/16 p1, 0xe

    .line 52
    .line 53
    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/internal/cast/zza;->v2(ILandroid/os/Parcel;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, v0, Lcom/google/android/gms/cast/zzbm;->h:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter p1

    .line 59
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/cast/zzbm;->e:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 60
    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    const/16 v1, 0x9ad

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/zzbm;->l(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p2

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    :goto_0
    iput-object p2, v0, Lcom/google/android/gms/cast/zzbm;->e:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 72
    .line 73
    monitor-exit p1

    .line 74
    return-void

    .line 75
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p2
.end method
