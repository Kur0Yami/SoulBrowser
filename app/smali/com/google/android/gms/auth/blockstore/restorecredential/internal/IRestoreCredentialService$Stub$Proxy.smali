.class public Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService$Stub$Proxy;
.super Lcom/google/android/gms/internal/auth_blockstore/zza;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# virtual methods
.method public final H0(Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$getRestoreCredential$1$callback$1;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth_blockstore/zza;->I1()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/google/android/gms/internal/auth_blockstore/zzc;->a:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth_blockstore/zzc;->c(Landroid/os/Parcel;Lcom/google/android/gms/internal/auth_blockstore/zzb;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth_blockstore/zza;->f2(ILandroid/os/Parcel;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final L(Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$createRestoreCredential$1$callback$1;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth_blockstore/zza;->I1()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/google/android/gms/internal/auth_blockstore/zzc;->a:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth_blockstore/zzc;->c(Landroid/os/Parcel;Lcom/google/android/gms/internal/auth_blockstore/zzb;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth_blockstore/zza;->f2(ILandroid/os/Parcel;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final N4(Lcom/google/android/gms/auth/blockstore/restorecredential/ClearRestoreCredentialRequest;Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$clearRestoreCredential$1$callback$1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth_blockstore/zza;->I1()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth_blockstore/zzc;->b(Landroid/os/Parcel;Lcom/google/android/gms/auth/blockstore/restorecredential/ClearRestoreCredentialRequest;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/auth_blockstore/zzc;->c(Landroid/os/Parcel;Lcom/google/android/gms/internal/auth_blockstore/zzb;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x4

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth_blockstore/zza;->f2(ILandroid/os/Parcel;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
