package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public final class zzbam implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final zzazt f4527a;
    public final zzavs b;

    public zzbam(zzazt zzaztVar, zzavs zzavsVar) {
        this.f4527a = zzaztVar;
        this.b = zzavsVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Object obj;
        Future future;
        zzazt zzaztVar = this.f4527a;
        zzayt zzaytVar = zzaztVar.j;
        if (zzaytVar != null) {
            obj = zzaytVar.f4483a;
        } else {
            obj = zzaztVar.i;
        }
        if (obj != null) {
            if (zzaytVar != null) {
                future = zzaytVar.f4483a;
            } else {
                future = zzaztVar.i;
            }
            future.get();
        }
        zzawp b = zzaztVar.b();
        if (b != null) {
            try {
                zzavs zzavsVar = this.b;
                synchronized (zzavsVar) {
                    byte[] h = b.h();
                    zziab zziabVar = zziab.b;
                    int i = zzhyy.f8889a;
                    zzavsVar.j(h, h.length, zziab.f8905c);
                }
                return null;
            } catch (zzibg | NullPointerException unused) {
                return null;
            }
        }
        return null;
    }
}
