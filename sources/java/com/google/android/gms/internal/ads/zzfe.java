package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class zzfe implements zzdx {
    public static final ArrayList b = new ArrayList(50);

    /* renamed from: a, reason: collision with root package name */
    public final Handler f7260a;

    public zzfe(Handler handler) {
        this.f7260a = handler;
    }

    public static /* synthetic */ void k(zzfd zzfdVar) {
        ArrayList arrayList = b;
        synchronized (arrayList) {
            try {
                if (arrayList.size() < 50) {
                    arrayList.add(zzfdVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzfd l() {
        zzfd zzfdVar;
        ArrayList arrayList = b;
        synchronized (arrayList) {
            try {
                if (arrayList.isEmpty()) {
                    zzfdVar = new Object();
                } else {
                    zzfdVar = (zzfd) arrayList.remove(arrayList.size() - 1);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzfdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final zzdw a(Object obj) {
        zzfd l = l();
        l.f7233a = this.f7260a.obtainMessage(31, 0, 0, obj);
        return l;
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final boolean b(long j) {
        return this.f7260a.sendEmptyMessageAtTime(2, j);
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final boolean c(zzdw zzdwVar) {
        zzfd zzfdVar = (zzfd) zzdwVar;
        Message message = zzfdVar.f7233a;
        message.getClass();
        boolean sendMessageAtFrontOfQueue = this.f7260a.sendMessageAtFrontOfQueue(message);
        zzfdVar.f7233a = null;
        k(zzfdVar);
        return sendMessageAtFrontOfQueue;
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final boolean d(Runnable runnable) {
        return this.f7260a.postDelayed(runnable, 1000L);
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final boolean e(int i) {
        return this.f7260a.sendEmptyMessage(i);
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final boolean f(int i, int i2) {
        return this.f7260a.sendEmptyMessageDelayed(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final boolean g(Runnable runnable) {
        return this.f7260a.post(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final void h(int i) {
        this.f7260a.removeMessages(i);
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final void i(Runnable runnable) {
        this.f7260a.removeCallbacks(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final zzdw j(int i, Object obj) {
        zzfd l = l();
        l.f7233a = this.f7260a.obtainMessage(i, obj);
        return l;
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final Looper zza() {
        return this.f7260a.getLooper();
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final boolean zzb() {
        return this.f7260a.hasMessages(1);
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final zzdw zzc(int i) {
        zzfd l = l();
        l.f7233a = this.f7260a.obtainMessage(i);
        return l;
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final zzdw zze(int i, int i2, int i3) {
        zzfd l = l();
        l.f7233a = this.f7260a.obtainMessage(i, i2, i3);
        return l;
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final void zzm() {
        this.f7260a.removeCallbacksAndMessages(null);
    }
}
