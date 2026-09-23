.class final Lcom/google/android/gms/auth/api/signin/zba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# virtual methods
.method public final convert(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 4
    .line 5
    return-object p1
.end method
