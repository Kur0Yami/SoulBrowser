package com.google.android.gms.cast.framework.media.widget;

import android.view.View;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzh implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ExpandedControllerActivity f3552c;

    public zzh(ExpandedControllerActivity expandedControllerActivity) {
        this.f3552c = expandedControllerActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        RemoteMediaClient Y;
        ExpandedControllerActivity expandedControllerActivity = this.f3552c;
        if (expandedControllerActivity.k0.isClickable() && (Y = expandedControllerActivity.Y()) != null) {
            Y.y();
        }
    }
}
