package com.google.android.gms.internal.base;

import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import kotlin.KotlinVersion;

/* loaded from: classes.dex */
public final class zah extends Drawable implements Drawable.Callback {

    /* renamed from: c, reason: collision with root package name */
    public int f9598c;
    public long f;
    public int g;
    public int h;
    public int i;
    public int j;
    public final boolean k;
    public boolean l;
    public final zag m;
    public final Drawable n;
    public final Drawable o;
    public boolean p;
    public boolean q;
    public boolean r;
    public int s;

    public zah(Drawable drawable, Drawable drawable2) {
        this(null);
        drawable = drawable == null ? zaf.f9596a : drawable;
        this.n = drawable;
        drawable.setCallback(this);
        zag zagVar = this.m;
        zagVar.b = drawable.getChangingConfigurations() | zagVar.b;
        drawable2 = drawable2 == null ? zaf.f9596a : drawable2;
        this.o = drawable2;
        drawable2.setCallback(this);
        zag zagVar2 = this.m;
        zagVar2.b = drawable2.getChangingConfigurations() | zagVar2.b;
    }

    public final boolean a() {
        if (!this.p) {
            boolean z = false;
            if (this.n.getConstantState() != null && this.o.getConstantState() != null) {
                z = true;
            }
            this.q = z;
            this.p = true;
        }
        return this.q;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x004f, code lost:
    
        if (r0 == 0) goto L22;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(android.graphics.Canvas r8) {
        /*
            r7 = this;
            int r0 = r7.f9598c
            r1 = 2
            r2 = 0
            r3 = 1
            if (r0 == r3) goto L3a
            if (r0 == r1) goto Lb
        L9:
            r4 = r3
            goto L43
        Lb:
            long r0 = r7.f
            r4 = 0
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 < 0) goto L9
            long r0 = android.os.SystemClock.uptimeMillis()
            long r4 = r7.f
            long r0 = r0 - r4
            int r4 = r7.i
            float r4 = (float) r4
            float r0 = (float) r0
            float r0 = r0 / r4
            r1 = 1065353216(0x3f800000, float:1.0)
            int r4 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r4 < 0) goto L27
            r4 = r3
            goto L28
        L27:
            r4 = r2
        L28:
            if (r4 == 0) goto L2c
            r7.f9598c = r2
        L2c:
            float r0 = java.lang.Math.min(r0, r1)
            int r1 = r7.g
            float r1 = (float) r1
            float r1 = r1 * r0
            r0 = 0
            float r1 = r1 + r0
            int r0 = (int) r1
            r7.j = r0
            goto L43
        L3a:
            long r4 = android.os.SystemClock.uptimeMillis()
            r7.f = r4
            r7.f9598c = r1
            r4 = r2
        L43:
            int r0 = r7.j
            boolean r1 = r7.k
            android.graphics.drawable.Drawable r5 = r7.n
            android.graphics.drawable.Drawable r6 = r7.o
            if (r4 == 0) goto L62
            if (r1 == 0) goto L52
            if (r0 != 0) goto L57
            goto L53
        L52:
            r2 = r0
        L53:
            r5.draw(r8)
            r0 = r2
        L57:
            int r1 = r7.h
            if (r0 != r1) goto L61
            r6.setAlpha(r1)
            r6.draw(r8)
        L61:
            return
        L62:
            if (r1 == 0) goto L6b
            int r1 = r7.h
            int r1 = r1 - r0
            r5.setAlpha(r1)
            r2 = r3
        L6b:
            r5.draw(r8)
            if (r2 == 0) goto L75
            int r1 = r7.h
            r5.setAlpha(r1)
        L75:
            if (r0 <= 0) goto L82
            r6.setAlpha(r0)
            r6.draw(r8)
            int r8 = r7.h
            r6.setAlpha(r8)
        L82:
            r7.invalidateSelf()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.base.zah.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        zag zagVar = this.m;
        return changingConfigurations | zagVar.f9597a | zagVar.b;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (a()) {
            int changingConfigurations = getChangingConfigurations();
            zag zagVar = this.m;
            zagVar.f9597a = changingConfigurations;
            return zagVar;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return Math.max(this.n.getIntrinsicHeight(), this.o.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.max(this.n.getIntrinsicWidth(), this.o.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        if (!this.r) {
            this.s = Drawable.resolveOpacity(this.n.getOpacity(), this.o.getOpacity());
            this.r = true;
        }
        return this.s;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.l && super.mutate() == this) {
            if (a()) {
                this.n.mutate();
                this.o.mutate();
                this.l = true;
                return this;
            }
            throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.n.setBounds(rect);
        this.o.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.j == this.h) {
            this.j = i;
        }
        this.h = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.n.setColorFilter(colorFilter);
        this.o.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [android.graphics.drawable.Drawable$ConstantState, com.google.android.gms.internal.base.zag] */
    public zah(zag zagVar) {
        this.f9598c = 0;
        this.h = KotlinVersion.MAX_COMPONENT_VALUE;
        this.j = 0;
        this.k = true;
        ?? constantState = new Drawable.ConstantState();
        if (zagVar != null) {
            constantState.f9597a = zagVar.f9597a;
            constantState.b = zagVar.b;
        }
        this.m = constantState;
    }
}
