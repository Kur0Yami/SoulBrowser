package com.google.android.gms.internal.cast;

import android.widget.ProgressBar;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* loaded from: classes.dex */
public final class zzdi extends UIController implements RemoteMediaClient.ProgressListener {
    public final ProgressBar b;

    public zzdi(ProgressBar progressBar) {
        this.b = progressBar;
        progressBar.setMax(1);
        progressBar.setProgress(0);
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener
    public final void a(long j, long j2) {
        f();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void b() {
        f();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void d(CastSession castSession) {
        super.d(castSession);
        RemoteMediaClient remoteMediaClient = this.f3529a;
        if (remoteMediaClient != null) {
            remoteMediaClient.b(this, 1000L);
        }
        f();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void e() {
        RemoteMediaClient remoteMediaClient = this.f3529a;
        if (remoteMediaClient != null) {
            remoteMediaClient.v(this);
        }
        this.f3529a = null;
        f();
    }

    public final void f() {
        RemoteMediaClient remoteMediaClient = this.f3529a;
        ProgressBar progressBar = this.b;
        if (remoteMediaClient != null && remoteMediaClient.j() && !remoteMediaClient.l()) {
            progressBar.setMax((int) remoteMediaClient.i());
            progressBar.setProgress((int) remoteMediaClient.d());
        } else {
            progressBar.setMax(1);
            progressBar.setProgress(0);
        }
    }
}
