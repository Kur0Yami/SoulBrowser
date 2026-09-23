package com.google.android.gms.cast.framework;

import android.app.Activity;
import android.view.View;
import androidx.mediarouter.app.MediaRouteButton;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public interface IntroductoryOverlay {

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final Activity f3472a;
        public final View b;

        /* renamed from: c, reason: collision with root package name */
        public int f3473c;
        public String d;
        public OnOverlayDismissedListener e;
        public boolean f;

        public Builder(Activity activity, MediaRouteButton mediaRouteButton) {
            this.f3472a = (Activity) Preconditions.checkNotNull(activity);
            this.b = (View) Preconditions.checkNotNull(mediaRouteButton);
        }
    }

    /* loaded from: classes.dex */
    public interface OnOverlayDismissedListener {
        void a();
    }
}
