package com.google.android.gms.internal.ads;

import java.util.ArrayList;

/* loaded from: classes.dex */
final /* synthetic */ class zzgoz implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzgpd f8189c;
    public final /* synthetic */ Runnable f;

    public /* synthetic */ zzgoz(zzgpd zzgpdVar, Runnable runnable) {
        this.f8189c = zzgpdVar;
        this.f = runnable;
    }

    @Override // java.lang.Runnable
    public final /* synthetic */ void run() {
        zzgpd zzgpdVar = this.f8189c;
        Runnable runnable = this.f;
        if (zzgpdVar.j == null && !zzgpdVar.f) {
            zzgpdVar.f8193c.a("Initiate binding to the service.", new Object[0]);
            ArrayList arrayList = zzgpdVar.e;
            synchronized (arrayList) {
                arrayList.add(runnable);
            }
            zzgox zzgoxVar = new zzgox(zzgpdVar);
            zzgpdVar.i = zzgoxVar;
            zzgpdVar.f = true;
            if (!zzgpdVar.b.bindService(zzgpdVar.g, zzgoxVar, 1)) {
                zzgpdVar.f8193c.a("Failed to bind to the service.", new Object[0]);
                zzgpdVar.f = false;
                ArrayList arrayList2 = zzgpdVar.e;
                synchronized (arrayList2) {
                    arrayList2.clear();
                }
                return;
            }
            return;
        }
        if (zzgpdVar.f) {
            zzgpdVar.f8193c.a("Waiting to bind to the service.", new Object[0]);
            ArrayList arrayList3 = zzgpdVar.e;
            synchronized (arrayList3) {
                arrayList3.add(runnable);
            }
            return;
        }
        runnable.run();
    }
}
