package com.google.android.gms.internal.auth;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class zzeq {

    /* renamed from: a, reason: collision with root package name */
    public final zzgl f9537a = new zzgv(16);
    public boolean b;

    static {
        new zzeq(0);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.auth.zzgl, com.google.android.gms.internal.auth.zzgv] */
    public zzeq() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0013. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0045 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void c(com.google.android.gms.internal.auth.zzep r4, java.lang.Object r5) {
        /*
            com.google.android.gms.internal.auth.zzho r0 = r4.zzb()
            java.nio.charset.Charset r1 = com.google.android.gms.internal.auth.zzfa.f9540a
            r5.getClass()
            com.google.android.gms.internal.auth.zzho[] r1 = com.google.android.gms.internal.auth.zzho.f
            com.google.android.gms.internal.auth.zzhp r1 = com.google.android.gms.internal.auth.zzhp.INT
            com.google.android.gms.internal.auth.zzhp r0 = r0.f9573c
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
            boolean r0 = r5 instanceof com.google.android.gms.internal.auth.zzfx
            if (r0 != 0) goto L1f
            boolean r0 = r5 instanceof com.google.android.gms.internal.auth.zzfc
            if (r0 == 0) goto L46
        L1f:
            return
        L20:
            boolean r0 = r5 instanceof java.lang.Integer
            if (r0 != 0) goto L28
            boolean r0 = r5 instanceof com.google.android.gms.internal.auth.zzex
            if (r0 == 0) goto L46
        L28:
            return
        L29:
            boolean r0 = r5 instanceof com.google.android.gms.internal.auth.zzef
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
            com.google.android.gms.internal.auth.zzho r4 = r4.zzb()
            com.google.android.gms.internal.auth.zzhp r4 = r4.f9573c
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzeq.c(com.google.android.gms.internal.auth.zzep, java.lang.Object):void");
    }

    public final void a() {
        if (!this.b) {
            int i = 0;
            while (true) {
                zzgl zzglVar = this.f9537a;
                if (i < zzglVar.f.size()) {
                    Map.Entry entry = (Map.Entry) zzglVar.f.get(i);
                    if (entry.getValue() instanceof zzev) {
                        zzev zzevVar = (zzev) entry.getValue();
                        zzevVar.getClass();
                        zzgf.f9553c.a(zzevVar.getClass()).f(zzevVar);
                        zzevVar.d();
                    }
                    i++;
                } else {
                    zzglVar.a();
                    this.b = true;
                    return;
                }
            }
        }
    }

    public final void b(zzep zzepVar, Object obj) {
        if (zzepVar.zzc()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    c(zzepVar, arrayList.get(i));
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            c(zzepVar, obj);
        }
        this.f9537a.put(zzepVar, obj);
    }

    public final Object clone() {
        zzgl zzglVar;
        Iterable<Map.Entry> entrySet;
        zzeq zzeqVar = new zzeq();
        int i = 0;
        while (true) {
            zzglVar = this.f9537a;
            if (i >= zzglVar.f.size()) {
                break;
            }
            Map.Entry entry = (Map.Entry) zzglVar.f.get(i);
            zzeqVar.b((zzep) entry.getKey(), entry.getValue());
            i++;
        }
        if (zzglVar.g.isEmpty()) {
            entrySet = zzgo.b;
        } else {
            entrySet = zzglVar.g.entrySet();
        }
        for (Map.Entry entry2 : entrySet) {
            zzeqVar.b((zzep) entry2.getKey(), entry2.getValue());
        }
        return zzeqVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzeq)) {
            return false;
        }
        return this.f9537a.equals(((zzeq) obj).f9537a);
    }

    public final int hashCode() {
        return this.f9537a.hashCode();
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.google.android.gms.internal.auth.zzgl, com.google.android.gms.internal.auth.zzgv] */
    public zzeq(int i) {
        a();
        a();
    }
}
