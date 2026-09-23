package com.google.android.gms.internal.cast;

import android.widget.ImageView;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* loaded from: classes.dex */
public final class zzdn extends UIController {
    public final ImageView b;

    public zzdn(ImageView imageView) {
        this.b = imageView;
        imageView.setEnabled(false);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void b() {
        f();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void c() {
        this.b.setEnabled(false);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void d(CastSession castSession) {
        super.d(castSession);
        f();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void e() {
        this.b.setEnabled(false);
        this.f3529a = null;
    }

    public final void f() {
        RemoteMediaClient remoteMediaClient = this.f3529a;
        ImageView imageView = this.b;
        if (remoteMediaClient != null && remoteMediaClient.G() && !remoteMediaClient.p()) {
            imageView.setVisibility(0);
            imageView.setEnabled(true);
        } else {
            imageView.setVisibility(0);
            imageView.setEnabled(false);
        }
    }
}
