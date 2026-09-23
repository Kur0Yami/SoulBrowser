package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyImageFilter extends ImageView {

    /* renamed from: c, reason: collision with root package name */
    public Paint f18835c;
    public Bitmap f;
    public int g;

    public MyImageFilter(Context context) {
        super(context);
        Paint paint = new Paint();
        this.f18835c = paint;
        paint.setAntiAlias(true);
        this.f18835c.setFilterBitmap(true);
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.view.MyImageFilter.1
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                if (outline == null) {
                    return;
                }
                MyImageFilter myImageFilter = MyImageFilter.this;
                outline.setRoundRect(0, 0, myImageFilter.getWidth(), myImageFilter.getHeight(), MainApp.v1);
            }
        });
        setClipToOutline(true);
    }

    public final void a(int i, int i2) {
        if (i != 0) {
            if (MainUtil.f6(this.f)) {
                if (Math.round(i * (r0.getHeight() / r0.getWidth())) == i2) {
                    return;
                }
                post(new Runnable() { // from class: com.mycompany.app.view.MyImageFilter.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyImageFilter myImageFilter = MyImageFilter.this;
                        int width = myImageFilter.getWidth();
                        if (width != 0) {
                            if (MainUtil.f6(myImageFilter.f)) {
                                int round = Math.round(width * (r2.getHeight() / r2.getWidth()));
                                ViewGroup.LayoutParams layoutParams = myImageFilter.getLayoutParams();
                                if (layoutParams != null && layoutParams.height != round) {
                                    layoutParams.height = round;
                                    myImageFilter.requestLayout();
                                }
                            }
                        }
                    }
                });
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.f18835c != null) {
            Bitmap bitmap = this.f;
            if (MainUtil.f6(bitmap)) {
                try {
                    float width = getWidth() / bitmap.getWidth();
                    canvas.scale(width, width);
                    canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.f18835c);
                } catch (Exception unused) {
                }
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a(i, i2);
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.f = bitmap;
        a(getWidth(), getHeight());
        invalidate();
    }

    public void setImageBright(int i) {
        Paint paint = this.f18835c;
        if (paint == null || this.g == i) {
            return;
        }
        this.g = i;
        float f = i / 100.0f;
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.set(new float[]{f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        invalidate();
    }
}
