package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public final class zzds extends UIController {
    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void b() {
        RemoteMediaClient remoteMediaClient = this.f3529a;
        if (remoteMediaClient != null) {
            if (remoteMediaClient.j()) {
                if (((MediaStatus) Preconditions.checkNotNull(remoteMediaClient.g())).q == 0) {
                    throw null;
                }
                throw null;
            }
            throw null;
        }
        throw null;
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void d(CastSession castSession) {
        super.d(castSession);
        RemoteMediaClient remoteMediaClient = this.f3529a;
        if (remoteMediaClient != null) {
            if (remoteMediaClient.j()) {
                if (((MediaStatus) Preconditions.checkNotNull(remoteMediaClient.g())).q == 0) {
                    throw null;
                }
                throw null;
            }
            throw null;
        }
        throw null;
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void e() {
        throw null;
    }
}
