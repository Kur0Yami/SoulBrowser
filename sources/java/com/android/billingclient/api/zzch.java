package com.android.billingclient.api;

import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
final class zzch implements AcknowledgePurchaseResponseListener, BillingClientStateListener, ConsumeResponseListener, PurchaseHistoryResponseListener, PurchasesResponseListener, PurchasesUpdatedListener, SkuDetailsResponseListener {
    public static native void nativeOnAcknowledgePurchaseResponse(int i, String str, long j);

    public static native void nativeOnBillingServiceDisconnected();

    public static native void nativeOnBillingSetupFinished(int i, String str, long j);

    public static native void nativeOnConsumePurchaseResponse(int i, String str, String str2, long j);

    public static native void nativeOnPurchasesUpdated(int i, String str, Purchase[] purchaseArr);

    public static native void nativeOnQueryPurchasesResponse(int i, String str, Purchase[] purchaseArr, long j);

    @Override // com.android.billingclient.api.PurchasesResponseListener
    public final void a(BillingResult billingResult, List list) {
        nativeOnQueryPurchasesResponse(billingResult.f2001a, billingResult.f2002c, (Purchase[]) list.toArray(new Purchase[list.size()]), 0L);
    }

    @Override // com.android.billingclient.api.PurchasesUpdatedListener
    public final void b(BillingResult billingResult, List list) {
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        nativeOnPurchasesUpdated(billingResult.f2001a, billingResult.f2002c, (Purchase[]) list.toArray(new Purchase[list.size()]));
    }

    @Override // com.android.billingclient.api.AcknowledgePurchaseResponseListener
    public final void c(BillingResult billingResult) {
        nativeOnAcknowledgePurchaseResponse(billingResult.f2001a, billingResult.f2002c, 0L);
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void d(BillingResult billingResult) {
        nativeOnBillingSetupFinished(billingResult.f2001a, billingResult.f2002c, 0L);
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void e() {
        nativeOnBillingServiceDisconnected();
    }

    @Override // com.android.billingclient.api.ConsumeResponseListener
    public final void f(BillingResult billingResult, String str) {
        nativeOnConsumePurchaseResponse(billingResult.f2001a, billingResult.f2002c, str, 0L);
    }
}
