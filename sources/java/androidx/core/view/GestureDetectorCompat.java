package androidx.core.view;

import android.content.Context;
import android.view.GestureDetector;

@Deprecated
/* loaded from: classes.dex */
public final class GestureDetectorCompat {

    /* renamed from: a, reason: collision with root package name */
    public final GestureDetector f775a;

    public GestureDetectorCompat(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this.f775a = new GestureDetector(context, onGestureListener, null);
    }
}
