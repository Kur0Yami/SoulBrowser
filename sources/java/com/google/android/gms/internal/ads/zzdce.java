package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzdce extends zzdgi implements zzbmd {
    public final Bundle f;

    public zzdce(Set set) {
        super(set);
        this.f = new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbmd
    public final synchronized void g(String str, Bundle bundle) {
        this.f.putAll(bundle);
        s0(zzdcd.f5688a);
    }
}
