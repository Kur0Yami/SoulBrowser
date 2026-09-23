package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;

@RestrictTo
/* loaded from: classes.dex */
public class TintTypedArray {

    /* renamed from: a, reason: collision with root package name */
    public final Context f331a;
    public final TypedArray b;

    /* renamed from: c, reason: collision with root package name */
    public TypedValue f332c;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
        @DoNotInline
        public static int a(TypedArray typedArray) {
            return typedArray.getChangingConfigurations();
        }

        @DoNotInline
        public static int b(TypedArray typedArray, int i) {
            return typedArray.getType(i);
        }
    }

    public TintTypedArray(Context context, TypedArray typedArray) {
        this.f331a = context;
        this.b = typedArray;
    }

    public static TintTypedArray e(Context context, AttributeSet attributeSet, int[] iArr, int i) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr, i, 0));
    }

    public final ColorStateList a(int i) {
        int resourceId;
        ColorStateList c2;
        TypedArray typedArray = this.b;
        if (typedArray.hasValue(i) && (resourceId = typedArray.getResourceId(i, 0)) != 0 && (c2 = ContextCompat.c(this.f331a, resourceId)) != null) {
            return c2;
        }
        return typedArray.getColorStateList(i);
    }

    public final Drawable b(int i) {
        int resourceId;
        TypedArray typedArray = this.b;
        if (typedArray.hasValue(i) && (resourceId = typedArray.getResourceId(i, 0)) != 0) {
            return AppCompatResources.a(this.f331a, resourceId);
        }
        return typedArray.getDrawable(i);
    }

    public final Drawable c(int i) {
        int resourceId;
        Drawable f;
        if (this.b.hasValue(i) && (resourceId = this.b.getResourceId(i, 0)) != 0) {
            AppCompatDrawableManager a2 = AppCompatDrawableManager.a();
            Context context = this.f331a;
            synchronized (a2) {
                f = a2.f236a.f(context, resourceId, true);
            }
            return f;
        }
        return null;
    }

    public final Typeface d(int i, int i2, ResourcesCompat.FontCallback fontCallback) {
        int resourceId = this.b.getResourceId(i, 0);
        if (resourceId != 0) {
            if (this.f332c == null) {
                this.f332c = new TypedValue();
            }
            TypedValue typedValue = this.f332c;
            ThreadLocal threadLocal = ResourcesCompat.f668a;
            Context context = this.f331a;
            if (context.isRestricted()) {
                return null;
            }
            return ResourcesCompat.c(context, resourceId, typedValue, i2, fontCallback, true, false);
        }
        return null;
    }

    public final void f() {
        this.b.recycle();
    }
}
