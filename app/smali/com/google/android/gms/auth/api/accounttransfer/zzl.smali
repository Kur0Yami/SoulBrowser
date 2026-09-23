.class abstract Lcom/google/android/gms/auth/api/accounttransfer/zzl;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/tasks/TaskCompletionSource;


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/auth/zzau;)V
.end method

.method public final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth/zzap;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzl;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/auth/zzau;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/zzl;->a(Lcom/google/android/gms/internal/auth/zzau;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
