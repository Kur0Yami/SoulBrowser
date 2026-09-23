package com.google.android.material.motion;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.animation.PathInterpolator;
import androidx.activity.BackEventCompat;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;
import com.google.api.client.http.HttpStatusCodes;

@RestrictTo
/* loaded from: classes3.dex */
public abstract class MaterialBackAnimationHelper<V extends View> {

    /* renamed from: a, reason: collision with root package name */
    public final PathInterpolator f11829a = new PathInterpolator(0.1f, 0.1f, 0.0f, 1.0f);
    public final View b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11830c;
    public final int d;
    public final int e;
    public BackEventCompat f;

    public MaterialBackAnimationHelper(View view) {
        this.b = view;
        Context context = view.getContext();
        this.f11830c = MotionUtils.c(context, R.attr.motionDurationMedium2, HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES);
        this.d = MotionUtils.c(context, R.attr.motionDurationShort3, 150);
        this.e = MotionUtils.c(context, R.attr.motionDurationShort2, 100);
    }

    public final BackEventCompat a() {
        if (this.f == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() and updateBackProgress() before cancelBackProgress()");
        }
        BackEventCompat backEventCompat = this.f;
        this.f = null;
        return backEventCompat;
    }
}
