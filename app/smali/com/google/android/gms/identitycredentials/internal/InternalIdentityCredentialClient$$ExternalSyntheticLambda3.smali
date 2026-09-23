.class public final synthetic Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    const-string v0, "$request"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$getCredential$1$callback$1;

    .line 12
    .line 13
    invoke-direct {v0, p2}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$getCredential$1$callback$1;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialService;

    .line 21
    .line 22
    invoke-interface {p1, v0}, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialService;->B0(Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$getCredential$1$callback$1;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
