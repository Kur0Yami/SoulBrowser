.class public final synthetic Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public synthetic a:Lcom/google/android/gms/auth/blockstore/restorecredential/ClearRestoreCredentialRequest;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$$ExternalSyntheticLambda0;->a:Lcom/google/android/gms/auth/blockstore/restorecredential/ClearRestoreCredentialRequest;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/RestoreCredentialClientImpl;

    .line 4
    .line 5
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    .line 7
    sget-object v1, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient;->a:Lcom/google/android/gms/common/api/Api;

    .line 8
    .line 9
    const-string v1, "$request"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$clearRestoreCredential$1$callback$1;

    .line 15
    .line 16
    invoke-direct {v1, p2}, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$clearRestoreCredential$1$callback$1;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService;

    .line 24
    .line 25
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService;->N4(Lcom/google/android/gms/auth/blockstore/restorecredential/ClearRestoreCredentialRequest;Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$clearRestoreCredential$1$callback$1;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
