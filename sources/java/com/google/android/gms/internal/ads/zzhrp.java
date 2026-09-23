package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzhrp extends zzhtt {

    /* renamed from: a, reason: collision with root package name */
    public final zzhrv f8708a;
    public final zzhxe b;

    public zzhrp(zzhrv zzhrvVar, zzhxe zzhxeVar) {
        this.f8708a = zzhrvVar;
        this.b = zzhxeVar;
    }

    public static zzhrp d(zzhrv zzhrvVar, zzhxe zzhxeVar) {
        zzhxc zzhxcVar = zzhxeVar.f8865a;
        if (zzhxcVar.f8863a.length == 32) {
            if (Arrays.equals(zzhrvVar.b.b(), zzhhm.a(zzhhm.b(zzhxcVar.b())))) {
                return new zzhrp(zzhrvVar, zzhxeVar);
            }
            throw new GeneralSecurityException("Ed25519 keys mismatch");
        }
        int length = zzhxcVar.f8863a.length;
        throw new GeneralSecurityException(androidx.work.impl.workers.a.r(length, "Ed25519 key must be constructed with key of length 32 bytes, not ", new StringBuilder(String.valueOf(length).length() + 65)));
    }

    @Override // com.google.android.gms.internal.ads.zzhtt, com.google.android.gms.internal.ads.zzgzx
    public final zzhan a() {
        return this.f8708a.f8715a;
    }

    @Override // com.google.android.gms.internal.ads.zzhtt
    public final /* synthetic */ zzhtu c() {
        return this.f8708a;
    }
}
