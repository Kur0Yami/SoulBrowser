.class final Lcom/google/android/gms/auth/zzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/zzk;


# virtual methods
.method public final a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zze;->f2(Landroid/os/IBinder;)Lcom/google/android/gms/internal/auth/zzf;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/auth/zzf;->zzg()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/auth/zzl;->d(Landroid/os/Parcelable;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "Error"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "userRecoveryIntent"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/content/Intent;

    .line 25
    .line 26
    const-string v2, "userRecoveryPendingIntent"

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/app/PendingIntent;

    .line 33
    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzby;->values()[Lcom/google/android/gms/internal/auth/zzby;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    array-length v3, v2

    .line 39
    const/4 v4, 0x0

    .line 40
    :goto_0
    if-ge v4, v3, :cond_1

    .line 41
    .line 42
    aget-object v5, v2, v4

    .line 43
    .line 44
    iget-object v6, v5, Lcom/google/android/gms/internal/auth/zzby;->c:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    sget-object v5, Lcom/google/android/gms/internal/auth/zzby;->l:Lcom/google/android/gms/internal/auth/zzby;

    .line 57
    .line 58
    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/auth/zzby;->f:Lcom/google/android/gms/internal/auth/zzby;

    .line 59
    .line 60
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_2
    const-string v2, "requestGoogleAccountsAccess"

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-static {v3, v2, v0, v1, p1}, Lcom/google/android/gms/auth/zzl;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;)V

    .line 73
    .line 74
    .line 75
    throw v3
.end method
