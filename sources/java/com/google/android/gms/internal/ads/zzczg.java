package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class zzczg implements zzdby, zzdbf {

    /* renamed from: c, reason: collision with root package name */
    public final zzfhr f5619c;

    public zzczg(zzfhr zzfhrVar) {
        this.f5619c = zzfhrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void b(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void q(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void zza(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final void zzg() {
        zzbxe zzbxeVar = this.f5619c.d0;
        if (zzbxeVar != null && zzbxeVar.f4959a) {
            ArrayList arrayList = new ArrayList();
            String str = zzbxeVar.b;
            if (!str.isEmpty()) {
                arrayList.add(str);
            }
        }
    }
}
