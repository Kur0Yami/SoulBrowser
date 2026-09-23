.class final synthetic Lcom/google/android/gms/internal/cast/zzft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/cast/zzfu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzfu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzft;->a:Lcom/google/android/gms/internal/cast/zzfu;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/cast/zzgm;

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/cast/zzfs;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzft;->a:Lcom/google/android/gms/internal/cast/zzfu;

    .line 8
    .line 9
    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/cast/zzfs;-><init>(Lcom/google/android/gms/internal/cast/zzfu;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/android/gms/internal/cast/zzgh;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zza;->I1()Landroid/os/Parcel;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/cast/zzc;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zza;->r2(ILandroid/os/Parcel;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
