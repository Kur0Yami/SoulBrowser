package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzcv extends zzcp {
    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e9 A[ADDED_TO_REGION, LOOP:6: B:42:0x00e9->B:43:0x00eb, LOOP_START, PHI: r0
      0x00e9: PHI (r0v1 int) = (r0v0 int), (r0v2 int) binds: [B:13:0x003d, B:43:0x00eb] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.zzco
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(java.nio.ByteBuffer r12) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcv.b(java.nio.ByteBuffer):void");
    }

    @Override // com.google.android.gms.internal.ads.zzcp
    public final zzcl e(zzcl zzclVar) {
        int i = zzclVar.f5232c;
        if (i != 3) {
            if (i != 2) {
                if (i != 268435456 && i != 21 && i != 1342177280 && i != 22 && i != 1610612736 && i != 4) {
                    throw new zzcn("Unhandled input format:", zzclVar);
                }
            } else {
                return zzcl.e;
            }
        }
        return new zzcl(zzclVar.f5231a, zzclVar.b, 2);
    }
}
