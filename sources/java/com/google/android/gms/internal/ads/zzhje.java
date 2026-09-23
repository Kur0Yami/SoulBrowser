package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzhje {
    public static final zzhje b = (zzhje) zzhkk.a(zzhjd.f8590a);

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f8591a = new AtomicReference(new zzhki(new zzhkf()));

    public final synchronized void a(zzhig zzhigVar) {
        AtomicReference atomicReference = this.f8591a;
        zzhkf zzhkfVar = new zzhkf((zzhki) atomicReference.get());
        zzhkfVar.a(zzhigVar);
        atomicReference.set(new zzhki(zzhkfVar));
    }

    public final synchronized void b(zzhid zzhidVar) {
        AtomicReference atomicReference = this.f8591a;
        zzhkf zzhkfVar = new zzhkf((zzhki) atomicReference.get());
        zzhkfVar.b(zzhidVar);
        atomicReference.set(new zzhki(zzhkfVar));
    }

    public final synchronized void c(zzhjl zzhjlVar) {
        AtomicReference atomicReference = this.f8591a;
        zzhkf zzhkfVar = new zzhkf((zzhki) atomicReference.get());
        zzhkfVar.c(zzhjlVar);
        atomicReference.set(new zzhki(zzhkfVar));
    }

    public final synchronized void d(zzhji zzhjiVar) {
        AtomicReference atomicReference = this.f8591a;
        zzhkf zzhkfVar = new zzhkf((zzhki) atomicReference.get());
        zzhkfVar.d(zzhjiVar);
        atomicReference.set(new zzhki(zzhkfVar));
    }

    public final zzgzx e(zzhjz zzhjzVar) {
        zzhki zzhkiVar = (zzhki) this.f8591a.get();
        zzhkiVar.getClass();
        zzhkg zzhkgVar = new zzhkg(zzhjz.class, zzhjzVar.b);
        HashMap hashMap = zzhkiVar.b;
        if (hashMap.containsKey(zzhkgVar)) {
            return ((zzhid) hashMap.get(zzhkgVar)).a(zzhjzVar);
        }
        String zzhkgVar2 = zzhkgVar.toString();
        throw new GeneralSecurityException(android.support.v4.media.a.q(new StringBuilder(zzhkgVar2.length() + 47), "No Key Parser for requested key type ", zzhkgVar2, " available"));
    }

    public final zzhke f(zzgzx zzgzxVar) {
        zzhki zzhkiVar = (zzhki) this.f8591a.get();
        zzhkiVar.getClass();
        zzhkh zzhkhVar = new zzhkh(zzgzxVar.getClass(), zzhjz.class);
        HashMap hashMap = zzhkiVar.f8615a;
        if (hashMap.containsKey(zzhkhVar)) {
            return ((zzhig) hashMap.get(zzhkhVar)).a(zzgzxVar);
        }
        String zzhkhVar2 = zzhkhVar.toString();
        throw new GeneralSecurityException(android.support.v4.media.a.q(new StringBuilder(zzhkhVar2.length() + 32), "No Key serializer for ", zzhkhVar2, " available"));
    }

    public final zzhan g(zzhka zzhkaVar) {
        zzhki zzhkiVar = (zzhki) this.f8591a.get();
        zzhkiVar.getClass();
        zzhkg zzhkgVar = new zzhkg(zzhka.class, zzhkaVar.f8608a);
        HashMap hashMap = zzhkiVar.d;
        if (hashMap.containsKey(zzhkgVar)) {
            return ((zzhji) hashMap.get(zzhkgVar)).a(zzhkaVar);
        }
        String zzhkgVar2 = zzhkgVar.toString();
        throw new GeneralSecurityException(android.support.v4.media.a.q(new StringBuilder(zzhkgVar2.length() + 54), "No Parameters Parser for requested key type ", zzhkgVar2, " available"));
    }

    public final zzhke h(zzhan zzhanVar) {
        zzhki zzhkiVar = (zzhki) this.f8591a.get();
        zzhkiVar.getClass();
        zzhkh zzhkhVar = new zzhkh(zzhanVar.getClass(), zzhka.class);
        HashMap hashMap = zzhkiVar.f8616c;
        if (hashMap.containsKey(zzhkhVar)) {
            return ((zzhjl) hashMap.get(zzhkhVar)).a(zzhanVar);
        }
        String zzhkhVar2 = zzhkhVar.toString();
        throw new GeneralSecurityException(android.support.v4.media.a.q(new StringBuilder(zzhkhVar2.length() + 39), "No Key Format serializer for ", zzhkhVar2, " available"));
    }
}
