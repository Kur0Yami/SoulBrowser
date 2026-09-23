package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public abstract class zzvf implements zzwi {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f9313a = new ArrayList(1);
    public final HashSet b = new HashSet(1);

    /* renamed from: c, reason: collision with root package name */
    public final zzwq f9314c = new zzwq(new CopyOnWriteArrayList(), null);
    public final zztf d = new zztf(new CopyOnWriteArrayList(), null);
    public Looper e;
    public zzbf f;
    public zzpn g;

    @Override // com.google.android.gms.internal.ads.zzwi
    public final void a(Handler handler, zztg zztgVar) {
        zztf zztfVar = this.d;
        zztfVar.getClass();
        zztfVar.b.add(new zzte(zztgVar));
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final void b(Handler handler, zzwr zzwrVar) {
        zzwq zzwqVar = this.f9314c;
        zzwqVar.getClass();
        zzwqVar.b.add(new zzwj(handler, zzwrVar));
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final void c(zztg zztgVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.d.b;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            zzte zzteVar = (zzte) it.next();
            if (zzteVar.f9268a == zztgVar) {
                copyOnWriteArrayList.remove(zzteVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public /* synthetic */ void d(zzak zzakVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final void e(zzwr zzwrVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f9314c.b;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            zzwj zzwjVar = (zzwj) it.next();
            if (zzwjVar.b == zzwrVar) {
                copyOnWriteArrayList.remove(zzwjVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final void f(zzwh zzwhVar, zzhz zzhzVar, zzpn zzpnVar) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.e;
        boolean z = true;
        if (looper != null && looper != myLooper) {
            z = false;
        }
        zzgqa.a(z);
        this.g = zzpnVar;
        zzbf zzbfVar = this.f;
        this.f9313a.add(zzwhVar);
        if (this.e == null) {
            this.e = myLooper;
            this.b.add(zzwhVar);
            m(zzhzVar);
        } else if (zzbfVar != null) {
            h(zzwhVar);
            zzwhVar.a(this, zzbfVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final void g(zzwh zzwhVar) {
        HashSet hashSet = this.b;
        boolean isEmpty = hashSet.isEmpty();
        hashSet.remove(zzwhVar);
        if (!isEmpty && hashSet.isEmpty()) {
            n();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final void h(zzwh zzwhVar) {
        this.e.getClass();
        HashSet hashSet = this.b;
        boolean isEmpty = hashSet.isEmpty();
        hashSet.add(zzwhVar);
        if (isEmpty) {
            l();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final void k(zzwh zzwhVar) {
        ArrayList arrayList = this.f9313a;
        arrayList.remove(zzwhVar);
        if (arrayList.isEmpty()) {
            this.e = null;
            this.f = null;
            this.g = null;
            this.b.clear();
            o();
            return;
        }
        g(zzwhVar);
    }

    public void l() {
    }

    public abstract void m(zzhz zzhzVar);

    public void n() {
    }

    public abstract void o();

    public final void p(zzbf zzbfVar) {
        this.f = zzbfVar;
        ArrayList arrayList = this.f9313a;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((zzwh) arrayList.get(i)).a(this, zzbfVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public /* synthetic */ void r() {
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public /* synthetic */ void zzH() {
    }
}
