package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
final class zzjt {

    /* renamed from: a, reason: collision with root package name */
    public final zzlx f10382a;
    public final boolean b;

    static {
        new zzjt(0);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.measurement.zzmh, com.google.android.gms.internal.measurement.zzlx] */
    public zzjt() {
        this.f10382a = new zzmh(16);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0013. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0045 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(com.google.android.gms.internal.measurement.zzjs r4, java.lang.Object r5) {
        /*
            com.google.android.gms.internal.measurement.zznb r0 = r4.zzb()
            java.nio.charset.Charset r1 = com.google.android.gms.internal.measurement.zzkk.f10385a
            r5.getClass()
            com.google.android.gms.internal.measurement.zznb[] r1 = com.google.android.gms.internal.measurement.zznb.f
            com.google.android.gms.internal.measurement.zznc r1 = com.google.android.gms.internal.measurement.zznc.INT
            com.google.android.gms.internal.measurement.zznc r0 = r0.f10413c
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L41;
                case 1: goto L3e;
                case 2: goto L3b;
                case 3: goto L38;
                case 4: goto L35;
                case 5: goto L32;
                case 6: goto L29;
                case 7: goto L20;
                case 8: goto L17;
                default: goto L16;
            }
        L16:
            goto L46
        L17:
            boolean r0 = r5 instanceof com.google.android.gms.internal.measurement.zzlj
            if (r0 != 0) goto L1f
            boolean r0 = r5 instanceof com.google.android.gms.internal.measurement.zzko
            if (r0 == 0) goto L46
        L1f:
            return
        L20:
            boolean r0 = r5 instanceof java.lang.Integer
            if (r0 != 0) goto L28
            boolean r0 = r5 instanceof com.google.android.gms.internal.measurement.zzke
            if (r0 == 0) goto L46
        L28:
            return
        L29:
            boolean r0 = r5 instanceof com.google.android.gms.internal.measurement.zzjb
            if (r0 != 0) goto L31
            boolean r0 = r5 instanceof byte[]
            if (r0 == 0) goto L46
        L31:
            return
        L32:
            boolean r0 = r5 instanceof java.lang.String
            goto L43
        L35:
            boolean r0 = r5 instanceof java.lang.Boolean
            goto L43
        L38:
            boolean r0 = r5 instanceof java.lang.Double
            goto L43
        L3b:
            boolean r0 = r5 instanceof java.lang.Float
            goto L43
        L3e:
            boolean r0 = r5 instanceof java.lang.Long
            goto L43
        L41:
            boolean r0 = r5 instanceof java.lang.Integer
        L43:
            if (r0 == 0) goto L46
            return
        L46:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            int r1 = r4.zza()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            com.google.android.gms.internal.measurement.zznb r4 = r4.zzb()
            com.google.android.gms.internal.measurement.zznc r4 = r4.f10413c
            java.lang.Class r5 = r5.getClass()
            java.lang.String r5 = r5.getName()
            r2 = 3
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = 0
            r2[r3] = r1
            r1 = 1
            r2[r1] = r4
            r4 = 2
            r2[r4] = r5
            java.lang.String r4 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r4 = java.lang.String.format(r4, r2)
            r0.<init>(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjt.b(com.google.android.gms.internal.measurement.zzjs, java.lang.Object):void");
    }

    public final void a(zzjs zzjsVar, Object obj) {
        if (zzjsVar.zzc()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    b(zzjsVar, arrayList.get(i));
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            b(zzjsVar, obj);
        }
        this.f10382a.put(zzjsVar, obj);
    }

    public final Object clone() {
        zzlx zzlxVar;
        Iterable<Map.Entry> entrySet;
        zzjt zzjtVar = new zzjt();
        int i = 0;
        while (true) {
            zzlxVar = this.f10382a;
            if (i >= zzlxVar.f.size()) {
                break;
            }
            Map.Entry entry = (Map.Entry) zzlxVar.f.get(i);
            zzjtVar.a((zzjs) entry.getKey(), entry.getValue());
            i++;
        }
        if (zzlxVar.g.isEmpty()) {
            entrySet = zzma.b;
        } else {
            entrySet = zzlxVar.g.entrySet();
        }
        for (Map.Entry entry2 : entrySet) {
            zzjtVar.a((zzjs) entry2.getKey(), entry2.getValue());
        }
        return zzjtVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzjt)) {
            return false;
        }
        return this.f10382a.equals(((zzjt) obj).f10382a);
    }

    public final int hashCode() {
        return this.f10382a.hashCode();
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.measurement.zzmh, com.google.android.gms.internal.measurement.zzlx] */
    public zzjt(int i) {
        ?? zzmhVar = new zzmh(0);
        this.f10382a = zzmhVar;
        if (!this.b) {
            zzmhVar.a();
            this.b = true;
        }
        if (this.b) {
            return;
        }
        zzmhVar.a();
        this.b = true;
    }
}
