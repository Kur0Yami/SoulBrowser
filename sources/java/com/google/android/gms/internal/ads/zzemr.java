package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzemr {

    /* renamed from: a, reason: collision with root package name */
    public final Clock f6694a;
    public final zzemt b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfpi f6695c;
    public final LinkedHashMap d = new LinkedHashMap();
    public final boolean e = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.G7)).booleanValue();
    public final zzejl f;
    public boolean g;
    public long h;
    public long i;

    public zzemr(Clock clock, zzemt zzemtVar, zzejl zzejlVar, zzfpi zzfpiVar) {
        this.f6694a = clock;
        this.b = zzemtVar;
        this.f = zzejlVar;
        this.f6695c = zzfpiVar;
    }

    public final synchronized void a() {
        this.i = this.f6694a.elapsedRealtime();
    }

    public final synchronized void b(List list) {
        this.i = this.f6694a.elapsedRealtime();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzfhr zzfhrVar = (zzfhr) it.next();
            String str = zzfhrVar.w;
            if (!TextUtils.isEmpty(str)) {
                this.d.put(zzfhrVar, new zzemq(str, zzfhrVar.f0, Integer.MAX_VALUE, 0L, null));
            }
        }
    }

    public final synchronized void c(zzfhr zzfhrVar) {
        try {
            this.h = this.f6694a.elapsedRealtime() - this.i;
            if (zzfhrVar != null) {
                this.f.a(zzfhrVar);
            }
            this.g = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void d(zzfic zzficVar, zzfhr zzfhrVar, ListenableFuture listenableFuture, zzfpe zzfpeVar) {
        zzfhu zzfhuVar = zzficVar.b.b;
        long elapsedRealtime = this.f6694a.elapsedRealtime();
        String str = zzfhrVar.w;
        if (str != null) {
            this.d.put(zzfhrVar, new zzemq(str, zzfhrVar.f0, 9, 0L, null));
            zzemp zzempVar = new zzemp(this, elapsedRealtime, zzfhuVar, zzfhrVar, str, zzfpeVar, zzficVar);
            listenableFuture.k(new zzgyk(listenableFuture, zzempVar), zzcdo.g);
        }
    }

    public final synchronized void e(zzfhr zzfhrVar) {
        zzemq zzemqVar = (zzemq) this.d.get(zzfhrVar);
        if (zzemqVar != null && !this.g) {
            zzemqVar.f6693c = 8;
        }
    }

    public final synchronized String f() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            Iterator it = this.d.entrySet().iterator();
            while (it.hasNext()) {
                zzemq zzemqVar = (zzemq) ((Map.Entry) it.next()).getValue();
                if (zzemqVar.f6693c != Integer.MAX_VALUE) {
                    arrayList.add(zzemqVar.toString());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return TextUtils.join("_", arrayList);
    }

    public final synchronized long g() {
        return this.h;
    }

    public final boolean h(zzfhr zzfhrVar) {
        synchronized (this) {
            zzemq zzemqVar = (zzemq) this.d.get(zzfhrVar);
            if (zzemqVar == null) {
                return false;
            }
            int i = zzemqVar.f6693c;
            if (i != 8) {
                return false;
            }
            return true;
        }
    }
}
