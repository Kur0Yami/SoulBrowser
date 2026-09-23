package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzdxh implements zzfmv {
    public final zzdwy f;
    public final Clock g;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f6231c = new HashMap();
    public final HashMap h = new HashMap();

    public zzdxh(zzdwy zzdwyVar, Set set, Clock clock) {
        this.f = zzdwyVar;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            zzdxg zzdxgVar = (zzdxg) it.next();
            HashMap hashMap = this.h;
            zzdxgVar.getClass();
            hashMap.put(zzfmo.RENDERER, zzdxgVar);
        }
        this.g = clock;
    }

    @Override // com.google.android.gms.internal.ads.zzfmv
    public final void a(zzfmo zzfmoVar, String str, Throwable th) {
        HashMap hashMap = this.f6231c;
        if (hashMap.containsKey(zzfmoVar)) {
            long elapsedRealtime = this.g.elapsedRealtime() - ((Long) hashMap.get(zzfmoVar)).longValue();
            this.f.f6219a.put("task.".concat(String.valueOf(str)), "f.".concat(String.valueOf(Long.toString(elapsedRealtime))));
        }
        if (this.h.containsKey(zzfmoVar)) {
            b(zzfmoVar, false);
        }
    }

    public final void b(zzfmo zzfmoVar, boolean z) {
        String str;
        zzdxg zzdxgVar = (zzdxg) this.h.get(zzfmoVar);
        if (zzdxgVar != null) {
            if (true != z) {
                str = "f.";
            } else {
                str = "s.";
            }
            zzfmo zzfmoVar2 = zzdxgVar.b;
            HashMap hashMap = this.f6231c;
            if (hashMap.containsKey(zzfmoVar2)) {
                long elapsedRealtime = this.g.elapsedRealtime() - ((Long) hashMap.get(zzfmoVar2)).longValue();
                String str2 = zzdxgVar.f6230a;
                ConcurrentHashMap concurrentHashMap = this.f.f6219a;
                StringBuilder sb = new StringBuilder(String.valueOf(elapsedRealtime).length() + 2);
                sb.append(str);
                sb.append(elapsedRealtime);
                concurrentHashMap.put("label.".concat(str2), sb.toString());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfmv
    public final void i(zzfmo zzfmoVar, String str) {
        HashMap hashMap = this.f6231c;
        if (hashMap.containsKey(zzfmoVar)) {
            long elapsedRealtime = this.g.elapsedRealtime() - ((Long) hashMap.get(zzfmoVar)).longValue();
            this.f.f6219a.put("task.".concat(String.valueOf(str)), "s.".concat(String.valueOf(Long.toString(elapsedRealtime))));
        }
        if (this.h.containsKey(zzfmoVar)) {
            b(zzfmoVar, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfmv
    public final void v(zzfmo zzfmoVar, String str) {
        this.f6231c.put(zzfmoVar, Long.valueOf(this.g.elapsedRealtime()));
    }

    @Override // com.google.android.gms.internal.ads.zzfmv
    public final void g(String str) {
    }
}
