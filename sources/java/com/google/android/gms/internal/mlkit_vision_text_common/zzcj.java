package com.google.android.gms.internal.mlkit_vision_text_common;

/* loaded from: classes3.dex */
final class zzcj extends zzbm {
    public final transient Object[] h;

    public zzcj(Object[] objArr) {
        this.h = objArr;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzbm
    public final zzbf a() {
        return new zzci(this.h, 1);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzbm
    public final zzbn b() {
        return new zzcg(this, this.h);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzbm
    public final zzbn c() {
        return new zzch(this, new zzci(this.h, 0));
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x001b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001c A[RETURN] */
    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzbm, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L5
        L3:
            r4 = r0
            goto L19
        L5:
            r1 = 0
            java.lang.Object[] r2 = r3.h
            r1 = r2[r1]
            j$.util.Objects.requireNonNull(r1)
            boolean r4 = r1.equals(r4)
            if (r4 == 0) goto L3
            r4 = 1
            r4 = r2[r4]
            j$.util.Objects.requireNonNull(r4)
        L19:
            if (r4 != 0) goto L1c
            return r0
        L1c:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_text_common.zzcj.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public final int size() {
        return 1;
    }
}
