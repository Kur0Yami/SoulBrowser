package androidx.core.view;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class PointerIconCompat {

    /* renamed from: a, reason: collision with root package name */
    public final PointerIcon f785a;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24Impl {
        public static PointerIcon a(Context context) {
            return PointerIcon.getSystemIcon(context, 1002);
        }
    }

    public PointerIconCompat(PointerIcon pointerIcon) {
        this.f785a = pointerIcon;
    }

    public static PointerIconCompat a(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return new PointerIconCompat(Api24Impl.a(context));
        }
        return new PointerIconCompat(null);
    }
}
