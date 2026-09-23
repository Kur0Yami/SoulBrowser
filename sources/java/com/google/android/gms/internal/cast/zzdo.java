package com.google.android.gms.internal.cast;

import android.widget.TextView;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* loaded from: classes.dex */
public final class zzdo extends UIController {
    public final TextView b;

    public zzdo(TextView textView) {
        this.b = textView;
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void b() {
        MediaInfo f;
        MediaMetadata mediaMetadata;
        String a2;
        RemoteMediaClient remoteMediaClient = this.f3529a;
        if (remoteMediaClient != null && (f = remoteMediaClient.f()) != null && (mediaMetadata = f.h) != null && (a2 = com.google.android.gms.cast.framework.media.internal.zzt.a(mediaMetadata)) != null) {
            this.b.setText(a2);
        }
    }
}
