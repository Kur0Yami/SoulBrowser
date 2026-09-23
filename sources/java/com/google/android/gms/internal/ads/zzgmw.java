package com.google.android.gms.internal.ads;

import android.app.AppOpsManager$OnOpActiveChangedListener;

/* loaded from: classes.dex */
final class zzgmw implements AppOpsManager$OnOpActiveChangedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzgmy f8141a;

    public zzgmw(zzgmy zzgmyVar) {
        this.f8141a = zzgmyVar;
    }

    public final void onOpActiveChanged(String str, int i, String str2, boolean z) {
        zzgmy zzgmyVar = this.f8141a;
        synchronized (zzgmyVar) {
            try {
                if (z) {
                    zzgmyVar.d = System.currentTimeMillis();
                    zzgmyVar.g = true;
                } else {
                    long currentTimeMillis = System.currentTimeMillis();
                    long j = zzgmyVar.e;
                    if (j > 0 && currentTimeMillis >= j) {
                        zzgmyVar.f = currentTimeMillis - j;
                    }
                    zzgmyVar.g = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
