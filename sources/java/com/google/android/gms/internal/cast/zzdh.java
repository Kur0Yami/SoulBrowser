package com.google.android.gms.internal.cast;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* loaded from: classes.dex */
public final class zzdh extends UIController {
    public final ImageView b;

    /* renamed from: c, reason: collision with root package name */
    public final View f9671c;
    public final boolean d;
    public final Drawable e;
    public final String f;
    public final Drawable g;
    public final String h;
    public final Drawable i;
    public final String j;
    public boolean k = false;

    public zzdh(ImageView imageView, Context context, Drawable drawable, Drawable drawable2, Drawable drawable3, View view, boolean z) {
        this.b = imageView;
        this.e = drawable;
        this.g = drawable2;
        this.i = drawable3;
        this.f = context.getString(R.string.cast_play);
        this.h = context.getString(R.string.cast_pause);
        this.j = context.getString(R.string.cast_stop);
        this.f9671c = view;
        this.d = z;
        imageView.setEnabled(false);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void b() {
        f();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void c() {
        h(true);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void d(CastSession castSession) {
        super.d(castSession);
        f();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void e() {
        this.b.setEnabled(false);
        this.f3529a = null;
    }

    public final void f() {
        RemoteMediaClient remoteMediaClient = this.f3529a;
        if (remoteMediaClient != null && remoteMediaClient.j()) {
            if (remoteMediaClient.o()) {
                if (remoteMediaClient.l()) {
                    g(this.i, this.j);
                    return;
                } else {
                    g(this.g, this.h);
                    return;
                }
            }
            if (remoteMediaClient.k()) {
                h(false);
                return;
            } else if (remoteMediaClient.n()) {
                g(this.e, this.f);
                return;
            } else {
                if (remoteMediaClient.m()) {
                    h(true);
                    return;
                }
                return;
            }
        }
        this.b.setEnabled(false);
    }

    public final void g(Drawable drawable, String str) {
        ImageView imageView = this.b;
        boolean equals = drawable.equals(imageView.getDrawable());
        imageView.setImageDrawable(drawable);
        imageView.setContentDescription(str);
        imageView.setVisibility(0);
        imageView.setEnabled(true);
        View view = this.f9671c;
        if (view != null) {
            view.setVisibility(8);
        }
        if (!equals && this.k) {
            imageView.sendAccessibilityEvent(8);
        }
    }

    public final void h(boolean z) {
        ImageView imageView = this.b;
        this.k = imageView.isAccessibilityFocused();
        int i = 0;
        View view = this.f9671c;
        if (view != null) {
            view.setVisibility(0);
            if (this.k) {
                view.sendAccessibilityEvent(8);
            }
        }
        if (true == this.d) {
            i = 4;
        }
        imageView.setVisibility(i);
        imageView.setEnabled(!z);
    }
}
