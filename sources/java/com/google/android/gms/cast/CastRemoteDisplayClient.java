package com.google.android.gms.cast;

import android.hardware.display.VirtualDisplay;
import androidx.work.impl.workers.a;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;

@Deprecated
/* loaded from: classes.dex */
public class CastRemoteDisplayClient extends GoogleApi<Api.ApiOptions.NoOptions> {

    /* renamed from: a, reason: collision with root package name */
    public VirtualDisplay f3433a;

    static {
        new Api("CastRemoteDisplay.API", new Api.AbstractClientBuilder(), com.google.android.gms.cast.internal.zzal.d);
    }

    public final /* synthetic */ void g() {
        VirtualDisplay virtualDisplay = this.f3433a;
        if (virtualDisplay != null) {
            if (virtualDisplay.getDisplay() == null) {
                VirtualDisplay virtualDisplay2 = this.f3433a;
                if (virtualDisplay2 != null) {
                    virtualDisplay2.release();
                    this.f3433a = null;
                    return;
                }
                return;
            }
            int displayId = this.f3433a.getDisplay().getDisplayId();
            a.r(displayId, "releasing virtual display: ", new StringBuilder(String.valueOf(displayId).length() + 27));
            throw null;
        }
    }
}
