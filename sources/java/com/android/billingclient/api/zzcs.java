package com.android.billingclient.api;

/* loaded from: classes.dex */
final class zzcs extends com.google.android.gms.internal.play_billing.zzaz {

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.internal.play_billing.zzp f2060c;

    public zzcs(com.google.android.gms.internal.play_billing.zzp zzpVar) {
        attachInterface(this, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideServiceCallback");
        this.f2060c = zzpVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzba
    public final void j(int i) {
        this.f2060c.a(Integer.valueOf(i));
    }
}
