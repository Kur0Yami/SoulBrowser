package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.TintableImageSourceView;

/* loaded from: classes.dex */
public class AppCompatImageView extends ImageView implements TintableBackgroundView, TintableImageSourceView {

    /* renamed from: c, reason: collision with root package name */
    public final AppCompatBackgroundHelper f250c;
    public final AppCompatImageHelper f;
    public boolean g;

    @RequiresApi
    @RestrictTo
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion {

        /* renamed from: a, reason: collision with root package name */
        public int f251a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f252c;
        public int d;

        public final void mapProperties(PropertyMapper propertyMapper) {
            this.f251a = propertyMapper.mapObject("backgroundTint", R.attr.backgroundTint);
            this.b = propertyMapper.mapObject("backgroundTintMode", R.attr.backgroundTintMode);
            this.f252c = propertyMapper.mapObject("tint", R.attr.tint);
            this.d = propertyMapper.mapObject("tintMode", R.attr.tintMode);
        }

        public final void readProperties(Object obj, PropertyReader propertyReader) {
            AppCompatImageView appCompatImageView = (AppCompatImageView) obj;
            propertyReader.readObject(this.f251a, appCompatImageView.getBackgroundTintList());
            propertyReader.readObject(this.b, appCompatImageView.getBackgroundTintMode());
            propertyReader.readObject(this.f252c, appCompatImageView.getImageTintList());
            propertyReader.readObject(this.d, appCompatImageView.getImageTintMode());
        }
    }

    public AppCompatImageView(Context context) {
        this(context, null, 0);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f250c;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.a();
        }
        AppCompatImageHelper appCompatImageHelper = this.f;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.a();
        }
    }

    @Nullable
    @RestrictTo
    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f250c;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.b();
        }
        return null;
    }

    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f250c;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.c();
        }
        return null;
    }

    @Nullable
    @RestrictTo
    public ColorStateList getSupportImageTintList() {
        TintInfo tintInfo;
        AppCompatImageHelper appCompatImageHelper = this.f;
        if (appCompatImageHelper == null || (tintInfo = appCompatImageHelper.b) == null) {
            return null;
        }
        return tintInfo.f329a;
    }

    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportImageTintMode() {
        TintInfo tintInfo;
        AppCompatImageHelper appCompatImageHelper = this.f;
        if (appCompatImageHelper == null || (tintInfo = appCompatImageHelper.b) == null) {
            return null;
        }
        return tintInfo.b;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        if (!(this.f.f248a.getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering()) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f250c;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f250c;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.f(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        AppCompatImageHelper appCompatImageHelper = this.f;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        AppCompatImageHelper appCompatImageHelper = this.f;
        if (appCompatImageHelper != null && drawable != null && !this.g) {
            appCompatImageHelper.f249c = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (appCompatImageHelper != null) {
            appCompatImageHelper.a();
            if (!this.g) {
                ImageView imageView = appCompatImageHelper.f248a;
                if (imageView.getDrawable() != null) {
                    imageView.getDrawable().setLevel(appCompatImageHelper.f249c);
                }
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i) {
        super.setImageLevel(i);
        this.g = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        AppCompatImageHelper appCompatImageHelper = this.f;
        if (appCompatImageHelper != null) {
            ImageView imageView = appCompatImageHelper.f248a;
            if (i != 0) {
                Drawable a2 = AppCompatResources.a(imageView.getContext(), i);
                if (a2 != null) {
                    DrawableUtils.a(a2);
                }
                imageView.setImageDrawable(a2);
            } else {
                imageView.setImageDrawable(null);
            }
            appCompatImageHelper.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(@Nullable Uri uri) {
        super.setImageURI(uri);
        AppCompatImageHelper appCompatImageHelper = this.f;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.a();
        }
    }

    @RestrictTo
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f250c;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.h(colorStateList);
        }
    }

    @RestrictTo
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f250c;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.i(mode);
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, androidx.appcompat.widget.TintInfo] */
    @RestrictTo
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        AppCompatImageHelper appCompatImageHelper = this.f;
        if (appCompatImageHelper != null) {
            if (appCompatImageHelper.b == null) {
                appCompatImageHelper.b = new Object();
            }
            TintInfo tintInfo = appCompatImageHelper.b;
            tintInfo.f329a = colorStateList;
            tintInfo.d = true;
            appCompatImageHelper.a();
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, androidx.appcompat.widget.TintInfo] */
    @RestrictTo
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatImageHelper appCompatImageHelper = this.f;
        if (appCompatImageHelper != null) {
            if (appCompatImageHelper.b == null) {
                appCompatImageHelper.b = new Object();
            }
            TintInfo tintInfo = appCompatImageHelper.b;
            tintInfo.b = mode;
            tintInfo.f330c = true;
            appCompatImageHelper.a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TintContextWrapper.a(context);
        this.g = false;
        ThemeUtils.a(getContext(), this);
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this);
        this.f250c = appCompatBackgroundHelper;
        appCompatBackgroundHelper.d(attributeSet, i);
        AppCompatImageHelper appCompatImageHelper = new AppCompatImageHelper(this);
        this.f = appCompatImageHelper;
        appCompatImageHelper.b(attributeSet, i);
    }
}
