package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzaum {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f4423a;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzgto, java.lang.Object, com.google.android.gms.internal.ads.zzgtj] */
    static {
        zzgtq zzgtqVar;
        ?? obj = new Object();
        int i = 0;
        obj.a(new Long[]{-42L, -64L}, zzatx.f4414c);
        obj.a(new Long[]{-6L, -53L}, zzatx.f);
        obj.a(new Long[]{-41L, -31L}, zzatx.g);
        obj.a(new Long[]{-40L, -28L}, zzatx.h);
        obj.a(new Long[]{-29L, -37L}, zzatx.i);
        obj.a(new Long[]{-80L, -32L}, zzatx.j);
        obj.a(new Long[]{-17L, -36L}, zzatx.k);
        obj.a(new Long[]{-82L, -35L}, zzatx.l);
        obj.a(new Long[]{-63L, -52L}, zzatx.m);
        obj.a(new Long[]{-23L, -11L}, zzatx.n);
        obj.a(new Long[]{-69L, -68L}, zzatx.o);
        obj.a(new Long[]{-62L, -55L}, zzatx.p);
        obj.a(new Long[]{-78L, -25L}, zzatx.q);
        obj.a(new Long[]{-71L, -3L}, zzatx.r);
        obj.a(new Long[]{-18L, -4L}, zzatx.s);
        obj.a(new Long[]{-67L, -19L}, zzatx.t);
        obj.a(new Long[]{-58L}, zzatx.u);
        obj.a(new Long[]{-2L}, zzatx.v);
        obj.a(new Long[]{-34L}, zzatx.w);
        obj.a(new Long[]{-30L}, zzatx.x);
        obj.a(new Long[]{-56L}, zzatx.y);
        obj.a(new Long[]{-57L}, zzatx.A);
        obj.a(new Long[]{-66L}, zzatx.B);
        obj.a(new Long[]{-60L}, zzatx.C);
        obj.a(new Long[]{-27L}, zzatx.D);
        obj.a(new Long[]{-26L}, zzatx.E);
        obj.a(new Long[]{-74L}, zzatx.F);
        obj.a(new Long[]{-77L}, zzatx.G);
        obj.a(new Long[]{-38L}, zzatx.I);
        obj.a(new Long[]{-79L}, zzatx.K);
        obj.a(new Long[]{-7L}, zzatx.L);
        obj.a(new Long[]{-51L}, zzatx.M);
        obj.a(new Long[]{-9L}, zzatx.N);
        obj.a(new Long[]{-47L}, zzatx.O);
        obj.a(new Long[]{-70L}, zzatx.P);
        obj.a(new Long[]{-14L}, zzatx.Q);
        obj.a(new Long[]{-5L}, zzatx.R);
        obj.a(new Long[]{-39L}, zzatx.S);
        obj.a(new Long[]{-8L}, zzatx.T);
        obj.a(new Long[]{-54L}, zzatx.U);
        obj.a(new Long[]{-15L}, zzatx.V);
        obj.a(new Long[]{-12L}, zzatx.W);
        obj.a(new Long[]{-21L}, zzatx.X);
        obj.a(new Long[]{-43L}, zzatx.Y);
        obj.a(new Long[]{-20L}, zzatx.J);
        obj.a(new Long[]{-81L}, zzatx.H);
        obj.a(new Long[]{-46L}, zzatx.Z);
        obj.a(new Long[]{-61L}, zzatx.a0);
        obj.a(new Long[]{-44L}, zzatx.b0);
        obj.a(new Long[]{-59L}, zzatx.z);
        obj.a(new Long[]{-49L}, zzatx.c0);
        obj.a(new Long[]{-75L}, zzatx.d0);
        obj.a(new Long[]{-24L}, zzatx.e0);
        obj.a(new Long[]{-13L}, zzatx.j0);
        obj.a(new Long[]{-1L}, zzatx.k0);
        obj.a(new Long[]{-33L}, zzatx.f0);
        obj.a(new Long[]{-45L}, zzatx.g0);
        obj.a(new Long[]{-50L}, zzatx.h0);
        obj.a(new Long[]{-65L}, zzatx.i0);
        obj.a(new Long[]{-16L}, zzatx.l0);
        obj.a(new Long[]{-73L}, zzatx.m0);
        obj.a(new Long[]{-10L}, zzatx.n0);
        obj.a(new Long[]{-48L}, zzatx.o0);
        obj.a(new Long[]{-22L}, zzatx.p0);
        obj.a(new Long[]{-76L}, zzatx.q0);
        obj.a(new Long[]{-72L}, zzatx.r0);
        Map map = obj.f8251a;
        if (map == null) {
            zzgtqVar = zzgsr.k;
        } else {
            Collection entrySet = ((zzgsk) map).entrySet();
            if (((AbstractCollection) entrySet).isEmpty()) {
                zzgtqVar = zzgsr.k;
            } else {
                zzgsf zzgsfVar = (zzgsf) entrySet;
                zzgtf zzgtfVar = new zzgtf(zzgsfVar.f8230c.size());
                Iterator it = zzgsfVar.iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    Object key = entry.getKey();
                    zzgtn t = zzgtn.t(((zzgtm) entry.getValue()).h());
                    if (!t.isEmpty()) {
                        zzgtfVar.a(key, t);
                        i += t.size();
                    }
                }
                zzgtqVar = new zzgtq(zzgtfVar.d(true), i);
            }
        }
        zzgtn zzgtnVar = zzgtqVar.j;
        if (zzgtnVar == null) {
            zzgtnVar = new zzgtp(zzgtqVar);
            zzgtqVar.j = zzgtnVar;
        }
        zzgvr it2 = zzgtnVar.iterator();
        while (it2.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it2.next();
            if (((Long) entry2.getValue()).longValue() > -1 || ((Long) entry2.getValue()).longValue() < -82) {
                throw new zzaul(zzatu.a("DkWkogARIjm8VAqEzyEdNWdUqAjIW8EtmA==").concat(String.valueOf(entry2.getValue())));
            }
        }
        HashMap hashMap = new HashMap();
        zzgtn zzgtnVar2 = zzgtqVar.j;
        if (zzgtnVar2 == null) {
            zzgtnVar2 = new zzgtp(zzgtqVar);
            zzgtqVar.j = zzgtnVar2;
        }
        zzgvr it3 = zzgtnVar2.iterator();
        while (it3.hasNext()) {
            Map.Entry entry3 = (Map.Entry) it3.next();
            zzatx zzatxVar = (zzatx) entry3.getKey();
            Long l = (Long) entry3.getValue();
            long longValue = l.longValue();
            if (!hashMap.containsKey(l)) {
                hashMap.put(l, zzatxVar);
            } else {
                String valueOf = String.valueOf(hashMap.get(l));
                String valueOf2 = String.valueOf(zzatxVar);
                StringBuilder sb = new StringBuilder(valueOf.length() + String.valueOf(longValue).length() + 27 + 5 + valueOf2.length());
                sb.append(zzatu.a("H16u7wATM3S4Tl6egTYIeX5f+xfdXtsmmA=="));
                sb.append(longValue);
                sb.append(zzatu.a("cQk="));
                sb.append(valueOf);
                sb.append(zzatu.a("a0ivq0U="));
                sb.append(valueOf2);
                throw new zzaul(sb.toString());
            }
        }
        f4423a = hashMap;
    }
}
