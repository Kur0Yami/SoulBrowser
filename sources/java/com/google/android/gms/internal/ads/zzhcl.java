package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhcl {

    /* renamed from: a, reason: collision with root package name */
    public zzhct f8389a = null;
    public zzhxe b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8390c = null;

    public final zzhcm a() {
        zzhxe zzhxeVar;
        zzhxc b;
        zzhct zzhctVar = this.f8389a;
        if (zzhctVar != null && (zzhxeVar = this.b) != null) {
            if (zzhctVar.f8401a == zzhxeVar.f8865a.f8863a.length) {
                if (zzhctVar.a() && this.f8390c == null) {
                    throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                }
                if (!this.f8389a.a() && this.f8390c != null) {
                    throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                }
                zzhcs zzhcsVar = this.f8389a.b;
                if (zzhcsVar == zzhcs.d) {
                    b = zzhjf.f8592a;
                } else if (zzhcsVar == zzhcs.f8399c) {
                    b = zzhjf.a(this.f8390c.intValue());
                } else if (zzhcsVar == zzhcs.b) {
                    b = zzhjf.b(this.f8390c.intValue());
                } else {
                    throw new IllegalStateException("Unknown AesGcmSivParameters.Variant: ".concat(String.valueOf(this.f8389a.b)));
                }
                return new zzhcm(this.f8389a, this.b, b, this.f8390c);
            }
            throw new GeneralSecurityException("Key size mismatch");
        }
        throw new GeneralSecurityException("Cannot build without parameters and/or key material");
    }
}
