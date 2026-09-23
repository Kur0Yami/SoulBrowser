.class public abstract Lcom/google/android/gms/cast/framework/zzaz;
.super Lcom/google/android/gms/internal/cast/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/zzba;


# virtual methods
.method public final I1(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eq p1, v2, :cond_3

    .line 5
    .line 6
    if-eq p1, v1, :cond_2

    .line 7
    .line 8
    const/4 p2, 0x3

    .line 9
    if-eq p1, p2, :cond_1

    .line 10
    .line 11
    const/4 p2, 0x4

    .line 12
    if-eq p1, p2, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 16
    .line 17
    .line 18
    const p1, 0xbdfcb8

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    move-object p1, p0

    .line 26
    check-cast p1, Lcom/google/android/gms/cast/framework/zzbh;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/google/android/gms/cast/framework/zzbh;->c:Lcom/google/android/gms/cast/framework/SessionProvider;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/google/android/gms/cast/framework/SessionProvider;->b:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :cond_2
    move-object p1, p0

    .line 40
    check-cast p1, Lcom/google/android/gms/cast/framework/zzbh;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/google/android/gms/cast/framework/zzbh;->c:Lcom/google/android/gms/cast/framework/SessionProvider;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/SessionProvider;->b()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    .line 50
    .line 51
    sget p2, Lcom/google/android/gms/internal/cast/zzc;->a:I

    .line 52
    .line 53
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    return v2

    .line 57
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 62
    .line 63
    .line 64
    move-object p2, p0

    .line 65
    check-cast p2, Lcom/google/android/gms/cast/framework/zzbh;

    .line 66
    .line 67
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/zzbh;->c:Lcom/google/android/gms/cast/framework/SessionProvider;

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/framework/SessionProvider;->a(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/CastSession;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object p1, p1, Lcom/google/android/gms/cast/framework/Session;->a:Lcom/google/android/gms/cast/framework/zzau;

    .line 74
    .line 75
    const/4 p2, 0x0

    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/cast/framework/zzau;->zzf()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 79
    .line 80
    .line 81
    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception p1

    .line 84
    sget-object v3, Lcom/google/android/gms/cast/framework/Session;->b:Lcom/google/android/gms/cast/internal/Logger;

    .line 85
    .line 86
    new-array v1, v1, [Ljava/lang/Object;

    .line 87
    .line 88
    const-string v4, "getWrappedObject"

    .line 89
    .line 90
    aput-object v4, v1, v0

    .line 91
    .line 92
    const-string v0, "zzau"

    .line 93
    .line 94
    aput-object v0, v1, v2

    .line 95
    .line 96
    const-string v0, "Unable to call %s on %s."

    .line 97
    .line 98
    invoke-virtual {v3, p1, v0, v1}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    .line 103
    .line 104
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/cast/zzc;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 105
    .line 106
    .line 107
    return v2
.end method
