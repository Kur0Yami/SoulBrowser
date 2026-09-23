package com.google.android.gms.internal.cast;

import android.widget.ImageView;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* loaded from: classes.dex */
public final class zzdj extends UIController implements RemoteMediaClient.ProgressListener {
    public final ImageView b;

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.cast.framework.media.uicontroller.zza f9672c;

    public zzdj(ImageView imageView, com.google.android.gms.cast.framework.media.uicontroller.zza zzaVar) {
        this.b = imageView;
        this.f9672c = zzaVar;
        imageView.setEnabled(false);
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener
    public final void a(long j, long j2) {
        f();
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
        RemoteMediaClient remoteMediaClient = this.f3529a;
        if (remoteMediaClient != null) {
            remoteMediaClient.b(this, 1000L);
        }
        f();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void e() {
        RemoteMediaClient remoteMediaClient = this.f3529a;
        if (remoteMediaClient != null) {
            remoteMediaClient.v(this);
        }
        this.b.setEnabled(false);
        this.f3529a = null;
        f();
    }

    public final void f() {
        RemoteMediaClient remoteMediaClient = this.f3529a;
        boolean z = false;
        ImageView imageView = this.b;
        if (remoteMediaClient != null && remoteMediaClient.j() && !remoteMediaClient.p()) {
            if (!remoteMediaClient.l()) {
                imageView.setEnabled(true);
                return;
            }
            if (remoteMediaClient.E()) {
                com.google.android.gms.cast.framework.media.uicontroller.zza zzaVar = this.f9672c;
                if ((zzaVar.f() + zzaVar.b()) - (zzaVar.f() + zzaVar.d()) >= 10000) {
                    z = true;
                }
            }
            imageView.setEnabled(z);
            return;
        }
        imageView.setEnabled(false);
    }
}
