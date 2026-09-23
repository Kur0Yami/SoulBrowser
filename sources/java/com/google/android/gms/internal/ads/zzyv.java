package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
final /* synthetic */ class zzyv implements Comparator {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ zzyv f9397c = new Object();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        List list = (List) obj2;
        List list2 = (List) obj;
        return zzgso.f(zzzt.b((zzzt) Collections.max(list2, zzzs.f9419c), (zzzt) Collections.max(list, zzzn.f9415c))).b(list2.size(), list.size()).a((zzzt) Collections.max(list2, zzzp.f9416c), (zzzt) Collections.max(list, zzzq.f9417c), zzzr.f9418c).e();
    }
}
