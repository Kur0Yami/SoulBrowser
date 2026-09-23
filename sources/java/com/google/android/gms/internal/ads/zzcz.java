package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class zzcz {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgux f5611a = new zzgry();

    static {
        zzgvs zzgvsVar = zzgtd.f;
        new zzcz(zzguy.i);
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public zzcz(List list) {
        zzgvs zzgvsVar = zzgtd.f;
        Object[] array = (list == null ? zzgud.a(((zzgtd) list).listIterator(0)) : list).toArray();
        int length = array.length;
        zzguw.a(length, array);
        Arrays.sort(array, f5611a);
        zzgtd.x(length, array);
    }
}
