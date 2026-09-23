package com.google.android.gms.internal.ads;

import java.security.cert.X509Certificate;

/* loaded from: classes.dex */
final class zzaqo extends zzaqp {
    public final byte[] f;

    public zzaqo(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.f = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzaqp, java.security.cert.Certificate
    public final byte[] getEncoded() {
        return this.f;
    }
}
