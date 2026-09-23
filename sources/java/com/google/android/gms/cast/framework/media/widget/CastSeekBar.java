package com.google.android.gms.cast.framework.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import java.util.ArrayList;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class CastSeekBar extends View {

    /* renamed from: c, reason: collision with root package name */
    public zze f3542c;
    public boolean f;
    public Integer g;
    public zzb h;
    public ArrayList i;
    public zzd j;
    public final float k;
    public final float l;
    public final float m;
    public final float n;
    public final float o;
    public final Paint p;
    public final int q;
    public final int r;
    public final int s;
    public final int t;
    public int[] u;
    public Point v;
    public Runnable w;

    /* JADX WARN: Type inference failed for: r7v16, types: [java.lang.Object, com.google.android.gms.cast.framework.media.widget.zze] */
    public CastSeekBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.i = new ArrayList();
        setAccessibilityDelegate(new zzf(this));
        Paint paint = new Paint(1);
        this.p = paint;
        paint.setStyle(Paint.Style.FILL);
        this.k = context.getResources().getDimension(R.dimen.cast_seek_bar_minimum_width);
        this.l = context.getResources().getDimension(R.dimen.cast_seek_bar_minimum_height);
        this.m = context.getResources().getDimension(R.dimen.cast_seek_bar_progress_height) / 2.0f;
        this.n = context.getResources().getDimension(R.dimen.cast_seek_bar_thumb_size) / 2.0f;
        this.o = context.getResources().getDimension(R.dimen.cast_seek_bar_ad_break_minimum_width);
        ?? obj = new Object();
        this.f3542c = obj;
        obj.b = 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.CastExpandedController, R.attr.castExpandedControllerStyle, R.style.CastExpandedController);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSeekBarProgressAndThumbColor, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSeekBarSecondaryProgressColor, 0);
        int resourceId3 = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSeekBarUnseekableProgressColor, 0);
        int resourceId4 = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castAdBreakMarkerColor, 0);
        this.q = context.getResources().getColor(resourceId);
        this.r = context.getResources().getColor(resourceId2);
        this.s = context.getResources().getColor(resourceId3);
        this.t = context.getResources().getColor(resourceId4);
        obtainStyledAttributes.recycle();
    }

    public final void a(ArrayList arrayList) {
        ArrayList arrayList2;
        if (Objects.equal(this.i, arrayList)) {
            return;
        }
        if (arrayList == null) {
            arrayList2 = null;
        } else {
            arrayList2 = new ArrayList(arrayList);
        }
        this.i = arrayList2;
        postInvalidate();
    }

    public final void b(Canvas canvas, int i, int i2, int i3, int i4, int i5) {
        Paint paint = this.p;
        paint.setColor(i5);
        float f = i3;
        float f2 = i2 / f;
        float f3 = i / f;
        float f4 = i4;
        float f5 = this.m;
        canvas.drawRect(f3 * f4, -f5, f2 * f4, f5, paint);
    }

    public final void c(int i) {
        zze zzeVar = this.f3542c;
        if (!zzeVar.f) {
            return;
        }
        int i2 = zzeVar.d;
        int i3 = zzeVar.e;
        Pattern pattern = CastUtils.f3603a;
        this.g = Integer.valueOf(Math.min(Math.max(i, i2), i3));
        zzd zzdVar = this.j;
        if (zzdVar != null) {
            zzdVar.c(getProgress(), true);
        }
        Runnable runnable = this.w;
        if (runnable == null) {
            this.w = new Runnable() { // from class: com.google.android.gms.cast.framework.media.widget.zzc
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    CastSeekBar.this.sendAccessibilityEvent(4);
                }
            };
        } else {
            removeCallbacks(runnable);
        }
        postDelayed(this.w, 200L);
        postInvalidate();
    }

    public final int d(int i) {
        return (int) ((i / ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) * this.f3542c.b);
    }

    public int getMaxProgress() {
        return this.f3542c.b;
    }

    public int getProgress() {
        Integer num = this.g;
        if (num != null) {
            return num.intValue();
        }
        return this.f3542c.f3548a;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        Runnable runnable = this.w;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        int save = canvas.save();
        canvas.translate(getPaddingLeft(), getPaddingTop());
        zzb zzbVar = this.h;
        if (zzbVar == null) {
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            int progress = getProgress();
            int save2 = canvas.save();
            canvas.translate(0.0f, measuredHeight / 2);
            zze zzeVar = this.f3542c;
            int i5 = 0;
            if (zzeVar.f) {
                int i6 = zzeVar.d;
                if (i6 > 0) {
                    b(canvas, 0, i6, zzeVar.b, measuredWidth, this.s);
                }
                zze zzeVar2 = this.f3542c;
                int i7 = zzeVar2.d;
                if (progress > i7) {
                    b(canvas, i7, progress, zzeVar2.b, measuredWidth, this.q);
                    i4 = progress;
                } else {
                    i4 = progress;
                }
                zze zzeVar3 = this.f3542c;
                int i8 = zzeVar3.e;
                if (i8 > i4) {
                    b(canvas, i4, i8, zzeVar3.b, measuredWidth, this.r);
                }
                zze zzeVar4 = this.f3542c;
                int i9 = zzeVar4.b;
                int i10 = zzeVar4.e;
                if (i9 > i10) {
                    b(canvas, i10, i9, i9, measuredWidth, this.s);
                }
            } else {
                int max = Math.max(zzeVar.f3549c, 0);
                if (max > 0) {
                    i = max;
                    b(canvas, 0, i, this.f3542c.b, measuredWidth, this.s);
                } else {
                    i = max;
                }
                if (progress > i) {
                    b(canvas, i, progress, this.f3542c.b, measuredWidth, this.q);
                    i2 = progress;
                } else {
                    i2 = progress;
                }
                int i11 = this.f3542c.b;
                if (i11 > i2) {
                    b(canvas, i2, i11, i11, measuredWidth, this.s);
                }
            }
            canvas.restoreToCount(save2);
            ArrayList arrayList = this.i;
            Paint paint = this.p;
            if (arrayList != null && !arrayList.isEmpty()) {
                paint.setColor(this.t);
                int measuredWidth2 = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
                int measuredHeight2 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
                int save3 = canvas.save();
                canvas.translate(0.0f, measuredHeight2 / 2);
                int size = arrayList.size();
                while (i5 < size) {
                    Object obj = arrayList.get(i5);
                    i5++;
                    zza zzaVar = (zza) obj;
                    if (zzaVar != null) {
                        int min = Math.min(zzaVar.f3544a, this.f3542c.b);
                        if (zzaVar.f3545c) {
                            i3 = zzaVar.b;
                        } else {
                            i3 = 1;
                        }
                        float f = measuredWidth2;
                        float f2 = this.f3542c.b;
                        float f3 = ((i3 + min) * f) / f2;
                        float f4 = (min * f) / f2;
                        float f5 = f3 - f4;
                        float f6 = this.o;
                        if (f5 < f6) {
                            f3 = f4 + f6;
                        }
                        if (f3 <= f) {
                            f = f3;
                        }
                        if (f - f4 < f6) {
                            f4 = f - f6;
                        }
                        float f7 = this.m;
                        canvas.drawRect(f4, -f7, f, f7, paint);
                    }
                }
                canvas.restoreToCount(save3);
            }
            if (isEnabled() && this.f3542c.f) {
                paint.setColor(this.q);
                int measuredWidth3 = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
                int measuredHeight3 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
                double progress2 = getProgress();
                double d = this.f3542c.b;
                int save4 = canvas.save();
                canvas.drawCircle((int) ((progress2 / d) * measuredWidth3), measuredHeight3 / 2.0f, this.n, paint);
                canvas.restoreToCount(save4);
            }
        } else {
            int measuredWidth4 = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            int measuredHeight4 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            int save5 = canvas.save();
            canvas.translate(0.0f, measuredHeight4 / 2);
            int i12 = zzbVar.f3546a;
            int i13 = zzbVar.b;
            b(canvas, 0, i12, i13, measuredWidth4, this.t);
            b(canvas, i12, i13, i13, measuredWidth4, this.s);
            canvas.restoreToCount(save5);
        }
        canvas.restoreToCount(save);
    }

    @Override // android.view.View
    public final synchronized void onMeasure(int i, int i2) {
        float paddingLeft = getPaddingLeft();
        setMeasuredDimension(View.resolveSizeAndState((int) (this.k + paddingLeft + getPaddingRight()), i, 0), View.resolveSizeAndState((int) (this.l + getPaddingTop() + getPaddingBottom()), i2, 0));
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled() && this.f3542c.f) {
            if (this.v == null) {
                this.v = new Point();
            }
            if (this.u == null) {
                this.u = new int[2];
            }
            getLocationOnScreen(this.u);
            this.v.set((((int) motionEvent.getRawX()) - this.u[0]) - getPaddingLeft(), ((int) motionEvent.getRawY()) - this.u[1]);
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action != 1) {
                    if (action != 2) {
                        if (action == 3) {
                            this.f = false;
                            this.g = null;
                            zzd zzdVar = this.j;
                            if (zzdVar != null) {
                                zzdVar.c(getProgress(), true);
                                this.j.a(this);
                            }
                            postInvalidate();
                            return true;
                        }
                    } else {
                        c(d(this.v.x));
                        return true;
                    }
                } else {
                    c(d(this.v.x));
                    this.f = false;
                    zzd zzdVar2 = this.j;
                    if (zzdVar2 != null) {
                        zzdVar2.a(this);
                    }
                    return true;
                }
            } else {
                this.f = true;
                zzd zzdVar3 = this.j;
                if (zzdVar3 != null) {
                    zzdVar3.b();
                }
                c(d(this.v.x));
                return true;
            }
        }
        return false;
    }
}
