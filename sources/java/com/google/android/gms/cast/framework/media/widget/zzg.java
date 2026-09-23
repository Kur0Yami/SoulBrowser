package com.google.android.gms.cast.framework.media.widget;

import android.graphics.Bitmap;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzg implements com.google.android.gms.cast.framework.media.internal.zza {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ExpandedControllerActivity f3551a;

    public zzg(ExpandedControllerActivity expandedControllerActivity) {
        this.f3551a = expandedControllerActivity;
    }

    @Override // com.google.android.gms.cast.framework.media.internal.zza
    public final void a(Bitmap bitmap) {
        if (bitmap != null) {
            ExpandedControllerActivity expandedControllerActivity = this.f3551a;
            TextView textView = expandedControllerActivity.i0;
            if (textView != null) {
                textView.setVisibility(8);
            }
            ImageView imageView = expandedControllerActivity.h0;
            if (imageView != null) {
                imageView.setVisibility(0);
                expandedControllerActivity.h0.setImageBitmap(bitmap);
            }
        }
    }
}
