package com.google.android.gms.ads.internal.util;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import com.google.android.gms.internal.ads.zzbgk;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class zzcg {
    public boolean d;
    public Context e;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3145c = false;
    public final WeakHashMap b = new WeakHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final BroadcastReceiver f3144a = new zzcf(this);

    @SuppressLint({"UnprotectedReceiver"})
    public final synchronized void zza(Context context) {
        try {
            if (this.f3145c) {
                return;
            }
            Context applicationContext = context.getApplicationContext();
            this.e = applicationContext;
            if (applicationContext == null) {
                this.e = context;
            }
            zzbgk.a(this.e);
            this.d = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.G4)).booleanValue();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.rc)).booleanValue() && Build.VERSION.SDK_INT >= 33) {
                this.e.registerReceiver(this.f3144a, intentFilter, 4);
            } else {
                this.e.registerReceiver(this.f3144a, intentFilter);
            }
            this.f3145c = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @SuppressLint({"UnprotectedReceiver"})
    public final synchronized void zzb(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (this.d) {
            this.b.put(broadcastReceiver, intentFilter);
            return;
        }
        zzbgk.a(context);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.rc)).booleanValue() && Build.VERSION.SDK_INT >= 33) {
            context.registerReceiver(broadcastReceiver, intentFilter, 4);
        } else {
            context.registerReceiver(broadcastReceiver, intentFilter);
        }
    }

    public final synchronized void zzc(Context context, BroadcastReceiver broadcastReceiver) {
        if (this.d) {
            this.b.remove(broadcastReceiver);
        } else {
            context.unregisterReceiver(broadcastReceiver);
        }
    }
}
