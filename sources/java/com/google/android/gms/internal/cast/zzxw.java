package com.google.android.gms.internal.cast;

import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzxw {

    /* renamed from: a, reason: collision with root package name */
    public final zzzv f9875a = new zzzz();
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f9876c;

    static {
        new zzxw(0);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.cast.zzzz, com.google.android.gms.internal.cast.zzzv] */
    public zzxw() {
    }

    public static boolean d(Map.Entry entry) {
        ((zzxv) entry.getKey()).zzc();
        throw null;
    }

    public static final int e(Map.Entry entry) {
        zzxv zzxvVar = (zzxv) entry.getKey();
        entry.getValue();
        zzxvVar.zzc();
        throw null;
    }

    public final void a() {
        if (this.b) {
            return;
        }
        zzzv zzzvVar = this.f9875a;
        int i = zzzvVar.f;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = ((zzzw) zzzvVar.b(i2)).f;
            if (obj instanceof zzyd) {
                zzyd zzydVar = (zzyd) obj;
                zzzp.f9899c.a(zzydVar.getClass()).h(zzydVar);
                zzydVar.m();
            }
        }
        Iterator it = zzzvVar.c().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof zzyd) {
                zzyd zzydVar2 = (zzyd) value;
                zzzp.f9899c.a(zzydVar2.getClass()).h(zzydVar2);
                zzydVar2.m();
            }
        }
        zzzvVar.a();
        this.b = true;
    }

    public final Iterator b() {
        zzzv zzzvVar = this.f9875a;
        if (zzzvVar.isEmpty()) {
            return Collections.emptyIterator();
        }
        if (this.f9876c) {
            return new zzyr(((zzzy) zzzvVar.entrySet()).iterator());
        }
        return ((zzzy) zzzvVar.entrySet()).iterator();
    }

    public final boolean c() {
        zzzv zzzvVar = this.f9875a;
        if (zzzvVar.f <= 0) {
            Iterator it = zzzvVar.c().iterator();
            if (!it.hasNext()) {
                return true;
            }
            d((Map.Entry) it.next());
            throw null;
        }
        d(zzzvVar.b(0));
        throw null;
    }

    public final Object clone() {
        zzxw zzxwVar = new zzxw();
        zzzv zzzvVar = this.f9875a;
        if (zzzvVar.f <= 0) {
            Iterator it = zzzvVar.c().iterator();
            if (!it.hasNext()) {
                zzxwVar.f9876c = this.f9876c;
                return zzxwVar;
            }
            Map.Entry entry = (Map.Entry) it.next();
            zzxv zzxvVar = (zzxv) entry.getKey();
            entry.getValue();
            zzxvVar.zzd();
            throw null;
        }
        ((zzxv) ((zzzw) zzzvVar.b(0)).f9904c).zzd();
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzxw)) {
            return false;
        }
        return this.f9875a.equals(((zzxw) obj).f9875a);
    }

    public final int hashCode() {
        return this.f9875a.hashCode();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.cast.zzzz, com.google.android.gms.internal.cast.zzzv] */
    public zzxw(int i) {
        a();
        a();
    }
}
