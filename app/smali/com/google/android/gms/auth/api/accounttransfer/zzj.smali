.class Lcom/google/android/gms/auth/api/accounttransfer/zzj;
.super Lcom/google/android/gms/internal/auth/zzan;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/android/gms/auth/api/accounttransfer/zzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/zzl;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.auth.api.accounttransfer.internal.IAccountTransferCallbacks"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth/zzb;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzj;->c:Lcom/google/android/gms/auth/api/accounttransfer/zzl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final P(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzj;->c:Lcom/google/android/gms/auth/api/accounttransfer/zzl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/auth/api/accounttransfer/zzl;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    sget v1, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;->a:I

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Exception;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
