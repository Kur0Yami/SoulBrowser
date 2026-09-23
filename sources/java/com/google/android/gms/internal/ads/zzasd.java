package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@VisibleForTesting
/* loaded from: classes.dex */
final class zzasd {

    /* renamed from: a, reason: collision with root package name */
    public long f4384a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4385c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final List h;

    public zzasd(String str, String str2, long j, long j2, long j3, long j4, List list) {
        this.b = str;
        this.f4385c = true == RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.equals(str2) ? null : str2;
        this.d = j;
        this.e = j2;
        this.f = j3;
        this.g = j4;
        this.h = list;
    }

    public static zzasd a(zzase zzaseVar) {
        List arrayList;
        if (zzasg.e(zzaseVar) == 538247942) {
            String k = zzasg.k(zzaseVar);
            String k2 = zzasg.k(zzaseVar);
            long g = zzasg.g(zzaseVar);
            long g2 = zzasg.g(zzaseVar);
            long g3 = zzasg.g(zzaseVar);
            long g4 = zzasg.g(zzaseVar);
            int e = zzasg.e(zzaseVar);
            if (e >= 0) {
                if (e == 0) {
                    arrayList = Collections.EMPTY_LIST;
                } else {
                    arrayList = new ArrayList();
                }
                List list = arrayList;
                for (int i = 0; i < e; i++) {
                    list.add(new zzarc(zzasg.k(zzaseVar).intern(), zzasg.k(zzaseVar).intern()));
                }
                return new zzasd(k, k2, g, g2, g3, g4, list);
            }
            throw new IOException(androidx.work.impl.workers.a.r(e, "readHeaderList size=", new StringBuilder(String.valueOf(e).length() + 20)));
        }
        throw new IOException();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzasd(java.lang.String r14, com.google.android.gms.internal.ads.zzaqt r15) {
        /*
            r13 = this;
            java.lang.String r2 = r15.b
            long r3 = r15.f4354c
            long r5 = r15.d
            long r7 = r15.e
            long r9 = r15.f
            java.util.List r0 = r15.h
            if (r0 == 0) goto L12
        Le:
            r1 = r14
            r11 = r0
            r0 = r13
            goto L46
        L12:
            java.util.Map r15 = r15.g
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = r15.size()
            r0.<init>(r1)
            java.util.Set r15 = r15.entrySet()
            java.util.Iterator r15 = r15.iterator()
        L25:
            boolean r1 = r15.hasNext()
            if (r1 == 0) goto Le
            java.lang.Object r1 = r15.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            com.google.android.gms.internal.ads.zzarc r11 = new com.google.android.gms.internal.ads.zzarc
            java.lang.Object r12 = r1.getKey()
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r1 = r1.getValue()
            java.lang.String r1 = (java.lang.String) r1
            r11.<init>(r12, r1)
            r0.add(r11)
            goto L25
        L46:
            r0.<init>(r1, r2, r3, r5, r7, r9, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzasd.<init>(java.lang.String, com.google.android.gms.internal.ads.zzaqt):void");
    }
}
