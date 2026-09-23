package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhbu {

    /* renamed from: a, reason: collision with root package name */
    public zzhcb f8360a = null;
    public zzhxe b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8361c = null;

    public final zzhbv a() {
        zzhxe zzhxeVar;
        zzhxc b;
        zzhcb zzhcbVar = this.f8360a;
        if (zzhcbVar != null && (zzhxeVar = this.b) != null) {
            if (zzhcbVar.f8373a == zzhxeVar.f8865a.f8863a.length) {
                if (zzhcbVar.a() && this.f8361c == null) {
                    throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                }
                if (!this.f8360a.a() && this.f8361c != null) {
                    throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                }
                zzhca zzhcaVar = this.f8360a.f8374c;
                if (zzhcaVar == zzhca.d) {
                    b = zzhjf.f8592a;
                } else if (zzhcaVar == zzhca.f8371c) {
                    b = zzhjf.a(this.f8361c.intValue());
                } else if (zzhcaVar == zzhca.b) {
                    b = zzhjf.b(this.f8361c.intValue());
                } else {
                    throw new IllegalStateException("Unknown AesEaxParameters.Variant: ".concat(String.valueOf(this.f8360a.f8374c)));
                }
                return new zzhbv(this.f8360a, this.b, b, this.f8361c);
            }
            throw new GeneralSecurityException("Key size mismatch");
        }
        throw new GeneralSecurityException("Cannot build without parameters and/or key material");
    }
}
