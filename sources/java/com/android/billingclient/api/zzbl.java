package com.android.billingclient.api;

import j$.util.Objects;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zzbl implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PurchasesResponseListener f2041a;
    public final /* synthetic */ String b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BillingClientImpl f2042c;

    public zzbl(BillingClientImpl billingClientImpl, PurchasesResponseListener purchasesResponseListener, String str) {
        this.f2041a = purchasesResponseListener;
        this.b = str;
        Objects.requireNonNull(billingClientImpl);
        this.f2042c = billingClientImpl;
    }

    /* JADX WARN: Code restructure failed: missing block: B:94:0x007c, code lost:
    
        r0 = r2.E(com.android.billingclient.api.zzdb.j, com.google.android.gms.internal.play_billing.zzje.SERVICE_RESET_TO_NULL, "Service has been reset to null", r3);
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0159 A[SYNTHETIC] */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object call() {
        /*
            Method dump skipped, instructions count: 587
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.zzbl.call():java.lang.Object");
    }
}
