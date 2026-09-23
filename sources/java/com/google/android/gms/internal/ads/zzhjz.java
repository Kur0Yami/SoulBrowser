package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhjz implements zzhke {

    /* renamed from: a, reason: collision with root package name */
    public final String f8605a;
    public final zzhxc b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhzl f8606c;
    public final zzhoz d;
    public final zzhpw e;
    public final Integer f;

    public zzhjz(String str, zzhxc zzhxcVar, zzhzl zzhzlVar, zzhoz zzhozVar, zzhpw zzhpwVar, Integer num) {
        this.f8605a = str;
        this.b = zzhxcVar;
        this.f8606c = zzhzlVar;
        this.d = zzhozVar;
        this.e = zzhpwVar;
        this.f = num;
    }

    public static zzhjz a(String str, zzhzl zzhzlVar, zzhoz zzhozVar, zzhpw zzhpwVar, Integer num) {
        if (zzhpwVar == zzhpw.RAW) {
            if (num != null) {
                throw new GeneralSecurityException("Keys with output prefix type raw should not have an id requirement.");
            }
        } else if (num == null) {
            throw new GeneralSecurityException("Keys with output prefix type different from raw should have an id requirement.");
        }
        return new zzhjz(str, zzhkl.b(str), zzhzlVar, zzhozVar, zzhpwVar, num);
    }
}
