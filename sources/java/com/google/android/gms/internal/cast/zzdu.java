package com.google.android.gms.internal.cast;

import android.widget.TextView;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* loaded from: classes.dex */
public final class zzdu extends UIController implements RemoteMediaClient.ProgressListener {
    public final TextView b;

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.cast.framework.media.uicontroller.zza f9674c;

    public zzdu(TextView textView, com.google.android.gms.cast.framework.media.uicontroller.zza zzaVar) {
        this.b = textView;
        this.f9674c = zzaVar;
        textView.setText(textView.getContext().getString(R.string.cast_invalid_stream_duration_text));
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
        this.f3529a = null;
        f();
    }

    public final void f() {
        RemoteMediaClient remoteMediaClient = this.f3529a;
        TextView textView = this.b;
        if (remoteMediaClient != null && remoteMediaClient.j()) {
            boolean l = remoteMediaClient.l();
            com.google.android.gms.cast.framework.media.uicontroller.zza zzaVar = this.f9674c;
            if (l && zzaVar.h() == null) {
                textView.setVisibility(8);
                return;
            }
            textView.setVisibility(0);
            textView.setText(zzaVar.k(zzaVar.f() + zzaVar.a()));
            return;
        }
        textView.setText(textView.getContext().getString(R.string.cast_invalid_stream_duration_text));
    }
}
