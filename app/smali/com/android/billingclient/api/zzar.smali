.class public final synthetic Lcom/android/billingclient/api/zzar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    sget-object v1, Lcom/android/billingclient/api/zzdb;->a:Lcom/android/billingclient/api/BillingResult;

    .line 4
    .line 5
    throw v0
.end method
