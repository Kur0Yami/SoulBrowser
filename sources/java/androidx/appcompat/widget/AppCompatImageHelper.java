package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;

@RestrictTo
/* loaded from: classes.dex */
public class AppCompatImageHelper {

    /* renamed from: a, reason: collision with root package name */
    public final ImageView f248a;
    public TintInfo b;

    /* renamed from: c, reason: collision with root package name */
    public int f249c = 0;

    public AppCompatImageHelper(ImageView imageView) {
        this.f248a = imageView;
    }

    public final void a() {
        TintInfo tintInfo;
        ImageView imageView = this.f248a;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            DrawableUtils.a(drawable);
        }
        if (drawable != null && (tintInfo = this.b) != null) {
            AppCompatDrawableManager.e(drawable, tintInfo, imageView.getDrawableState());
        }
    }

    public final void b(AttributeSet attributeSet, int i) {
        int resourceId;
        ImageView imageView = this.f248a;
        TintTypedArray e = TintTypedArray.e(imageView.getContext(), attributeSet, R.styleable.AppCompatImageView, i);
        TypedArray typedArray = e.b;
        ViewCompat.y(imageView, imageView.getContext(), R.styleable.AppCompatImageView, attributeSet, e.b, i);
        try {
            Drawable drawable = imageView.getDrawable();
            if (drawable == null && (resourceId = typedArray.getResourceId(R.styleable.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = AppCompatResources.a(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                DrawableUtils.a(drawable);
            }
            if (typedArray.hasValue(R.styleable.AppCompatImageView_tint)) {
                imageView.setImageTintList(e.a(R.styleable.AppCompatImageView_tint));
            }
            if (typedArray.hasValue(R.styleable.AppCompatImageView_tintMode)) {
                imageView.setImageTintMode(DrawableUtils.c(typedArray.getInt(R.styleable.AppCompatImageView_tintMode, -1), null));
            }
            e.f();
        } catch (Throwable th) {
            e.f();
            throw th;
        }
    }
}
