.class public abstract Lcom/google/android/gms/internal/location/zzan;
.super Lcom/google/android/gms/internal/location/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/location/zzao;


# virtual methods
.method public final I1(ILandroid/os/Parcel;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/google/android/gms/location/LocationSettingsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    .line 6
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/location/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResult;

    .line 11
    .line 12
    move-object p2, p0

    .line 13
    check-cast p2, Lcom/google/android/gms/internal/location/zzay;

    .line 14
    .line 15
    iget-object v1, p2, Lcom/google/android/gms/internal/location/zzay;->c:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 16
    .line 17
    invoke-interface {v1, p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p2, Lcom/google/android/gms/internal/location/zzay;->c:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 22
    .line 23
    return v0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1
.end method
