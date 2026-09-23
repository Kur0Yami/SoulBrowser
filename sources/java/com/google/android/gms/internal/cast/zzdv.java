package com.google.android.gms.internal.cast;

import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* loaded from: classes.dex */
public final class zzdv extends UIController implements RemoteMediaClient.ProgressListener {
    public final TextView b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageView f9675c;
    public final com.google.android.gms.cast.framework.media.uicontroller.zza d;

    public zzdv(View view, com.google.android.gms.cast.framework.media.uicontroller.zza zzaVar) {
        TextView textView = (TextView) view.findViewById(R.id.live_indicator_text);
        this.b = textView;
        ImageView imageView = (ImageView) view.findViewById(R.id.live_indicator_dot);
        this.f9675c = imageView;
        this.d = zzaVar;
        TypedArray obtainStyledAttributes = imageView.getContext().obtainStyledAttributes(null, R.styleable.CastExpandedController, R.attr.castExpandedControllerStyle, R.style.CastExpandedController);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castLiveIndicatorColor, 0);
        obtainStyledAttributes.recycle();
        imageView.getDrawable().setColorFilter(imageView.getContext().getResources().getColor(resourceId), PorterDuff.Mode.SRC_IN);
        textView.setVisibility(8);
        imageView.setVisibility(8);
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
        boolean c2;
        RemoteMediaClient remoteMediaClient = this.f3529a;
        ImageView imageView = this.f9675c;
        TextView textView = this.b;
        int i = 8;
        if (remoteMediaClient != null && remoteMediaClient.j() && remoteMediaClient.l()) {
            if (!remoteMediaClient.E()) {
                c2 = remoteMediaClient.o();
            } else {
                com.google.android.gms.cast.framework.media.uicontroller.zza zzaVar = this.d;
                c2 = zzaVar.c(zzaVar.f() + zzaVar.b());
            }
            textView.setVisibility(0);
            if (true == c2) {
                i = 0;
            }
            imageView.setVisibility(i);
            zzr.a(zzpm.CAF_EXPANDED_CONTROLLER_WITH_LIVE_CONTENT);
            return;
        }
        textView.setVisibility(8);
        imageView.setVisibility(8);
    }
}
