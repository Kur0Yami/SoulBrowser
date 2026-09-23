package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhbk {

    /* renamed from: a, reason: collision with root package name */
    public zzhbt f8343a = null;
    public zzhxe b = null;

    /* renamed from: c, reason: collision with root package name */
    public zzhxe f8344c = null;
    public Integer d = null;

    public final zzhbl a() {
        zzhxe zzhxeVar;
        zzhxc b;
        zzhbt zzhbtVar = this.f8343a;
        if (zzhbtVar != null) {
            zzhxe zzhxeVar2 = this.b;
            if (zzhxeVar2 != null && (zzhxeVar = this.f8344c) != null) {
                if (zzhbtVar.f8358a == zzhxeVar2.f8865a.f8863a.length) {
                    if (zzhbtVar.b == zzhxeVar.f8865a.f8863a.length) {
                        if (zzhbtVar.a() && this.d == null) {
                            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                        }
                        if (!this.f8343a.a() && this.d != null) {
                            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                        }
                        zzhbs zzhbsVar = this.f8343a.e;
                        if (zzhbsVar == zzhbs.d) {
                            b = zzhjf.f8592a;
                        } else if (zzhbsVar == zzhbs.f8356c) {
                            b = zzhjf.a(this.d.intValue());
                        } else if (zzhbsVar == zzhbs.b) {
                            b = zzhjf.b(this.d.intValue());
                        } else {
                            throw new IllegalStateException("Unknown AesCtrHmacAeadParameters.Variant: ".concat(String.valueOf(this.f8343a.e)));
                        }
                        return new zzhbl(this.f8343a, this.b, this.f8344c, b, this.d);
                    }
                    throw new GeneralSecurityException("HMAC key size mismatch");
                }
                throw new GeneralSecurityException("AES key size mismatch");
            }
            throw new GeneralSecurityException("Cannot build without key material");
        }
        throw new GeneralSecurityException("Cannot build without parameters");
    }
}
