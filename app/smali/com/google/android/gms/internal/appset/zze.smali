.class public abstract Lcom/google/android/gms/internal/appset/zze;
.super Lcom/google/android/gms/internal/appset/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/appset/zzf;


# virtual methods
.method public final I1(ILandroid/os/Parcel;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_3

    .line 3
    .line 4
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    .line 6
    sget v1, Lcom/google/android/gms/internal/appset/zzc;->a:I

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    move-object p1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/os/Parcelable;

    .line 22
    .line 23
    :goto_0
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 24
    .line 25
    sget-object v1, Lcom/google/android/gms/appset/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    move-object p2, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Landroid/os/Parcelable;

    .line 40
    .line 41
    :goto_1
    check-cast p2, Lcom/google/android/gms/appset/zzc;

    .line 42
    .line 43
    move-object v1, p0

    .line 44
    check-cast v1, Lcom/google/android/gms/internal/appset/zzo;

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    new-instance v2, Lcom/google/android/gms/appset/AppSetIdInfo;

    .line 49
    .line 50
    iget-object v3, p2, Lcom/google/android/gms/appset/zzc;->c:Ljava/lang/String;

    .line 51
    .line 52
    iget p2, p2, Lcom/google/android/gms/appset/zzc;->f:I

    .line 53
    .line 54
    invoke-direct {v2, v3, p2}, Lcom/google/android/gms/appset/AppSetIdInfo;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object p2, v1, Lcom/google/android/gms/internal/appset/zzo;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 58
    .line 59
    invoke-static {p1, v2, p2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 60
    .line 61
    .line 62
    return v0

    .line 63
    :cond_3
    const/4 p1, 0x0

    .line 64
    return p1
.end method
