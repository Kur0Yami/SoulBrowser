package com.google.android.gms.cast.framework.media.widget;

import android.os.Looper;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.internal.cast.zzfk;
import java.util.TimerTask;

/* loaded from: classes.dex */
final class zzj extends TimerTask {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f3554c;
    public final /* synthetic */ ExpandedControllerActivity f;

    public zzj(ExpandedControllerActivity expandedControllerActivity, RemoteMediaClient remoteMediaClient) {
        this.f3554c = remoteMediaClient;
        this.f = expandedControllerActivity;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        new zzfk(Looper.getMainLooper()).post(new zzi(this, this.f3554c));
    }
}
