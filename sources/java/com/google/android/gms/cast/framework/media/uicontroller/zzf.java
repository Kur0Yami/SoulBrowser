package com.google.android.gms.cast.framework.media.uicontroller;

import android.view.View;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzf implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UIMediaController f3537c;

    public zzf(UIMediaController uIMediaController) {
        Objects.requireNonNull(uIMediaController);
        this.f3537c = uIMediaController;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        UIMediaController uIMediaController = this.f3537c;
        RemoteMediaClient y = uIMediaController.y();
        if (y != null && y.j()) {
            if (y.E()) {
                y.x(Math.min(y.d() + 30000, uIMediaController.e.f() + r9.e()));
                return;
            }
            y.x(y.d() + 30000);
        }
    }
}
