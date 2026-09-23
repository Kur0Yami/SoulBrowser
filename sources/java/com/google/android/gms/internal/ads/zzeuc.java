package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzeuc implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f6941a;
    public final Context b;

    public zzeuc(Context context, zzgyw zzgywVar) {
        this.f6941a = zzgywVar;
        this.b = context;
    }

    public final Intent a() {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.rc)).booleanValue();
        Context context = this.b;
        if (booleanValue && Build.VERSION.SDK_INT >= 33) {
            return context.registerReceiver(null, intentFilter, 4);
        }
        return context.registerReceiver(null, intentFilter);
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.f6941a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzeub
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int intExtra;
                boolean z;
                int intExtra2;
                boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.rd)).booleanValue();
                boolean z2 = true;
                zzeuc zzeucVar = zzeuc.this;
                double d = -1.0d;
                if (booleanValue) {
                    BatteryManager batteryManager = (BatteryManager) zzeucVar.b.getSystemService("batterymanager");
                    if (batteryManager != null) {
                        d = batteryManager.getIntProperty(4) / 100.0d;
                    }
                    if (batteryManager != null) {
                        z = batteryManager.isCharging();
                        return new zzeud(d, z);
                    }
                    Intent a2 = zzeucVar.a();
                    if (a2 == null || ((intExtra2 = a2.getIntExtra("status", -1)) != 2 && intExtra2 != 5)) {
                        z2 = false;
                    }
                } else {
                    Intent a3 = zzeucVar.a();
                    if (a3 == null || ((intExtra = a3.getIntExtra("status", -1)) != 2 && intExtra != 5)) {
                        z2 = false;
                    }
                    if (a3 != null) {
                        d = a3.getIntExtra("level", -1) / a3.getIntExtra("scale", -1);
                    }
                }
                z = z2;
                return new zzeud(d, z);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 14;
    }
}
