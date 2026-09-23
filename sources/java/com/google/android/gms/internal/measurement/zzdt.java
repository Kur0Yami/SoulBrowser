package com.google.android.gms.internal.measurement;

import android.util.Log;

/* loaded from: classes3.dex */
abstract class zzdt implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzee f10370c;

    public zzdt(zzee zzeeVar) {
        this.f10370c = zzeeVar;
        zzeeVar.getClass();
        throw null;
    }

    public abstract void a();

    public void b() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzee zzeeVar = this.f10370c;
        if (zzeeVar.f10371a) {
            b();
            return;
        }
        try {
            a();
        } catch (Exception e) {
            zzeeVar.f10371a = zzeeVar.f10371a;
            Log.w(null, "Error with data collection. Data lost.", e);
            b();
        }
    }
}
