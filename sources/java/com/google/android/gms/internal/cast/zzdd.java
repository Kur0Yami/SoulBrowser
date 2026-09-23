package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public final class zzdd extends UIController {
    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void b() {
        MediaQueueItem G;
        MediaInfo mediaInfo;
        RemoteMediaClient remoteMediaClient = this.f3529a;
        if (remoteMediaClient != null && remoteMediaClient.j()) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            MediaStatus g = remoteMediaClient.g();
            if (g == null) {
                G = null;
            } else {
                G = g.G(g.q);
            }
            if (G != null && (mediaInfo = G.f3450c) != null && mediaInfo.h != null) {
                throw null;
            }
        }
    }
}
