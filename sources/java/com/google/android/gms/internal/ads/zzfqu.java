package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* loaded from: classes.dex */
final /* synthetic */ class zzfqu implements Comparator {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ zzfqu f7577c = new Object();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        zzfqm zzfqmVar = (zzfqm) obj2;
        zzfqm zzfqmVar2 = (zzfqm) obj;
        int compare = Double.compare(zzfqmVar.e, zzfqmVar2.e);
        if (compare == 0) {
            return Long.compare(zzfqmVar2.b, zzfqmVar.b);
        }
        return compare;
    }
}
