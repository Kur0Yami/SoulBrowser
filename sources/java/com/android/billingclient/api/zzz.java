package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.play_billing.zzfh;
import com.google.android.gms.internal.play_billing.zzix;
import com.google.android.gms.internal.play_billing.zzje;
import com.google.android.gms.internal.play_billing.zzjl;

/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes.dex */
public final class zzz extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2074a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzaa f2075c;

    public zzz(zzaa zzaaVar, boolean z) {
        this.f2075c = zzaaVar;
        this.b = z;
    }

    public final synchronized void a(Context context, IntentFilter intentFilter) {
        int i;
        try {
            if (this.f2074a) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                if (true != this.b) {
                    i = 4;
                } else {
                    i = 2;
                }
                context.registerReceiver(this, intentFilter, i);
            } else {
                context.registerReceiver(this, intentFilter);
            }
            this.f2074a = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(Context context, IntentFilter intentFilter) {
        zzz zzzVar;
        int i;
        try {
            try {
                if (this.f2074a) {
                    return;
                }
                if (Build.VERSION.SDK_INT >= 33) {
                    if (true != this.b) {
                        i = 4;
                    } else {
                        i = 2;
                    }
                    zzzVar = this;
                    context.registerReceiver(zzzVar, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null, i);
                } else {
                    zzzVar = this;
                    context.registerReceiver(this, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null);
                }
                zzzVar.f2074a = true;
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public final synchronized void c(Context context) {
        if (this.f2074a) {
            context.unregisterReceiver(this);
            this.f2074a = false;
        } else {
            com.google.android.gms.internal.play_billing.zzc.i("BillingBroadcastManager", "Receiver is not registered.");
        }
    }

    public final void d(Bundle bundle, BillingResult billingResult, int i, zzjl zzjlVar, long j, boolean z) {
        try {
            byte[] byteArray = bundle.getByteArray("FAILURE_LOGGING_PAYLOAD");
            zzaa zzaaVar = this.f2075c;
            if (byteArray != null) {
                zzaaVar.f2023c.c(zzix.u(bundle.getByteArray("FAILURE_LOGGING_PAYLOAD"), zzfh.a()), j, z);
            } else {
                zzaaVar.f2023c.c(zzcx.b(zzje.BILLING_RESULT_RECEIVED_FROM_PHONESKY, i, billingResult, null, zzjlVar), j, z);
            }
        } catch (Throwable unused) {
            com.google.android.gms.internal.play_billing.zzc.i("BillingBroadcastManager", "Failed parsing Api failure.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01b8  */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onReceive(android.content.Context r17, android.content.Intent r18) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.zzz.onReceive(android.content.Context, android.content.Intent):void");
    }
}
