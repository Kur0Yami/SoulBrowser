package com.google.android.gms.internal.fido;

import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzhm extends zzhp {

    /* renamed from: c, reason: collision with root package name */
    public final int f10332c;
    public final zzcj f;

    public zzhm(zzcj zzcjVar) {
        zzcjVar.getClass();
        this.f = zzcjVar;
        zzdc it = zzcjVar.entrySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            int a2 = ((zzhp) entry.getKey()).a();
            i = i < a2 ? a2 : i;
            int a3 = ((zzhp) entry.getValue()).a();
            if (i < a3) {
                i = a3;
            }
        }
        int i2 = i + 1;
        this.f10332c = i2;
        if (i2 <= 8) {
        } else {
            throw new IOException("Exceeded cutoff limit for max depth of cbor value");
        }
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int a() {
        return this.f10332c;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        int compareTo;
        zzhp zzhpVar = (zzhp) obj;
        int zza = zzhpVar.zza();
        int c2 = zzhp.c((byte) -96);
        if (c2 != zza) {
            return c2 - zzhpVar.zza();
        }
        zzcj zzcjVar = ((zzhm) zzhpVar).f;
        zzcj zzcjVar2 = this.f;
        if (zzcjVar2.h.size() != zzcjVar.h.size()) {
            return zzcjVar2.h.size() - zzcjVar.h.size();
        }
        zzdc it = zzcjVar2.entrySet().iterator();
        zzdc it2 = zzcjVar.entrySet().iterator();
        do {
            if (!it.hasNext() && !it2.hasNext()) {
                return 0;
            }
            Map.Entry entry = (Map.Entry) it.next();
            Map.Entry entry2 = (Map.Entry) it2.next();
            int compareTo2 = ((zzhp) entry.getKey()).compareTo((zzhp) entry2.getKey());
            if (compareTo2 != 0) {
                return compareTo2;
            }
            compareTo = ((zzhp) entry.getValue()).compareTo((zzhp) entry2.getValue());
        } while (compareTo == 0);
        return compareTo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzhm.class != obj.getClass()) {
            return false;
        }
        return this.f.equals(((zzhm) obj).f);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zzhp.c((byte) -96)), this.f});
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.google.android.gms.internal.fido.zzbd] */
    public final String toString() {
        zzcj zzcjVar = this.f;
        if (zzcjVar.isEmpty()) {
            return "{}";
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        zzdc it = zzcjVar.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(((zzhp) entry.getKey()).toString().replace("\n", "\n  "), ((zzhp) entry.getValue()).toString().replace("\n", "\n  "));
        }
        ?? obj = new Object();
        StringBuilder sb = new StringBuilder("{\n  ");
        try {
            zzbc.a(sb, linkedHashMap.entrySet().iterator(), obj);
            sb.append("\n}");
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int zza() {
        return zzhp.c((byte) -96);
    }
}
