package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzhkf {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8611a;
    public final HashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f8612c;
    public final HashMap d;

    public zzhkf() {
        this.f8611a = new HashMap();
        this.b = new HashMap();
        this.f8612c = new HashMap();
        this.d = new HashMap();
    }

    public final void a(zzhig zzhigVar) {
        zzhkh zzhkhVar = new zzhkh(zzhigVar.f8571a, zzhjz.class);
        HashMap hashMap = this.f8611a;
        if (hashMap.containsKey(zzhkhVar)) {
            zzhig zzhigVar2 = (zzhig) hashMap.get(zzhkhVar);
            if (zzhigVar2.equals(zzhigVar) && zzhigVar.equals(zzhigVar2)) {
                return;
            } else {
                throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(zzhkhVar.toString()));
            }
        }
        hashMap.put(zzhkhVar, zzhigVar);
    }

    public final void b(zzhid zzhidVar) {
        zzhidVar.getClass();
        zzhkg zzhkgVar = new zzhkg(zzhjz.class, zzhidVar.f8570a);
        HashMap hashMap = this.b;
        if (hashMap.containsKey(zzhkgVar)) {
            zzhid zzhidVar2 = (zzhid) hashMap.get(zzhkgVar);
            if (zzhidVar2.equals(zzhidVar) && zzhidVar.equals(zzhidVar2)) {
                return;
            } else {
                throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(zzhkgVar.toString()));
            }
        }
        hashMap.put(zzhkgVar, zzhidVar);
    }

    public final void c(zzhjl zzhjlVar) {
        zzhkh zzhkhVar = new zzhkh(zzhjlVar.f8594a, zzhka.class);
        HashMap hashMap = this.f8612c;
        if (hashMap.containsKey(zzhkhVar)) {
            zzhjl zzhjlVar2 = (zzhjl) hashMap.get(zzhkhVar);
            if (zzhjlVar2.equals(zzhjlVar) && zzhjlVar.equals(zzhjlVar2)) {
                return;
            } else {
                throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(zzhkhVar.toString()));
            }
        }
        hashMap.put(zzhkhVar, zzhjlVar);
    }

    public final void d(zzhji zzhjiVar) {
        zzhjiVar.getClass();
        zzhkg zzhkgVar = new zzhkg(zzhka.class, zzhjiVar.f8593a);
        HashMap hashMap = this.d;
        if (hashMap.containsKey(zzhkgVar)) {
            zzhji zzhjiVar2 = (zzhji) hashMap.get(zzhkgVar);
            if (zzhjiVar2.equals(zzhjiVar) && zzhjiVar.equals(zzhjiVar2)) {
                return;
            } else {
                throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(zzhkgVar.toString()));
            }
        }
        hashMap.put(zzhkgVar, zzhjiVar);
    }

    public zzhkf(zzhki zzhkiVar) {
        this.f8611a = new HashMap(zzhkiVar.f8615a);
        this.b = new HashMap(zzhkiVar.b);
        this.f8612c = new HashMap(zzhkiVar.f8616c);
        this.d = new HashMap(zzhkiVar.d);
    }
}
