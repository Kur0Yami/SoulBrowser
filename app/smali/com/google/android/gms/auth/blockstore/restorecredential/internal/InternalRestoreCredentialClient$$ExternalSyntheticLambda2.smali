.class public final synthetic Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/RestoreCredentialClientImpl;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient;->a:Lcom/google/android/gms/common/api/Api;

    .line 6
    .line 7
    const-string v0, "$request"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$getRestoreCredential$1$callback$1;

    .line 14
    .line 15
    invoke-direct {v0, p2}, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$getRestoreCredential$1$callback$1;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService;

    .line 23
    .line 24
    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService;->H0(Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$getRestoreCredential$1$callback$1;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
