package com.google.android.gms.internal.cast;

import android.widget.ProgressBar;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* loaded from: classes.dex */
public final class zzdc extends UIController {
    public final ProgressBar b;

    public zzdc(ProgressBar progressBar) {
        this.b = progressBar;
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void b() {
        RemoteMediaClient remoteMediaClient = this.f3529a;
        ProgressBar progressBar = this.b;
        if (remoteMediaClient != null && remoteMediaClient.j() && !remoteMediaClient.k()) {
            progressBar.setVisibility(8);
        } else {
            progressBar.setVisibility(0);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void c() {
        this.b.setVisibility(0);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void d(CastSession castSession) {
        super.d(castSession);
        RemoteMediaClient remoteMediaClient = this.f3529a;
        ProgressBar progressBar = this.b;
        if (remoteMediaClient != null && remoteMediaClient.j() && !remoteMediaClient.k()) {
            progressBar.setVisibility(8);
        } else {
            progressBar.setVisibility(0);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void e() {
        this.b.setVisibility(8);
        this.f3529a = null;
    }
}
