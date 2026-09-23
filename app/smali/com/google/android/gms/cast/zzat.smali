.class final synthetic Lcom/google/android/gms/cast/zzat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/zzbm;

.field public final synthetic b:Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;Lcom/google/android/gms/cast/zzbm;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/cast/zzat;->a:Lcom/google/android/gms/cast/zzbm;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/cast/zzat;->b:Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/cast/zzat;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/cast/internal/zzy;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/zzat;->a:Lcom/google/android/gms/cast/zzbm;

    .line 6
    .line 7
    iget v0, v0, Lcom/google/android/gms/cast/zzbm;->v:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    const-string v0, "Not active connection"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/cast/zzat;->b:Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/google/android/gms/cast/internal/zzah;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzff;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zza;->I1()Landroid/os/Parcel;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/google/android/gms/cast/zzat;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/cast/zzc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 47
    .line 48
    .line 49
    const/16 p1, 0xc

    .line 50
    .line 51
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/cast/zza;->v2(ILandroid/os/Parcel;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
