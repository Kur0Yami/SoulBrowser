package com.google.android.gms.internal.auth;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfh extends zzfl {

    /* renamed from: c, reason: collision with root package name */
    public static final Class f9541c = DesugarCollections.unmodifiableList(Collections.EMPTY_LIST).getClass();

    @Override // com.google.android.gms.internal.auth.zzfl
    public final void a(long j, Object obj) {
        Object unmodifiableList;
        List list = (List) zzhj.d(j, obj);
        if (list instanceof zzff) {
            unmodifiableList = ((zzff) list).zze();
        } else if (!f9541c.isAssignableFrom(list.getClass())) {
            if ((list instanceof zzge) && (list instanceof zzez)) {
                zzez zzezVar = (zzez) list;
                if (zzezVar.zzc()) {
                    zzezVar.zzb();
                    return;
                }
                return;
            }
            unmodifiableList = DesugarCollections.unmodifiableList(list);
        } else {
            return;
        }
        zzhj.j(j, obj, unmodifiableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.auth.zzfl
    public final void b(long j, Object obj, Object obj2) {
        zzfe zzfeVar;
        List list = (List) zzhj.d(j, obj2);
        int size = list.size();
        List list2 = (List) zzhj.d(j, obj);
        if (list2.isEmpty()) {
            if (list2 instanceof zzff) {
                list2 = new zzfe(size);
            } else if ((list2 instanceof zzge) && (list2 instanceof zzez)) {
                list2 = ((zzez) list2).f(size);
            } else {
                list2 = new ArrayList(size);
            }
            zzhj.j(j, obj, list2);
        } else {
            if (f9541c.isAssignableFrom(list2.getClass())) {
                ArrayList arrayList = new ArrayList(list2.size() + size);
                arrayList.addAll(list2);
                zzhj.j(j, obj, arrayList);
                zzfeVar = arrayList;
            } else if (list2 instanceof zzhe) {
                zzfe zzfeVar2 = new zzfe(list2.size() + size);
                zzfeVar2.addAll(zzfeVar2.f.size(), (zzhe) list2);
                zzhj.j(j, obj, zzfeVar2);
                zzfeVar = zzfeVar2;
            } else if ((list2 instanceof zzge) && (list2 instanceof zzez)) {
                zzez zzezVar = (zzez) list2;
                if (!zzezVar.zzc()) {
                    list2 = zzezVar.f(list2.size() + size);
                    zzhj.j(j, obj, list2);
                }
            }
            list2 = zzfeVar;
        }
        int size2 = list2.size();
        int size3 = list.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list);
        }
        if (size2 > 0) {
            list = list2;
        }
        zzhj.j(j, obj, list);
    }
}
