package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.IBinder;

/* loaded from: classes.dex */
final class zzh implements zzk {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f3420a;
    public final /* synthetic */ Bundle b;

    public zzh(String str, Bundle bundle) {
        this.f3420a = str;
        this.b = bundle;
    }

    @Override // com.google.android.gms.auth.zzk
    public final Object a(IBinder iBinder) {
        Bundle D3 = com.google.android.gms.internal.auth.zze.f2(iBinder).D3(this.f3420a, this.b);
        zzl.d(D3);
        String string = D3.getString("Error");
        if (D3.getBoolean("booleanResult")) {
            return null;
        }
        throw new Exception(string);
    }
}
