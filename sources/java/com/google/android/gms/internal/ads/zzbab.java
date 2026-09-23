package com.google.android.gms.internal.ads;

import android.app.AppOpsManager$OnOpActiveChangedListener;

/* loaded from: classes.dex */
final class zzbab implements AppOpsManager$OnOpActiveChangedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbac f4524a;

    public zzbab(zzbac zzbacVar) {
        this.f4524a = zzbacVar;
    }

    public final void onOpActiveChanged(String str, int i, String str2, boolean z) {
        if (z) {
            long currentTimeMillis = System.currentTimeMillis();
            zzbac zzbacVar = this.f4524a;
            zzbacVar.f4525a = currentTimeMillis;
            zzbacVar.d = true;
            return;
        }
        zzbac zzbacVar2 = this.f4524a;
        long j = zzbacVar2.b;
        long currentTimeMillis2 = System.currentTimeMillis();
        if (j > 0) {
            long j2 = zzbacVar2.b;
            if (currentTimeMillis2 >= j2) {
                zzbacVar2.f4526c = currentTimeMillis2 - j2;
            }
        }
        zzbacVar2.d = false;
    }
}
