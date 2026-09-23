package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzemc {

    /* renamed from: c, reason: collision with root package name */
    public final zzgzf f6667c;
    public zzems f;
    public final String h;
    public final int i;
    public final zzemr j;
    public zzfhr k;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f6666a = new HashMap();
    public final ArrayList b = new ArrayList();
    public final ArrayList d = new ArrayList();
    public final HashSet e = new HashSet();
    public int g = Integer.MAX_VALUE;
    public boolean l = false;

    public zzemc(zzfic zzficVar, zzemr zzemrVar, zzgzf zzgzfVar) {
        this.i = zzficVar.b.b.r;
        this.j = zzemrVar;
        this.f6667c = zzgzfVar;
        this.h = zzemy.a(zzficVar);
        List list = zzficVar.b.f7381a;
        for (int i = 0; i < list.size(); i++) {
            this.f6666a.put((zzfhr) list.get(i), Integer.valueOf(i));
        }
        this.b.addAll(list);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
    
        if (r2.v0 == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0027, code lost:
    
        r6.l = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0031, code lost:
    
        if (android.text.TextUtils.isEmpty(r3) != false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
    
        r4.add(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0036, code lost:
    
        r6.d.add(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0042, code lost:
    
        return (com.google.android.gms.internal.ads.zzfhr) r1.remove(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.google.android.gms.internal.ads.zzfhr a() {
        /*
            r6 = this;
            monitor-enter(r6)
            boolean r0 = r6.e()     // Catch: java.lang.Throwable -> L2b
            if (r0 == 0) goto L43
            r0 = 0
        L8:
            java.util.ArrayList r1 = r6.b     // Catch: java.lang.Throwable -> L2b
            int r2 = r1.size()     // Catch: java.lang.Throwable -> L2b
            if (r0 >= r2) goto L43
            java.lang.Object r2 = r1.get(r0)     // Catch: java.lang.Throwable -> L2b
            com.google.android.gms.internal.ads.zzfhr r2 = (com.google.android.gms.internal.ads.zzfhr) r2     // Catch: java.lang.Throwable -> L2b
            java.lang.String r3 = r2.t0     // Catch: java.lang.Throwable -> L2b
            java.util.HashSet r4 = r6.e     // Catch: java.lang.Throwable -> L2b
            boolean r5 = r4.contains(r3)     // Catch: java.lang.Throwable -> L2b
            if (r5 == 0) goto L23
            int r0 = r0 + 1
            goto L8
        L23:
            boolean r5 = r2.v0     // Catch: java.lang.Throwable -> L2b
            if (r5 == 0) goto L2d
            r5 = 1
            r6.l = r5     // Catch: java.lang.Throwable -> L2b
            goto L2d
        L2b:
            r0 = move-exception
            goto L46
        L2d:
            boolean r5 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L2b
            if (r5 != 0) goto L36
            r4.add(r3)     // Catch: java.lang.Throwable -> L2b
        L36:
            java.util.ArrayList r3 = r6.d     // Catch: java.lang.Throwable -> L2b
            r3.add(r2)     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r0 = r1.remove(r0)     // Catch: java.lang.Throwable -> L2b
            com.google.android.gms.internal.ads.zzfhr r0 = (com.google.android.gms.internal.ads.zzfhr) r0     // Catch: java.lang.Throwable -> L2b
            monitor-exit(r6)
            return r0
        L43:
            monitor-exit(r6)
            r0 = 0
            return r0
        L46:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L2b
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzemc.a():com.google.android.gms.internal.ads.zzfhr");
    }

    public final synchronized void b(zzems zzemsVar, zzfhr zzfhrVar) {
        int i;
        this.l = false;
        this.d.remove(zzfhrVar);
        if (d()) {
            zzemsVar.zzm();
            return;
        }
        Integer num = (Integer) this.f6666a.get(zzfhrVar);
        if (num != null) {
            i = num.intValue();
        } else {
            i = Integer.MAX_VALUE;
        }
        if (i > this.g) {
            this.j.e(zzfhrVar);
            return;
        }
        if (this.f != null) {
            this.j.e(this.k);
        }
        this.g = i;
        this.f = zzemsVar;
        this.k = zzfhrVar;
        if (!h()) {
            i();
        }
    }

    public final synchronized void c(zzfhr zzfhrVar) {
        this.l = false;
        this.d.remove(zzfhrVar);
        this.e.remove(zzfhrVar.t0);
        if (!d() && !h()) {
            i();
        }
    }

    public final synchronized boolean d() {
        return this.f6667c.isDone();
    }

    public final synchronized boolean e() {
        if (this.l) {
            return false;
        }
        ArrayList arrayList = this.b;
        if (!arrayList.isEmpty() && ((zzfhr) arrayList.get(0)).v0 && !this.d.isEmpty()) {
            return false;
        }
        if (!d()) {
            ArrayList arrayList2 = this.d;
            if (arrayList2.size() < this.i) {
                if (f(false)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final synchronized boolean f(boolean z) {
        int i;
        try {
            ArrayList arrayList = this.b;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                zzfhr zzfhrVar = (zzfhr) obj;
                Integer num = (Integer) this.f6666a.get(zzfhrVar);
                if (num != null) {
                    i = num.intValue();
                } else {
                    i = Integer.MAX_VALUE;
                }
                if (z || !this.e.contains(zzfhrVar.t0)) {
                    int i3 = this.g;
                    if (i < i3) {
                        return true;
                    }
                    if (i > i3) {
                        break;
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean g() {
        int i;
        try {
            ArrayList arrayList = this.d;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                Integer num = (Integer) this.f6666a.get((zzfhr) obj);
                if (num != null) {
                    i = num.intValue();
                } else {
                    i = Integer.MAX_VALUE;
                }
                if (i < this.g) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean h() {
        if (!f(true)) {
            if (!g()) {
                return false;
            }
        }
        return true;
    }

    public final synchronized void i() {
        this.j.c(this.k);
        zzems zzemsVar = this.f;
        if (zzemsVar != null) {
            this.f6667c.c(zzemsVar);
        } else {
            this.f6667c.d(new zzebr(3, this.h));
        }
    }
}
