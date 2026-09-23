package com.android.billingclient.api;

import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transport;
import com.google.android.gms.internal.play_billing.zzki;

/* loaded from: classes.dex */
final class zzdj {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2068a;
    public Transport b;

    public final void a(zzki zzkiVar) {
        if (this.f2068a) {
            com.google.android.gms.internal.play_billing.zzc.i("BillingLogger", "Skipping logging since initialization failed.");
            return;
        }
        try {
            this.b.a(Event.e(zzkiVar));
        } catch (Throwable unused) {
            com.google.android.gms.internal.play_billing.zzc.i("BillingLogger", "logging failed.");
        }
    }
}
