package androidx.vectordrawable.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import androidx.annotation.ColorInt;
import androidx.annotation.RequiresApi;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import androidx.core.content.res.ColorStateListInflaterCompat;
import androidx.core.content.res.ComplexColorCompat;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import androidx.core.graphics.drawable.DrawableCompat;
import java.util.ArrayDeque;
import java.util.ArrayList;
import kotlin.KotlinVersion;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class VectorDrawableCompat extends VectorDrawableCommon {
    public static final PorterDuff.Mode n = PorterDuff.Mode.SRC_IN;
    public VectorDrawableCompatState f;
    public PorterDuffColorFilter g;
    public ColorFilter h;
    public boolean i;
    public boolean j;
    public final float[] k;
    public final Matrix l;
    public final Rect m;

    /* loaded from: classes.dex */
    public static class VClipPath extends VPath {
    }

    /* loaded from: classes.dex */
    public static class VFullPath extends VPath {
        public ComplexColorCompat d;
        public float e;
        public ComplexColorCompat f;
        public float g;
        public float h;
        public float i;
        public float j;
        public float k;
        public Paint.Cap l;
        public Paint.Join m;
        public float n;

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public final boolean a() {
            if (!this.f.b() && !this.d.b()) {
                return false;
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean b(int[] r7) {
            /*
                r6 = this;
                androidx.core.content.res.ComplexColorCompat r0 = r6.f
                boolean r1 = r0.b()
                r2 = 1
                r3 = 0
                if (r1 == 0) goto L1c
                android.content.res.ColorStateList r1 = r0.b
                int r4 = r1.getDefaultColor()
                int r1 = r1.getColorForState(r7, r4)
                int r4 = r0.f661c
                if (r1 == r4) goto L1c
                r0.f661c = r1
                r0 = r2
                goto L1d
            L1c:
                r0 = r3
            L1d:
                androidx.core.content.res.ComplexColorCompat r1 = r6.d
                boolean r4 = r1.b()
                if (r4 == 0) goto L36
                android.content.res.ColorStateList r4 = r1.b
                int r5 = r4.getDefaultColor()
                int r7 = r4.getColorForState(r7, r5)
                int r4 = r1.f661c
                if (r7 == r4) goto L36
                r1.f661c = r7
                goto L37
            L36:
                r2 = r3
            L37:
                r7 = r0 | r2
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VFullPath.b(int[]):boolean");
        }

        public float getFillAlpha() {
            return this.h;
        }

        @ColorInt
        public int getFillColor() {
            return this.f.f661c;
        }

        public float getStrokeAlpha() {
            return this.g;
        }

        @ColorInt
        public int getStrokeColor() {
            return this.d.f661c;
        }

        public float getStrokeWidth() {
            return this.e;
        }

        public float getTrimPathEnd() {
            return this.j;
        }

        public float getTrimPathOffset() {
            return this.k;
        }

        public float getTrimPathStart() {
            return this.i;
        }

        public void setFillAlpha(float f) {
            this.h = f;
        }

        public void setFillColor(int i) {
            this.f.f661c = i;
        }

        public void setStrokeAlpha(float f) {
            this.g = f;
        }

        public void setStrokeColor(int i) {
            this.d.f661c = i;
        }

        public void setStrokeWidth(float f) {
            this.e = f;
        }

        public void setTrimPathEnd(float f) {
            this.j = f;
        }

        public void setTrimPathOffset(float f) {
            this.k = f;
        }

        public void setTrimPathStart(float f) {
            this.i = f;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class VObject {
        public boolean a() {
            return false;
        }

        public boolean b(int[] iArr) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class VectorDrawableCompatState extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public int f1747a;
        public VPathRenderer b;

        /* renamed from: c, reason: collision with root package name */
        public ColorStateList f1748c;
        public PorterDuff.Mode d;
        public boolean e;
        public Bitmap f;
        public ColorStateList g;
        public PorterDuff.Mode h;
        public int i;
        public boolean j;
        public boolean k;
        public Paint l;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f1747a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new VectorDrawableCompat(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new VectorDrawableCompat(this);
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [android.graphics.drawable.Drawable$ConstantState, androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$VectorDrawableCompatState] */
    public VectorDrawableCompat() {
        this.j = true;
        this.k = new float[9];
        this.l = new Matrix();
        this.m = new Rect();
        ?? constantState = new Drawable.ConstantState();
        constantState.f1748c = null;
        constantState.d = n;
        constantState.b = new VPathRenderer();
        this.f = constantState;
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList != null && mode != null) {
            return new PorterDuffColorFilter(colorStateList.getColorForState(super.getState(), 0), mode);
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.canApplyTheme();
            return false;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint;
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        Rect rect = this.m;
        copyBounds(rect);
        if (rect.width() > 0 && rect.height() > 0) {
            ColorFilter colorFilter = this.h;
            if (colorFilter == null) {
                colorFilter = this.g;
            }
            Matrix matrix = this.l;
            canvas.getMatrix(matrix);
            float[] fArr = this.k;
            matrix.getValues(fArr);
            float abs = Math.abs(fArr[0]);
            float abs2 = Math.abs(fArr[4]);
            float abs3 = Math.abs(fArr[1]);
            float abs4 = Math.abs(fArr[3]);
            if (abs3 != 0.0f || abs4 != 0.0f) {
                abs = 1.0f;
                abs2 = 1.0f;
            }
            int width = (int) (rect.width() * abs);
            int min = Math.min(2048, width);
            int min2 = Math.min(2048, (int) (rect.height() * abs2));
            if (min > 0 && min2 > 0) {
                int save = canvas.save();
                canvas.translate(rect.left, rect.top);
                if (isAutoMirrored() && getLayoutDirection() == 1) {
                    canvas.translate(rect.width(), 0.0f);
                    canvas.scale(-1.0f, 1.0f);
                }
                rect.offsetTo(0, 0);
                VectorDrawableCompatState vectorDrawableCompatState = this.f;
                Bitmap bitmap = vectorDrawableCompatState.f;
                if (bitmap == null || min != bitmap.getWidth() || min2 != vectorDrawableCompatState.f.getHeight()) {
                    vectorDrawableCompatState.f = Bitmap.createBitmap(min, min2, Bitmap.Config.ARGB_8888);
                    vectorDrawableCompatState.k = true;
                }
                if (!this.j) {
                    VectorDrawableCompatState vectorDrawableCompatState2 = this.f;
                    vectorDrawableCompatState2.f.eraseColor(0);
                    Canvas canvas2 = new Canvas(vectorDrawableCompatState2.f);
                    VPathRenderer vPathRenderer = vectorDrawableCompatState2.b;
                    vPathRenderer.a(vPathRenderer.g, VPathRenderer.p, canvas2, min, min2);
                } else {
                    VectorDrawableCompatState vectorDrawableCompatState3 = this.f;
                    if (vectorDrawableCompatState3.k || vectorDrawableCompatState3.g != vectorDrawableCompatState3.f1748c || vectorDrawableCompatState3.h != vectorDrawableCompatState3.d || vectorDrawableCompatState3.j != vectorDrawableCompatState3.e || vectorDrawableCompatState3.i != vectorDrawableCompatState3.b.getRootAlpha()) {
                        VectorDrawableCompatState vectorDrawableCompatState4 = this.f;
                        vectorDrawableCompatState4.f.eraseColor(0);
                        Canvas canvas3 = new Canvas(vectorDrawableCompatState4.f);
                        VPathRenderer vPathRenderer2 = vectorDrawableCompatState4.b;
                        vPathRenderer2.a(vPathRenderer2.g, VPathRenderer.p, canvas3, min, min2);
                        VectorDrawableCompatState vectorDrawableCompatState5 = this.f;
                        vectorDrawableCompatState5.g = vectorDrawableCompatState5.f1748c;
                        vectorDrawableCompatState5.h = vectorDrawableCompatState5.d;
                        vectorDrawableCompatState5.i = vectorDrawableCompatState5.b.getRootAlpha();
                        vectorDrawableCompatState5.j = vectorDrawableCompatState5.e;
                        vectorDrawableCompatState5.k = false;
                    }
                }
                VectorDrawableCompatState vectorDrawableCompatState6 = this.f;
                if (vectorDrawableCompatState6.b.getRootAlpha() >= 255 && colorFilter == null) {
                    paint = null;
                } else {
                    if (vectorDrawableCompatState6.l == null) {
                        Paint paint2 = new Paint();
                        vectorDrawableCompatState6.l = paint2;
                        paint2.setFilterBitmap(true);
                    }
                    vectorDrawableCompatState6.l.setAlpha(vectorDrawableCompatState6.b.getRootAlpha());
                    vectorDrawableCompatState6.l.setColorFilter(colorFilter);
                    paint = vectorDrawableCompatState6.l;
                }
                canvas.drawBitmap(vectorDrawableCompatState6.f, (Rect) null, rect, paint);
                canvas.restoreToCount(save);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.getAlpha();
        }
        return this.f.b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.f.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.getColorFilter();
        }
        return this.h;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f1740c != null && Build.VERSION.SDK_INT >= 24) {
            return new VectorDrawableDelegateState(this.f1740c.getConstantState());
        }
        this.f.f1747a = getChangingConfigurations();
        return this.f;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return (int) this.f.b.i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return (int) this.f.b.h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.isAutoMirrored();
        }
        return this.f.e;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (!super.isStateful()) {
            VectorDrawableCompatState vectorDrawableCompatState = this.f;
            if (vectorDrawableCompatState != null) {
                VPathRenderer vPathRenderer = vectorDrawableCompatState.b;
                if (vPathRenderer.n == null) {
                    vPathRenderer.n = Boolean.valueOf(vPathRenderer.g.a());
                }
                if (!vPathRenderer.n.booleanValue()) {
                    ColorStateList colorStateList = this.f.f1748c;
                    if (colorStateList == null || !colorStateList.isStateful()) {
                        return false;
                    }
                    return true;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [android.graphics.drawable.Drawable$ConstantState, androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$VectorDrawableCompatState] */
    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.i && super.mutate() == this) {
            VectorDrawableCompatState vectorDrawableCompatState = this.f;
            ?? constantState = new Drawable.ConstantState();
            constantState.f1748c = null;
            constantState.d = n;
            if (vectorDrawableCompatState != null) {
                constantState.f1747a = vectorDrawableCompatState.f1747a;
                VPathRenderer vPathRenderer = new VPathRenderer(vectorDrawableCompatState.b);
                constantState.b = vPathRenderer;
                if (vectorDrawableCompatState.b.e != null) {
                    vPathRenderer.e = new Paint(vectorDrawableCompatState.b.e);
                }
                if (vectorDrawableCompatState.b.d != null) {
                    constantState.b.d = new Paint(vectorDrawableCompatState.b.d);
                }
                constantState.f1748c = vectorDrawableCompatState.f1748c;
                constantState.d = vectorDrawableCompatState.d;
                constantState.e = vectorDrawableCompatState.e;
            }
            this.f = constantState;
            this.i = true;
        }
        return this;
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z;
        PorterDuff.Mode mode;
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.f;
        ColorStateList colorStateList = vectorDrawableCompatState.f1748c;
        if (colorStateList != null && (mode = vectorDrawableCompatState.d) != null) {
            this.g = a(colorStateList, mode);
            invalidateSelf();
            z = true;
        } else {
            z = false;
        }
        VPathRenderer vPathRenderer = vectorDrawableCompatState.b;
        if (vPathRenderer.n == null) {
            vPathRenderer.n = Boolean.valueOf(vPathRenderer.g.a());
        }
        if (vPathRenderer.n.booleanValue()) {
            boolean b = vectorDrawableCompatState.b.g.b(iArr);
            vectorDrawableCompatState.k |= b;
            if (b) {
                invalidateSelf();
                return true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else if (this.f.b.getRootAlpha() != i) {
            this.f.b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.f.e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.h = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            DrawableCompat.a(drawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.f;
        if (vectorDrawableCompatState.f1748c != colorStateList) {
            vectorDrawableCompatState.f1748c = colorStateList;
            this.g = a(colorStateList, vectorDrawableCompatState.d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.setTintMode(mode);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.f;
        if (vectorDrawableCompatState.d != mode) {
            vectorDrawableCompatState.d = mode;
            this.g = a(vectorDrawableCompatState.f1748c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class VectorDrawableDelegateState extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public final Drawable.ConstantState f1749a;

        public VectorDrawableDelegateState(Drawable.ConstantState constantState) {
            this.f1749a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            return this.f1749a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f1749a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f1740c = (VectorDrawable) this.f1749a.newDrawable();
            return vectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f1740c = (VectorDrawable) this.f1749a.newDrawable(resources);
            return vectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f1740c = (VectorDrawable) this.f1749a.newDrawable(resources, theme);
            return vectorDrawableCompat;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class VPath extends VObject {

        /* renamed from: a, reason: collision with root package name */
        public PathParser.PathDataNode[] f1743a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public int f1744c;

        public VPath() {
            this.f1743a = null;
            this.f1744c = 0;
        }

        public PathParser.PathDataNode[] getPathData() {
            return this.f1743a;
        }

        public String getPathName() {
            return this.b;
        }

        public void setPathData(PathParser.PathDataNode[] pathDataNodeArr) {
            if (!PathParser.a(this.f1743a, pathDataNodeArr)) {
                this.f1743a = PathParser.e(pathDataNodeArr);
                return;
            }
            PathParser.PathDataNode[] pathDataNodeArr2 = this.f1743a;
            for (int i = 0; i < pathDataNodeArr.length; i++) {
                pathDataNodeArr2[i].f685a = pathDataNodeArr[i].f685a;
                int i2 = 0;
                while (true) {
                    float[] fArr = pathDataNodeArr[i].b;
                    if (i2 < fArr.length) {
                        pathDataNodeArr2[i].b[i2] = fArr[i2];
                        i2++;
                    }
                }
            }
        }

        public VPath(VPath vPath) {
            this.f1743a = null;
            this.f1744c = 0;
            this.b = vPath.b;
            this.f1743a = PathParser.e(vPath.f1743a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v13, types: [java.lang.Object, androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$VPath, androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$VFullPath] */
    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int i;
        char c2;
        int i2;
        Paint.Cap cap;
        Paint.Join join;
        Drawable drawable = this.f1740c;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.f;
        vectorDrawableCompatState.b = new VPathRenderer();
        TypedArray d = TypedArrayUtils.d(resources, theme, attributeSet, AndroidResources.f1729a);
        VectorDrawableCompatState vectorDrawableCompatState2 = this.f;
        VPathRenderer vPathRenderer = vectorDrawableCompatState2.b;
        int i3 = !TypedArrayUtils.c(xmlPullParser, "tintMode") ? -1 : d.getInt(6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        if (i3 == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (i3 != 5) {
            if (i3 != 9) {
                switch (i3) {
                    case 14:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case 15:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        vectorDrawableCompatState2.d = mode;
        ColorStateList colorStateList = null;
        int i4 = 1;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "tint") != null) {
            TypedValue typedValue = new TypedValue();
            d.getValue(1, typedValue);
            int i5 = typedValue.type;
            if (i5 == 2) {
                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: " + typedValue);
            }
            if (i5 >= 28 && i5 <= 31) {
                colorStateList = ColorStateList.valueOf(typedValue.data);
            } else {
                Resources resources2 = d.getResources();
                int resourceId = d.getResourceId(1, 0);
                ThreadLocal threadLocal = ColorStateListInflaterCompat.f659a;
                try {
                    colorStateList = ColorStateListInflaterCompat.a(resources2, resources2.getXml(resourceId), theme);
                } catch (Exception e) {
                    Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
                }
            }
        }
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList2 != null) {
            vectorDrawableCompatState2.f1748c = colorStateList2;
        }
        boolean z = vectorDrawableCompatState2.e;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "autoMirrored") != null) {
            z = d.getBoolean(5, z);
        }
        vectorDrawableCompatState2.e = z;
        float f = vPathRenderer.j;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "viewportWidth") != null) {
            f = d.getFloat(7, f);
        }
        vPathRenderer.j = f;
        float f2 = vPathRenderer.k;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "viewportHeight") != null) {
            f2 = d.getFloat(8, f2);
        }
        vPathRenderer.k = f2;
        if (vPathRenderer.j <= 0.0f) {
            throw new XmlPullParserException(d.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f2 > 0.0f) {
            vPathRenderer.h = d.getDimension(3, vPathRenderer.h);
            float dimension = d.getDimension(2, vPathRenderer.i);
            vPathRenderer.i = dimension;
            if (vPathRenderer.h <= 0.0f) {
                throw new XmlPullParserException(d.getPositionDescription() + "<vector> tag requires width > 0");
            }
            if (dimension > 0.0f) {
                float alpha = vPathRenderer.getAlpha();
                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "alpha") != null) {
                    alpha = d.getFloat(4, alpha);
                }
                vPathRenderer.setAlpha(alpha);
                String string = d.getString(0);
                if (string != null) {
                    vPathRenderer.m = string;
                    vPathRenderer.o.put(string, vPathRenderer);
                }
                d.recycle();
                vectorDrawableCompatState.f1747a = getChangingConfigurations();
                vectorDrawableCompatState.k = true;
                VectorDrawableCompatState vectorDrawableCompatState3 = this.f;
                VPathRenderer vPathRenderer2 = vectorDrawableCompatState3.b;
                ArrayDeque arrayDeque = new ArrayDeque();
                VGroup vGroup = vPathRenderer2.g;
                ArrayMap arrayMap = vPathRenderer2.o;
                arrayDeque.push(vGroup);
                int eventType = xmlPullParser.getEventType();
                int depth = xmlPullParser.getDepth() + 1;
                boolean z2 = true;
                while (eventType != i4 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
                    if (eventType == 2) {
                        String name = xmlPullParser.getName();
                        VGroup vGroup2 = (VGroup) arrayDeque.peek();
                        i = depth;
                        if ("path".equals(name)) {
                            ?? vPath = new VPath();
                            vPath.e = 0.0f;
                            vPath.g = 1.0f;
                            vPath.h = 1.0f;
                            vPath.i = 0.0f;
                            vPath.j = 1.0f;
                            vPath.k = 0.0f;
                            Paint.Cap cap2 = Paint.Cap.BUTT;
                            vPath.l = cap2;
                            Paint.Join join2 = Paint.Join.MITER;
                            vPath.m = join2;
                            vPath.n = 4.0f;
                            TypedArray d2 = TypedArrayUtils.d(resources, theme, attributeSet, AndroidResources.f1730c);
                            if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") != null) {
                                String string2 = d2.getString(0);
                                if (string2 != null) {
                                    vPath.b = string2;
                                }
                                String string3 = d2.getString(2);
                                if (string3 != null) {
                                    vPath.f1743a = PathParser.c(string3);
                                }
                                vPath.f = TypedArrayUtils.a(d2, xmlPullParser, theme, "fillColor", 1);
                                float f3 = vPath.h;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "fillAlpha") != null) {
                                    f3 = d2.getFloat(12, f3);
                                }
                                vPath.h = f3;
                                int i6 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeLineCap") != null ? d2.getInt(8, -1) : -1;
                                Paint.Cap cap3 = vPath.l;
                                if (i6 == 0) {
                                    cap = cap2;
                                } else if (i6 != 1) {
                                    cap = i6 != 2 ? cap3 : Paint.Cap.SQUARE;
                                } else {
                                    cap = Paint.Cap.ROUND;
                                }
                                vPath.l = cap;
                                int i7 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeLineJoin") != null ? d2.getInt(9, -1) : -1;
                                Paint.Join join3 = vPath.m;
                                if (i7 == 0) {
                                    join = join2;
                                } else if (i7 != 1) {
                                    join = i7 != 2 ? join3 : Paint.Join.BEVEL;
                                } else {
                                    join = Paint.Join.ROUND;
                                }
                                vPath.m = join;
                                float f4 = vPath.n;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeMiterLimit") != null) {
                                    f4 = d2.getFloat(10, f4);
                                }
                                vPath.n = f4;
                                vPath.d = TypedArrayUtils.a(d2, xmlPullParser, theme, "strokeColor", 3);
                                float f5 = vPath.g;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeAlpha") != null) {
                                    f5 = d2.getFloat(11, f5);
                                }
                                vPath.g = f5;
                                float f6 = vPath.e;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeWidth") != null) {
                                    f6 = d2.getFloat(4, f6);
                                }
                                vPath.e = f6;
                                float f7 = vPath.j;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathEnd") != null) {
                                    f7 = d2.getFloat(6, f7);
                                }
                                vPath.j = f7;
                                float f8 = vPath.k;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathOffset") != null) {
                                    f8 = d2.getFloat(7, f8);
                                }
                                vPath.k = f8;
                                float f9 = vPath.i;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathStart") != null) {
                                    f9 = d2.getFloat(5, f9);
                                }
                                vPath.i = f9;
                                int i8 = vPath.f1744c;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "fillType") != null) {
                                    i8 = d2.getInt(13, i8);
                                }
                                vPath.f1744c = i8;
                            }
                            d2.recycle();
                            vGroup2.b.add(vPath);
                            if (vPath.getPathName() != null) {
                                arrayMap.put(vPath.getPathName(), vPath);
                            }
                            vectorDrawableCompatState3.f1747a = vectorDrawableCompatState3.f1747a;
                            z2 = false;
                            c2 = '\b';
                        } else {
                            c2 = '\b';
                            if ("clip-path".equals(name)) {
                                VPath vPath2 = new VPath();
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") != null) {
                                    TypedArray d3 = TypedArrayUtils.d(resources, theme, attributeSet, AndroidResources.d);
                                    String string4 = d3.getString(0);
                                    if (string4 != null) {
                                        vPath2.b = string4;
                                    }
                                    String string5 = d3.getString(1);
                                    if (string5 != null) {
                                        vPath2.f1743a = PathParser.c(string5);
                                    }
                                    vPath2.f1744c = !TypedArrayUtils.c(xmlPullParser, "fillType") ? 0 : d3.getInt(2, 0);
                                    d3.recycle();
                                }
                                vGroup2.b.add(vPath2);
                                if (vPath2.getPathName() != null) {
                                    arrayMap.put(vPath2.getPathName(), vPath2);
                                }
                                vectorDrawableCompatState3.f1747a = vectorDrawableCompatState3.f1747a;
                            } else if ("group".equals(name)) {
                                VGroup vGroup3 = new VGroup();
                                TypedArray d4 = TypedArrayUtils.d(resources, theme, attributeSet, AndroidResources.b);
                                float f10 = vGroup3.f1742c;
                                if (TypedArrayUtils.c(xmlPullParser, "rotation")) {
                                    f10 = d4.getFloat(5, f10);
                                }
                                vGroup3.f1742c = f10;
                                vGroup3.d = d4.getFloat(1, vGroup3.d);
                                vGroup3.e = d4.getFloat(2, vGroup3.e);
                                float f11 = vGroup3.f;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "scaleX") != null) {
                                    f11 = d4.getFloat(3, f11);
                                }
                                vGroup3.f = f11;
                                float f12 = vGroup3.g;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "scaleY") != null) {
                                    f12 = d4.getFloat(4, f12);
                                }
                                vGroup3.g = f12;
                                float f13 = vGroup3.h;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "translateX") != null) {
                                    f13 = d4.getFloat(6, f13);
                                }
                                vGroup3.h = f13;
                                float f14 = vGroup3.i;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "translateY") != null) {
                                    f14 = d4.getFloat(7, f14);
                                }
                                vGroup3.i = f14;
                                String string6 = d4.getString(0);
                                if (string6 != null) {
                                    vGroup3.k = string6;
                                }
                                vGroup3.c();
                                d4.recycle();
                                vGroup2.b.add(vGroup3);
                                arrayDeque.push(vGroup3);
                                if (vGroup3.getGroupName() != null) {
                                    arrayMap.put(vGroup3.getGroupName(), vGroup3);
                                }
                                vectorDrawableCompatState3.f1747a = vectorDrawableCompatState3.f1747a;
                            }
                        }
                        i2 = 1;
                    } else {
                        i = depth;
                        c2 = '\b';
                        i2 = 1;
                        if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                            arrayDeque.pop();
                        }
                    }
                    eventType = xmlPullParser.next();
                    i4 = i2;
                    depth = i;
                }
                if (!z2) {
                    this.g = a(vectorDrawableCompatState.f1748c, vectorDrawableCompatState.d);
                    return;
                }
                throw new XmlPullParserException("no path defined");
            }
            throw new XmlPullParserException(d.getPositionDescription() + "<vector> tag requires height > 0");
        }
        throw new XmlPullParserException(d.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
    }

    /* loaded from: classes.dex */
    public static class VGroup extends VObject {

        /* renamed from: a, reason: collision with root package name */
        public final Matrix f1741a;
        public final ArrayList b;

        /* renamed from: c, reason: collision with root package name */
        public float f1742c;
        public float d;
        public float e;
        public float f;
        public float g;
        public float h;
        public float i;
        public final Matrix j;
        public String k;

        public VGroup() {
            this.f1741a = new Matrix();
            this.b = new ArrayList();
            this.f1742c = 0.0f;
            this.d = 0.0f;
            this.e = 0.0f;
            this.f = 1.0f;
            this.g = 1.0f;
            this.h = 0.0f;
            this.i = 0.0f;
            this.j = new Matrix();
            this.k = null;
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public final boolean a() {
            int i = 0;
            while (true) {
                ArrayList arrayList = this.b;
                if (i >= arrayList.size()) {
                    return false;
                }
                if (((VObject) arrayList.get(i)).a()) {
                    return true;
                }
                i++;
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public final boolean b(int[] iArr) {
            int i = 0;
            boolean z = false;
            while (true) {
                ArrayList arrayList = this.b;
                if (i < arrayList.size()) {
                    z |= ((VObject) arrayList.get(i)).b(iArr);
                    i++;
                } else {
                    return z;
                }
            }
        }

        public final void c() {
            Matrix matrix = this.j;
            matrix.reset();
            matrix.postTranslate(-this.d, -this.e);
            matrix.postScale(this.f, this.g);
            matrix.postRotate(this.f1742c, 0.0f, 0.0f);
            matrix.postTranslate(this.h + this.d, this.i + this.e);
        }

        public String getGroupName() {
            return this.k;
        }

        public Matrix getLocalMatrix() {
            return this.j;
        }

        public float getPivotX() {
            return this.d;
        }

        public float getPivotY() {
            return this.e;
        }

        public float getRotation() {
            return this.f1742c;
        }

        public float getScaleX() {
            return this.f;
        }

        public float getScaleY() {
            return this.g;
        }

        public float getTranslateX() {
            return this.h;
        }

        public float getTranslateY() {
            return this.i;
        }

        public void setPivotX(float f) {
            if (f != this.d) {
                this.d = f;
                c();
            }
        }

        public void setPivotY(float f) {
            if (f != this.e) {
                this.e = f;
                c();
            }
        }

        public void setRotation(float f) {
            if (f != this.f1742c) {
                this.f1742c = f;
                c();
            }
        }

        public void setScaleX(float f) {
            if (f != this.f) {
                this.f = f;
                c();
            }
        }

        public void setScaleY(float f) {
            if (f != this.g) {
                this.g = f;
                c();
            }
        }

        public void setTranslateX(float f) {
            if (f != this.h) {
                this.h = f;
                c();
            }
        }

        public void setTranslateY(float f) {
            if (f != this.i) {
                this.i = f;
                c();
            }
        }

        /* JADX WARN: Type inference failed for: r4v5, types: [androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$VPath, androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$VFullPath] */
        public VGroup(VGroup vGroup, ArrayMap arrayMap) {
            VPath vPath;
            this.f1741a = new Matrix();
            this.b = new ArrayList();
            this.f1742c = 0.0f;
            this.d = 0.0f;
            this.e = 0.0f;
            this.f = 1.0f;
            this.g = 1.0f;
            this.h = 0.0f;
            this.i = 0.0f;
            Matrix matrix = new Matrix();
            this.j = matrix;
            this.k = null;
            this.f1742c = vGroup.f1742c;
            this.d = vGroup.d;
            this.e = vGroup.e;
            this.f = vGroup.f;
            this.g = vGroup.g;
            this.h = vGroup.h;
            this.i = vGroup.i;
            String str = vGroup.k;
            this.k = str;
            if (str != null) {
                arrayMap.put(str, this);
            }
            matrix.set(vGroup.j);
            ArrayList arrayList = vGroup.b;
            for (int i = 0; i < arrayList.size(); i++) {
                Object obj = arrayList.get(i);
                if (obj instanceof VGroup) {
                    this.b.add(new VGroup((VGroup) obj, arrayMap));
                } else {
                    if (obj instanceof VFullPath) {
                        VFullPath vFullPath = (VFullPath) obj;
                        ?? vPath2 = new VPath(vFullPath);
                        vPath2.e = 0.0f;
                        vPath2.g = 1.0f;
                        vPath2.h = 1.0f;
                        vPath2.i = 0.0f;
                        vPath2.j = 1.0f;
                        vPath2.k = 0.0f;
                        vPath2.l = Paint.Cap.BUTT;
                        vPath2.m = Paint.Join.MITER;
                        vPath2.n = 4.0f;
                        vPath2.d = vFullPath.d;
                        vPath2.e = vFullPath.e;
                        vPath2.g = vFullPath.g;
                        vPath2.f = vFullPath.f;
                        vPath2.f1744c = vFullPath.f1744c;
                        vPath2.h = vFullPath.h;
                        vPath2.i = vFullPath.i;
                        vPath2.j = vFullPath.j;
                        vPath2.k = vFullPath.k;
                        vPath2.l = vFullPath.l;
                        vPath2.m = vFullPath.m;
                        vPath2.n = vFullPath.n;
                        vPath = vPath2;
                    } else if (obj instanceof VClipPath) {
                        vPath = new VPath((VClipPath) obj);
                    } else {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    this.b.add(vPath);
                    Object obj2 = vPath.b;
                    if (obj2 != null) {
                        arrayMap.put(obj2, vPath);
                    }
                }
            }
        }
    }

    public VectorDrawableCompat(VectorDrawableCompatState vectorDrawableCompatState) {
        this.j = true;
        this.k = new float[9];
        this.l = new Matrix();
        this.m = new Rect();
        this.f = vectorDrawableCompatState;
        this.g = a(vectorDrawableCompatState.f1748c, vectorDrawableCompatState.d);
    }

    /* loaded from: classes.dex */
    public static class VPathRenderer {
        public static final Matrix p = new Matrix();

        /* renamed from: a, reason: collision with root package name */
        public final Path f1745a;
        public final Path b;

        /* renamed from: c, reason: collision with root package name */
        public final Matrix f1746c;
        public Paint d;
        public Paint e;
        public PathMeasure f;
        public final VGroup g;
        public float h;
        public float i;
        public float j;
        public float k;
        public int l;
        public String m;
        public Boolean n;
        public final ArrayMap o;

        /* JADX WARN: Type inference failed for: r0v4, types: [androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
        public VPathRenderer() {
            this.f1746c = new Matrix();
            this.h = 0.0f;
            this.i = 0.0f;
            this.j = 0.0f;
            this.k = 0.0f;
            this.l = KotlinVersion.MAX_COMPONENT_VALUE;
            this.m = null;
            this.n = null;
            this.o = new SimpleArrayMap(0);
            this.g = new VGroup();
            this.f1745a = new Path();
            this.b = new Path();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(VGroup vGroup, Matrix matrix, Canvas canvas, int i, int i2) {
            int i3;
            float f;
            float f2;
            int i4;
            float f3;
            Path.FillType fillType;
            Path.FillType fillType2;
            Matrix matrix2 = vGroup.f1741a;
            ArrayList arrayList = vGroup.b;
            matrix2.set(matrix);
            Matrix matrix3 = vGroup.f1741a;
            matrix3.preConcat(vGroup.j);
            canvas.save();
            char c2 = 0;
            int i5 = 0;
            while (i5 < arrayList.size()) {
                VObject vObject = (VObject) arrayList.get(i5);
                if (vObject instanceof VGroup) {
                    a((VGroup) vObject, matrix3, canvas, i, i2);
                } else if (vObject instanceof VPath) {
                    VPath vPath = (VPath) vObject;
                    float f4 = i / this.j;
                    float f5 = i2 / this.k;
                    float min = Math.min(f4, f5);
                    Matrix matrix4 = this.f1746c;
                    matrix4.set(matrix3);
                    matrix4.postScale(f4, f5);
                    float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                    matrix3.mapVectors(fArr);
                    float hypot = (float) Math.hypot(fArr[c2], fArr[1]);
                    boolean z = c2;
                    i3 = i5;
                    float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                    float f6 = (fArr[z ? 1 : 0] * fArr[3]) - (fArr[1] * fArr[2]);
                    float max = Math.max(hypot, hypot2);
                    if (max > 0.0f) {
                        f = Math.abs(f6) / max;
                    } else {
                        f = 0.0f;
                    }
                    if (f != 0.0f) {
                        Path path = this.f1745a;
                        path.reset();
                        PathParser.PathDataNode[] pathDataNodeArr = vPath.f1743a;
                        if (pathDataNodeArr != null) {
                            PathParser.PathDataNode.b(pathDataNodeArr, path);
                        }
                        Path path2 = this.b;
                        path2.reset();
                        if (vPath instanceof VClipPath) {
                            if (vPath.f1744c == 0) {
                                fillType2 = Path.FillType.WINDING;
                            } else {
                                fillType2 = Path.FillType.EVEN_ODD;
                            }
                            path2.setFillType(fillType2);
                            path2.addPath(path, matrix4);
                            canvas.clipPath(path2);
                        } else {
                            VFullPath vFullPath = (VFullPath) vPath;
                            float f7 = vFullPath.i;
                            if (f7 != 0.0f || vFullPath.j != 1.0f) {
                                float f8 = vFullPath.k;
                                float f9 = (f7 + f8) % 1.0f;
                                float f10 = (vFullPath.j + f8) % 1.0f;
                                if (this.f == null) {
                                    this.f = new PathMeasure();
                                }
                                this.f.setPath(path, z);
                                float length = this.f.getLength();
                                float f11 = f9 * length;
                                float f12 = f10 * length;
                                path.reset();
                                if (f11 > f12) {
                                    this.f.getSegment(f11, length, path, true);
                                    f2 = 0.0f;
                                    this.f.getSegment(0.0f, f12, path, true);
                                } else {
                                    f2 = 0.0f;
                                    this.f.getSegment(f11, f12, path, true);
                                }
                                path.rLineTo(f2, f2);
                            }
                            path2.addPath(path, matrix4);
                            ComplexColorCompat complexColorCompat = vFullPath.f;
                            if (complexColorCompat.f660a != null || complexColorCompat.f661c != 0) {
                                if (this.e == null) {
                                    i4 = 16777215;
                                    Paint paint = new Paint(1);
                                    this.e = paint;
                                    paint.setStyle(Paint.Style.FILL);
                                } else {
                                    i4 = 16777215;
                                }
                                Paint paint2 = this.e;
                                Shader shader = complexColorCompat.f660a;
                                if (shader != null) {
                                    shader.setLocalMatrix(matrix4);
                                    paint2.setShader(shader);
                                    paint2.setAlpha(Math.round(vFullPath.h * 255.0f));
                                    f3 = 255.0f;
                                } else {
                                    paint2.setShader(null);
                                    paint2.setAlpha(KotlinVersion.MAX_COMPONENT_VALUE);
                                    int i6 = complexColorCompat.f661c;
                                    float f13 = vFullPath.h;
                                    PorterDuff.Mode mode = VectorDrawableCompat.n;
                                    f3 = 255.0f;
                                    paint2.setColor((i6 & i4) | (((int) (Color.alpha(i6) * f13)) << 24));
                                }
                                paint2.setColorFilter(null);
                                if (vFullPath.f1744c == 0) {
                                    fillType = Path.FillType.WINDING;
                                } else {
                                    fillType = Path.FillType.EVEN_ODD;
                                }
                                path2.setFillType(fillType);
                                canvas.drawPath(path2, paint2);
                            } else {
                                f3 = 255.0f;
                                i4 = 16777215;
                            }
                            ComplexColorCompat complexColorCompat2 = vFullPath.d;
                            if (complexColorCompat2.f660a != null || complexColorCompat2.f661c != 0) {
                                if (this.d == null) {
                                    Paint paint3 = new Paint(1);
                                    this.d = paint3;
                                    paint3.setStyle(Paint.Style.STROKE);
                                }
                                Paint paint4 = this.d;
                                Paint.Join join = vFullPath.m;
                                if (join != null) {
                                    paint4.setStrokeJoin(join);
                                }
                                Paint.Cap cap = vFullPath.l;
                                if (cap != null) {
                                    paint4.setStrokeCap(cap);
                                }
                                paint4.setStrokeMiter(vFullPath.n);
                                Shader shader2 = complexColorCompat2.f660a;
                                if (shader2 != null) {
                                    shader2.setLocalMatrix(matrix4);
                                    paint4.setShader(shader2);
                                    paint4.setAlpha(Math.round(vFullPath.g * f3));
                                } else {
                                    paint4.setShader(null);
                                    paint4.setAlpha(KotlinVersion.MAX_COMPONENT_VALUE);
                                    int i7 = complexColorCompat2.f661c;
                                    float f14 = vFullPath.g;
                                    PorterDuff.Mode mode2 = VectorDrawableCompat.n;
                                    paint4.setColor((i7 & i4) | (((int) (Color.alpha(i7) * f14)) << 24));
                                }
                                paint4.setColorFilter(null);
                                paint4.setStrokeWidth(vFullPath.e * min * f);
                                canvas.drawPath(path2, paint4);
                            }
                        }
                    }
                    i5 = i3 + 1;
                    c2 = 0;
                }
                i3 = i5;
                i5 = i3 + 1;
                c2 = 0;
            }
            canvas.restore();
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.l;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public void setRootAlpha(int i) {
            this.l = i;
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
        public VPathRenderer(VPathRenderer vPathRenderer) {
            this.f1746c = new Matrix();
            this.h = 0.0f;
            this.i = 0.0f;
            this.j = 0.0f;
            this.k = 0.0f;
            this.l = KotlinVersion.MAX_COMPONENT_VALUE;
            this.m = null;
            this.n = null;
            ?? simpleArrayMap = new SimpleArrayMap(0);
            this.o = simpleArrayMap;
            this.g = new VGroup(vPathRenderer.g, simpleArrayMap);
            this.f1745a = new Path(vPathRenderer.f1745a);
            this.b = new Path(vPathRenderer.b);
            this.h = vPathRenderer.h;
            this.i = vPathRenderer.i;
            this.j = vPathRenderer.j;
            this.k = vPathRenderer.k;
            this.l = vPathRenderer.l;
            this.m = vPathRenderer.m;
            String str = vPathRenderer.m;
            if (str != null) {
                simpleArrayMap.put(str, this);
            }
            this.n = vPathRenderer.n;
        }
    }
}
