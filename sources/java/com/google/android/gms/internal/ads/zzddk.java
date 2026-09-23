package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
final class zzddk implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final WeakReference f5713c;

    @Override // java.lang.Runnable
    public final void run() {
        zzddl zzddlVar = (zzddl) this.f5713c.get();
        if (zzddlVar != null) {
            zzddlVar.s0(zzddh.f5710a);
        }
    }
}
