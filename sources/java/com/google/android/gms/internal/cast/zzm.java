package com.google.android.gms.internal.cast;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.cast.framework.SessionTransferCallback;
import com.google.android.gms.cast.internal.Logger;

@VisibleForTesting
/* loaded from: classes.dex */
public final class zzm extends SessionTransferCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzn f9772a;

    public zzm(zzn zznVar) {
        this.f9772a = zznVar;
    }

    @Override // com.google.android.gms.cast.framework.SessionTransferCallback
    public final void a(int i, int i2) {
        Logger logger = zzn.j;
        zzn.j.b("onTransferFailed with type = %d and reason = %d", Integer.valueOf(i), Integer.valueOf(i2));
        zzn zznVar = this.f9772a;
        zznVar.e();
        zzp zzpVar = zznVar.f9787c;
        zzo zzoVar = zznVar.g;
        zzj zzjVar = zznVar.f9786a;
        zzqq b = zzpVar.b(zzoVar);
        zzqf o = zzqg.o(b.f());
        o.c();
        ((zzqg) o.f).x(i);
        o.c();
        ((zzqg) o.f).y(i2);
        b.g((zzqg) o.e());
        zzjVar.b(232, (zzqr) b.e());
        zznVar.i = false;
    }

    @Override // com.google.android.gms.cast.framework.SessionTransferCallback
    public final void b(int i) {
        Logger logger = zzn.j;
        zzn.j.b("onTransferred with type = %d", Integer.valueOf(i));
        zzn zznVar = this.f9772a;
        zznVar.e();
        zzp zzpVar = zznVar.f9787c;
        zzo zzoVar = zznVar.g;
        zzj zzjVar = zznVar.f9786a;
        zzqq b = zzpVar.b(zzoVar);
        zzqf o = zzqg.o(b.f());
        o.c();
        ((zzqg) o.f).x(i);
        b.g((zzqg) o.e());
        zzjVar.b(231, (zzqr) b.e());
        zznVar.i = false;
        zznVar.g = null;
    }
}
