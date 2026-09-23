package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzfrz implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f7609c;
    public final /* synthetic */ zzfsa f;

    public zzfrz(zzfsa zzfsaVar, float f) {
        this.f7609c = f;
        this.f = zzfsaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfsn zzfsnVar = this.f.f7612c.g;
        float f = this.f7609c;
        zzfsnVar.f7626a = f;
        if (zzfsnVar.f7627c == null) {
            zzfsnVar.f7627c = zzfsf.f7617c;
        }
        Iterator it = DesugarCollections.unmodifiableCollection(zzfsnVar.f7627c.b).iterator();
        while (it.hasNext()) {
            zzfsv zzfsvVar = ((zzfrl) it.next()).d;
            zzfsm.f7625a.a(zzfsvVar.c(), "setDeviceVolume", Float.valueOf(f), zzfsvVar.f7634a);
        }
    }
}
