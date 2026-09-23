package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.LinkedList;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class zzfrb extends zzgsv {

    /* renamed from: c, reason: collision with root package name */
    public final LinkedList f7588c = new LinkedList();

    @Override // com.google.android.gms.internal.ads.zzgss, com.google.android.gms.internal.ads.zzgsu
    public final /* synthetic */ Object a() {
        return this.f7588c;
    }

    @Override // com.google.android.gms.internal.ads.zzgss, java.util.Collection, java.util.Queue
    public final boolean add(Object obj) {
        zzfqm zzfqmVar = (zzfqm) obj;
        int i = zzfqmVar.f;
        LinkedList linkedList = this.f7588c;
        if (i == 3) {
            ListIterator listIterator = linkedList.listIterator();
            while (listIterator.hasNext()) {
                zzfqm zzfqmVar2 = (zzfqm) listIterator.next();
                if (zzfqmVar2.f == 3) {
                    double d = zzfqmVar2.e;
                    double d2 = zzfqmVar.e;
                    if (d < d2 || (d == d2 && zzfqmVar2.a() > zzfqmVar.a())) {
                        listIterator.set(zzfqmVar);
                        zzfqmVar = zzfqmVar2;
                    }
                }
            }
            linkedList.add(zzfqmVar);
            return true;
        }
        linkedList.add(zzfqmVar);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgsv, com.google.android.gms.internal.ads.zzgss
    public final /* synthetic */ Collection c() {
        return this.f7588c;
    }

    @Override // com.google.android.gms.internal.ads.zzgsv
    public final LinkedList g() {
        return this.f7588c;
    }
}
