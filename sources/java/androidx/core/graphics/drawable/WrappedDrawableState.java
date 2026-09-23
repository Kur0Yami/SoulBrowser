package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Log;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class WrappedDrawableState extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public int f694a;
    public Drawable.ConstantState b;

    /* renamed from: c, reason: collision with root package name */
    public ColorStateList f695c;
    public PorterDuff.Mode d;

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        int i;
        int i2 = this.f694a;
        Drawable.ConstantState constantState = this.b;
        if (constantState != null) {
            i = constantState.getChangingConfigurations();
        } else {
            i = 0;
        }
        return i2 | i;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return newDrawable(null);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.core.graphics.drawable.WrappedDrawableApi14, android.graphics.drawable.Drawable] */
    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        ?? drawable = new Drawable();
        drawable.h = this;
        Drawable.ConstantState constantState = this.b;
        if (constantState != null) {
            drawable.a(constantState.newDrawable(resources));
        }
        if (WrappedDrawableApi21.l == null) {
            try {
                WrappedDrawableApi21.l = Drawable.class.getDeclaredMethod("isProjected", null);
                return drawable;
            } catch (Exception e) {
                Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", e);
            }
        }
        return drawable;
    }
}
