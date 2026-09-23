package com.google.android.gms.internal.ads;

import android.view.MotionEvent;

/* loaded from: classes.dex */
public final class zzgdp {

    /* renamed from: a, reason: collision with root package name */
    public long f7852a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public long f7853c;
    public long d;
    public double e;
    public double f;
    public double g;
    public float h;
    public float i;
    public float j;
    public float k;

    public final void a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3) {
                        return;
                    }
                    this.d++;
                    return;
                }
                this.b += motionEvent.getHistorySize() + 1;
                this.g = Math.hypot(motionEvent.getRawX() - this.e, motionEvent.getRawY() - this.f) + this.g;
                this.e = motionEvent.getRawX();
                this.f = motionEvent.getRawY();
                return;
            }
            this.f7853c++;
            this.g = Math.hypot(motionEvent.getRawX() - this.e, motionEvent.getRawY() - this.f) + this.g;
            this.e = motionEvent.getRawX();
            this.f = motionEvent.getRawY();
            return;
        }
        this.f7852a++;
        this.g = 0.0d;
        this.e = motionEvent.getRawX();
        this.f = motionEvent.getRawY();
        this.h = motionEvent.getX();
        this.i = motionEvent.getY();
        this.j = motionEvent.getRawX();
        this.k = motionEvent.getRawY();
    }
}
