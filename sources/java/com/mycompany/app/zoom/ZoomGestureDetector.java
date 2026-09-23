package com.mycompany.app.zoom;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import kotlin.KotlinVersion;

/* loaded from: classes3.dex */
public abstract class ZoomGestureDetector {

    /* renamed from: a, reason: collision with root package name */
    public Object f20927a;

    /* loaded from: classes3.dex */
    public static class FroyoDetector extends ZoomGestureDetector {
        public int b = -1;

        /* renamed from: c, reason: collision with root package name */
        public int f20928c = 0;
        public final ScaleGestureDetector d;
        public float e;
        public float f;
        public final float g;
        public final float h;
        public VelocityTracker i;
        public boolean j;

        public FroyoDetector(Context context) {
            ScaleGestureDetector.OnScaleGestureListener onScaleGestureListener = new ScaleGestureDetector.OnScaleGestureListener() { // from class: com.mycompany.app.zoom.ZoomGestureDetector.FroyoDetector.1
                /* JADX WARN: Type inference failed for: r0v1, types: [com.mycompany.app.zoom.ZoomGestureDetector$OnGestureListener, java.lang.Object] */
                @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
                public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                    FroyoDetector.this.f20927a.a(scaleGestureDetector.getScaleFactor(), scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
                    return true;
                }

                @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
                public final boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                    return true;
                }

                @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
                public final void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
                }
            };
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.h = viewConfiguration.getScaledMinimumFlingVelocity();
            this.g = viewConfiguration.getScaledTouchSlop();
            this.d = new ScaleGestureDetector(context, onScaleGestureListener);
        }

        /* JADX WARN: Type inference failed for: r4v6, types: [com.mycompany.app.zoom.ZoomGestureDetector$OnGestureListener, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v3, types: [com.mycompany.app.zoom.ZoomGestureDetector$OnGestureListener, java.lang.Object] */
        @Override // com.mycompany.app.zoom.ZoomGestureDetector
        public final void a(MotionEvent motionEvent) {
            float x;
            float y;
            float x2;
            float y2;
            float x3;
            float y3;
            this.d.onTouchEvent(motionEvent);
            int action = motionEvent.getAction() & KotlinVersion.MAX_COMPONENT_VALUE;
            int i = 0;
            if (action != 0) {
                boolean z = true;
                int i2 = 1;
                if (action != 1) {
                    if (action != 2) {
                        if (action != 3) {
                            if (action == 6) {
                                int action2 = (motionEvent.getAction() & 65280) >> 8;
                                if (motionEvent.getPointerId(action2) == this.b) {
                                    if (action2 != 0) {
                                        i2 = 0;
                                    }
                                    this.b = motionEvent.getPointerId(i2);
                                    this.e = motionEvent.getX(i2);
                                    this.f = motionEvent.getY(i2);
                                }
                            }
                        } else {
                            this.b = -1;
                            VelocityTracker velocityTracker = this.i;
                            if (velocityTracker != null) {
                                velocityTracker.recycle();
                                this.i = null;
                            }
                        }
                    } else {
                        try {
                            x3 = motionEvent.getX(this.f20928c);
                        } catch (Exception unused) {
                            x3 = motionEvent.getX();
                        }
                        try {
                            y3 = motionEvent.getY(this.f20928c);
                        } catch (Exception unused2) {
                            y3 = motionEvent.getY();
                        }
                        float f = x3 - this.e;
                        float f2 = y3 - this.f;
                        if (!this.j) {
                            if (Math.sqrt((f2 * f2) + (f * f)) < this.g) {
                                z = false;
                            }
                            this.j = z;
                        }
                        if (this.j) {
                            this.f20927a.b(f, f2);
                            this.e = x3;
                            this.f = y3;
                            VelocityTracker velocityTracker2 = this.i;
                            if (velocityTracker2 != null) {
                                velocityTracker2.addMovement(motionEvent);
                            }
                        }
                    }
                } else {
                    this.b = -1;
                    if (this.j && this.i != null) {
                        try {
                            x2 = motionEvent.getX(this.f20928c);
                        } catch (Exception unused3) {
                            x2 = motionEvent.getX();
                        }
                        this.e = x2;
                        try {
                            y2 = motionEvent.getY(this.f20928c);
                        } catch (Exception unused4) {
                            y2 = motionEvent.getY();
                        }
                        this.f = y2;
                        this.i.addMovement(motionEvent);
                        this.i.computeCurrentVelocity(1000);
                        float xVelocity = this.i.getXVelocity();
                        float yVelocity = this.i.getYVelocity();
                        if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.h) {
                            this.f20927a.c(-xVelocity, -yVelocity);
                        }
                    }
                    VelocityTracker velocityTracker3 = this.i;
                    if (velocityTracker3 != null) {
                        velocityTracker3.recycle();
                        this.i = null;
                    }
                }
            } else {
                this.b = motionEvent.getPointerId(0);
                VelocityTracker obtain = VelocityTracker.obtain();
                this.i = obtain;
                obtain.addMovement(motionEvent);
                try {
                    x = motionEvent.getX(this.f20928c);
                } catch (Exception unused5) {
                    x = motionEvent.getX();
                }
                this.e = x;
                try {
                    y = motionEvent.getY(this.f20928c);
                } catch (Exception unused6) {
                    y = motionEvent.getY();
                }
                this.f = y;
                this.j = false;
            }
            int i3 = this.b;
            if (i3 != -1) {
                i = i3;
            }
            this.f20928c = motionEvent.findPointerIndex(i);
        }
    }

    /* loaded from: classes3.dex */
    public interface OnGestureListener {
        void a(float f, float f2, float f3);

        void b(float f, float f2);

        void c(float f, float f2);
    }

    public abstract void a(MotionEvent motionEvent);
}
