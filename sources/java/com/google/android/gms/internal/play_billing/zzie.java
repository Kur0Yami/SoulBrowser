package com.google.android.gms.internal.play_billing;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzie extends zzic {
    @Override // com.google.android.gms.internal.play_billing.zzic
    public final /* bridge */ /* synthetic */ zzid a(Object obj) {
        zzfv zzfvVar = (zzfv) obj;
        zzid zzidVar = zzfvVar.zzc;
        if (zzidVar == zzid.f) {
            zzid b = zzid.b();
            zzfvVar.zzc = b;
            return b;
        }
        return zzidVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzic
    public final void b(Object obj) {
        zzid zzidVar = ((zzfv) obj).zzc;
        if (zzidVar.e) {
            zzidVar.e = false;
        }
    }
}
