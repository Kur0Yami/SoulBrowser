.class final synthetic Lcom/google/android/gms/cast/zzax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/zzbm;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/android/gms/cast/LaunchOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbm;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzax;->a:Lcom/google/android/gms/cast/zzbm;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzax;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/cast/zzax;->c:Lcom/google/android/gms/cast/LaunchOptions;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/cast/zzax;->a:Lcom/google/android/gms/cast/zzbm;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/cast/zzax;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/cast/zzax;->c:Lcom/google/android/gms/cast/LaunchOptions;

    .line 8
    .line 9
    check-cast p1, Lcom/google/android/gms/cast/internal/zzy;

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
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/cast/zzc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/cast/zzc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 45
    .line 46
    .line 47
    const/16 p1, 0xd

    .line 48
    .line 49
    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/internal/cast/zza;->v2(ILandroid/os/Parcel;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, v0, Lcom/google/android/gms/cast/zzbm;->h:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter p1

    .line 55
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/cast/zzbm;->e:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    const/16 v1, 0x9ad

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/zzbm;->l(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p2

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    :goto_0
    iput-object p2, v0, Lcom/google/android/gms/cast/zzbm;->e:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 68
    .line 69
    monitor-exit p1

    .line 70
    return-void

    .line 71
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p2
.end method
