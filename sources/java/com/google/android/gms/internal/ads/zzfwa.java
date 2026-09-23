package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.util.Log;

/* loaded from: classes.dex */
public final class zzfwa {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f7698a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f7699c;
    public final /* synthetic */ zzfwb d;

    public /* synthetic */ zzfwa(zzfwb zzfwbVar, byte[] bArr) {
        this.d = zzfwbVar;
        this.f7698a = bArr;
    }

    public final synchronized void a() {
        try {
            zzfwb zzfwbVar = this.d;
            if (zzfwbVar.b) {
                zzfwe zzfweVar = zzfwbVar.f7700a;
                zzfweVar.B2(this.f7698a);
                zzfweVar.e(this.b);
                zzfweVar.d(this.f7699c);
                zzfweVar.h3();
                zzfweVar.zze();
            }
        } catch (RemoteException e) {
            Log.d("GASS", "Clearcut log failed", e);
        }
    }
}
