package com.google.android.gms.cast.framework.media.uicontroller;

import android.view.View;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzg implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UIMediaController f3538c;

    public zzg(UIMediaController uIMediaController) {
        Objects.requireNonNull(uIMediaController);
        this.f3538c = uIMediaController;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        UIMediaController uIMediaController = this.f3538c;
        RemoteMediaClient y = uIMediaController.y();
        if (y != null && y.j()) {
            if (y.E()) {
                y.x(Math.max(y.d() - 30000, uIMediaController.e.f() + r9.d()));
                return;
            }
            y.x(y.d() - 30000);
        }
    }
}
