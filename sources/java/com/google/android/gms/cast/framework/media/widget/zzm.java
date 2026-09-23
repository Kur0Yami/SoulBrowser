package com.google.android.gms.cast.framework.media.widget;

import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;

/* loaded from: classes.dex */
final class zzm implements RemoteMediaClient.Listener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ExpandedControllerActivity f3557a;

    public /* synthetic */ zzm(ExpandedControllerActivity expandedControllerActivity) {
        this.f3557a = expandedControllerActivity;
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void a() {
        this.f3557a.Z();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void b() {
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void c() {
        ExpandedControllerActivity expandedControllerActivity = this.f3557a;
        expandedControllerActivity.Z.setText(expandedControllerActivity.getResources().getString(R.string.cast_expanded_controller_loading));
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void g() {
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void i() {
        ExpandedControllerActivity expandedControllerActivity = this.f3557a;
        RemoteMediaClient Y = expandedControllerActivity.Y();
        if (Y != null && Y.j()) {
            expandedControllerActivity.q0 = false;
            expandedControllerActivity.a0();
            expandedControllerActivity.b0();
        } else if (!expandedControllerActivity.q0) {
            expandedControllerActivity.finish();
        }
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void l() {
        this.f3557a.b0();
    }
}
