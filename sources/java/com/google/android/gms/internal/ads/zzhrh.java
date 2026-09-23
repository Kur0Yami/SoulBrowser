package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.spec.ECPoint;

/* loaded from: classes.dex */
public final class zzhrh {

    /* renamed from: a, reason: collision with root package name */
    public zzhre f8696a = null;
    public ECPoint b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8697c = null;

    public final zzhri a() {
        zzhxc a2;
        zzhre zzhreVar = this.f8696a;
        if (zzhreVar != null) {
            ECPoint eCPoint = this.b;
            if (eCPoint != null) {
                zzhhq.a(eCPoint, zzhreVar.b.b.getCurve());
                if (this.f8696a.a() && this.f8697c == null) {
                    throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                }
                if (!this.f8696a.a() && this.f8697c != null) {
                    throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                }
                zzhrd zzhrdVar = this.f8696a.d;
                if (zzhrdVar == zzhrd.e) {
                    a2 = zzhjf.f8592a;
                } else if (zzhrdVar != zzhrd.d && zzhrdVar != zzhrd.f8690c) {
                    if (zzhrdVar == zzhrd.b) {
                        a2 = zzhjf.b(this.f8697c.intValue());
                    } else {
                        throw new IllegalStateException("Unknown EcdsaParameters.Variant: ".concat(this.f8696a.d.f8691a));
                    }
                } else {
                    a2 = zzhjf.a(this.f8697c.intValue());
                }
                return new zzhri(this.f8696a, this.b, a2, this.f8697c);
            }
            throw new GeneralSecurityException("Cannot build without public point");
        }
        throw new GeneralSecurityException("Cannot build without parameters");
    }
}
