package com.google.android.gms.cast.framework.media.uicontroller;

import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;

/* loaded from: classes.dex */
public abstract class UIController {

    /* renamed from: a, reason: collision with root package name */
    public RemoteMediaClient f3529a;

    public void b() {
    }

    public void c() {
    }

    public void d(CastSession castSession) {
        RemoteMediaClient remoteMediaClient;
        if (castSession != null) {
            remoteMediaClient = castSession.j();
        } else {
            remoteMediaClient = null;
        }
        this.f3529a = remoteMediaClient;
    }

    public void e() {
        this.f3529a = null;
    }
}
