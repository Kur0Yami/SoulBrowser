package com.google.android.gms.internal.play_billing;

import android.support.v4.media.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzs extends zzo {
    public final /* synthetic */ zzt l;

    public zzs(zzt zztVar) {
        this.l = zztVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzo
    public final String a() {
        zzp zzpVar = (zzp) this.l.f11561c.get();
        if (zzpVar == null) {
            return "Completer object has been garbage collected, future will fail soon";
        }
        return a.l("tag=[", String.valueOf(zzpVar.f11559a), "]");
    }
}
