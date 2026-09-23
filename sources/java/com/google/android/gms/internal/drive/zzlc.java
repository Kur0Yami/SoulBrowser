package com.google.android.gms.internal.drive;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzlc extends zzla {

    /* renamed from: c, reason: collision with root package name */
    public static final Class f10230c = DesugarCollections.unmodifiableList(Collections.EMPTY_LIST).getClass();

    @Override // com.google.android.gms.internal.drive.zzla
    public final void a(long j, Object obj) {
        Object unmodifiableList;
        List list = (List) zznd.m(j, obj);
        if (list instanceof zzkz) {
            unmodifiableList = ((zzkz) list).o();
        } else if (!f10230c.isAssignableFrom(list.getClass())) {
            if ((list instanceof zzmc) && (list instanceof zzkp)) {
                zzkp zzkpVar = (zzkp) list;
                if (zzkpVar.W()) {
                    zzkpVar.i0();
                    return;
                }
                return;
            }
            unmodifiableList = DesugarCollections.unmodifiableList(list);
        } else {
            return;
        }
        zznd.c(j, obj, unmodifiableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.drive.zzla
    public final void b(long j, Object obj, Object obj2) {
        zzky zzkyVar;
        List list = (List) zznd.m(j, obj2);
        int size = list.size();
        List list2 = (List) zznd.m(j, obj);
        if (list2.isEmpty()) {
            if (list2 instanceof zzkz) {
                list2 = new zzky(size);
            } else if ((list2 instanceof zzmc) && (list2 instanceof zzkp)) {
                list2 = ((zzkp) list2).l(size);
            } else {
                list2 = new ArrayList(size);
            }
            zznd.c(j, obj, list2);
        } else {
            if (f10230c.isAssignableFrom(list2.getClass())) {
                ArrayList arrayList = new ArrayList(list2.size() + size);
                arrayList.addAll(list2);
                zznd.c(j, obj, arrayList);
                zzkyVar = arrayList;
            } else if (list2 instanceof zzna) {
                zzky zzkyVar2 = new zzky(list2.size() + size);
                zzkyVar2.addAll((zzna) list2);
                zznd.c(j, obj, zzkyVar2);
                zzkyVar = zzkyVar2;
            } else if ((list2 instanceof zzmc) && (list2 instanceof zzkp)) {
                zzkp zzkpVar = (zzkp) list2;
                if (!zzkpVar.W()) {
                    list2 = zzkpVar.l(list2.size() + size);
                    zznd.c(j, obj, list2);
                }
            }
            list2 = zzkyVar;
        }
        int size2 = list2.size();
        int size3 = list.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list);
        }
        if (size2 > 0) {
            list = list2;
        }
        zznd.c(j, obj, list);
    }
}
