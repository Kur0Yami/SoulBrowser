package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzhbi implements zzgzq {

    /* renamed from: a, reason: collision with root package name */
    public final zzhjp f8341a;

    @Override // com.google.android.gms.internal.ads.zzgzq
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        Iterator it = this.f8341a.a(bArr).iterator();
        while (it.hasNext()) {
            try {
                return ((zzhbg) it.next()).f8339a.a(bArr, bArr2);
            } catch (GeneralSecurityException unused) {
            }
        }
        throw new GeneralSecurityException("decryption failed");
    }
}
