package androidx.appcompat.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import androidx.annotation.RequiresApi;
import androidx.appcompat.graphics.drawable.StateListDrawableCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import kotlin.KotlinVersion;

/* loaded from: classes.dex */
public class DrawableContainerCompat extends Drawable implements Drawable.Callback {
    public static final /* synthetic */ int q = 0;

    /* renamed from: c, reason: collision with root package name */
    public DrawableContainerState f135c;
    public Rect f;
    public Drawable g;
    public Drawable h;
    public boolean j;
    public boolean l;
    public Runnable m;
    public long n;
    public long o;
    public BlockInvalidateCallback p;
    public int i = KotlinVersion.MAX_COMPONENT_VALUE;
    public int k = -1;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
    }

    /* loaded from: classes.dex */
    public static class BlockInvalidateCallback implements Drawable.Callback {

        /* renamed from: c, reason: collision with root package name */
        public Drawable.Callback f137c;

        @Override // android.graphics.drawable.Drawable.Callback
        public final void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f137c;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f137c;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class DrawableContainerState extends Drawable.ConstantState {
        public int A;
        public boolean B;
        public ColorFilter C;
        public boolean D;
        public ColorStateList E;
        public PorterDuff.Mode F;
        public boolean G;
        public boolean H;

        /* renamed from: a, reason: collision with root package name */
        public final StateListDrawableCompat f138a;
        public Resources b;

        /* renamed from: c, reason: collision with root package name */
        public int f139c;
        public int d;
        public int e;
        public SparseArray f;
        public Drawable[] g;
        public int h;
        public boolean i;
        public boolean j;
        public Rect k;
        public boolean l;
        public boolean m;
        public int n;
        public int o;
        public int p;
        public int q;
        public boolean r;
        public int s;
        public boolean t;
        public boolean u;
        public boolean v;
        public boolean w;
        public boolean x;
        public int y;
        public int z;

        public DrawableContainerState(StateListDrawableCompat.StateListState stateListState, StateListDrawableCompat stateListDrawableCompat, Resources resources) {
            Resources resources2;
            int i;
            this.i = false;
            this.l = false;
            this.x = true;
            this.z = 0;
            this.A = 0;
            this.f138a = stateListDrawableCompat;
            if (resources != null) {
                resources2 = resources;
            } else if (stateListState != null) {
                resources2 = stateListState.b;
            } else {
                resources2 = null;
            }
            this.b = resources2;
            if (stateListState != null) {
                i = stateListState.f139c;
            } else {
                i = 0;
            }
            int i2 = DrawableContainerCompat.q;
            i = resources != null ? resources.getDisplayMetrics().densityDpi : i;
            i = i == 0 ? 160 : i;
            this.f139c = i;
            if (stateListState != null) {
                this.d = stateListState.d;
                this.e = stateListState.e;
                this.v = true;
                this.w = true;
                this.i = stateListState.i;
                this.l = stateListState.l;
                this.x = stateListState.x;
                this.y = stateListState.y;
                this.z = stateListState.z;
                this.A = stateListState.A;
                this.B = stateListState.B;
                this.C = stateListState.C;
                this.D = stateListState.D;
                this.E = stateListState.E;
                this.F = stateListState.F;
                this.G = stateListState.G;
                this.H = stateListState.H;
                if (stateListState.f139c == i) {
                    if (stateListState.j) {
                        this.k = stateListState.k != null ? new Rect(stateListState.k) : null;
                        this.j = true;
                    }
                    if (stateListState.m) {
                        this.n = stateListState.n;
                        this.o = stateListState.o;
                        this.p = stateListState.p;
                        this.q = stateListState.q;
                        this.m = true;
                    }
                }
                if (stateListState.r) {
                    this.s = stateListState.s;
                    this.r = true;
                }
                if (stateListState.t) {
                    this.u = stateListState.u;
                    this.t = true;
                }
                Drawable[] drawableArr = stateListState.g;
                this.g = new Drawable[drawableArr.length];
                this.h = stateListState.h;
                SparseArray sparseArray = stateListState.f;
                if (sparseArray != null) {
                    this.f = sparseArray.clone();
                } else {
                    this.f = new SparseArray(this.h);
                }
                int i3 = this.h;
                for (int i4 = 0; i4 < i3; i4++) {
                    Drawable drawable = drawableArr[i4];
                    if (drawable != null) {
                        Drawable.ConstantState constantState = drawable.getConstantState();
                        if (constantState != null) {
                            this.f.put(i4, constantState);
                        } else {
                            this.g[i4] = drawableArr[i4];
                        }
                    }
                }
                return;
            }
            this.g = new Drawable[10];
            this.h = 0;
        }

        public final int a(Drawable drawable) {
            int i = this.h;
            if (i >= this.g.length) {
                e(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f138a);
            this.g[i] = drawable;
            this.h++;
            this.e = drawable.getChangingConfigurations() | this.e;
            this.r = false;
            this.t = false;
            this.k = null;
            this.j = false;
            this.m = false;
            this.v = false;
            return i;
        }

        public final void b() {
            this.m = true;
            c();
            int i = this.h;
            Drawable[] drawableArr = this.g;
            this.o = -1;
            this.n = -1;
            this.q = 0;
            this.p = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.n) {
                    this.n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.o) {
                    this.o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.p) {
                    this.p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.q) {
                    this.q = minimumHeight;
                }
            }
        }

        public final void c() {
            SparseArray sparseArray = this.f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    int keyAt = this.f.keyAt(i);
                    Drawable.ConstantState constantState = (Drawable.ConstantState) this.f.valueAt(i);
                    Drawable[] drawableArr = this.g;
                    Drawable newDrawable = constantState.newDrawable(this.b);
                    newDrawable.setLayoutDirection(this.y);
                    Drawable mutate = newDrawable.mutate();
                    mutate.setCallback(this.f138a);
                    drawableArr[keyAt] = mutate;
                }
                this.f = null;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            int i = this.h;
            Drawable[] drawableArr = this.g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable != null) {
                    if (drawable.canApplyTheme()) {
                        return true;
                    }
                } else {
                    Drawable.ConstantState constantState = (Drawable.ConstantState) this.f.get(i2);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return true;
                    }
                }
            }
            return false;
        }

        public final Drawable d(int i) {
            int indexOfKey;
            Drawable drawable = this.g[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray sparseArray = this.f;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable newDrawable = ((Drawable.ConstantState) this.f.valueAt(indexOfKey)).newDrawable(this.b);
            newDrawable.setLayoutDirection(this.y);
            Drawable mutate = newDrawable.mutate();
            mutate.setCallback(this.f138a);
            this.g[i] = mutate;
            this.f.removeAt(indexOfKey);
            if (this.f.size() == 0) {
                this.f = null;
            }
            return mutate;
        }

        public void e(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            Drawable[] drawableArr2 = this.g;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i);
            }
            this.g = drawableArr;
        }

        public void f() {
            int i = this.h;
            Drawable[] drawableArr = this.g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable != null) {
                    drawable.mutate();
                }
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.d | this.e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0066 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(boolean r14) {
        /*
            r13 = this;
            r0 = 1
            r13.j = r0
            long r1 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r3 = r13.g
            r4 = 255(0xff, double:1.26E-321)
            r6 = 0
            r8 = 0
            if (r3 == 0) goto L36
            long r9 = r13.n
            int r11 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r11 == 0) goto L38
            int r11 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r11 > 0) goto L22
            int r9 = r13.i
            r3.setAlpha(r9)
            r13.n = r6
            goto L38
        L22:
            long r9 = r9 - r1
            long r9 = r9 * r4
            int r9 = (int) r9
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$DrawableContainerState r10 = r13.f135c
            int r10 = r10.z
            int r9 = r9 / r10
            int r9 = 255 - r9
            int r10 = r13.i
            int r9 = r9 * r10
            int r9 = r9 / 255
            r3.setAlpha(r9)
            r3 = r0
            goto L39
        L36:
            r13.n = r6
        L38:
            r3 = r8
        L39:
            android.graphics.drawable.Drawable r9 = r13.h
            if (r9 == 0) goto L61
            long r10 = r13.o
            int r12 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r12 == 0) goto L63
            int r12 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r12 > 0) goto L50
            r9.setVisible(r8, r8)
            r0 = 0
            r13.h = r0
            r13.o = r6
            goto L63
        L50:
            long r10 = r10 - r1
            long r10 = r10 * r4
            int r3 = (int) r10
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$DrawableContainerState r4 = r13.f135c
            int r4 = r4.A
            int r3 = r3 / r4
            int r4 = r13.i
            int r3 = r3 * r4
            int r3 = r3 / 255
            r9.setAlpha(r3)
            goto L64
        L61:
            r13.o = r6
        L63:
            r0 = r3
        L64:
            if (r14 == 0) goto L70
            if (r0 == 0) goto L70
            java.lang.Runnable r14 = r13.m
            r3 = 16
            long r1 = r1 + r3
            r13.scheduleSelf(r14, r1)
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.DrawableContainerCompat.a(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        DrawableContainerState drawableContainerState = this.f135c;
        if (theme != null) {
            drawableContainerState.c();
            int i = drawableContainerState.h;
            Drawable[] drawableArr = drawableContainerState.g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable != null && drawable.canApplyTheme()) {
                    drawableArr[i2].applyTheme(theme);
                    drawableContainerState.e |= drawableArr[i2].getChangingConfigurations();
                }
            }
            Resources resources = theme.getResources();
            if (resources != null) {
                drawableContainerState.b = resources;
                int i3 = resources.getDisplayMetrics().densityDpi;
                if (i3 == 0) {
                    i3 = 160;
                }
                int i4 = drawableContainerState.f139c;
                drawableContainerState.f139c = i3;
                if (i4 != i3) {
                    drawableContainerState.m = false;
                    drawableContainerState.j = false;
                    return;
                }
                return;
            }
            return;
        }
        drawableContainerState.getClass();
    }

    public DrawableContainerState b() {
        return this.f135c;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.appcompat.graphics.drawable.DrawableContainerCompat$BlockInvalidateCallback, java.lang.Object] */
    public final void c(Drawable drawable) {
        if (this.p == null) {
            this.p = new Object();
        }
        BlockInvalidateCallback blockInvalidateCallback = this.p;
        blockInvalidateCallback.f137c = drawable.getCallback();
        drawable.setCallback(blockInvalidateCallback);
        try {
            if (this.f135c.z <= 0 && this.j) {
                drawable.setAlpha(this.i);
            }
            DrawableContainerState drawableContainerState = this.f135c;
            if (drawableContainerState.D) {
                drawable.setColorFilter(drawableContainerState.C);
            } else {
                if (drawableContainerState.G) {
                    drawable.setTintList(drawableContainerState.E);
                }
                DrawableContainerState drawableContainerState2 = this.f135c;
                if (drawableContainerState2.H) {
                    drawable.setTintMode(drawableContainerState2.F);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f135c.x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            drawable.setLayoutDirection(getLayoutDirection());
            drawable.setAutoMirrored(this.f135c.B);
            Rect rect = this.f;
            if (rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
            BlockInvalidateCallback blockInvalidateCallback2 = this.p;
            Drawable.Callback callback = blockInvalidateCallback2.f137c;
            blockInvalidateCallback2.f137c = null;
            drawable.setCallback(callback);
        } catch (Throwable th) {
            BlockInvalidateCallback blockInvalidateCallback3 = this.p;
            Drawable.Callback callback2 = blockInvalidateCallback3.f137c;
            blockInvalidateCallback3.f137c = null;
            drawable.setCallback(callback2);
            throw th;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        return this.f135c.canApplyTheme();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(int r10) {
        /*
            r9 = this;
            int r0 = r9.k
            r1 = 0
            if (r10 != r0) goto L6
            return r1
        L6:
            long r2 = android.os.SystemClock.uptimeMillis()
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$DrawableContainerState r0 = r9.f135c
            int r0 = r0.A
            r4 = 0
            r5 = 0
            if (r0 <= 0) goto L2e
            android.graphics.drawable.Drawable r0 = r9.h
            if (r0 == 0) goto L1a
            r0.setVisible(r1, r1)
        L1a:
            android.graphics.drawable.Drawable r0 = r9.g
            if (r0 == 0) goto L29
            r9.h = r0
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$DrawableContainerState r0 = r9.f135c
            int r0 = r0.A
            long r0 = (long) r0
            long r0 = r0 + r2
            r9.o = r0
            goto L35
        L29:
            r9.h = r4
            r9.o = r5
            goto L35
        L2e:
            android.graphics.drawable.Drawable r0 = r9.g
            if (r0 == 0) goto L35
            r0.setVisible(r1, r1)
        L35:
            if (r10 < 0) goto L55
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$DrawableContainerState r0 = r9.f135c
            int r1 = r0.h
            if (r10 >= r1) goto L55
            android.graphics.drawable.Drawable r0 = r0.d(r10)
            r9.g = r0
            r9.k = r10
            if (r0 == 0) goto L5a
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$DrawableContainerState r10 = r9.f135c
            int r10 = r10.z
            if (r10 <= 0) goto L51
            long r7 = (long) r10
            long r2 = r2 + r7
            r9.n = r2
        L51:
            r9.c(r0)
            goto L5a
        L55:
            r9.g = r4
            r10 = -1
            r9.k = r10
        L5a:
            long r0 = r9.n
            int r10 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            r0 = 1
            if (r10 != 0) goto L67
            long r1 = r9.o
            int r10 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r10 == 0) goto L7c
        L67:
            java.lang.Runnable r10 = r9.m
            if (r10 != 0) goto L76
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$1 r10 = new androidx.appcompat.graphics.drawable.DrawableContainerCompat$1
            r1 = r9
            androidx.appcompat.graphics.drawable.StateListDrawableCompat r1 = (androidx.appcompat.graphics.drawable.StateListDrawableCompat) r1
            r10.<init>()
            r9.m = r10
            goto L79
        L76:
            r9.unscheduleSelf(r10)
        L79:
            r9.a(r0)
        L7c:
            r9.invalidateSelf()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.DrawableContainerCompat.d(int):boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.g;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.h;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    public void e(DrawableContainerState drawableContainerState) {
        this.f135c = drawableContainerState;
        int i = this.k;
        if (i >= 0) {
            Drawable d = drawableContainerState.d(i);
            this.g = d;
            if (d != null) {
                c(d);
            }
        }
        this.h = null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f135c.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        boolean z;
        DrawableContainerState drawableContainerState = this.f135c;
        if (drawableContainerState.v) {
            z = drawableContainerState.w;
        } else {
            drawableContainerState.c();
            drawableContainerState.v = true;
            int i = drawableContainerState.h;
            Drawable[] drawableArr = drawableContainerState.g;
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    if (drawableArr[i2].getConstantState() == null) {
                        drawableContainerState.w = false;
                        z = false;
                        break;
                    }
                    i2++;
                } else {
                    drawableContainerState.w = true;
                    z = true;
                    break;
                }
            }
        }
        if (z) {
            this.f135c.d = getChangingConfigurations();
            return this.f135c;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable getCurrent() {
        return this.g;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        DrawableContainerState drawableContainerState = this.f135c;
        if (drawableContainerState.l) {
            if (!drawableContainerState.m) {
                drawableContainerState.b();
            }
            return drawableContainerState.o;
        }
        Drawable drawable = this.g;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        DrawableContainerState drawableContainerState = this.f135c;
        if (drawableContainerState.l) {
            if (!drawableContainerState.m) {
                drawableContainerState.b();
            }
            return drawableContainerState.n;
        }
        Drawable drawable = this.g;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        DrawableContainerState drawableContainerState = this.f135c;
        if (drawableContainerState.l) {
            if (!drawableContainerState.m) {
                drawableContainerState.b();
            }
            return drawableContainerState.q;
        }
        Drawable drawable = this.g;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        DrawableContainerState drawableContainerState = this.f135c;
        if (drawableContainerState.l) {
            if (!drawableContainerState.m) {
                drawableContainerState.b();
            }
            return drawableContainerState.p;
        }
        Drawable drawable = this.g;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.g;
        int i = -2;
        if (drawable != null && drawable.isVisible()) {
            DrawableContainerState drawableContainerState = this.f135c;
            if (drawableContainerState.r) {
                return drawableContainerState.s;
            }
            drawableContainerState.c();
            int i2 = drawableContainerState.h;
            Drawable[] drawableArr = drawableContainerState.g;
            if (i2 > 0) {
                i = drawableArr[0].getOpacity();
            }
            for (int i3 = 1; i3 < i2; i3++) {
                i = Drawable.resolveOpacity(i, drawableArr[i3].getOpacity());
            }
            drawableContainerState.s = i;
            drawableContainerState.r = true;
        }
        return i;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Drawable drawable = this.g;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        DrawableContainerState drawableContainerState = this.f135c;
        Rect rect2 = null;
        boolean z = false;
        if (!drawableContainerState.i) {
            Rect rect3 = drawableContainerState.k;
            if (rect3 == null && !drawableContainerState.j) {
                drawableContainerState.c();
                Rect rect4 = new Rect();
                int i = drawableContainerState.h;
                Drawable[] drawableArr = drawableContainerState.g;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2].getPadding(rect4)) {
                        if (rect2 == null) {
                            rect2 = new Rect(0, 0, 0, 0);
                        }
                        int i3 = rect4.left;
                        if (i3 > rect2.left) {
                            rect2.left = i3;
                        }
                        int i4 = rect4.top;
                        if (i4 > rect2.top) {
                            rect2.top = i4;
                        }
                        int i5 = rect4.right;
                        if (i5 > rect2.right) {
                            rect2.right = i5;
                        }
                        int i6 = rect4.bottom;
                        if (i6 > rect2.bottom) {
                            rect2.bottom = i6;
                        }
                    }
                }
                drawableContainerState.j = true;
                drawableContainerState.k = rect2;
            } else {
                rect2 = rect3;
            }
        }
        if (rect2 != null) {
            rect.set(rect2);
            if ((rect2.left | rect2.top | rect2.bottom | rect2.right) != 0) {
                z = true;
            }
        } else {
            Drawable drawable = this.g;
            if (drawable != null) {
                z = drawable.getPadding(rect);
            } else {
                z = super.getPadding(rect);
            }
        }
        if (this.f135c.B && getLayoutDirection() == 1) {
            int i7 = rect.left;
            rect.left = rect.right;
            rect.right = i7;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        DrawableContainerState drawableContainerState = this.f135c;
        if (drawableContainerState != null) {
            drawableContainerState.r = false;
            drawableContainerState.t = false;
        }
        if (drawable == this.g && getCallback() != null) {
            getCallback().invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f135c.B;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        DrawableContainerState drawableContainerState = this.f135c;
        if (drawableContainerState.t) {
            return drawableContainerState.u;
        }
        drawableContainerState.c();
        int i = drawableContainerState.h;
        Drawable[] drawableArr = drawableContainerState.g;
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            if (drawableArr[i2].isStateful()) {
                z = true;
                break;
            }
            i2++;
        }
        drawableContainerState.u = z;
        drawableContainerState.t = true;
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.h;
        boolean z2 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.h = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.j) {
                this.g.setAlpha(this.i);
            }
        }
        if (this.o != 0) {
            this.o = 0L;
            z = true;
        }
        if (this.n != 0) {
            this.n = 0L;
        } else {
            z2 = z;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.l && super.mutate() == this) {
            DrawableContainerState b = b();
            b.f();
            e(b);
            this.l = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.h;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        DrawableContainerState drawableContainerState = this.f135c;
        int i2 = this.k;
        int i3 = drawableContainerState.h;
        Drawable[] drawableArr = drawableContainerState.g;
        boolean z = false;
        for (int i4 = 0; i4 < i3; i4++) {
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                boolean layoutDirection = drawable.setLayoutDirection(i);
                if (i4 == i2) {
                    z = layoutDirection;
                }
            }
        }
        drawableContainerState.y = i;
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        Drawable drawable = this.h;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.h;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable == this.g && getCallback() != null) {
            getCallback().scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (!this.j || this.i != i) {
            this.j = true;
            this.i = i;
            Drawable drawable = this.g;
            if (drawable != null) {
                if (this.n == 0) {
                    drawable.setAlpha(i);
                } else {
                    a(false);
                }
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        DrawableContainerState drawableContainerState = this.f135c;
        if (drawableContainerState.B != z) {
            drawableContainerState.B = z;
            Drawable drawable = this.g;
            if (drawable != null) {
                drawable.setAutoMirrored(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        DrawableContainerState drawableContainerState = this.f135c;
        drawableContainerState.D = true;
        if (drawableContainerState.C != colorFilter) {
            drawableContainerState.C = colorFilter;
            Drawable drawable = this.g;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z) {
        DrawableContainerState drawableContainerState = this.f135c;
        if (drawableContainerState.x != z) {
            drawableContainerState.x = z;
            Drawable drawable = this.g;
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f, float f2) {
        Drawable drawable = this.g;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f;
        if (rect == null) {
            this.f = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.g;
        if (drawable != null) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        DrawableContainerState drawableContainerState = this.f135c;
        drawableContainerState.G = true;
        if (drawableContainerState.E != colorStateList) {
            drawableContainerState.E = colorStateList;
            DrawableCompat.b(this.g, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        DrawableContainerState drawableContainerState = this.f135c;
        drawableContainerState.H = true;
        if (drawableContainerState.F != mode) {
            drawableContainerState.F = mode;
            DrawableCompat.c(this.g, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.h;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable == this.g && getCallback() != null) {
            getCallback().unscheduleDrawable(this, runnable);
        }
    }
}
