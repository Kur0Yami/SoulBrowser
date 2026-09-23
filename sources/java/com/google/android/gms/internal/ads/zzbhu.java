package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class zzbhu {

    /* renamed from: a, reason: collision with root package name */
    public final String f4691a;
    public final Object b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4692c;

    public zzbhu(Object obj, int i, String str) {
        this.f4691a = str;
        this.b = obj;
        this.f4692c = i;
    }

    public static zzbhu a(String str, boolean z) {
        return new zzbhu(Boolean.valueOf(z), 1, str);
    }

    public static zzbhu b(long j, String str) {
        return new zzbhu(Long.valueOf(j), 2, str);
    }

    public final Object c() {
        zzbja zzbjaVar = (zzbja) zzbjc.f4737a.get();
        Object obj = this.b;
        if (zzbjaVar == null) {
            AtomicReference atomicReference = zzbjc.b;
            if (((zzbjb) atomicReference.get()) != null) {
                ((zzbjb) atomicReference.get()).zza();
            }
            return obj;
        }
        int i = this.f4692c - 1;
        String str = this.f4691a;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return zzbjaVar.a(str, (String) obj);
                }
                return zzbjaVar.c(str, ((Double) obj).doubleValue());
            }
            return zzbjaVar.b(((Long) obj).longValue(), str);
        }
        return zzbjaVar.d(str, ((Boolean) obj).booleanValue());
    }
}
