package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzhsr implements zzhaq {

    /* renamed from: a, reason: collision with root package name */
    public final zzhjp f8737a;

    public zzhsr(zzhjp zzhjpVar) {
        this.f8737a = zzhjpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void a(byte[] bArr, byte[] bArr2) {
        Iterator it = this.f8737a.a(bArr).iterator();
        while (it.hasNext()) {
            try {
                ((zzhsq) it.next()).f8736a.a(bArr, bArr2);
                int length = bArr2.length;
                return;
            } catch (GeneralSecurityException unused) {
            }
        }
        throw new GeneralSecurityException("invalid signature");
    }
}
