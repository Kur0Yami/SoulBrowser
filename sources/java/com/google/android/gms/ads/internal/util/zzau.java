package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzdm;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzau extends zzdm {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f3113c;
    public final /* synthetic */ zzax f;

    public zzau(zzax zzaxVar, Context context) {
        this.f3113c = context;
        this.f = zzaxVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final void zze(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (zzeVar == null) {
            return;
        }
        this.f.a(this.f3113c, zzeVar.zzb, true, true);
    }
}
