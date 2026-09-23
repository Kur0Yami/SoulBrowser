package com.google.android.gms.internal.cast;

import android.view.View;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* loaded from: classes.dex */
public final class zzdb extends UIController {
    public final View b;

    public zzdb(View view) {
        this.b = view;
        view.setEnabled(false);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void d(CastSession castSession) {
        super.d(castSession);
        this.b.setEnabled(true);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void e() {
        this.b.setEnabled(false);
        this.f3529a = null;
    }
}
