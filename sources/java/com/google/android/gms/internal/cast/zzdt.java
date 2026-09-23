package com.google.android.gms.internal.cast;

import android.view.View;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* loaded from: classes.dex */
public final class zzdt extends UIController {
    public final View b;

    public zzdt(View view) {
        this.b = view;
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void b() {
        RemoteMediaClient remoteMediaClient = this.f3529a;
        View view = this.b;
        if (remoteMediaClient != null && remoteMediaClient.j()) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void d(CastSession castSession) {
        super.d(castSession);
        RemoteMediaClient remoteMediaClient = this.f3529a;
        View view = this.b;
        if (remoteMediaClient != null && remoteMediaClient.j()) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void e() {
        this.b.setVisibility(8);
        this.f3529a = null;
    }
}
