.class public final synthetic Lcom/google/android/gms/internal/auth_blockstore/zzs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth_blockstore/zzf;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/auth_blockstore/zzw;

    .line 6
    .line 7
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/auth_blockstore/zzw;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/google/android/gms/internal/auth_blockstore/zzg;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth_blockstore/zza;->I1()Landroid/os/Parcel;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/auth_blockstore/zzc;->c(Landroid/os/Parcel;Lcom/google/android/gms/internal/auth_blockstore/zzb;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    const/16 v0, 0xc

    .line 28
    .line 29
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/auth_blockstore/zza;->f2(ILandroid/os/Parcel;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
