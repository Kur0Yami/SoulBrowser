.class public abstract Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IClearRestoreCredentialCallback$Stub;
.super Lcom/google/android/gms/internal/auth_blockstore/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IClearRestoreCredentialCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IClearRestoreCredentialCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# virtual methods
.method public final I1(ILandroid/os/Parcel;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_1

    .line 4
    .line 5
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    .line 7
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/auth_blockstore/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/auth_blockstore/zzb;->f2(Landroid/os/Parcel;)V

    .line 21
    .line 22
    .line 23
    move-object p2, p0

    .line 24
    check-cast p2, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$clearRestoreCredential$1$callback$1;

    .line 25
    .line 26
    const-string v2, "status"

    .line 27
    .line 28
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object p2, p2, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$clearRestoreCredential$1$callback$1;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 36
    .line 37
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :cond_1
    return v0
.end method
