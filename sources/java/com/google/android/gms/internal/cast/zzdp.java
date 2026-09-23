package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* loaded from: classes.dex */
public final class zzdp extends UIController implements RemoteMediaClient.ProgressListener {
    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener
    public final void a(long j, long j2) {
        f(false);
        throw null;
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void b() {
        f(true);
        throw null;
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void d(CastSession castSession) {
        super.d(castSession);
        RemoteMediaClient remoteMediaClient = this.f3529a;
        if (remoteMediaClient != null) {
            remoteMediaClient.b(this, 1000L);
        }
        f(true);
        throw null;
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void e() {
        throw null;
    }

    public final void f(boolean z) {
        RemoteMediaClient remoteMediaClient = this.f3529a;
        if (remoteMediaClient != null) {
            if (remoteMediaClient.j()) {
                if (!remoteMediaClient.l()) {
                    if (z) {
                        remoteMediaClient.i();
                        throw null;
                    }
                    throw null;
                }
                throw null;
            }
            throw null;
        }
        throw null;
    }
}
