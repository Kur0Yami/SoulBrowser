package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzijs implements zzijg {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f9008c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final List f9009a;
    public final List b;

    static {
        zzijh.a(Collections.EMPTY_SET);
    }

    public /* synthetic */ zzijs(List list, List list2) {
        this.f9009a = list;
        this.b = list2;
    }

    public static zzijr a(int i, int i2) {
        return new zzijr(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Set zzb() {
        int i;
        List list = this.f9009a;
        int size = list.size();
        List list2 = this.b;
        ArrayList arrayList = new ArrayList(list2.size());
        int size2 = list2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            Collection collection = (Collection) ((zzijp) list2.get(i2)).zzb();
            size += collection.size();
            arrayList.add(collection);
        }
        if (size < 3) {
            i = size + 1;
        } else if (size < 1073741824) {
            i = (int) ((size / 0.75f) + 1.0f);
        } else {
            i = Integer.MAX_VALUE;
        }
        HashSet hashSet = new HashSet(i);
        int size3 = list.size();
        for (int i3 = 0; i3 < size3; i3++) {
            Object zzb = ((zzijp) list.get(i3)).zzb();
            zzb.getClass();
            hashSet.add(zzb);
        }
        int size4 = arrayList.size();
        for (int i4 = 0; i4 < size4; i4++) {
            for (Object obj : (Collection) arrayList.get(i4)) {
                obj.getClass();
                hashSet.add(obj);
            }
        }
        return DesugarCollections.unmodifiableSet(hashSet);
    }
}
