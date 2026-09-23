package com.google.android.gms.cast.framework.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.work.impl.workers.a;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.uicontroller.UIMediaController;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzda;
import com.google.android.gms.internal.cast.zzde;
import com.google.android.gms.internal.cast.zzdi;
import com.google.android.gms.internal.cast.zzdo;
import com.google.android.gms.internal.cast.zzdt;
import com.google.android.gms.internal.cast.zzpm;
import com.google.android.gms.internal.cast.zzr;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class MiniControllerFragment extends Fragment implements ControlButtonsContainer {
    public int A;
    public int B;
    public UIMediaController C;

    /* renamed from: c, reason: collision with root package name */
    public Logger f3543c;
    public boolean f;
    public int g;
    public int h;
    public TextView i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int[] n;
    public final ImageView[] o = new ImageView[3];
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;
    public int z;

    public final void f(UIMediaController uIMediaController, RelativeLayout relativeLayout, int i, int i2) {
        ImageView imageView = (ImageView) relativeLayout.findViewById(i);
        int i3 = this.n[i2];
        if (i3 == R.id.cast_button_type_empty) {
            imageView.setVisibility(4);
            return;
        }
        if (i3 != R.id.cast_button_type_custom) {
            if (i3 == R.id.cast_button_type_play_pause_toggle) {
                int i4 = this.q;
                int i5 = this.r;
                int i6 = this.s;
                if (this.p == 1) {
                    i4 = this.t;
                    i5 = this.u;
                    i6 = this.v;
                }
                Drawable a2 = zzo.a(getContext(), this.m, i4);
                Drawable a3 = zzo.a(getContext(), this.m, i5);
                Drawable a4 = zzo.a(getContext(), this.m, i6);
                imageView.setImageDrawable(a3);
                ProgressBar progressBar = new ProgressBar(getContext());
                RelativeLayout.LayoutParams h = a.h(-2, -2, 8, i);
                h.addRule(6, i);
                h.addRule(5, i);
                h.addRule(7, i);
                h.addRule(15);
                progressBar.setLayoutParams(h);
                progressBar.setVisibility(8);
                Drawable indeterminateDrawable = progressBar.getIndeterminateDrawable();
                int i7 = this.l;
                if (i7 != 0 && indeterminateDrawable != null) {
                    indeterminateDrawable.setColorFilter(i7, PorterDuff.Mode.SRC_IN);
                }
                relativeLayout.addView(progressBar);
                uIMediaController.q(imageView, a2, a3, a4, progressBar, true);
                return;
            }
            if (i3 == R.id.cast_button_type_skip_previous) {
                imageView.setImageDrawable(zzo.a(getContext(), this.m, this.w));
                imageView.setContentDescription(getResources().getString(R.string.cast_skip_prev));
                uIMediaController.x(imageView);
                return;
            }
            if (i3 == R.id.cast_button_type_skip_next) {
                imageView.setImageDrawable(zzo.a(getContext(), this.m, this.x));
                imageView.setContentDescription(getResources().getString(R.string.cast_skip_next));
                uIMediaController.w(imageView);
                return;
            }
            if (i3 == R.id.cast_button_type_rewind_30_seconds) {
                imageView.setImageDrawable(zzo.a(getContext(), this.m, this.y));
                imageView.setContentDescription(getResources().getString(R.string.cast_rewind_30));
                uIMediaController.v(imageView);
            } else if (i3 == R.id.cast_button_type_forward_30_seconds) {
                imageView.setImageDrawable(zzo.a(getContext(), this.m, this.z));
                imageView.setContentDescription(getResources().getString(R.string.cast_forward_30));
                uIMediaController.t(imageView);
            } else if (i3 == R.id.cast_button_type_mute_toggle) {
                imageView.setImageDrawable(zzo.a(getContext(), this.m, this.A));
                uIMediaController.p(imageView);
            } else if (i3 == R.id.cast_button_type_closed_caption) {
                imageView.setImageDrawable(zzo.a(getContext(), this.m, this.B));
                uIMediaController.s(imageView);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f3543c = new Logger("MiniControllerFragment", null);
        UIMediaController uIMediaController = new UIMediaController(getActivity());
        this.C = uIMediaController;
        View inflate = layoutInflater.inflate(R.layout.cast_mini_controller, viewGroup, false);
        inflate.setVisibility(8);
        Preconditions.checkMainThread("Must be called from the main thread.");
        uIMediaController.B(inflate, new zzdt(inflate));
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R.id.container_current);
        int i = this.j;
        if (i != 0) {
            relativeLayout.setBackgroundResource(i);
        }
        ImageView imageView = (ImageView) inflate.findViewById(R.id.icon_view);
        TextView textView = (TextView) inflate.findViewById(R.id.title_view);
        if (this.g != 0) {
            textView.setTextAppearance(getActivity(), this.g);
        }
        TextView textView2 = (TextView) inflate.findViewById(R.id.subtitle_view);
        this.i = textView2;
        if (this.h != 0) {
            textView2.setTextAppearance(getActivity(), this.h);
        }
        ProgressBar progressBar = (ProgressBar) inflate.findViewById(R.id.progressBar);
        if (this.k != 0) {
            ((LayerDrawable) progressBar.getProgressDrawable()).setColorFilter(this.k, PorterDuff.Mode.SRC_IN);
        }
        Preconditions.checkMainThread("Must be called from the main thread.");
        List singletonList = Collections.singletonList("com.google.android.gms.cast.metadata.TITLE");
        Preconditions.checkMainThread("Must be called from the main thread.");
        uIMediaController.B(textView, new zzde(textView, singletonList));
        TextView textView3 = this.i;
        Preconditions.checkMainThread("Must be called from the main thread.");
        uIMediaController.B(textView3, new zzdo(textView3));
        Preconditions.checkMainThread("Must be called from the main thread.");
        uIMediaController.B(progressBar, new zzdi(progressBar));
        uIMediaController.u(relativeLayout);
        if (this.f) {
            ImageHints imageHints = new ImageHints(2, getResources().getDimensionPixelSize(R.dimen.cast_mini_controller_icon_width), getResources().getDimensionPixelSize(R.dimen.cast_mini_controller_icon_height));
            int i2 = R.drawable.cast_album_art_placeholder;
            Preconditions.checkMainThread("Must be called from the main thread.");
            uIMediaController.B(imageView, new zzda(imageView, uIMediaController.f3530a, imageHints, i2, null, null));
        } else {
            imageView.setVisibility(8);
        }
        ImageView imageView2 = (ImageView) relativeLayout.findViewById(R.id.button_0);
        ImageView[] imageViewArr = this.o;
        imageViewArr[0] = imageView2;
        imageViewArr[1] = (ImageView) relativeLayout.findViewById(R.id.button_1);
        imageViewArr[2] = (ImageView) relativeLayout.findViewById(R.id.button_2);
        f(uIMediaController, relativeLayout, R.id.button_0, 0);
        f(uIMediaController, relativeLayout, R.id.button_1, 1);
        f(uIMediaController, relativeLayout, R.id.button_2, 2);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        UIMediaController uIMediaController = this.C;
        if (uIMediaController != null) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            uIMediaController.A();
            uIMediaController.f3531c.clear();
            SessionManager sessionManager = uIMediaController.b;
            if (sessionManager != null) {
                sessionManager.e(uIMediaController);
            }
            uIMediaController.f = null;
            this.C = null;
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        boolean z;
        super.onInflate(context, attributeSet, bundle);
        if (this.n == null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CastMiniController, R.attr.castMiniControllerStyle, R.style.CastMiniController);
            this.f = obtainStyledAttributes.getBoolean(R.styleable.CastMiniController_castShowImageThumbnail, true);
            this.g = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castTitleTextAppearance, 0);
            this.h = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castSubtitleTextAppearance, 0);
            this.j = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castBackground, 0);
            int color = obtainStyledAttributes.getColor(R.styleable.CastMiniController_castProgressBarColor, 0);
            this.k = color;
            this.l = obtainStyledAttributes.getColor(R.styleable.CastMiniController_castMiniControllerLoadingIndicatorColor, color);
            this.m = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castButtonColor, 0);
            this.q = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPlayButtonDrawable, 0);
            this.r = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPauseButtonDrawable, 0);
            this.s = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castStopButtonDrawable, 0);
            this.t = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPlayButtonDrawable, 0);
            this.u = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPauseButtonDrawable, 0);
            this.v = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castStopButtonDrawable, 0);
            this.w = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castSkipPreviousButtonDrawable, 0);
            this.x = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castSkipNextButtonDrawable, 0);
            this.y = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castRewind30ButtonDrawable, 0);
            this.z = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castForward30ButtonDrawable, 0);
            this.A = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castMuteToggleButtonDrawable, 0);
            this.B = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castClosedCaptionsButtonDrawable, 0);
            int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castControlButtons, 0);
            if (resourceId != 0) {
                TypedArray obtainTypedArray = context.getResources().obtainTypedArray(resourceId);
                if (obtainTypedArray.length() == 3) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkArgument(z);
                this.n = new int[obtainTypedArray.length()];
                for (int i = 0; i < obtainTypedArray.length(); i++) {
                    this.n[i] = obtainTypedArray.getResourceId(i, 0);
                }
                obtainTypedArray.recycle();
                if (this.f) {
                    this.n[0] = R.id.cast_button_type_empty;
                }
                this.p = 0;
                for (int i2 : this.n) {
                    if (i2 != R.id.cast_button_type_empty) {
                        this.p++;
                    }
                }
            } else {
                Logger logger = this.f3543c;
                if (logger != null) {
                    Log.w(logger.f3604a, logger.d("Unable to read attribute castControlButtons.", new Object[0]));
                }
                int i3 = R.id.cast_button_type_empty;
                this.n = new int[]{i3, i3, i3};
            }
            obtainStyledAttributes.recycle();
        }
        zzr.a(zzpm.CAF_MINI_CONTROLLER);
    }
}
