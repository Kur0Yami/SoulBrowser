package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzbhr {

    /* renamed from: a, reason: collision with root package name */
    public MotionEvent f4687a = MotionEvent.obtain(0, 0, 1, 0.0f, 0.0f, 0);
    public MotionEvent b = MotionEvent.obtain(0, 0, 0, 0.0f, 0.0f, 0);

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f4688c;

    public zzbhr(ScheduledExecutorService scheduledExecutorService) {
        this.f4688c = scheduledExecutorService;
    }
}
