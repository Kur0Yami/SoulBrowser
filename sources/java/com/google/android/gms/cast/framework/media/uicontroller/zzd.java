package com.google.android.gms.cast.framework.media.uicontroller;

import android.view.View;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzd implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UIMediaController f3535c;

    public zzd(UIMediaController uIMediaController) {
        Objects.requireNonNull(uIMediaController);
        this.f3535c = uIMediaController;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        RemoteMediaClient y = this.f3535c.y();
        if (y != null && y.j()) {
            y.s();
        }
    }
}
