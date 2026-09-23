package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzarg {

    /* renamed from: a, reason: collision with root package name */
    public final int f4364a;
    public final byte[] b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f4365c;
    public final List d;
    public final boolean e;

    public zzarg(int i, byte[] bArr, Map map, List list, boolean z) {
        this.f4364a = i;
        this.b = bArr;
        this.f4365c = map;
        this.d = list == null ? null : DesugarCollections.unmodifiableList(list);
        this.e = z;
    }

    public static List a(Map map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            arrayList.add(new zzarc((String) entry.getKey(), (String) entry.getValue()));
        }
        return arrayList;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.TreeMap] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzarg(int r11, byte[] r12, boolean r13, java.util.List r14) {
        /*
            r10 = this;
            if (r14 != 0) goto La
            r0 = 0
        L3:
            r4 = r10
            r5 = r11
            r6 = r12
            r9 = r13
            r8 = r14
            r7 = r0
            goto L32
        La:
            boolean r0 = r14.isEmpty()
            if (r0 == 0) goto L13
            java.util.Map r0 = java.util.Collections.EMPTY_MAP
            goto L3
        L13:
            java.util.TreeMap r0 = new java.util.TreeMap
            java.util.Comparator r1 = java.lang.String.CASE_INSENSITIVE_ORDER
            r0.<init>(r1)
            java.util.Iterator r1 = r14.iterator()
        L1e:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L3
            java.lang.Object r2 = r1.next()
            com.google.android.gms.internal.ads.zzarc r2 = (com.google.android.gms.internal.ads.zzarc) r2
            java.lang.String r3 = r2.f4362a
            java.lang.String r2 = r2.b
            r0.put(r3, r2)
            goto L1e
        L32:
            r4.<init>(r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzarg.<init>(int, byte[], boolean, java.util.List):void");
    }
}
