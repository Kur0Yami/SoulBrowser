package com.mycompany.app.image;

import android.graphics.Canvas;
import android.view.MotionEvent;
import android.widget.SeekBar;
import com.mycompany.app.pref.PrefImage;

/* loaded from: classes3.dex */
public class ImageSeekBar extends SeekBar {
    @Override // android.view.View
    public final void draw(Canvas canvas) {
        if (PrefImage.s) {
            canvas.scale(-1.0f, 1.0f, getWidth() / 2.0f, getHeight() / 2.0f);
        }
        super.draw(canvas);
    }

    @Override // android.widget.AbsSeekBar, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        if (PrefImage.s) {
            motionEvent.setLocation(getWidth() - motionEvent.getX(), motionEvent.getY());
        }
        return super.onTouchEvent(motionEvent);
    }
}
