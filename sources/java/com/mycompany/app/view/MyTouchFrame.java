package com.mycompany.app.view;

import android.view.MotionEvent;
import android.widget.FrameLayout;

/* loaded from: classes3.dex */
public class MyTouchFrame extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f19040c;

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean dispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        this.f19040c = dispatchTouchEvent;
        return dispatchTouchEvent;
    }
}
