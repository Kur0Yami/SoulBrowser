package com.google.android.gms.internal.cast;

import android.text.format.DateUtils;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;

/* loaded from: classes.dex */
public final class zzdq extends zzdr implements RemoteMediaClient.ProgressListener {

    /* renamed from: c, reason: collision with root package name */
    public boolean f9673c;

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener
    public final void a(long j, long j2) {
        if (this.f9673c) {
            if (j == -1000) {
                j = j2;
            }
            DateUtils.formatElapsedTime(j / 1000);
            throw null;
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void d(CastSession castSession) {
        super.d(castSession);
        RemoteMediaClient remoteMediaClient = this.f3529a;
        if (remoteMediaClient != null) {
            remoteMediaClient.b(this, 0L);
            if (remoteMediaClient.j()) {
                DateUtils.formatElapsedTime(remoteMediaClient.d() / 1000);
                throw null;
            }
            throw null;
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void e() {
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzdr
    public final void f(long j) {
        DateUtils.formatElapsedTime(j / 1000);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzdr
    public final void g(boolean z) {
        this.f9673c = z;
    }
}
