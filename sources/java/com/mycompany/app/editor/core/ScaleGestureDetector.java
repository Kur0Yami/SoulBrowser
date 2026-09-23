package com.mycompany.app.editor.core;

import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes3.dex */
public class ScaleGestureDetector {

    /* renamed from: a, reason: collision with root package name */
    public final OnScaleGestureListener f15685a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public MotionEvent f15686c;
    public MotionEvent d;
    public final Vector2D e = new PointF();
    public float f;
    public float g;
    public float h;
    public float i;
    public float j;
    public float k;
    public float l;
    public float m;
    public float n;
    public float o;
    public float p;
    public boolean q;
    public int r;
    public int s;
    public boolean t;

    /* loaded from: classes3.dex */
    public interface OnScaleGestureListener {
    }

    /* loaded from: classes3.dex */
    public static class SimpleOnScaleGestureListener implements OnScaleGestureListener {
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.graphics.PointF, com.mycompany.app.editor.core.Vector2D] */
    public ScaleGestureDetector(OnScaleGestureListener onScaleGestureListener) {
        this.f15685a = onScaleGestureListener;
    }

    public static int a(int i, int i2, MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        int findPointerIndex = motionEvent.findPointerIndex(i);
        for (int i3 = 0; i3 < pointerCount; i3++) {
            if (i3 != i2 && i3 != findPointerIndex) {
                return i3;
            }
        }
        return -1;
    }

    public final void b() {
        MotionEvent motionEvent = this.f15686c;
        if (motionEvent != null) {
            motionEvent.recycle();
            this.f15686c = null;
        }
        MotionEvent motionEvent2 = this.d;
        if (motionEvent2 != null) {
            motionEvent2.recycle();
            this.d = null;
        }
        this.b = false;
        this.r = -1;
        this.s = -1;
        this.q = false;
    }

    public final void c(MotionEvent motionEvent, View view) {
        MotionEvent motionEvent2 = this.d;
        if (motionEvent2 != null) {
            motionEvent2.recycle();
        }
        this.d = MotionEvent.obtain(motionEvent);
        this.l = -1.0f;
        this.m = -1.0f;
        this.n = -1.0f;
        Vector2D vector2D = this.e;
        vector2D.set(0.0f, 0.0f);
        MotionEvent motionEvent3 = this.f15686c;
        int findPointerIndex = motionEvent3.findPointerIndex(this.r);
        int findPointerIndex2 = motionEvent3.findPointerIndex(this.s);
        int findPointerIndex3 = motionEvent.findPointerIndex(this.r);
        int findPointerIndex4 = motionEvent.findPointerIndex(this.s);
        if (findPointerIndex >= 0 && findPointerIndex2 >= 0 && findPointerIndex3 >= 0 && findPointerIndex4 >= 0) {
            float x = motionEvent3.getX(findPointerIndex);
            float y = motionEvent3.getY(findPointerIndex);
            float x2 = motionEvent3.getX(findPointerIndex2);
            float y2 = motionEvent3.getY(findPointerIndex2);
            float x3 = motionEvent.getX(findPointerIndex3);
            float y3 = motionEvent.getY(findPointerIndex3);
            float x4 = motionEvent.getX(findPointerIndex4) - x3;
            float y4 = motionEvent.getY(findPointerIndex4) - y3;
            vector2D.set(x4, y4);
            this.h = x2 - x;
            this.i = y2 - y;
            this.j = x4;
            this.k = y4;
            this.f = (x4 * 0.5f) + x3;
            this.g = (y4 * 0.5f) + y3;
            motionEvent.getEventTime();
            motionEvent3.getEventTime();
            this.o = motionEvent.getPressure(findPointerIndex4) + motionEvent.getPressure(findPointerIndex3);
            this.p = motionEvent3.getPressure(findPointerIndex2) + motionEvent3.getPressure(findPointerIndex);
            return;
        }
        this.q = true;
    }
}
