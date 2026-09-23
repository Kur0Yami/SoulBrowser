package com.google.android.gms.internal.cast;

import android.net.Uri;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.Preconditions;
import java.util.List;

/* loaded from: classes.dex */
public final class zzcx extends UIController {
    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void b() {
        MediaQueueItem G;
        Uri uri;
        MediaInfo mediaInfo;
        MediaMetadata mediaMetadata;
        List list;
        RemoteMediaClient remoteMediaClient = this.f3529a;
        if (remoteMediaClient != null) {
            if (remoteMediaClient.j()) {
                Preconditions.checkMainThread("Must be called from the main thread.");
                MediaStatus g = remoteMediaClient.g();
                if (g == null) {
                    G = null;
                } else {
                    G = g.G(g.q);
                }
                if (G != null && (mediaInfo = G.f3450c) != null && (mediaMetadata = mediaInfo.h) != null && (list = mediaMetadata.f3445c) != null && list.size() > 0) {
                    uri = ((WebImage) list.get(0)).getUrl();
                } else {
                    uri = null;
                }
                uri.getClass();
                throw null;
            }
            throw null;
        }
        throw null;
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void d(CastSession castSession) {
        super.d(castSession);
        throw null;
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void e() {
        throw null;
    }
}
