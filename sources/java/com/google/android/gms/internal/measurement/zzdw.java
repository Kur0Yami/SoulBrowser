package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;

/* loaded from: classes3.dex */
final class zzdw extends zzdt {
    public final /* synthetic */ Bundle f;
    public final /* synthetic */ zzed g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdw(zzed zzedVar, Bundle bundle, Activity activity) {
        super(null);
        this.g = zzedVar;
        this.f = bundle;
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void a() {
        Bundle bundle = this.f;
        if (bundle != null) {
            Bundle bundle2 = new Bundle();
            if (bundle.containsKey("com.google.app_measurement.screen_service")) {
                Object obj = bundle.get("com.google.app_measurement.screen_service");
                if (obj instanceof Bundle) {
                    bundle2.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                }
            }
        }
        this.g.getClass();
        throw null;
    }
}
