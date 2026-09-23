package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzhiv {
    public static final zzhhz b = null;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhiv f8581c;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8582a = new HashMap();

    static {
        zzhiu zzhiuVar = zzhiu.f8580a;
        zzhiv zzhivVar = new zzhiv();
        try {
            zzhivVar.a(zzhiuVar, zzhin.class);
            f8581c = zzhivVar;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException("unexpected error.", e);
        }
    }

    public final synchronized void a(zzhhz zzhhzVar, Class cls) {
        try {
            HashMap hashMap = this.f8582a;
            zzhhz zzhhzVar2 = (zzhhz) hashMap.get(cls);
            if (zzhhzVar2 != null && !zzhhzVar2.equals(zzhhzVar)) {
                String obj = cls.toString();
                StringBuilder sb = new StringBuilder(obj.length() + 60);
                sb.append("Different key creator for parameters class ");
                sb.append(obj);
                sb.append(" already inserted");
                throw new GeneralSecurityException(sb.toString());
            }
            hashMap.put(cls, zzhhzVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final zzgzx b(zzhan zzhanVar, Integer num) {
        zzgzx a2;
        synchronized (this) {
            zzhhz zzhhzVar = (zzhhz) this.f8582a.get(zzhanVar.getClass());
            if (zzhhzVar != null) {
                a2 = zzhhzVar.a(zzhanVar, num);
            } else {
                String obj = zzhanVar.toString();
                StringBuilder sb = new StringBuilder(obj.length() + 86);
                sb.append("Cannot create a new key for parameters ");
                sb.append(obj);
                sb.append(": no key creator for this class was registered.");
                throw new GeneralSecurityException(sb.toString());
            }
        }
        return a2;
    }
}
