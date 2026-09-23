package com.mycompany.app.video;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSub;
import com.mycompany.app.view.MyTextSub;

/* loaded from: classes3.dex */
public class VideoSubLayout extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public VideoActivity f18484c;
    public MainActivity f;
    public View g;
    public AppCompatTextView h;
    public MyTextSub i;
    public AppCompatTextView j;
    public ValueAnimator k;
    public ViewGroup.MarginLayoutParams l;
    public boolean m;
    public int n;
    public int o;
    public boolean p;
    public boolean q;
    public float r;
    public boolean s;
    public final Runnable t;

    public VideoSubLayout(VideoActivity videoActivity) {
        super(videoActivity);
        this.t = new Runnable() { // from class: com.mycompany.app.video.VideoSubLayout.3
            @Override // java.lang.Runnable
            public final void run() {
                VideoSubLayout videoSubLayout = VideoSubLayout.this;
                videoSubLayout.s = false;
                if (videoSubLayout.k != null) {
                    videoSubLayout.setValAnimHide(videoSubLayout.r);
                }
            }
        };
        this.f18484c = videoActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getPrefPos() {
        boolean h0;
        if (this.q) {
            return 0;
        }
        MainActivity mainActivity = this.f;
        if (mainActivity == null) {
            h0 = MainUtil.N5(this.f18484c);
        } else {
            h0 = mainActivity.h0();
        }
        if (h0) {
            return PrefSub.m;
        }
        return PrefSub.l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSubLayout(int i) {
        if (this.l == null) {
            this.l = (ViewGroup.MarginLayoutParams) getLayoutParams();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = this.l;
        if (marginLayoutParams == null || marginLayoutParams.bottomMargin == i) {
            return;
        }
        marginLayoutParams.setMargins(0, 0, 0, i);
        setLayoutParams(this.l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimHide(float f) {
        setAlpha(f);
    }

    public final void d(final boolean z) {
        AppCompatTextView appCompatTextView;
        if (getVisibility() == 0 && (appCompatTextView = this.j) != null && this.g != null) {
            appCompatTextView.invalidate();
            this.j.measure(0, 0);
            this.j.post(new Runnable() { // from class: com.mycompany.app.video.VideoSubLayout.5
                @Override // java.lang.Runnable
                public final void run() {
                    AppCompatTextView appCompatTextView2;
                    boolean h0;
                    VideoSubLayout videoSubLayout = VideoSubLayout.this;
                    if (videoSubLayout.getVisibility() == 0 && (appCompatTextView2 = videoSubLayout.j) != null && videoSubLayout.g != null && !TextUtils.isEmpty(appCompatTextView2.getText())) {
                        MainActivity mainActivity = videoSubLayout.f;
                        if (mainActivity == null) {
                            h0 = MainUtil.N5(videoSubLayout.f18484c);
                        } else {
                            h0 = mainActivity.h0();
                        }
                        if (videoSubLayout.m != h0 || videoSubLayout.n != PrefSub.n || videoSubLayout.o != videoSubLayout.j.getLineCount()) {
                            videoSubLayout.m = h0;
                            videoSubLayout.n = PrefSub.n;
                            videoSubLayout.o = videoSubLayout.j.getLineCount();
                            int prefPos = videoSubLayout.getPrefPos();
                            Rect rect = new Rect();
                            videoSubLayout.j.getLineBounds(r4.getLineCount() - 1, rect);
                            int height = videoSubLayout.g.getHeight() - rect.bottom;
                            if (prefPos > height) {
                                prefPos = height;
                            }
                            if (prefPos < 0) {
                                prefPos = 0;
                            }
                            videoSubLayout.setSubLayout(prefPos);
                        }
                        if (z) {
                            videoSubLayout.d(false);
                        }
                    }
                }
            });
        }
    }

    public final void e(String str, boolean z) {
        if (this.h == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (z) {
            SpannableString spannableString = new SpannableString(str);
            spannableString.setSpan(new BackgroundColorSpan(1694498815), 0, str.length(), 33);
            this.h.setText(spannableString);
            this.h.setAlpha(1.0f);
            return;
        }
        SpannableString spannableString2 = new SpannableString(str);
        spannableString2.setSpan(new BackgroundColorSpan(PrefSub.v), 0, str.length(), 33);
        this.h.setText(spannableString2);
        this.h.setAlpha((100 - PrefSub.u) / 100.0f);
    }

    public final void f() {
        AppCompatTextView appCompatTextView;
        if (getVisibility() == 0 && (appCompatTextView = this.j) != null) {
            if (TextUtils.isEmpty(appCompatTextView.getText())) {
                setSubLayout(getPrefPos());
                return;
            } else {
                d(true);
                return;
            }
        }
        setSubLayout(getPrefPos());
    }

    public final int g(int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        AppCompatTextView appCompatTextView;
        if (this.p && (marginLayoutParams = this.l) != null && (appCompatTextView = this.j) != null && this.g != null) {
            int i2 = marginLayoutParams.bottomMargin - i;
            int i3 = 0;
            if (i2 >= 0) {
                appCompatTextView.measure(0, 0);
                Rect rect = new Rect();
                this.j.getLineBounds(r2.getLineCount() - 1, rect);
                int height = this.g.getHeight() - rect.bottom;
                if (i2 > height) {
                    i2 = height;
                }
                if (i2 >= 0) {
                    i3 = i2;
                }
            }
            if (i3 != this.l.bottomMargin) {
                setSubLayout(i3);
                return getSubBottom();
            }
            return -1;
        }
        return -1;
    }

    public int getSubBottom() {
        if (this.l == null) {
            this.l = (ViewGroup.MarginLayoutParams) getLayoutParams();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = this.l;
        if (marginLayoutParams == null) {
            return getPrefPos();
        }
        return marginLayoutParams.bottomMargin;
    }

    public final void h(float f, int i, int i2) {
        int i3;
        if (this.j == null) {
            return;
        }
        this.h.setTextSize(f);
        this.i.setTextSize(f);
        this.j.setTextSize(f);
        if (i > 0 && this.i.getVisibility() != 0) {
            CharSequence text = this.j.getText();
            if (TextUtils.isEmpty(text)) {
                this.i.setText((CharSequence) null);
            } else {
                this.i.setText(text.toString());
            }
        }
        this.i.q(i, i2);
        MyTextSub myTextSub = this.i;
        if (i > 0) {
            i3 = 0;
        } else {
            i3 = 8;
        }
        myTextSub.setVisibility(i3);
        f();
    }

    public final void i(CharSequence charSequence, boolean z) {
        AppCompatTextView appCompatTextView = this.h;
        if (appCompatTextView != null) {
            int i = 0;
            if (z) {
                if (!TextUtils.isEmpty(charSequence)) {
                    e(charSequence.toString(), z);
                    this.h.setVisibility(0);
                    return;
                }
                return;
            }
            CharSequence text = appCompatTextView.getText();
            if (TextUtils.isEmpty(text)) {
                return;
            }
            e(text.toString(), z);
            AppCompatTextView appCompatTextView2 = this.h;
            if (!PrefSub.t) {
                i = 8;
            }
            appCompatTextView2.setVisibility(i);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.k;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.k = null;
        }
    }

    public void setText(String str) {
        String str2;
        if (!this.p && this.j != null) {
            Spanned M = MainUtil.M(str);
            if (M != null) {
                str2 = M.toString();
            } else {
                str2 = null;
            }
            if (TextUtils.isEmpty(str2)) {
                if (getVisibility() == 8) {
                    this.h.setText((CharSequence) null);
                    this.i.setText((CharSequence) null);
                    this.j.setText((CharSequence) null);
                    return;
                } else {
                    if (this.k != null || getVisibility() != 0) {
                        return;
                    }
                    this.r = 1.0f;
                    this.s = false;
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                    this.k = ofFloat;
                    ofFloat.setDuration(400L);
                    this.k.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.video.VideoSubLayout.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            VideoSubLayout videoSubLayout = VideoSubLayout.this;
                            if (videoSubLayout.k != null) {
                                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                if (videoSubLayout.k != null) {
                                    videoSubLayout.r = floatValue;
                                    if (videoSubLayout.s) {
                                        return;
                                    }
                                    videoSubLayout.s = true;
                                    MainApp.N(videoSubLayout.f18484c, videoSubLayout.t);
                                }
                            }
                        }
                    });
                    this.k.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.video.VideoSubLayout.2
                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            final VideoSubLayout videoSubLayout = VideoSubLayout.this;
                            if (videoSubLayout.k == null) {
                                return;
                            }
                            MainApp.N(videoSubLayout.f18484c, new Runnable() { // from class: com.mycompany.app.video.VideoSubLayout.4
                                @Override // java.lang.Runnable
                                public final void run() {
                                    VideoSubLayout videoSubLayout2 = VideoSubLayout.this;
                                    if (videoSubLayout2.k == null) {
                                        return;
                                    }
                                    videoSubLayout2.k = null;
                                    if (videoSubLayout2.j != null) {
                                        videoSubLayout2.h.setText((CharSequence) null);
                                        videoSubLayout2.i.setText((CharSequence) null);
                                        videoSubLayout2.j.setText((CharSequence) null);
                                    }
                                    videoSubLayout2.setAlpha(1.0f);
                                }
                            });
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                        }
                    });
                    this.k.start();
                    return;
                }
            }
            if (PrefSub.k) {
                setVisibility(0);
            }
            if (PrefSub.t) {
                e(str2, false);
                this.h.setVisibility(0);
            } else {
                this.h.setVisibility(8);
            }
            if (PrefSub.o > 0) {
                this.i.setText(str2);
                this.i.setVisibility(0);
            } else {
                this.i.setVisibility(8);
            }
            this.j.setText(M);
            f();
        }
    }

    public void setTextLine(int i) {
        int i2;
        MyTextSub myTextSub = this.i;
        if (myTextSub == null) {
            return;
        }
        if (i > 0 && myTextSub.getVisibility() != 0) {
            CharSequence text = this.j.getText();
            if (TextUtils.isEmpty(text)) {
                this.i.setText((CharSequence) null);
            } else {
                this.i.setText(text.toString());
            }
        }
        this.i.setOutlineWidth(i);
        MyTextSub myTextSub2 = this.i;
        if (i > 0) {
            i2 = 0;
        } else {
            i2 = 8;
        }
        myTextSub2.setVisibility(i2);
    }

    public void setTextSize(float f) {
        if (this.j == null) {
            return;
        }
        this.h.setTextSize(f);
        this.i.setTextSize(f);
        this.j.setTextSize(f);
        f();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        ValueAnimator valueAnimator = this.k;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.k = null;
            if (this.j != null) {
                this.h.setText((CharSequence) null);
                this.i.setText((CharSequence) null);
                this.j.setText((CharSequence) null);
            }
        }
        setAlpha(1.0f);
        super.setVisibility(i);
        if (this.j != null && i == 8) {
            this.h.setText((CharSequence) null);
            this.i.setText((CharSequence) null);
            this.j.setText((CharSequence) null);
        }
    }

    public void setWindow(boolean z) {
        this.q = z;
    }
}
