package com.google.android.gms.internal.drive;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public final class zzee extends zzet {

    /* renamed from: c, reason: collision with root package name */
    public static final GmsLogger f10156c = new GmsLogger("EventCallback", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);

    @Override // com.google.android.gms.internal.drive.zzes
    public final void u1(zzfp zzfpVar) {
        boolean z;
        if (zzfpVar.F().getType() == 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
        throw null;
    }
}
