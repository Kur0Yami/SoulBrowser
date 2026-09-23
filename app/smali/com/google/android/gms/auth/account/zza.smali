.class public abstract Lcom/google/android/gms/auth/account/zza;
.super Lcom/google/android/gms/internal/auth/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/account/zzb;


# virtual methods
.method public final I1(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    .line 1
    const/4 p3, 0x1

    .line 2
    if-eq p1, p3, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget p1, Lcom/google/android/gms/internal/auth/zzc;->a:I

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/internal/auth/zzc;->b(Landroid/os/Parcel;)V

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    move v1, p3

    .line 21
    :cond_1
    invoke-interface {p0, v1}, Lcom/google/android/gms/auth/account/zzb;->n2(Z)V

    .line 22
    .line 23
    .line 24
    return p3

    .line 25
    :cond_2
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    .line 27
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/auth/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/accounts/Account;

    .line 32
    .line 33
    invoke-static {p2}, Lcom/google/android/gms/internal/auth/zzc;->b(Landroid/os/Parcel;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, p1}, Lcom/google/android/gms/auth/account/zzb;->q4(Landroid/accounts/Account;)V

    .line 37
    .line 38
    .line 39
    return p3
.end method
