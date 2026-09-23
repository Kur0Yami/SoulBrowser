package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;

/* loaded from: classes.dex */
public final class zzbad extends zzbbh {
    public final Activity h;
    public final View i;

    public zzbad(zzazt zzaztVar, zzavs zzavsVar, int i, View view, Activity activity) {
        super(zzaztVar, "YJMz4lZ/SFOXN6kW19UKnvAqcLtndNv4f6er9d24/5MuXcrsMTIC+9Jfbhpe2HMW", "6iuDHA2XEqaGCIdpenyLvoYWzHjKpoW5EjYN40bz5Cs=", zzavsVar, i, 62);
        this.i = view;
        this.h = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        View view = this.i;
        if (view == null) {
            return;
        }
        Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.n3);
        boolean booleanValue = bool.booleanValue();
        Object[] objArr = (Object[]) this.e.invoke(null, view, this.h, bool);
        zzavs zzavsVar = this.d;
        synchronized (zzavsVar) {
            try {
                long longValue = ((Long) objArr[0]).longValue();
                zzavsVar.k();
                ((zzawp) zzavsVar.f).g0(longValue);
                long longValue2 = ((Long) objArr[1]).longValue();
                zzavsVar.k();
                ((zzawp) zzavsVar.f).h0(longValue2);
                if (booleanValue) {
                    String str = (String) objArr[2];
                    zzavsVar.k();
                    ((zzawp) zzavsVar.f).i0(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
