.class public abstract Lcom/google/android/gms/internal/cast/zzag;
.super Lcom/google/android/gms/internal/cast/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzah;


# virtual methods
.method public final I1(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    .line 1
    const/4 p3, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    if-eq p1, p3, :cond_1

    .line 4
    .line 5
    const/4 p3, 0x2

    .line 6
    if-eq p1, p3, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_0
    sget-object p1, Lcom/google/android/gms/cast/framework/devicesuggestions/DeviceSuggestionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    .line 12
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/android/gms/cast/framework/devicesuggestions/DeviceSuggestionResult;

    .line 17
    .line 18
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 19
    .line 20
    .line 21
    move-object p1, p0

    .line 22
    check-cast p1, Lcom/google/android/gms/internal/cast/zzam;

    .line 23
    .line 24
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    sget-object p1, Lcom/google/android/gms/cast/framework/devicesuggestions/DeviceSuggestionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    .line 30
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/google/android/gms/cast/framework/devicesuggestions/DeviceSuggestionResult;

    .line 35
    .line 36
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 37
    .line 38
    .line 39
    move-object p1, p0

    .line 40
    check-cast p1, Lcom/google/android/gms/internal/cast/zzam;

    .line 41
    .line 42
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    throw v0
.end method
