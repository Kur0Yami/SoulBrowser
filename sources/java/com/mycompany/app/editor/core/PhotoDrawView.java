package com.mycompany.app.editor.core;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.view.MotionEvent;
import android.view.View;
import com.mycompany.app.editor.EditorActivity;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefRead;
import java.util.Iterator;
import java.util.Stack;

/* loaded from: classes3.dex */
public class PhotoDrawView extends View {

    /* renamed from: c, reason: collision with root package name */
    public EditorActivity f15658c;
    public PhotoDrawListener f;
    public float g;
    public int h;
    public int i;
    public boolean j;
    public float k;
    public Paint l;
    public Path m;
    public Stack n;
    public Stack o;
    public boolean p;
    public float q;
    public float r;
    public boolean s;

    /* loaded from: classes3.dex */
    public interface PhotoDrawListener {
        void a(boolean z);

        boolean b();

        boolean c();
    }

    /* loaded from: classes3.dex */
    public static class SaveLine {

        /* renamed from: a, reason: collision with root package name */
        public Path f15660a;
        public Paint b;
    }

    public final void a(EditorActivity editorActivity) {
        setLayerType(2, null);
        this.f15658c = editorActivity;
        this.g = PrefRead.P;
        this.h = PrefRead.R;
        this.i = PrefRead.Q;
        this.k = PrefRead.T;
        this.m = new Path();
        Paint paint = new Paint();
        this.l = paint;
        paint.setAntiAlias(true);
        this.l.setStyle(Paint.Style.STROKE);
        this.l.setStrokeCap(Paint.Cap.ROUND);
        this.l.setStrokeJoin(Paint.Join.ROUND);
        this.l.setStrokeWidth(MainUtil.G(this.f15658c, this.g));
        this.l.setColor(this.h);
        this.l.setAlpha(MainUtil.b3(this.i));
        this.l.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OVER));
        this.n = new Stack();
        this.o = new Stack();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Stack stack = this.n;
        if (stack == null) {
            return;
        }
        Iterator it = stack.iterator();
        while (it.hasNext()) {
            SaveLine saveLine = (SaveLine) it.next();
            canvas.drawPath(saveLine.f15660a, saveLine.b);
        }
        canvas.drawPath(this.m, this.l);
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [com.mycompany.app.editor.core.PhotoDrawView$SaveLine, java.lang.Object] */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.m != null) {
            int action = motionEvent.getAction();
            int actionMasked = motionEvent.getActionMasked() & action;
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked != 2) {
                        if (actionMasked != 3) {
                            if (actionMasked == 6 && ((65280 & action) >> 8) == 0) {
                                this.p = false;
                                return true;
                            }
                        }
                    } else if (this.p) {
                        float x = motionEvent.getX();
                        float y = motionEvent.getY();
                        float I0 = MainUtil.I0(this.q, x, this.r, y);
                        boolean z = this.s;
                        if (!z ? I0 > 4.0f : I0 > 8.0f) {
                            if (z) {
                                this.s = false;
                                this.o.clear();
                                this.m.reset();
                                this.m.moveTo(this.q, this.r);
                            }
                            Path path = this.m;
                            float f = this.q;
                            float f2 = this.r;
                            path.quadTo(f, f2, (x + f) / 2.0f, (y + f2) / 2.0f);
                            this.q = x;
                            this.r = y;
                            invalidate();
                            return true;
                        }
                    }
                    return true;
                }
                this.p = false;
                if (!this.s) {
                    this.m.lineTo(this.q, this.r);
                    Stack stack = this.n;
                    Path path2 = this.m;
                    Paint paint = this.l;
                    ?? obj = new Object();
                    obj.f15660a = new Path(path2);
                    obj.b = new Paint(paint);
                    stack.push(obj);
                    this.m.reset();
                    invalidate();
                }
                this.s = false;
                if (this.f != null) {
                    post(new Runnable() { // from class: com.mycompany.app.editor.core.PhotoDrawView.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            PhotoDrawListener photoDrawListener = PhotoDrawView.this.f;
                            if (photoDrawListener != null) {
                                photoDrawListener.a(false);
                            }
                        }
                    });
                }
                return true;
            }
            PhotoDrawListener photoDrawListener = this.f;
            if (photoDrawListener != null && !photoDrawListener.c()) {
                this.p = true;
                this.q = motionEvent.getX();
                this.r = motionEvent.getY();
                boolean b = this.f.b();
                this.s = b;
                if (!b) {
                    this.o.clear();
                    this.m.reset();
                    this.m.moveTo(this.q, this.r);
                    invalidate();
                }
                this.f.a(true);
                return true;
            }
        }
        return false;
    }

    public void setEraseMode(boolean z) {
        if (this.j == z) {
            return;
        }
        this.j = z;
        if (z) {
            this.l.setStrokeWidth(MainUtil.G(this.f15658c, this.k));
            this.l.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        } else {
            this.l.setStrokeWidth(MainUtil.G(this.f15658c, this.g));
            this.l.setColor(this.h);
            this.l.setAlpha(MainUtil.b3(this.i));
            this.l.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OVER));
        }
    }

    public void setEraseSize(int i) {
        Paint paint = this.l;
        if (paint != null) {
            float f = i;
            if (this.k == f) {
                return;
            }
            this.k = f;
            paint.setStrokeWidth(MainUtil.G(this.f15658c, f));
        }
    }

    public void setListener(PhotoDrawListener photoDrawListener) {
        this.f = photoDrawListener;
    }
}
