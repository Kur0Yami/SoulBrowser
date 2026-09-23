package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhkm {

    /* renamed from: a, reason: collision with root package name */
    public zzhku f8618a = null;
    public zzhxe b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8619c = null;

    public final zzhkn a() {
        zzhxe zzhxeVar;
        zzhxc a2;
        zzhku zzhkuVar = this.f8618a;
        if (zzhkuVar != null && (zzhxeVar = this.b) != null) {
            if (zzhkuVar.f8631a == zzhxeVar.f8865a.f8863a.length) {
                if (zzhkuVar.a() && this.f8619c == null) {
                    throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                }
                if (!this.f8618a.a() && this.f8619c != null) {
                    throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                }
                zzhkt zzhktVar = this.f8618a.f8632c;
                if (zzhktVar == zzhkt.e) {
                    a2 = zzhjf.f8592a;
                } else if (zzhktVar != zzhkt.d && zzhktVar != zzhkt.f8629c) {
                    if (zzhktVar == zzhkt.b) {
                        a2 = zzhjf.b(this.f8619c.intValue());
                    } else {
                        throw new IllegalStateException("Unknown AesCmacParametersParameters.Variant: ".concat(String.valueOf(this.f8618a.f8632c)));
                    }
                } else {
                    a2 = zzhjf.a(this.f8619c.intValue());
                }
                return new zzhkn(this.f8618a, this.b, a2, this.f8619c);
            }
            throw new GeneralSecurityException("Key size mismatch");
        }
        throw new GeneralSecurityException("Cannot build without parameters and/or key material");
    }
}
