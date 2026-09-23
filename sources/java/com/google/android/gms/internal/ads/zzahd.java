package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

/* loaded from: classes.dex */
final class zzahd extends zzahf {
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public long[] f4029c;
    public long[] d;

    public static String a(zzer zzerVar) {
        int L = zzerVar.L();
        int i = zzerVar.b;
        zzerVar.G(L);
        return new String(zzerVar.f6834a, i, L);
    }

    public static HashMap b(zzer zzerVar) {
        int h = zzerVar.h();
        HashMap hashMap = new HashMap(h);
        for (int i = 0; i < h; i++) {
            String a2 = a(zzerVar);
            Serializable c2 = c(zzerVar.K(), zzerVar);
            if (c2 != null) {
                hashMap.put(a2, c2);
            }
        }
        return hashMap;
    }

    public static Serializable c(int i, zzer zzerVar) {
        if (i != 0) {
            boolean z = false;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 8) {
                            if (i != 10) {
                                if (i != 11) {
                                    return null;
                                }
                                Date date = new Date((long) Double.longBitsToDouble(zzerVar.d()));
                                zzerVar.G(2);
                                return date;
                            }
                            int h = zzerVar.h();
                            ArrayList arrayList = new ArrayList(h);
                            for (int i2 = 0; i2 < h; i2++) {
                                Serializable c2 = c(zzerVar.K(), zzerVar);
                                if (c2 != null) {
                                    arrayList.add(c2);
                                }
                            }
                            return arrayList;
                        }
                        return b(zzerVar);
                    }
                    HashMap hashMap = new HashMap();
                    while (true) {
                        String a2 = a(zzerVar);
                        int K = zzerVar.K();
                        if (K == 9) {
                            return hashMap;
                        }
                        Serializable c3 = c(K, zzerVar);
                        if (c3 != null) {
                            hashMap.put(a2, c3);
                        }
                    }
                } else {
                    return a(zzerVar);
                }
            } else {
                if (zzerVar.K() == 1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        } else {
            return Double.valueOf(Double.longBitsToDouble(zzerVar.d()));
        }
    }
}
