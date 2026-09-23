package com.mycompany.app.pull;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.view.animation.Animation;
import android.widget.ImageView;

/* loaded from: classes3.dex */
class MyCircleImageView extends ImageView {

    /* renamed from: c, reason: collision with root package name */
    public Animation.AnimationListener f17320c;
    public int f;

    /* loaded from: classes3.dex */
    public class OvalShadow extends OvalShape {

        /* renamed from: c, reason: collision with root package name */
        public final Paint f17321c;
        public final int f;

        public OvalShadow(int i, int i2) {
            MyCircleImageView.this.f = i;
            this.f = i2;
            float f = i2 / 2;
            RadialGradient radialGradient = new RadialGradient(f, f, MyCircleImageView.this.f, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            Paint paint = new Paint();
            this.f17321c = paint;
            paint.setAntiAlias(true);
            paint.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public final void draw(Canvas canvas, Paint paint) {
            MyCircleImageView myCircleImageView = MyCircleImageView.this;
            float width = myCircleImageView.getWidth() / 2;
            float height = myCircleImageView.getHeight() / 2;
            int i = this.f;
            canvas.drawCircle(width, height, (i / 2) + myCircleImageView.f, this.f17321c);
            canvas.drawCircle(width, height, i / 2, paint);
        }
    }

    public final void a(int i) {
        float f = getContext().getResources().getDisplayMetrics().density;
        this.f = (int) (f * 3.5f);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShadow(this.f, (int) (20.0f * f * 2.0f)));
        setLayerType(1, shapeDrawable.getPaint());
        shapeDrawable.getPaint().setShadowLayer(this.f, (int) (0.0f * f), (int) (1.75f * f), 503316480);
        int i2 = this.f;
        setPadding(i2, i2, i2, i2);
        shapeDrawable.getPaint().setColor(i);
        setBackground(shapeDrawable);
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f17320c;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f17320c;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension((this.f * 2) + getMeasuredWidth(), (this.f * 2) + getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }
}
