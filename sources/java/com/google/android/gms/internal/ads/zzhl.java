package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhl extends zzgst {

    /* renamed from: c, reason: collision with root package name */
    public final Map f8638c;

    public zzhl(Map map) {
        this.f8638c = map;
    }

    @Override // com.google.android.gms.internal.ads.zzgst, com.google.android.gms.internal.ads.zzgsu
    public final /* synthetic */ Object a() {
        return this.f8638c;
    }

    @Override // com.google.android.gms.internal.ads.zzgst
    public final Map c() {
        return this.f8638c;
    }

    @Override // com.google.android.gms.internal.ads.zzgst, java.util.Map
    public final boolean containsKey(Object obj) {
        if (obj != null && super.containsKey(obj)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0020, code lost:
    
        if (r0.hasNext() == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002a, code lost:
    
        if (r4.equals(r1.next()) == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x000d, code lost:
    
        if (r4 == null) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0013, code lost:
    
        if (r0.hasNext() == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0019, code lost:
    
        if (r1.next() != null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002c, code lost:
    
        return true;
     */
    @Override // com.google.android.gms.internal.ads.zzgst, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean containsValue(java.lang.Object r4) {
        /*
            r3 = this;
            java.util.Set r0 = r3.entrySet()
            java.util.Iterator r0 = r0.iterator()
            com.google.android.gms.internal.ads.zzguf r1 = new com.google.android.gms.internal.ads.zzguf
            r1.<init>(r0)
            if (r4 != 0) goto L1c
        Lf:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L2e
            java.lang.Object r4 = r1.next()
            if (r4 != 0) goto Lf
            goto L2c
        L1c:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L2e
            java.lang.Object r2 = r1.next()
            boolean r2 = r4.equals(r2)
            if (r2 == 0) goto L1c
        L2c:
            r4 = 1
            return r4
        L2e:
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhl.containsValue(java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzgst, java.util.Map
    public final Set entrySet() {
        return zzgvn.b(this.f8638c.entrySet(), zzhj.f8586c);
    }

    @Override // com.google.android.gms.internal.ads.zzgst, java.util.Map
    public final boolean equals(Object obj) {
        if (obj != null && zzguk.a(this, obj)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgst, java.util.Map
    public final /* synthetic */ Object get(Object obj) {
        if (obj == null) {
            return null;
        }
        return (List) this.f8638c.get(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgst, java.util.Map
    public final int hashCode() {
        return zzgvn.c(entrySet());
    }

    @Override // com.google.android.gms.internal.ads.zzgst, java.util.Map
    public final boolean isEmpty() {
        if (this.f8638c.isEmpty()) {
            return true;
        }
        if (super.size() == 1 && super.containsKey(null)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgst, java.util.Map
    public final Set keySet() {
        return zzgvn.b(this.f8638c.keySet(), zzhk.f8607c);
    }

    @Override // com.google.android.gms.internal.ads.zzgst, java.util.Map
    public final int size() {
        return super.size() - (super.containsKey(null) ? 1 : 0);
    }
}
