package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class MyTextImage extends ImageView {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f19024c;
    public float f;
    public int g;
    public String h;
    public Paint i;
    public float j;
    public float k;
    public float l;
    public int m;
    public Paint n;
    public boolean o;
    public String p;
    public boolean q;

    public MyTextImage(Context context) {
        super(context);
        this.f19024c = true;
    }

    public final void a(int i, int i2, String str, Pattern pattern) {
        boolean z = false;
        this.o = false;
        String y2 = MainUtil.y2(str, pattern);
        if (TextUtils.isEmpty(y2)) {
            setImageResource(i);
            return;
        }
        super.setImageDrawable(null);
        int i3 = (MainApp.G1 / 2) + MainApp.F1;
        boolean z2 = true;
        if (!y2.equals(this.h)) {
            this.h = y2;
            z = true;
        }
        if (this.n == null) {
            Paint paint = new Paint();
            this.n = paint;
            paint.setAntiAlias(true);
            this.n.setStyle(Paint.Style.STROKE);
            this.n.setStrokeWidth(MainApp.n1);
            this.n.setColor(i2);
            this.m = i2;
            z = true;
        }
        if (this.m != i2) {
            this.m = i2;
            this.n.setColor(i2);
            z = true;
        }
        if (this.i == null) {
            Paint paint2 = new Paint();
            this.i = paint2;
            paint2.setAntiAlias(true);
            this.i.setStyle(Paint.Style.FILL);
            this.i.setTextAlign(Paint.Align.CENTER);
            this.i.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
            float f = i3;
            this.i.setTextSize(f);
            this.i.setColor(i2);
            this.f = f;
            this.g = i2;
            z = true;
        }
        float f2 = i3;
        if (this.f != f2) {
            this.f = f2;
            this.i.setTextSize(f2);
            z = true;
        }
        if (this.g != i2) {
            this.g = i2;
            this.i.setColor(i2);
        } else {
            z2 = z;
        }
        if (this.i != null) {
            float height = getHeight() / 2.0f;
            this.l = height;
            this.j = height - ((this.i.ascent() + this.i.descent()) / 2.0f);
        }
        if (z2) {
            invalidate();
        }
    }

    public final void b(int i, int i2, String str, Pattern pattern) {
        boolean z = false;
        this.o = false;
        String y2 = MainUtil.y2(str, pattern);
        if (TextUtils.isEmpty(y2)) {
            setImageResource(i);
            return;
        }
        super.setImageDrawable(null);
        int i3 = (MainApp.G1 / 2) + MainApp.F1;
        boolean z2 = true;
        if (!y2.equals(this.h)) {
            this.h = y2;
            z = true;
        }
        if (this.n == null) {
            Paint paint = new Paint();
            this.n = paint;
            paint.setAntiAlias(true);
            this.n.setStyle(Paint.Style.STROKE);
            this.n.setStrokeWidth(MainApp.n1);
            this.n.setColor(i2);
            this.m = i2;
            z = true;
        }
        if (this.m != i2) {
            this.m = i2;
            this.n.setColor(i2);
            z = true;
        }
        if (this.i == null) {
            Paint paint2 = new Paint();
            this.i = paint2;
            paint2.setAntiAlias(true);
            this.i.setStyle(Paint.Style.FILL);
            this.i.setTextAlign(Paint.Align.CENTER);
            this.i.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
            float f = i3;
            this.i.setTextSize(f);
            this.i.setColor(i2);
            this.f = f;
            this.g = i2;
            z = true;
        }
        float f2 = i3;
        if (this.f != f2) {
            this.f = f2;
            this.i.setTextSize(f2);
            z = true;
        }
        if (this.g != i2) {
            this.g = i2;
            this.i.setColor(i2);
        } else {
            z2 = z;
        }
        if (this.i != null) {
            float height = getHeight() / 2.0f;
            this.l = height;
            this.j = height - ((this.i.ascent() + this.i.descent()) / 2.0f);
        }
        if (z2) {
            invalidate();
        }
    }

    public final void c(int i, int i2) {
        boolean z = false;
        if (i2 == 0) {
            this.o = false;
            setImageResource(i);
            setAlpha(1.0f);
            return;
        }
        super.setImageResource(i);
        setAlpha(1.0f);
        int i3 = (MainApp.G1 / 2) + MainApp.F1;
        String e = a.e(i2, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        if (!e.equals(this.h)) {
            this.h = e;
            z = true;
        }
        if (this.i == null) {
            Paint paint = new Paint();
            this.i = paint;
            paint.setAntiAlias(true);
            this.i.setStyle(Paint.Style.FILL);
            this.i.setTextAlign(Paint.Align.CENTER);
            this.i.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
            float f = i3;
            this.i.setTextSize(f);
            this.i.setColor(-1);
            this.f = f;
            this.g = -1;
            z = true;
        }
        float f2 = i3;
        if (this.f != f2) {
            this.f = f2;
            this.i.setTextSize(f2);
            z = true;
        }
        if (this.g != -1) {
            this.g = -1;
            this.i.setColor(-1);
            z = true;
        }
        this.o = true;
        if (this.i != null) {
            float height = getHeight() / 2.0f;
            this.l = height;
            float ascent = height - ((this.i.ascent() + this.i.descent()) / 2.0f);
            this.j = ascent;
            this.j = ascent + MainApp.n1;
        }
        if (z) {
            invalidate();
        }
    }

    public String getUrl() {
        return this.p;
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f19024c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        Paint paint;
        Paint paint2;
        if (this.f19024c) {
            Drawable drawable = getDrawable();
            if (drawable != null) {
                if (drawable instanceof BitmapDrawable) {
                    if (MainUtil.f6(((BitmapDrawable) drawable).getBitmap())) {
                        super.onDraw(canvas);
                    }
                } else {
                    super.onDraw(canvas);
                }
                if (this.o && !TextUtils.isEmpty(this.h) && (paint2 = this.i) != null) {
                    canvas.drawText(this.h, this.k, this.j, paint2);
                    return;
                }
                return;
            }
            int i = this.m;
            if (i != 0) {
                Paint paint3 = this.n;
                if (paint3 != null) {
                    float f = this.k;
                    canvas.drawCircle(f, this.l, f - (MainApp.G1 / 2), paint3);
                } else {
                    canvas.drawColor(i);
                }
            }
            if (!TextUtils.isEmpty(this.h) && (paint = this.i) != null) {
                canvas.drawText(this.h, this.k, this.j, paint);
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.k = i / 2.0f;
        float f = i2 / 2.0f;
        this.l = f;
        Paint paint = this.i;
        if (paint != null) {
            float ascent = f - ((this.i.ascent() + paint.descent()) / 2.0f);
            this.j = ascent;
            if (this.o) {
                this.j = ascent + MainApp.n1;
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.g = 0;
        this.h = null;
        this.i = null;
        this.m = 0;
        this.n = null;
        this.o = false;
        if (MainUtil.f6(bitmap)) {
            super.setImageBitmap(bitmap);
        } else {
            super.setImageDrawable(null);
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.g = 0;
        this.h = null;
        this.i = null;
        this.m = 0;
        this.n = null;
        this.o = false;
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.g = 0;
        this.h = null;
        this.i = null;
        this.m = 0;
        this.n = null;
        this.o = false;
        super.setImageResource(i);
    }

    public void setRoundClip(boolean z) {
        if (this.q == z) {
            return;
        }
        this.q = z;
        if (!z) {
            setClipToOutline(false);
        } else {
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.view.MyTextImage.1
                @Override // android.view.ViewOutlineProvider
                public final void getOutline(View view, Outline outline) {
                    if (outline != null) {
                        MyTextImage myTextImage = MyTextImage.this;
                        if (myTextImage.q) {
                            outline.setRoundRect(0, 0, myTextImage.getWidth(), myTextImage.getHeight(), MainApp.F1);
                        }
                    }
                }
            });
            setClipToOutline(true);
        }
    }

    public void setUrl(String str) {
        this.p = str;
    }
}
