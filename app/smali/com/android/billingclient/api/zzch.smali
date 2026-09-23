.class final Lcom/android/billingclient/api/zzch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;
.implements Lcom/android/billingclient/api/BillingClientStateListener;
.implements Lcom/android/billingclient/api/ConsumeResponseListener;
.implements Lcom/android/billingclient/api/PurchaseHistoryResponseListener;
.implements Lcom/android/billingclient/api/PurchasesResponseListener;
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# direct methods
.method public static native nativeOnAcknowledgePurchaseResponse(ILjava/lang/String;J)V
.end method

.method public static native nativeOnBillingServiceDisconnected()V
.end method

.method public static native nativeOnBillingSetupFinished(ILjava/lang/String;J)V
.end method

.method public static native nativeOnConsumePurchaseResponse(ILjava/lang/String;Ljava/lang/String;J)V
.end method

.method public static native nativeOnPurchasesUpdated(ILjava/lang/String;[Lcom/android/billingclient/api/Purchase;)V
.end method

.method public static native nativeOnQueryPurchasesResponse(ILjava/lang/String;[Lcom/android/billingclient/api/Purchase;J)V
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [Lcom/android/billingclient/api/Purchase;

    .line 6
    .line 7
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, [Lcom/android/billingclient/api/Purchase;

    .line 12
    .line 13
    iget v0, p1, Lcom/android/billingclient/api/BillingResult;->a:I

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/billingclient/api/BillingResult;->c:Ljava/lang/String;

    .line 16
    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/billingclient/api/zzch;->nativeOnQueryPurchasesResponse(ILjava/lang/String;[Lcom/android/billingclient/api/Purchase;J)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final b(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-array v0, v0, [Lcom/android/billingclient/api/Purchase;

    .line 10
    .line 11
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, [Lcom/android/billingclient/api/Purchase;

    .line 16
    .line 17
    iget v0, p1, Lcom/android/billingclient/api/BillingResult;->a:I

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/billingclient/api/BillingResult;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, p1, p2}, Lcom/android/billingclient/api/zzch;->nativeOnPurchasesUpdated(ILjava/lang/String;[Lcom/android/billingclient/api/Purchase;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final c(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/billingclient/api/BillingResult;->a:I

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/billingclient/api/BillingResult;->c:Ljava/lang/String;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-static {v0, p1, v1, v2}, Lcom/android/billingclient/api/zzch;->nativeOnAcknowledgePurchaseResponse(ILjava/lang/String;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final d(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/billingclient/api/BillingResult;->a:I

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/billingclient/api/BillingResult;->c:Ljava/lang/String;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-static {v0, p1, v1, v2}, Lcom/android/billingclient/api/zzch;->nativeOnBillingSetupFinished(ILjava/lang/String;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final e()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/zzch;->nativeOnBillingServiceDisconnected()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/billingclient/api/BillingResult;->a:I

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/billingclient/api/BillingResult;->c:Ljava/lang/String;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/billingclient/api/zzch;->nativeOnConsumePurchaseResponse(ILjava/lang/String;Ljava/lang/String;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
