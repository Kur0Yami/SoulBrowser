package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.View;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzgmu extends BroadcastReceiver implements zzglz, zzgcb {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8138a;
    public final ExecutorService b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8139c = true;

    public zzgmu(Context context, ExecutorService executorService) {
        this.f8138a = context;
        this.b = executorService;
    }

    @Override // com.google.android.gms.internal.ads.zzglz
    public final void a(HashMap hashMap) {
        boolean z;
        synchronized (this) {
            z = this.f8139c;
        }
        hashMap.put("up", Boolean.valueOf(z));
    }

    @Override // com.google.android.gms.internal.ads.zzglz
    public final void b(HashMap hashMap) {
        boolean z;
        synchronized (this) {
            z = this.f8139c;
        }
        hashMap.put("up", Boolean.valueOf(z));
    }

    @Override // com.google.android.gms.internal.ads.zzglz
    public final void c(HashMap hashMap, Context context, View view) {
        boolean z;
        synchronized (this) {
            z = this.f8139c;
        }
        hashMap.put("up", Boolean.valueOf(z));
    }

    public final synchronized void d(boolean z) {
        this.f8139c = z;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            synchronized (this) {
                this.f8139c = true;
            }
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            d(false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    public final ListenableFuture zza() {
        return zzgym.c(new Callable() { // from class: com.google.android.gms.internal.ads.zzgmt
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                zzgmu zzgmuVar = zzgmu.this;
                zzgmuVar.getClass();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.USER_PRESENT");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
                zzgmuVar.f8138a.registerReceiver(zzgmuVar, intentFilter);
                return null;
            }
        }, this.b);
    }
}
