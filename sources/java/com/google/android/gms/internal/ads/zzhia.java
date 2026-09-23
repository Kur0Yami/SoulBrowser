package com.google.android.gms.internal.ads;

import j$.util.concurrent.ConcurrentHashMap;
import java.security.GeneralSecurityException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class zzhia {

    /* renamed from: c, reason: collision with root package name */
    public static final Logger f8568c = Logger.getLogger(zzhia.class.getName());
    public static final zzhia d = new zzhia();

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f8569a = new ConcurrentHashMap();
    public final ConcurrentHashMap b = new ConcurrentHashMap();

    public final synchronized void a(zzgzy zzgzyVar, boolean z) {
        c(zzgzyVar, 1, z);
    }

    public final zzgzy b(Class cls, String str) {
        zzgzy d2 = d(str);
        if (d2.zzc().equals(cls)) {
            return d2;
        }
        String name = cls.getName();
        String valueOf = String.valueOf(d2.getClass());
        String obj = d2.zzc().toString();
        StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.d(name.length() + 53, 23, valueOf) + obj.length());
        android.support.v4.media.a.z(sb, "Primitive type ", name, " not supported by key manager of type ", valueOf);
        throw new GeneralSecurityException(android.support.v4.media.a.p(sb, ", which only supports: ", obj));
    }

    public final synchronized void c(zzgzy zzgzyVar, int i, boolean z) {
        if (zzhhb.a(i)) {
            e(zzgzyVar, z);
        } else {
            throw new GeneralSecurityException("Cannot register key manager: FIPS compatibility insufficient");
        }
    }

    public final synchronized zzgzy d(String str) {
        ConcurrentHashMap concurrentHashMap;
        concurrentHashMap = this.f8569a;
        if (concurrentHashMap.containsKey(str)) {
        } else {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 98);
            sb.append("No key manager found for key type ");
            sb.append(str);
            sb.append(", see https://developers.google.com/tink/faq/registration_errors");
            throw new GeneralSecurityException(sb.toString());
        }
        return (zzgzy) concurrentHashMap.get(str);
    }

    public final synchronized void e(zzgzy zzgzyVar, boolean z) {
        try {
            String zzb = zzgzyVar.zzb();
            if (z) {
                ConcurrentHashMap concurrentHashMap = this.b;
                if (concurrentHashMap.containsKey(zzb) && !((Boolean) concurrentHashMap.get(zzb)).booleanValue()) {
                    throw new GeneralSecurityException("New keys are already disallowed for key type ".concat(zzb));
                }
            }
            ConcurrentHashMap concurrentHashMap2 = this.f8569a;
            zzgzy zzgzyVar2 = (zzgzy) concurrentHashMap2.get(zzb);
            if (zzgzyVar2 != null && !zzgzyVar2.getClass().equals(zzgzyVar.getClass())) {
                f8568c.logp(Level.WARNING, "com.google.crypto.tink.internal.KeyManagerRegistry", "insertKeyManager", "Attempted overwrite of a registered key manager for key type ".concat(zzb));
                throw new GeneralSecurityException("typeUrl (" + zzb + ") is already registered with " + zzgzyVar2.getClass().getName() + ", cannot be re-registered with " + zzgzyVar.getClass().getName());
            }
            concurrentHashMap2.putIfAbsent(zzb, zzgzyVar);
            this.b.put(zzb, Boolean.valueOf(z));
        } catch (Throwable th) {
            throw th;
        }
    }
}
