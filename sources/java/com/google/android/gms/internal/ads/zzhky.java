package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhky {

    /* renamed from: a, reason: collision with root package name */
    public zzhli f8634a = null;
    public zzhxe b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8635c = null;

    public final zzhkz a() {
        zzhxe zzhxeVar;
        zzhxc a2;
        zzhli zzhliVar = this.f8634a;
        if (zzhliVar != null && (zzhxeVar = this.b) != null) {
            if (zzhliVar.f8651a == zzhxeVar.f8865a.f8863a.length) {
                if (zzhliVar.a() && this.f8635c == null) {
                    throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                }
                if (!this.f8634a.a() && this.f8635c != null) {
                    throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                }
                zzhlh zzhlhVar = this.f8634a.f8652c;
                if (zzhlhVar == zzhlh.e) {
                    a2 = zzhjf.f8592a;
                } else if (zzhlhVar != zzhlh.d && zzhlhVar != zzhlh.f8649c) {
                    if (zzhlhVar == zzhlh.b) {
                        a2 = zzhjf.b(this.f8635c.intValue());
                    } else {
                        throw new IllegalStateException("Unknown HmacParameters.Variant: ".concat(String.valueOf(this.f8634a.f8652c)));
                    }
                } else {
                    a2 = zzhjf.a(this.f8635c.intValue());
                }
                return new zzhkz(this.f8634a, this.b, a2, this.f8635c);
            }
            throw new GeneralSecurityException("Key size mismatch");
        }
        throw new GeneralSecurityException("Cannot build without parameters and/or key material");
    }
}
