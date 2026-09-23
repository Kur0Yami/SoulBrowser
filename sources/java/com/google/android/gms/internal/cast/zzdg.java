package com.google.android.gms.internal.cast;

import android.content.Context;
import android.widget.ImageView;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public final class zzdg extends UIController {
    public final ImageView b;

    /* renamed from: c, reason: collision with root package name */
    public final String f9670c;
    public final String d;
    public final Context e;
    public Cast.Listener f;

    public zzdg(ImageView imageView, Context context) {
        this.b = imageView;
        Context applicationContext = context.getApplicationContext();
        this.e = applicationContext;
        this.f9670c = applicationContext.getString(R.string.cast_mute);
        this.d = applicationContext.getString(R.string.cast_unmute);
        imageView.setEnabled(false);
        this.f = null;
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
        if (this.f == null) {
            this.f = new zzdf(this);
        }
        Cast.Listener listener = this.f;
        castSession.getClass();
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (listener != null) {
            castSession.d.add(listener);
        }
        super.d(castSession);
        f();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void e() {
        Cast.Listener listener;
        this.b.setEnabled(false);
        CastSession c2 = CastContext.e(this.e).d().c();
        if (c2 != null && (listener = this.f) != null) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            c2.d.remove(listener);
        }
        this.f3529a = null;
    }

    public final void f() {
        String str;
        CastSession c2 = CastContext.e(this.e).d().c();
        boolean z = false;
        ImageView imageView = this.b;
        if (c2 != null && c2.c()) {
            RemoteMediaClient remoteMediaClient = this.f3529a;
            if (remoteMediaClient != null && remoteMediaClient.j()) {
                imageView.setEnabled(true);
            } else {
                imageView.setEnabled(false);
            }
            Preconditions.checkMainThread("Must be called from the main thread.");
            com.google.android.gms.cast.zzbm zzbmVar = c2.i;
            if (zzbmVar != null && zzbmVar.k()) {
                Preconditions.checkState(zzbmVar.k(), "Not connected to device");
                if (zzbmVar.m) {
                    z = true;
                }
            }
            imageView.setSelected(z);
            if (z) {
                str = this.d;
            } else {
                str = this.f9670c;
            }
            imageView.setContentDescription(str);
            return;
        }
        imageView.setEnabled(false);
    }
}
