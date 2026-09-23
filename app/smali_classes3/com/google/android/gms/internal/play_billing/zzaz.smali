.class public abstract Lcom/google/android/gms/internal/play_billing/zzaz;
.super Lcom/google/android/gms/internal/play_billing/zzat;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzba;


# virtual methods
.method public final I1(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    if-ne p1, p3, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzat;->f2(Landroid/os/Parcel;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzba;->j(I)V

    .line 12
    .line 13
    .line 14
    return p3

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method
