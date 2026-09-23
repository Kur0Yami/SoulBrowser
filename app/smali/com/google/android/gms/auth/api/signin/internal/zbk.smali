.class final Lcom/google/android/gms/auth/api/signin/internal/zbk;
.super Lcom/google/android/gms/auth/api/signin/internal/zbl;
.source "SourceFile"


# virtual methods
.method public final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    return-object p1
.end method

.method public final doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/zbe;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/zbs;

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/zbj;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/zbj;-><init>(Lcom/google/android/gms/auth/api/signin/internal/zbk;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Lcom/google/android/gms/auth/api/signin/internal/zbe;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth-api/zba;->I1()Landroid/os/Parcel;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget v3, Lcom/google/android/gms/internal/auth-api/zbc;->a:I

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/auth-api/zbc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 26
    .line 27
    .line 28
    const/16 p1, 0x67

    .line 29
    .line 30
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/auth-api/zba;->f2(ILandroid/os/Parcel;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
