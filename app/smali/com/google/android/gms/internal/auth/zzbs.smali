.class final Lcom/google/android/gms/internal/auth/zzbs;
.super Lcom/google/android/gms/internal/auth/zzbj;
.source "SourceFile"


# virtual methods
.method public final a(Lcom/google/android/gms/internal/auth/zzbh;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzbr;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/zzbr;-><init>(Lcom/google/android/gms/internal/auth/zzbs;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zza;->I1()Landroid/os/Parcel;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/auth/zzc;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zza;->r2(ILandroid/os/Parcel;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
