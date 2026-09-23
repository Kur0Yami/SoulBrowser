package com.google.android.gms.internal.ads;

import android.net.NetworkCapabilities;
import android.view.View;
import com.google.android.gms.tasks.Task;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzazn implements zzfvz {

    /* renamed from: a, reason: collision with root package name */
    public final zzfuh f4503a;
    public final zzfuv b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbaa f4504c;
    public final zzazm d;
    public final zzayw e;
    public final zzbac f;
    public final zzazu g;
    public final zzazl h;

    public zzazn(zzfuh zzfuhVar, zzfuv zzfuvVar, zzbaa zzbaaVar, zzazm zzazmVar, zzayw zzaywVar, zzbac zzbacVar, zzazu zzazuVar, zzazl zzazlVar) {
        this.f4503a = zzfuhVar;
        this.b = zzfuvVar;
        this.f4504c = zzbaaVar;
        this.d = zzazmVar;
        this.e = zzaywVar;
        this.f = zzbacVar;
        this.g = zzazuVar;
        this.h = zzazlVar;
    }

    public final HashMap a() {
        long j;
        long j2;
        HashMap hashMap = new HashMap();
        zzfuh zzfuhVar = this.f4503a;
        Task task = this.b.d;
        zzawp zzawpVar = zzfur.f7673a;
        if (task.p()) {
            zzawpVar = (zzawp) task.m();
        }
        hashMap.put("v", zzfuhVar.a());
        hashMap.put("gms", Boolean.valueOf(zzfuhVar.c()));
        hashMap.put("gv", Long.valueOf(zzawpVar.A0()));
        hashMap.put("int", zzawpVar.y0());
        hashMap.put("attts", Long.valueOf(zzawpVar.D0().E()));
        hashMap.put("att", zzawpVar.D0().G());
        hashMap.put("attkid", zzawpVar.D0().F());
        hashMap.put("up", Boolean.valueOf(this.d.f4502a));
        hashMap.put("t", new Throwable());
        zzazu zzazuVar = this.g;
        if (zzazuVar != null) {
            hashMap.put("tcq", Long.valueOf(zzazuVar.f4512a));
            hashMap.put("tpq", Long.valueOf(zzazuVar.b));
            hashMap.put("tcv", Long.valueOf(zzazuVar.f4513c));
            hashMap.put("tpv", Long.valueOf(zzazuVar.d));
            hashMap.put("tchv", Long.valueOf(zzazuVar.e));
            hashMap.put("tphv", Long.valueOf(zzazuVar.f));
            hashMap.put("tcc", Long.valueOf(zzazuVar.g));
            hashMap.put("tpc", Long.valueOf(zzazuVar.h));
            zzayw zzaywVar = this.e;
            if (zzaywVar != null) {
                synchronized (zzayw.class) {
                    try {
                        NetworkCapabilities networkCapabilities = zzaywVar.f4487a;
                        if (networkCapabilities != null) {
                            if (networkCapabilities.hasTransport(4)) {
                                j2 = 2;
                            } else if (zzaywVar.f4487a.hasTransport(1)) {
                                j2 = 1;
                            } else if (zzaywVar.f4487a.hasTransport(0)) {
                                j2 = 0;
                            }
                        }
                        j2 = -1;
                    } finally {
                    }
                }
                hashMap.put("nt", Long.valueOf(j2));
            }
            zzbac zzbacVar = this.f;
            if (zzbacVar != null) {
                if (zzbacVar.d) {
                    j = zzbacVar.b - zzbacVar.f4525a;
                } else {
                    j = -1;
                }
                hashMap.put("vs", Long.valueOf(j));
                long j3 = zzbacVar.f4526c;
                zzbacVar.f4526c = -1L;
                hashMap.put("vf", Long.valueOf(j3));
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzfvz
    public final HashMap zzb() {
        return a();
    }

    @Override // com.google.android.gms.internal.ads.zzfvz
    public final HashMap zzc() {
        HashMap a2 = a();
        zzazl zzazlVar = this.h;
        if (zzazlVar != null) {
            List list = zzazlVar.f4501a;
            zzazlVar.f4501a = Collections.EMPTY_LIST;
            a2.put("vst", list);
        }
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzfvz
    public final HashMap zzd() {
        View view;
        HashMap a2 = a();
        zzbaa zzbaaVar = this.f4504c;
        if (zzbaaVar.p <= -2) {
            WeakReference weakReference = zzbaaVar.l;
            if (weakReference != null) {
                view = (View) weakReference.get();
            } else {
                view = null;
            }
            if (view == null) {
                zzbaaVar.p = -3L;
            }
        }
        a2.put("lts", Long.valueOf(zzbaaVar.p));
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzfvz
    public final HashMap zze() {
        HashMap hashMap = new HashMap();
        hashMap.put("t", new Throwable());
        return hashMap;
    }
}
