package com.google.android.gms.internal.mlkit_vision_common;

/* loaded from: classes3.dex */
final class zzz extends zzr {
    public final transient Object[] h;

    public zzz(Object[] objArr) {
        this.h = objArr;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzr
    public final zzl a() {
        return new zzy(this.h, 1);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzr
    public final zzs b() {
        return new zzw(this, this.h);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzr
    public final zzs c() {
        return new zzx(this, new zzy(this.h, 0));
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x001b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001c A[RETURN] */
    @Override // com.google.android.gms.internal.mlkit_vision_common.zzr, java.util.Map
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
            r1.getClass()
            boolean r4 = r1.equals(r4)
            if (r4 == 0) goto L3
            r4 = 1
            r4 = r2[r4]
            r4.getClass()
        L19:
            if (r4 != 0) goto L1c
            return r0
        L1c:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_common.zzz.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public final int size() {
        return 1;
    }
}
