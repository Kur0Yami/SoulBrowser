package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzglx {

    /* renamed from: a, reason: collision with root package name */
    public final Set f8109a;
    public final zzgmo b;

    public zzglx(zzgmo zzgmoVar, Set set) {
        this.f8109a = set;
        this.b = zzgmoVar;
    }

    public final HashMap a() {
        HashMap hashMap = new HashMap();
        Iterator it = this.f8109a.iterator();
        while (it.hasNext()) {
            ((zzglz) it.next()).b(hashMap);
        }
        return hashMap;
    }

    public final HashMap b(Context context, View view) {
        HashMap hashMap = new HashMap();
        Iterator it = this.f8109a.iterator();
        while (it.hasNext()) {
            ((zzglz) it.next()).c(hashMap, context, view);
        }
        return hashMap;
    }

    public final HashMap c() {
        HashMap hashMap = new HashMap();
        Iterator it = this.f8109a.iterator();
        while (it.hasNext()) {
            ((zzglz) it.next()).a(hashMap);
        }
        return hashMap;
    }
}
