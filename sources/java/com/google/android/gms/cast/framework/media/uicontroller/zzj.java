package com.google.android.gms.cast.framework.media.uicontroller;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzj implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UIMediaController f3540c;

    public zzj(UIMediaController uIMediaController) {
        this.f3540c = uIMediaController;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Activity activity = this.f3540c.f3530a;
        CastContext e = CastContext.e(activity);
        e.getClass();
        Preconditions.checkMainThread("Must be called from the main thread.");
        CastMediaOptions castMediaOptions = e.e.j;
        if (castMediaOptions != null) {
            String str = castMediaOptions.f;
            if (!TextUtils.isEmpty(str)) {
                ComponentName componentName = new ComponentName(activity.getApplicationContext(), str);
                Intent intent = new Intent();
                intent.setComponent(componentName);
                activity.startActivity(intent);
            }
        }
    }
}
