package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhiu implements zzhhz {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhiu f8580a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhhz
    public final zzgzx a(zzhan zzhanVar, Integer num) {
        zzhhz zzhhzVar = zzhiv.b;
        zzhpd zzhpdVar = ((zzhin) zzhanVar).f8577a.b;
        zzhia zzhiaVar = zzhia.d;
        zzgzy d = zzhiaVar.d(zzhpdVar.D());
        if (((Boolean) zzhiaVar.b.get(zzhpdVar.D())).booleanValue()) {
            zzhpa b = d.b(zzhpdVar.E());
            return new zzhim(zzhjz.a(b.D(), b.E(), b.F(), zzhpdVar.F(), num));
        }
        throw new GeneralSecurityException("Creating new keys is not allowed.");
    }
}
