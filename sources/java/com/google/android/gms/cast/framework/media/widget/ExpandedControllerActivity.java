package com.google.android.gms.cast.framework.media.widget;

import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.renderscript.Allocation;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.cast.AdBreakClipInfo;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.internal.zzt;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.cast.framework.media.uicontroller.UIMediaController;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzda;
import com.google.android.gms.internal.cast.zzdc;
import com.google.android.gms.internal.cast.zzdu;
import com.google.android.gms.internal.cast.zzdv;
import com.google.android.gms.internal.cast.zzdw;
import com.google.android.gms.internal.cast.zzdx;
import com.google.android.gms.internal.cast.zzpm;
import com.google.android.gms.internal.cast.zzr;
import java.util.Timer;

/* loaded from: classes.dex */
public abstract class ExpandedControllerActivity extends AppCompatActivity implements ControlButtonsContainer {
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public int W;
    public int X;
    public int Y;
    public TextView Z;
    public CastSeekBar a0;
    public ImageView b0;
    public ImageView c0;
    public int[] d0;
    public View f0;
    public View g0;
    public ImageView h0;
    public TextView i0;
    public TextView j0;
    public TextView k0;
    public TextView l0;
    public com.google.android.gms.cast.framework.media.internal.zzb m0;
    public UIMediaController n0;
    public SessionManager o0;
    public Cast.Listener p0;
    public boolean q0;
    public boolean r0;
    public Timer s0;
    public String t0;
    public final SessionManagerListener F = new zzn(this);
    public final RemoteMediaClient.Listener G = new zzm(this);
    public final ImageView[] e0 = new ImageView[4];

    public final void X(View view, int i, int i2, UIMediaController uIMediaController) {
        ImageView imageView = (ImageView) view.findViewById(i);
        if (i2 == R.id.cast_button_type_empty) {
            imageView.setVisibility(4);
            return;
        }
        if (i2 == R.id.cast_button_type_play_pause_toggle) {
            imageView.setBackgroundResource(this.H);
            Drawable b = zzo.b(this, this.V, this.J, 0, android.R.color.white);
            Drawable b2 = zzo.b(this, this.V, this.I, 0, android.R.color.white);
            Drawable b3 = zzo.b(this, this.V, this.K, 0, android.R.color.white);
            imageView.setImageDrawable(b2);
            uIMediaController.q(imageView, b2, b, b3, null, false);
            return;
        }
        if (i2 == R.id.cast_button_type_skip_previous) {
            imageView.setBackgroundResource(this.H);
            imageView.setImageDrawable(zzo.b(this, this.V, this.L, 0, android.R.color.white));
            imageView.setContentDescription(getResources().getString(R.string.cast_skip_prev));
            uIMediaController.x(imageView);
            return;
        }
        if (i2 == R.id.cast_button_type_skip_next) {
            imageView.setBackgroundResource(this.H);
            imageView.setImageDrawable(zzo.b(this, this.V, this.M, 0, android.R.color.white));
            imageView.setContentDescription(getResources().getString(R.string.cast_skip_next));
            uIMediaController.w(imageView);
            return;
        }
        if (i2 == R.id.cast_button_type_rewind_30_seconds) {
            imageView.setBackgroundResource(this.H);
            imageView.setImageDrawable(zzo.b(this, this.V, this.N, 0, android.R.color.white));
            imageView.setContentDescription(getResources().getString(R.string.cast_rewind_30));
            uIMediaController.v(imageView);
            return;
        }
        if (i2 == R.id.cast_button_type_forward_30_seconds) {
            imageView.setBackgroundResource(this.H);
            imageView.setImageDrawable(zzo.b(this, this.V, this.O, 0, android.R.color.white));
            imageView.setContentDescription(getResources().getString(R.string.cast_forward_30));
            uIMediaController.t(imageView);
            return;
        }
        if (i2 == R.id.cast_button_type_mute_toggle) {
            imageView.setBackgroundResource(this.H);
            imageView.setImageDrawable(zzo.b(this, this.V, this.P, 0, android.R.color.white));
            uIMediaController.p(imageView);
        } else if (i2 == R.id.cast_button_type_closed_caption) {
            imageView.setBackgroundResource(this.H);
            imageView.setImageDrawable(zzo.b(this, this.V, this.Q, 0, android.R.color.white));
            uIMediaController.s(imageView);
        }
    }

    public final RemoteMediaClient Y() {
        CastSession c2 = this.o0.c();
        if (c2 != null && c2.c()) {
            return c2.j();
        }
        return null;
    }

    public final void Z() {
        MediaInfo f;
        MediaMetadata mediaMetadata;
        ActionBar W;
        RemoteMediaClient Y = Y();
        if (Y != null && Y.j() && (f = Y.f()) != null && (mediaMetadata = f.h) != null && (W = W()) != null) {
            W.u(mediaMetadata.F("com.google.android.gms.cast.metadata.TITLE"));
            String a2 = zzt.a(mediaMetadata);
            if (a2 != null) {
                W.t(a2);
            }
        }
    }

    public final void a0() {
        CastSession c2 = this.o0.c();
        if (c2 != null) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            CastDevice castDevice = c2.k;
            if (castDevice != null) {
                String str = castDevice.h;
                if (!TextUtils.isEmpty(str)) {
                    this.Z.setText(getResources().getString(R.string.cast_casting_to_device, str));
                    return;
                }
            }
        }
        this.Z.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    public final void b0() {
        MediaStatus g;
        String str;
        Drawable drawable;
        Bitmap bitmap;
        RemoteMediaClient Y = Y();
        if (Y != null && (g = Y.g()) != null) {
            String str2 = null;
            if (g.v) {
                if (this.c0.getVisibility() == 8 && (drawable = this.b0.getDrawable()) != null && (drawable instanceof BitmapDrawable) && (bitmap = ((BitmapDrawable) drawable).getBitmap()) != null) {
                    Logger logger = zzo.f3559a;
                    logger.b("Begin blurring bitmap %s, original width = %d, original height = %d.", bitmap, Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()));
                    int round = Math.round(bitmap.getWidth() * 0.25f);
                    int round2 = Math.round(bitmap.getHeight() * 0.25f);
                    Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, round, round2, false);
                    Bitmap createBitmap = Bitmap.createBitmap(round, round2, createScaledBitmap.getConfig());
                    RenderScript create = RenderScript.create(this);
                    Allocation createFromBitmap = Allocation.createFromBitmap(create, createScaledBitmap);
                    Allocation createTyped = Allocation.createTyped(create, createFromBitmap.getType());
                    ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, createFromBitmap.getElement());
                    create2.setInput(createFromBitmap);
                    create2.setRadius(7.5f);
                    create2.forEach(createTyped);
                    createTyped.copyTo(createBitmap);
                    create.destroy();
                    logger.b("End blurring bitmap %s, original width = %d, original height = %d.", createScaledBitmap, Integer.valueOf(round), Integer.valueOf(round2));
                    if (createBitmap != null) {
                        this.c0.setImageBitmap(createBitmap);
                        this.c0.setVisibility(0);
                    }
                }
                AdBreakClipInfo F = g.F();
                if (F != null) {
                    String str3 = F.f;
                    str2 = F.m;
                    str = str3;
                } else {
                    str = null;
                }
                if (!TextUtils.isEmpty(str2)) {
                    this.m0.a(Uri.parse(str2));
                    this.g0.setVisibility(8);
                } else if (!TextUtils.isEmpty(this.t0)) {
                    this.m0.a(Uri.parse(this.t0));
                    this.g0.setVisibility(8);
                } else {
                    this.i0.setVisibility(0);
                    this.g0.setVisibility(0);
                    this.h0.setVisibility(8);
                }
                TextView textView = this.j0;
                if (TextUtils.isEmpty(str)) {
                    str = getResources().getString(R.string.cast_ad_label);
                }
                textView.setText(str);
                this.j0.setTextAppearance(this.W);
                this.f0.setVisibility(0);
                c0(Y);
                return;
            }
            this.l0.setVisibility(8);
            this.k0.setVisibility(8);
            this.f0.setVisibility(8);
            this.c0.setVisibility(8);
            this.c0.setImageBitmap(null);
        }
    }

    public final void c0(RemoteMediaClient remoteMediaClient) {
        MediaStatus g;
        if (!this.q0 && (g = remoteMediaClient.g()) != null && !remoteMediaClient.k()) {
            this.k0.setVisibility(8);
            this.l0.setVisibility(8);
            AdBreakClipInfo F = g.F();
            if (F != null) {
                long j = F.n;
                if (j != -1) {
                    if (!this.r0) {
                        zzj zzjVar = new zzj(this, remoteMediaClient);
                        Timer timer = new Timer();
                        this.s0 = timer;
                        timer.scheduleAtFixedRate(zzjVar, 0L, 500L);
                        this.r0 = true;
                    }
                    if (((float) (j - remoteMediaClient.c())) <= 0.0f) {
                        if (this.r0) {
                            this.s0.cancel();
                            this.r0 = false;
                        }
                        this.k0.setVisibility(0);
                        this.k0.setClickable(true);
                        return;
                    }
                    this.l0.setVisibility(0);
                    this.l0.setText(getResources().getString(R.string.cast_expanded_controller_skip_ad_text, Integer.valueOf((int) Math.ceil(r11 / 1000.0f))));
                    this.k0.setClickable(false);
                }
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        boolean z;
        super.onCreate(bundle);
        SessionManager d = CastContext.e(this).d();
        this.o0 = d;
        if (d.c() == null) {
            finish();
        }
        UIMediaController uIMediaController = new UIMediaController(this);
        this.n0 = uIMediaController;
        Preconditions.checkMainThread("Must be called from the main thread.");
        uIMediaController.f = this.G;
        setContentView(R.layout.cast_expanded_controller_activity);
        TypedArray obtainStyledAttributes = obtainStyledAttributes(new int[]{androidx.appcompat.R.attr.selectableItemBackgroundBorderless});
        this.H = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = obtainStyledAttributes(null, R.styleable.CastExpandedController, R.attr.castExpandedControllerStyle, R.style.CastExpandedController);
        this.V = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castButtonColor, 0);
        this.I = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castPlayButtonDrawable, 0);
        this.J = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castPauseButtonDrawable, 0);
        this.K = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castStopButtonDrawable, 0);
        this.L = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castSkipPreviousButtonDrawable, 0);
        this.M = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castSkipNextButtonDrawable, 0);
        this.N = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castRewind30ButtonDrawable, 0);
        this.O = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castForward30ButtonDrawable, 0);
        this.P = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castMuteToggleButtonDrawable, 0);
        this.Q = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castClosedCaptionsButtonDrawable, 0);
        int resourceId = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castControlButtons, 0);
        if (resourceId != 0) {
            TypedArray obtainTypedArray = getResources().obtainTypedArray(resourceId);
            if (obtainTypedArray.length() == 4) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z);
            this.d0 = new int[obtainTypedArray.length()];
            for (int i = 0; i < obtainTypedArray.length(); i++) {
                this.d0[i] = obtainTypedArray.getResourceId(i, 0);
            }
            obtainTypedArray.recycle();
        } else {
            int i2 = R.id.cast_button_type_empty;
            this.d0 = new int[]{i2, i2, i2, i2};
        }
        this.U = obtainStyledAttributes2.getColor(R.styleable.CastExpandedController_castExpandedControllerLoadingIndicatorColor, 0);
        this.R = getResources().getColor(obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castAdLabelColor, 0));
        this.S = getResources().getColor(obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castAdInProgressTextColor, 0));
        this.T = getResources().getColor(obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castAdLabelTextColor, 0));
        this.W = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castAdLabelTextAppearance, 0);
        this.X = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castAdInProgressLabelTextAppearance, 0);
        this.Y = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castAdInProgressText, 0);
        int resourceId2 = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castDefaultAdPosterUrl, 0);
        if (resourceId2 != 0) {
            this.t0 = getApplicationContext().getResources().getString(resourceId2);
        }
        obtainStyledAttributes2.recycle();
        View findViewById = findViewById(R.id.expanded_controller_layout);
        UIMediaController uIMediaController2 = this.n0;
        this.b0 = (ImageView) findViewById.findViewById(R.id.background_image_view);
        this.c0 = (ImageView) findViewById.findViewById(R.id.blurred_background_image_view);
        View findViewById2 = findViewById.findViewById(R.id.background_place_holder_image_view);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        ImageView imageView = this.b0;
        ImageHints imageHints = new ImageHints(4, displayMetrics.widthPixels, displayMetrics.heightPixels);
        zzl zzlVar = new zzl(this);
        uIMediaController2.getClass();
        com.google.android.gms.cast.framework.media.uicontroller.zza zzaVar = uIMediaController2.e;
        Preconditions.checkMainThread("Must be called from the main thread.");
        uIMediaController2.B(imageView, new zzda(imageView, uIMediaController2.f3530a, imageHints, 0, findViewById2, zzlVar));
        this.Z = (TextView) findViewById.findViewById(R.id.status_text);
        ProgressBar progressBar = (ProgressBar) findViewById.findViewById(R.id.loading_indicator);
        Drawable indeterminateDrawable = progressBar.getIndeterminateDrawable();
        int i3 = this.U;
        if (i3 != 0) {
            indeterminateDrawable.setColorFilter(i3, PorterDuff.Mode.SRC_IN);
        }
        Preconditions.checkMainThread("Must be called from the main thread.");
        uIMediaController2.B(progressBar, new zzdc(progressBar));
        TextView textView = (TextView) findViewById.findViewById(R.id.start_text);
        TextView textView2 = (TextView) findViewById.findViewById(R.id.end_text);
        CastSeekBar castSeekBar = (CastSeekBar) findViewById.findViewById(R.id.cast_seek_bar);
        this.a0 = castSeekBar;
        uIMediaController2.r(castSeekBar);
        UIController zzdwVar = new zzdw(textView, zzaVar);
        Preconditions.checkMainThread("Must be called from the main thread.");
        uIMediaController2.B(textView, zzdwVar);
        UIController zzduVar = new zzdu(textView2, zzaVar);
        Preconditions.checkMainThread("Must be called from the main thread.");
        uIMediaController2.B(textView2, zzduVar);
        View findViewById3 = findViewById.findViewById(R.id.live_indicators);
        UIController zzdvVar = new zzdv(findViewById3, zzaVar);
        Preconditions.checkMainThread("Must be called from the main thread.");
        uIMediaController2.B(findViewById3, zzdvVar);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById.findViewById(R.id.tooltip_container);
        zzdx zzdxVar = new zzdx(relativeLayout, this.a0, zzaVar);
        Preconditions.checkMainThread("Must be called from the main thread.");
        uIMediaController2.B(relativeLayout, zzdxVar);
        uIMediaController2.d.add(zzdxVar);
        ImageView imageView2 = (ImageView) findViewById.findViewById(R.id.button_0);
        ImageView[] imageViewArr = this.e0;
        imageViewArr[0] = imageView2;
        imageViewArr[1] = (ImageView) findViewById.findViewById(R.id.button_1);
        imageViewArr[2] = (ImageView) findViewById.findViewById(R.id.button_2);
        imageViewArr[3] = (ImageView) findViewById.findViewById(R.id.button_3);
        X(findViewById, R.id.button_0, this.d0[0], uIMediaController2);
        X(findViewById, R.id.button_1, this.d0[1], uIMediaController2);
        X(findViewById, R.id.button_play_pause_toggle, R.id.cast_button_type_play_pause_toggle, uIMediaController2);
        X(findViewById, R.id.button_2, this.d0[2], uIMediaController2);
        X(findViewById, R.id.button_3, this.d0[3], uIMediaController2);
        View findViewById4 = findViewById(R.id.ad_container);
        this.f0 = findViewById4;
        this.h0 = (ImageView) findViewById4.findViewById(R.id.ad_image_view);
        this.g0 = this.f0.findViewById(R.id.ad_background_image_view);
        TextView textView3 = (TextView) this.f0.findViewById(R.id.ad_label);
        this.j0 = textView3;
        textView3.setTextColor(this.T);
        this.j0.setBackgroundColor(this.R);
        this.i0 = (TextView) this.f0.findViewById(R.id.ad_in_progress_label);
        this.l0 = (TextView) findViewById(R.id.ad_skip_text);
        TextView textView4 = (TextView) findViewById(R.id.ad_skip_button);
        this.k0 = textView4;
        textView4.setOnClickListener(new zzh(this));
        V().D((Toolbar) findViewById(R.id.toolbar));
        ActionBar W = W();
        if (W != null) {
            W.q(true);
            W.r(R.drawable.quantum_ic_keyboard_arrow_down_white_36);
        }
        a0();
        Z();
        TextView textView5 = this.i0;
        if (textView5 != null && this.Y != 0) {
            textView5.setTextAppearance(this.X);
            this.i0.setTextColor(this.S);
            this.i0.setText(this.Y);
        }
        com.google.android.gms.cast.framework.media.internal.zzb zzbVar = new com.google.android.gms.cast.framework.media.internal.zzb(getApplicationContext(), new ImageHints(-1, this.h0.getWidth(), this.h0.getHeight()));
        this.m0 = zzbVar;
        zzbVar.e = new zzg(this);
        zzr.a(zzpm.CAF_EXPANDED_CONTROLLER);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        com.google.android.gms.cast.framework.media.internal.zzb zzbVar = this.m0;
        zzbVar.b();
        zzbVar.e = null;
        UIMediaController uIMediaController = this.n0;
        if (uIMediaController != null) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            uIMediaController.f = null;
            UIMediaController uIMediaController2 = this.n0;
            uIMediaController2.getClass();
            Preconditions.checkMainThread("Must be called from the main thread.");
            uIMediaController2.A();
            uIMediaController2.f3531c.clear();
            SessionManager sessionManager = uIMediaController2.b;
            if (sessionManager != null) {
                sessionManager.e(uIMediaController2);
            }
            uIMediaController2.f = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        SessionManager sessionManager = this.o0;
        if (sessionManager == null) {
            return;
        }
        CastSession c2 = sessionManager.c();
        Cast.Listener listener = this.p0;
        if (listener != null && c2 != null) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            c2.d.remove(listener);
            this.p0 = null;
        }
        this.o0.e(this.F);
        super.onPause();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003c, code lost:
    
        if (r3 != false) goto L18;
     */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onResume() {
        /*
            r8 = this;
            com.google.android.gms.cast.framework.SessionManager r0 = r8.o0
            if (r0 != 0) goto L5
            return
        L5:
            com.google.android.gms.cast.framework.SessionManagerListener r1 = r8.F
            r0.a(r1)
            com.google.android.gms.cast.framework.SessionManager r0 = r8.o0
            com.google.android.gms.cast.framework.CastSession r0 = r0.c()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L4f
            boolean r3 = r0.c()
            java.lang.String r4 = "Must be called from the main thread."
            if (r3 != 0) goto L3f
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r4)
            com.google.android.gms.cast.framework.zzau r3 = r0.f3475a
            if (r3 == 0) goto L3b
            boolean r3 = r3.zzj()     // Catch: android.os.RemoteException -> L28
            goto L3c
        L28:
            r3 = move-exception
            com.google.android.gms.cast.internal.Logger r5 = com.google.android.gms.cast.framework.Session.b
            r6 = 2
            java.lang.Object[] r6 = new java.lang.Object[r6]
            java.lang.String r7 = "isConnecting"
            r6[r2] = r7
            java.lang.String r7 = "zzau"
            r6[r1] = r7
            java.lang.String r7 = "Unable to call %s on %s."
            r5.a(r3, r7, r6)
        L3b:
            r3 = r2
        L3c:
            if (r3 != 0) goto L3f
            goto L4f
        L3f:
            com.google.android.gms.cast.framework.media.widget.zzk r3 = new com.google.android.gms.cast.framework.media.widget.zzk
            r3.<init>(r8)
            r8.p0 = r3
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r4)
            java.util.HashSet r0 = r0.d
            r0.add(r3)
            goto L52
        L4f:
            r8.finish()
        L52:
            com.google.android.gms.cast.framework.media.RemoteMediaClient r0 = r8.Y()
            if (r0 == 0) goto L60
            boolean r0 = r0.j()
            if (r0 != 0) goto L5f
            goto L60
        L5f:
            r1 = r2
        L60:
            r8.q0 = r1
            r8.a0()
            r8.b0()
            super.onResume()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity.onResume():void");
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() ^ 4102);
            setImmersive(true);
        }
    }
}
