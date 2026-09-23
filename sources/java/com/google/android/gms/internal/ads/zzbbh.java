package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public abstract class zzbbh implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final zzazt f4531a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4532c;
    public final zzavs d;
    public Method e;
    public final int f;
    public final int g;

    public zzbbh(zzazt zzaztVar, String str, String str2, zzavs zzavsVar, int i, int i2) {
        this.f4531a = zzaztVar;
        this.b = str;
        this.f4532c = str2;
        this.d = zzavsVar;
        this.f = i;
        this.g = i2;
    }

    public abstract void a();

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i;
        try {
            long nanoTime = System.nanoTime();
            zzazt zzaztVar = this.f4531a;
            Method d = zzaztVar.d(this.b, this.f4532c);
            this.e = d;
            if (d != null) {
                a();
                zzayk zzaykVar = zzaztVar.k;
                if (zzaykVar != null && (i = this.f) != Integer.MIN_VALUE) {
                    zzaykVar.a(this.g, i, (System.nanoTime() - nanoTime) / 1000, null, null);
                    return null;
                }
                return null;
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }
}
