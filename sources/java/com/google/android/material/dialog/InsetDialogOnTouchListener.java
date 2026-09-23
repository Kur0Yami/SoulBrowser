package com.google.android.material.dialog;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes3.dex */
public class InsetDialogOnTouchListener implements View.OnTouchListener {

    /* renamed from: c, reason: collision with root package name */
    public final Dialog f11785c;
    public final int f;
    public final int g;
    public final int h;

    public InsetDialogOnTouchListener(Dialog dialog, Rect rect) {
        this.f11785c = dialog;
        this.f = rect.left;
        this.g = rect.top;
        this.h = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View findViewById = view.findViewById(R.id.content);
        int left = findViewById.getLeft() + this.f;
        int width = findViewById.getWidth() + left;
        if (new RectF(left, findViewById.getTop() + this.g, width, findViewById.getHeight() + r4).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            obtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            obtain.setAction(0);
            int i = this.h;
            obtain.setLocation((-i) - 1, (-i) - 1);
        }
        view.performClick();
        return this.f11785c.onTouchEvent(obtain);
    }
}
