.class final Lcom/google/android/gms/auth/zzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/zzk;


# virtual methods
.method public final a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zze;->f2(Landroid/os/IBinder;)Lcom/google/android/gms/internal/auth/zzf;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/auth/zzf;->zzh()Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/auth/zzl;->d(Landroid/os/Parcelable;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Lcom/google/android/gms/auth/AccountChangeEventsResponse;->f:Ljava/util/List;

    .line 13
    .line 14
    return-object p1
.end method
