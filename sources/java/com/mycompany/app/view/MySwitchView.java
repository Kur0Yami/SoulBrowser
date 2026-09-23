package com.mycompany.app.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;

/* loaded from: classes3.dex */
public class MySwitchView extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f19008c;
    public final boolean f;
    public boolean g;
    public View h;
    public View i;
    public Drawable j;
    public Drawable k;
    public Drawable l;
    public Drawable m;
    public final int n;

    public MySwitchView(Context context) {
        super(context);
        this.f = MainUtil.O5(context);
        this.f19008c = false;
        int round = Math.round(MainUtil.G(context, 32.0f));
        int round2 = Math.round(MainUtil.G(context, 18.0f));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(round, round2);
        layoutParams.gravity = 17;
        View view = new View(context);
        this.h = view;
        addView(view, layoutParams);
        int round3 = round2 - Math.round(MainUtil.G(context, 4.0f));
        int round4 = Math.round(((MainApp.g1 - round) + r2) / 2.0f);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(round3, round3);
        layoutParams2.gravity = 8388627;
        layoutParams2.setMarginStart(round4);
        View view2 = new View(context);
        this.i = view2;
        addView(view2, layoutParams2);
        this.n = Math.round((round - r2) / 2.0f);
        c();
    }

    private Drawable getThumbDrawable() {
        if (this.f19008c) {
            return this.l;
        }
        return this.m;
    }

    private Drawable getTrackDrawable() {
        if (this.f19008c) {
            return this.j;
        }
        return this.k;
    }

    private void setAppearance(boolean z) {
        if (z) {
            Drawable background = this.h.getBackground();
            if (background != null) {
                if (background instanceof TransitionDrawable) {
                    background = ((TransitionDrawable) background).getDrawable(1);
                }
                TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{background, getTrackDrawable()});
                transitionDrawable.setCrossFadeEnabled(true);
                this.h.setBackground(transitionDrawable);
                transitionDrawable.startTransition(150);
            } else {
                this.h.setBackground(getTrackDrawable());
            }
        } else {
            this.h.setBackground(getTrackDrawable());
        }
        if (z) {
            Drawable background2 = this.i.getBackground();
            if (background2 != null) {
                if (background2 instanceof TransitionDrawable) {
                    background2 = ((TransitionDrawable) background2).getDrawable(1);
                }
                TransitionDrawable transitionDrawable2 = new TransitionDrawable(new Drawable[]{background2, getThumbDrawable()});
                transitionDrawable2.setCrossFadeEnabled(true);
                this.i.setBackground(transitionDrawable2);
                transitionDrawable2.startTransition(150);
                return;
            }
            this.i.setBackground(getThumbDrawable());
            return;
        }
        this.i.setBackground(getThumbDrawable());
    }

    public final void a() {
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
    }

    public final void b(boolean z, boolean z2) {
        int i;
        if (this.i != null) {
            if (this.f19008c == z && this.g == this.f) {
                return;
            }
            this.f19008c = z;
            this.g = this.f;
            setAppearance(z2);
            if (this.f) {
                i = -this.n;
            } else {
                i = this.n;
            }
            this.i.animate().cancel();
            float f = 0.0f;
            if (z2) {
                ViewPropertyAnimator animate = this.i.animate();
                if (this.f19008c) {
                    f = i;
                }
                animate.translationX(f).setDuration(150L).start();
                return;
            }
            View view = this.i;
            if (this.f19008c) {
                f = i;
            }
            view.setTranslationX(f);
        }
    }

    public final void c() {
        if (this.h == null) {
            return;
        }
        Context context = getContext();
        if (MainApp.K1) {
            this.j = MainUtil.S(context, R.drawable.switc_track_on_dark);
            this.k = MainUtil.S(context, R.drawable.switc_track_off_dark);
            this.l = MainUtil.S(context, R.drawable.switc_thumb_on_dark);
            this.m = MainUtil.S(context, R.drawable.switc_thumb_off_dark);
        } else {
            this.j = MainUtil.S(context, R.drawable.switc_track_on_bright);
            this.k = MainUtil.S(context, R.drawable.switc_track_off_bright);
            this.l = MainUtil.S(context, R.drawable.switc_thumb_on_bright);
            this.m = MainUtil.S(context, R.drawable.switc_thumb_off_bright);
        }
        this.h.setBackground(getTrackDrawable());
        this.i.setBackground(getThumbDrawable());
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        float f;
        super.setEnabled(z);
        if (z) {
            f = 1.0f;
        } else {
            f = 0.4f;
        }
        setAlpha(f);
    }
}
