package androidx.appcompat.graphics.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.support.v4.media.a;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class DrawerArrowDrawable extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public static final float f141a = (float) Math.toRadians(45.0d);

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ArrowDirection {
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        getBounds();
        float a2 = a.a((float) Math.sqrt(0.0f), 0.0f, 0.0f, 0.0f);
        Math.round((0.0f * 0.0f) + 0.0f);
        double d = a2;
        double a3 = a.a(f141a, 0.0f, 0.0f, 0.0f);
        Math.round(Math.cos(a3) * d);
        Math.round(Math.sin(a3) * d);
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        throw null;
    }
}
