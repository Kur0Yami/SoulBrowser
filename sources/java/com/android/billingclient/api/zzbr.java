package com.android.billingclient.api;

/* loaded from: classes.dex */
final class zzbr implements BillingClientStateListener {
    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void d(BillingResult billingResult) {
        com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "Reconnection finished with result: " + billingResult.f2001a);
        try {
            throw null;
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Exception setting completer.", th);
            throw null;
        }
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void e() {
        com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "Reconnection attempt failed.");
        try {
            BillingResult billingResult = zzdb.f2064a;
            throw null;
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Exception setting completer.", th);
            throw null;
        }
    }
}
