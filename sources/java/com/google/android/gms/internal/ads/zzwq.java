package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class zzwq {

    /* renamed from: a, reason: collision with root package name */
    public final zzwg f9350a;
    public final CopyOnWriteArrayList b;

    public zzwq(CopyOnWriteArrayList copyOnWriteArrayList, zzwg zzwgVar) {
        this.b = copyOnWriteArrayList;
        this.f9350a = zzwgVar;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.gms.internal.ads.zzwr, java.lang.Object] */
    public final void a(final zzdr zzdrVar) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            zzwj zzwjVar = (zzwj) it.next();
            final ?? r2 = zzwjVar.b;
            Handler handler = zzwjVar.f9339a;
            Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzwo
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzdr.this.zza(r2);
                }
            };
            String str = zzfj.f7405a;
            Looper looper = handler.getLooper();
            if (looper.getThread().isAlive()) {
                if (looper == Looper.myLooper()) {
                    runnable.run();
                } else {
                    handler.post(runnable);
                }
            }
        }
    }
}
