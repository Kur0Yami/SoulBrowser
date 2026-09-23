package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
final class zzct implements ServiceConnection {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzcv f2061c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v4, types: [com.google.android.gms.internal.play_billing.zzay] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ?? zzasVar;
        com.google.android.gms.internal.play_billing.zzc.h("BillingClientTesting", "Billing Override Service connected.");
        zzcv zzcvVar = this.f2061c;
        int i = com.google.android.gms.internal.play_billing.zzax.f11447c;
        if (iBinder == null) {
            zzasVar = 0;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService");
            if (queryLocalInterface instanceof com.google.android.gms.internal.play_billing.zzay) {
                zzasVar = (com.google.android.gms.internal.play_billing.zzay) queryLocalInterface;
            } else {
                zzasVar = new com.google.android.gms.internal.play_billing.zzas(iBinder, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService");
            }
        }
        zzcvVar.F = zzasVar;
        zzcvVar.E = 2;
        zzcvVar.O(26);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.internal.play_billing.zzc.i("BillingClientTesting", "Billing Override Service disconnected.");
        zzcv zzcvVar = this.f2061c;
        zzcvVar.F = null;
        zzcvVar.E = 0;
    }
}
