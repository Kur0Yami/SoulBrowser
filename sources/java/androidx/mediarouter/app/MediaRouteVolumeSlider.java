package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.util.Log;
import androidx.appcompat.R;
import androidx.appcompat.widget.AppCompatSeekBar;
import kotlin.KotlinVersion;

/* loaded from: classes.dex */
class MediaRouteVolumeSlider extends AppCompatSeekBar {
    public final float f;
    public boolean g;
    public Drawable h;
    public int i;
    public int j;

    public MediaRouteVolumeSlider(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarStyle);
        this.f = MediaRouterThemeHelper.c(context);
    }

    public final void a(int i, int i2) {
        if (this.i != i) {
            if (Color.alpha(i) != 255) {
                Log.e("MediaRouteVolumeSlider", "Volume slider progress and thumb color cannot be translucent: #" + Integer.toHexString(i));
            }
            this.i = i;
        }
        if (this.j != i2) {
            if (Color.alpha(i2) != 255) {
                Log.e("MediaRouteVolumeSlider", "Volume slider background color cannot be translucent: #" + Integer.toHexString(i2));
            }
            this.j = i2;
        }
    }

    public final void b(boolean z) {
        Drawable drawable;
        if (this.g == z) {
            return;
        }
        this.g = z;
        if (z) {
            drawable = null;
        } else {
            drawable = this.h;
        }
        super.setThumb(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatSeekBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void drawableStateChanged() {
        int i;
        super.drawableStateChanged();
        if (isEnabled()) {
            i = KotlinVersion.MAX_COMPONENT_VALUE;
        } else {
            i = (int) (this.f * 255.0f);
        }
        Drawable drawable = this.h;
        int i2 = this.i;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        drawable.setColorFilter(i2, mode);
        this.h.setAlpha(i);
        Drawable progressDrawable = getProgressDrawable();
        if (progressDrawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) getProgressDrawable();
            Drawable findDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.progress);
            layerDrawable.findDrawableByLayerId(android.R.id.background).setColorFilter(this.j, mode);
            progressDrawable = findDrawableByLayerId;
        }
        progressDrawable.setColorFilter(this.i, mode);
        progressDrawable.setAlpha(i);
    }

    @Override // android.widget.AbsSeekBar
    public final void setThumb(Drawable drawable) {
        this.h = drawable;
        if (this.g) {
            drawable = null;
        }
        super.setThumb(drawable);
    }
}
