package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhcc {

    /* renamed from: a, reason: collision with root package name */
    public zzhck f8375a = null;
    public zzhxe b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8376c = null;

    public final zzhcd a() {
        zzhxe zzhxeVar;
        zzhxc b;
        zzhck zzhckVar = this.f8375a;
        if (zzhckVar != null && (zzhxeVar = this.b) != null) {
            if (zzhckVar.f8388a == zzhxeVar.f8865a.f8863a.length) {
                if (zzhckVar.a() && this.f8376c == null) {
                    throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                }
                if (!this.f8375a.a() && this.f8376c != null) {
                    throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                }
                zzhcj zzhcjVar = this.f8375a.b;
                if (zzhcjVar == zzhcj.d) {
                    b = zzhjf.f8592a;
                } else if (zzhcjVar == zzhcj.f8386c) {
                    b = zzhjf.a(this.f8376c.intValue());
                } else if (zzhcjVar == zzhcj.b) {
                    b = zzhjf.b(this.f8376c.intValue());
                } else {
                    throw new IllegalStateException("Unknown AesGcmParameters.Variant: ".concat(String.valueOf(this.f8375a.b)));
                }
                return new zzhcd(this.f8375a, this.b, b, this.f8376c);
            }
            throw new GeneralSecurityException("Key size mismatch");
        }
        throw new GeneralSecurityException("Cannot build without parameters and/or key material");
    }
}
