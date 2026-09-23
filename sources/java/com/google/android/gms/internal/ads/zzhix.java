package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzhix {
    public static final zzhix b = new zzhix();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8583a = new HashMap();

    public final synchronized void a(zzhiw zzhiwVar, Class cls) {
        try {
            HashMap hashMap = this.f8583a;
            zzhiw zzhiwVar2 = (zzhiw) hashMap.get(cls);
            if (zzhiwVar2 != null && !zzhiwVar2.equals(zzhiwVar)) {
                throw new GeneralSecurityException("Different key creator for parameters class already inserted");
            }
            hashMap.put(cls, zzhiwVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}
