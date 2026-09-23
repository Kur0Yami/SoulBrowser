package androidx.mediarouter.app;

import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;
import android.view.animation.TranslateAnimation;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.graphics.ColorUtils;
import androidx.mediarouter.R;
import androidx.mediarouter.app.OverlayListView;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class MediaRouteControllerDialog extends AlertDialog {
    public static final int u0;
    public TextView A;
    public TextView B;
    public TextView C;
    public final boolean D;
    public final boolean E;
    public LinearLayout F;
    public RelativeLayout G;
    public LinearLayout H;
    public View I;
    public OverlayListView J;
    public VolumeGroupAdapter K;
    public ArrayList L;
    public HashSet M;
    public HashSet N;
    public HashSet O;
    public SeekBar P;
    public VolumeChangeListener Q;
    public MediaRouter.RouteInfo R;
    public int S;
    public int T;
    public int U;
    public final int V;
    public HashMap W;
    public MediaControllerCompat X;
    public final MediaControllerCallback Y;
    public PlaybackStateCompat Z;
    public MediaDescriptionCompat a0;
    public FetchArtTask b0;
    public Bitmap c0;
    public Uri d0;
    public boolean e0;
    public Bitmap f0;
    public int g0;
    public boolean h0;
    public boolean i0;
    public boolean j0;
    public final MediaRouter k;
    public boolean k0;
    public final MediaRouterCallback l;
    public boolean l0;
    public final MediaRouter.RouteInfo m;
    public int m0;
    public final Context n;
    public int n0;
    public boolean o;
    public int o0;
    public boolean p;
    public Interpolator p0;
    public int q;
    public final Interpolator q0;
    public Button r;
    public final Interpolator r0;
    public Button s;
    public final AccessibilityManager s0;
    public ImageButton t;
    public final Runnable t0;
    public MediaRouteExpandCollapseButton u;
    public FrameLayout v;
    public LinearLayout w;
    public FrameLayout x;
    public FrameLayout y;
    public ImageView z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.mediarouter.app.MediaRouteControllerDialog$10, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass10 implements OverlayListView.OverlayObject.OnAnimationEndListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ MediaRouter.RouteInfo f1293a;

        public AnonymousClass10(MediaRouter.RouteInfo routeInfo) {
            this.f1293a = routeInfo;
        }

        public final void a() {
            MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
            mediaRouteControllerDialog.O.remove(this.f1293a);
            mediaRouteControllerDialog.K.notifyDataSetChanged();
        }
    }

    /* renamed from: androidx.mediarouter.app.MediaRouteControllerDialog$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes.dex */
    public final class ClickListener implements View.OnClickListener {
        public ClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            PlaybackStateCompat playbackStateCompat;
            MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
            Context context = mediaRouteControllerDialog.n;
            AccessibilityManager accessibilityManager = mediaRouteControllerDialog.s0;
            int id = view.getId();
            int i = 1;
            if (id != 16908313 && id != 16908314) {
                if (id == R.id.mr_control_playback_ctrl) {
                    if (mediaRouteControllerDialog.X != null && (playbackStateCompat = mediaRouteControllerDialog.Z) != null) {
                        int i2 = 0;
                        if (playbackStateCompat.getState() != 3) {
                            i = 0;
                        }
                        if (i != 0 && (mediaRouteControllerDialog.Z.getActions() & 514) != 0) {
                            mediaRouteControllerDialog.X.getTransportControls().pause();
                            i2 = R.string.mr_controller_pause;
                        } else if (i != 0 && (mediaRouteControllerDialog.Z.getActions() & 1) != 0) {
                            mediaRouteControllerDialog.X.getTransportControls().stop();
                            i2 = R.string.mr_controller_stop;
                        } else if (i == 0 && (mediaRouteControllerDialog.Z.getActions() & 516) != 0) {
                            mediaRouteControllerDialog.X.getTransportControls().play();
                            i2 = R.string.mr_controller_play;
                        }
                        if (accessibilityManager != null && accessibilityManager.isEnabled() && i2 != 0) {
                            AccessibilityEvent obtain = AccessibilityEvent.obtain(16384);
                            obtain.setPackageName(context.getPackageName());
                            obtain.setClassName(ClickListener.class.getName());
                            obtain.getText().add(context.getString(i2));
                            accessibilityManager.sendAccessibilityEvent(obtain);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (id == R.id.mr_close) {
                    mediaRouteControllerDialog.dismiss();
                    return;
                }
                return;
            }
            if (mediaRouteControllerDialog.m.h()) {
                MediaRouter mediaRouter = mediaRouteControllerDialog.k;
                if (id == 16908313) {
                    i = 2;
                }
                mediaRouter.getClass();
                MediaRouter.v(i);
            }
            mediaRouteControllerDialog.dismiss();
        }
    }

    /* loaded from: classes.dex */
    public class FetchArtTask extends AsyncTask<Void, Void, Bitmap> {

        /* renamed from: a, reason: collision with root package name */
        public final Bitmap f1304a;
        public final Uri b;

        /* renamed from: c, reason: collision with root package name */
        public int f1305c;
        public long d;

        public FetchArtTask() {
            Bitmap iconBitmap;
            MediaDescriptionCompat mediaDescriptionCompat = MediaRouteControllerDialog.this.a0;
            if (mediaDescriptionCompat == null) {
                iconBitmap = null;
            } else {
                iconBitmap = mediaDescriptionCompat.getIconBitmap();
            }
            if (iconBitmap != null && iconBitmap.isRecycled()) {
                Log.w("MediaRouteCtrlDialog", "Can't fetch the given art bitmap because it's already recycled.");
                iconBitmap = null;
            }
            this.f1304a = iconBitmap;
            MediaDescriptionCompat mediaDescriptionCompat2 = MediaRouteControllerDialog.this.a0;
            this.b = mediaDescriptionCompat2 != null ? mediaDescriptionCompat2.getIconUri() : null;
        }

        public final BufferedInputStream a(Uri uri) {
            InputStream openInputStream;
            String lowerCase = uri.getScheme().toLowerCase();
            if (!"android.resource".equals(lowerCase) && !"content".equals(lowerCase) && !"file".equals(lowerCase)) {
                URLConnection openConnection = new URL(uri.toString()).openConnection();
                int i = MediaRouteControllerDialog.u0;
                openConnection.setConnectTimeout(i);
                openConnection.setReadTimeout(i);
                openInputStream = openConnection.getInputStream();
            } else {
                openInputStream = MediaRouteControllerDialog.this.n.getContentResolver().openInputStream(uri);
            }
            if (openInputStream == null) {
                return null;
            }
            return new BufferedInputStream(openInputStream);
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        
            if (r5 != null) goto L11;
         */
        /* JADX WARN: Not initialized variable reg: 5, insn: 0x002f: MOVE (r3 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]) (LINE:48), block:B:60:0x002f */
        /* JADX WARN: Removed duplicated region for block: B:72:0x00f2  */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.graphics.Bitmap doInBackground(java.lang.Void[] r11) {
            /*
                Method dump skipped, instructions count: 258
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteControllerDialog.FetchArtTask.doInBackground(java.lang.Object[]):java.lang.Object");
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
            mediaRouteControllerDialog.b0 = null;
            Bitmap bitmap3 = mediaRouteControllerDialog.c0;
            Bitmap bitmap4 = this.f1304a;
            boolean equals = Objects.equals(bitmap3, bitmap4);
            Uri uri = this.b;
            if (equals && Objects.equals(mediaRouteControllerDialog.d0, uri)) {
                return;
            }
            mediaRouteControllerDialog.c0 = bitmap4;
            mediaRouteControllerDialog.f0 = bitmap2;
            mediaRouteControllerDialog.d0 = uri;
            mediaRouteControllerDialog.g0 = this.f1305c;
            boolean z = true;
            mediaRouteControllerDialog.e0 = true;
            if (SystemClock.uptimeMillis() - this.d <= 120) {
                z = false;
            }
            mediaRouteControllerDialog.q(z);
        }

        @Override // android.os.AsyncTask
        public final void onPreExecute() {
            this.d = SystemClock.uptimeMillis();
            MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
            mediaRouteControllerDialog.e0 = false;
            mediaRouteControllerDialog.f0 = null;
            mediaRouteControllerDialog.g0 = 0;
        }
    }

    /* loaded from: classes.dex */
    public final class MediaControllerCallback extends MediaControllerCompat.Callback {
        public MediaControllerCallback() {
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.Callback
        public final void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
            MediaDescriptionCompat description;
            if (mediaMetadataCompat == null) {
                description = null;
            } else {
                description = mediaMetadataCompat.getDescription();
            }
            MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
            mediaRouteControllerDialog.a0 = description;
            mediaRouteControllerDialog.r();
            mediaRouteControllerDialog.q(false);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.Callback
        public final void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat) {
            MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
            mediaRouteControllerDialog.Z = playbackStateCompat;
            mediaRouteControllerDialog.q(false);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.Callback
        public final void onSessionDestroyed() {
            MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
            MediaControllerCompat mediaControllerCompat = mediaRouteControllerDialog.X;
            if (mediaControllerCompat != null) {
                mediaControllerCompat.unregisterCallback(mediaRouteControllerDialog.Y);
                mediaRouteControllerDialog.X = null;
            }
        }
    }

    /* loaded from: classes.dex */
    public final class MediaRouterCallback extends MediaRouter.Callback {
        public MediaRouterCallback() {
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void e(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteControllerDialog.this.q(true);
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void k() {
            MediaRouteControllerDialog.this.q(false);
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void m(MediaRouter.RouteInfo routeInfo) {
            MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
            SeekBar seekBar = (SeekBar) mediaRouteControllerDialog.W.get(routeInfo);
            int i = routeInfo.p;
            int i2 = MediaRouteControllerDialog.u0;
            if (seekBar != null && mediaRouteControllerDialog.R != routeInfo) {
                seekBar.setProgress(i);
            }
        }
    }

    /* loaded from: classes.dex */
    public class VolumeChangeListener implements SeekBar.OnSeekBarChangeListener {

        /* renamed from: a, reason: collision with root package name */
        public final Runnable f1308a = new Runnable() { // from class: androidx.mediarouter.app.MediaRouteControllerDialog.VolumeChangeListener.1
            @Override // java.lang.Runnable
            public final void run() {
                MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
                if (mediaRouteControllerDialog.R != null) {
                    mediaRouteControllerDialog.R = null;
                    if (mediaRouteControllerDialog.h0) {
                        mediaRouteControllerDialog.q(mediaRouteControllerDialog.i0);
                    }
                }
            }
        };

        public VolumeChangeListener() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (z) {
                MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) seekBar.getTag();
                int i2 = MediaRouteControllerDialog.u0;
                routeInfo.k(i);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStartTrackingTouch(SeekBar seekBar) {
            MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
            if (mediaRouteControllerDialog.R != null) {
                mediaRouteControllerDialog.P.removeCallbacks(this.f1308a);
            }
            mediaRouteControllerDialog.R = (MediaRouter.RouteInfo) seekBar.getTag();
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStopTrackingTouch(SeekBar seekBar) {
            MediaRouteControllerDialog.this.P.postDelayed(this.f1308a, 500L);
        }
    }

    /* loaded from: classes.dex */
    public class VolumeGroupAdapter extends ArrayAdapter<MediaRouter.RouteInfo> {

        /* renamed from: c, reason: collision with root package name */
        public final float f1310c;

        public VolumeGroupAdapter(Context context, ArrayList arrayList) {
            super(context, 0, arrayList);
            this.f1310c = MediaRouterThemeHelper.c(context);
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x00a7  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00b7  */
        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.view.View getView(int r8, android.view.View r9, android.view.ViewGroup r10) {
            /*
                Method dump skipped, instructions count: 268
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteControllerDialog.VolumeGroupAdapter.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public final boolean isEnabled(int i) {
            return false;
        }
    }

    static {
        Log.isLoggable("MediaRouteCtrlDialog", 3);
        u0 = (int) TimeUnit.SECONDS.toMillis(30L);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MediaRouteControllerDialog(android.content.Context r4) {
        /*
            r3 = this;
            r0 = 1
            android.view.ContextThemeWrapper r4 = androidx.mediarouter.app.MediaRouterThemeHelper.a(r4, r0)
            int r1 = androidx.mediarouter.R.attr.mediaRouteTheme
            int r1 = androidx.mediarouter.app.MediaRouterThemeHelper.g(r4, r1)
            if (r1 != 0) goto L11
            int r1 = androidx.mediarouter.app.MediaRouterThemeHelper.e(r4)
        L11:
            r3.<init>(r4, r1)
            r3.D = r0
            androidx.mediarouter.app.MediaRouteControllerDialog$1 r0 = new androidx.mediarouter.app.MediaRouteControllerDialog$1
            r0.<init>()
            r3.t0 = r0
            android.content.Context r0 = r3.getContext()
            r3.n = r0
            androidx.mediarouter.app.MediaRouteControllerDialog$MediaControllerCallback r1 = new androidx.mediarouter.app.MediaRouteControllerDialog$MediaControllerCallback
            r1.<init>()
            r3.Y = r1
            androidx.mediarouter.media.MediaRouter r1 = androidx.mediarouter.media.MediaRouter.h(r0)
            r3.k = r1
            boolean r1 = androidx.mediarouter.media.MediaRouter.m()
            r3.E = r1
            androidx.mediarouter.app.MediaRouteControllerDialog$MediaRouterCallback r1 = new androidx.mediarouter.app.MediaRouteControllerDialog$MediaRouterCallback
            r1.<init>()
            r3.l = r1
            androidx.mediarouter.media.MediaRouter$RouteInfo r1 = androidx.mediarouter.media.MediaRouter.l()
            r3.m = r1
            android.support.v4.media.session.MediaSessionCompat$Token r1 = androidx.mediarouter.media.MediaRouter.i()
            r3.p(r1)
            android.content.res.Resources r1 = r0.getResources()
            int r2 = androidx.mediarouter.R.dimen.mr_controller_volume_group_list_padding_top
            int r1 = r1.getDimensionPixelSize(r2)
            r3.V = r1
            java.lang.String r1 = "accessibility"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.view.accessibility.AccessibilityManager r0 = (android.view.accessibility.AccessibilityManager) r0
            r3.s0 = r0
            int r0 = androidx.mediarouter.R.interpolator.mr_linear_out_slow_in
            android.view.animation.Interpolator r0 = android.view.animation.AnimationUtils.loadInterpolator(r4, r0)
            r3.q0 = r0
            int r0 = androidx.mediarouter.R.interpolator.mr_fast_out_slow_in
            android.view.animation.Interpolator r4 = android.view.animation.AnimationUtils.loadInterpolator(r4, r0)
            r3.r0 = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteControllerDialog.<init>(android.content.Context):void");
    }

    public static void o(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i;
        view.setLayoutParams(layoutParams);
    }

    public final void g(final View view, final int i) {
        final int i2 = view.getLayoutParams().height;
        Animation animation = new Animation() { // from class: androidx.mediarouter.app.MediaRouteControllerDialog.7
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                int i3 = i;
                MediaRouteControllerDialog.o(view, i2 - ((int) ((r0 - i3) * f)));
            }
        };
        animation.setDuration(this.m0);
        animation.setInterpolator(this.p0);
        view.startAnimation(animation);
    }

    public final boolean h() {
        if (this.a0 == null && this.Z == null) {
            return false;
        }
        return true;
    }

    public final void i(boolean z) {
        HashSet hashSet;
        int firstVisiblePosition = this.J.getFirstVisiblePosition();
        for (int i = 0; i < this.J.getChildCount(); i++) {
            View childAt = this.J.getChildAt(i);
            MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) this.K.getItem(firstVisiblePosition + i);
            if (!z || (hashSet = this.M) == null || !hashSet.contains(routeInfo)) {
                ((LinearLayout) childAt.findViewById(R.id.volume_item_container)).setVisibility(0);
                AnimationSet animationSet = new AnimationSet(true);
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 1.0f);
                alphaAnimation.setDuration(0L);
                animationSet.addAnimation(alphaAnimation);
                new TranslateAnimation(0.0f, 0.0f, 0.0f, 0.0f).setDuration(0L);
                animationSet.setFillAfter(true);
                animationSet.setFillEnabled(true);
                childAt.clearAnimation();
                childAt.startAnimation(animationSet);
            }
        }
        ArrayList arrayList = this.J.f1337c;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            OverlayListView.OverlayObject overlayObject = (OverlayListView.OverlayObject) obj;
            overlayObject.j = true;
            overlayObject.k = true;
            OverlayListView.OverlayObject.OnAnimationEndListener onAnimationEndListener = overlayObject.l;
            if (onAnimationEndListener != null) {
                ((AnonymousClass10) onAnimationEndListener).a();
            }
        }
        if (!z) {
            j(false);
        }
    }

    public final void j(boolean z) {
        this.M = null;
        this.N = null;
        this.k0 = false;
        if (this.l0) {
            this.l0 = false;
            t(z);
        }
        this.J.setEnabled(true);
    }

    public final int k(int i, int i2) {
        if (i >= i2) {
            return (int) (((this.q * i2) / i) + 0.5f);
        }
        return (int) (((this.q * 9.0f) / 16.0f) + 0.5f);
    }

    public final int l(boolean z) {
        if (!z && this.H.getVisibility() != 0) {
            return 0;
        }
        int paddingBottom = this.F.getPaddingBottom() + this.F.getPaddingTop();
        if (z) {
            paddingBottom += this.G.getMeasuredHeight();
        }
        if (this.H.getVisibility() == 0) {
            paddingBottom += this.H.getMeasuredHeight();
        }
        if (z && this.H.getVisibility() == 0) {
            return this.I.getMeasuredHeight() + paddingBottom;
        }
        return paddingBottom;
    }

    public final boolean m() {
        MediaRouter.RouteInfo routeInfo = this.m;
        if (routeInfo.f() && DesugarCollections.unmodifiableList(routeInfo.v).size() > 1) {
            return true;
        }
        return false;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.p = true;
        this.k.a(MediaRouteSelector.f1375c, this.l, 2);
        p(MediaRouter.i());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.view.View$OnClickListener, java.lang.Object] */
    @Override // androidx.appcompat.app.AlertDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        Interpolator interpolator;
        super.onCreate(bundle);
        getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        setContentView(R.layout.mr_controller_material_dialog_b);
        findViewById(android.R.id.button3).setVisibility(8);
        ClickListener clickListener = new ClickListener();
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.mr_expandable_area);
        this.v = frameLayout;
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: androidx.mediarouter.app.MediaRouteControllerDialog.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaRouteControllerDialog.this.dismiss();
            }
        });
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.mr_dialog_area);
        this.w = linearLayout;
        linearLayout.setOnClickListener(new Object());
        int i = androidx.appcompat.R.attr.colorPrimary;
        Context context = this.n;
        int f = MediaRouterThemeHelper.f(context, i);
        if (ColorUtils.f(f, MediaRouterThemeHelper.f(context, android.R.attr.colorBackground)) < 3.0d) {
            f = MediaRouterThemeHelper.f(context, androidx.appcompat.R.attr.colorAccent);
        }
        Button button = (Button) findViewById(android.R.id.button2);
        this.r = button;
        button.setText(R.string.mr_controller_disconnect);
        this.r.setTextColor(f);
        this.r.setOnClickListener(clickListener);
        Button button2 = (Button) findViewById(android.R.id.button1);
        this.s = button2;
        button2.setText(R.string.mr_controller_stop_casting);
        this.s.setTextColor(f);
        this.s.setOnClickListener(clickListener);
        this.C = (TextView) findViewById(R.id.mr_name);
        ((ImageButton) findViewById(R.id.mr_close)).setOnClickListener(clickListener);
        this.y = (FrameLayout) findViewById(R.id.mr_custom_control);
        this.x = (FrameLayout) findViewById(R.id.mr_default_control);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: androidx.mediarouter.app.MediaRouteControllerDialog.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PendingIntent sessionActivity;
                MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
                MediaControllerCompat mediaControllerCompat = mediaRouteControllerDialog.X;
                if (mediaControllerCompat != null && (sessionActivity = mediaControllerCompat.getSessionActivity()) != null) {
                    try {
                        sessionActivity.send();
                        mediaRouteControllerDialog.dismiss();
                    } catch (PendingIntent.CanceledException unused) {
                        Log.e("MediaRouteCtrlDialog", sessionActivity + " was not sent, it had been canceled.");
                    }
                }
            }
        };
        ImageView imageView = (ImageView) findViewById(R.id.mr_art);
        this.z = imageView;
        imageView.setOnClickListener(onClickListener);
        findViewById(R.id.mr_control_title_container).setOnClickListener(onClickListener);
        this.F = (LinearLayout) findViewById(R.id.mr_media_main_control);
        this.I = findViewById(R.id.mr_control_divider);
        this.G = (RelativeLayout) findViewById(R.id.mr_playback_control);
        this.A = (TextView) findViewById(R.id.mr_control_title);
        this.B = (TextView) findViewById(R.id.mr_control_subtitle);
        ImageButton imageButton = (ImageButton) findViewById(R.id.mr_control_playback_ctrl);
        this.t = imageButton;
        imageButton.setOnClickListener(clickListener);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.mr_volume_control);
        this.H = linearLayout2;
        linearLayout2.setVisibility(8);
        SeekBar seekBar = (SeekBar) findViewById(R.id.mr_volume_slider);
        this.P = seekBar;
        MediaRouter.RouteInfo routeInfo = this.m;
        seekBar.setTag(routeInfo);
        VolumeChangeListener volumeChangeListener = new VolumeChangeListener();
        this.Q = volumeChangeListener;
        this.P.setOnSeekBarChangeListener(volumeChangeListener);
        this.J = (OverlayListView) findViewById(R.id.mr_volume_group_list);
        this.L = new ArrayList();
        VolumeGroupAdapter volumeGroupAdapter = new VolumeGroupAdapter(this.J.getContext(), this.L);
        this.K = volumeGroupAdapter;
        this.J.setAdapter((ListAdapter) volumeGroupAdapter);
        this.O = new HashSet();
        LinearLayout linearLayout3 = this.F;
        OverlayListView overlayListView = this.J;
        boolean m = m();
        int f2 = MediaRouterThemeHelper.f(context, androidx.appcompat.R.attr.colorPrimary);
        int f3 = MediaRouterThemeHelper.f(context, androidx.appcompat.R.attr.colorPrimaryDark);
        if (m && MediaRouterThemeHelper.b(context) == -570425344) {
            f3 = f2;
            f2 = -1;
        }
        linearLayout3.setBackgroundColor(f2);
        overlayListView.setBackgroundColor(f3);
        linearLayout3.setTag(Integer.valueOf(f2));
        overlayListView.setTag(Integer.valueOf(f3));
        MediaRouteVolumeSlider mediaRouteVolumeSlider = (MediaRouteVolumeSlider) this.P;
        LinearLayout linearLayout4 = this.F;
        int b = MediaRouterThemeHelper.b(context);
        if (Color.alpha(b) != 255) {
            b = ColorUtils.i(b, ((Integer) linearLayout4.getTag()).intValue());
        }
        mediaRouteVolumeSlider.a(b, b);
        HashMap hashMap = new HashMap();
        this.W = hashMap;
        hashMap.put(routeInfo, this.P);
        MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton = (MediaRouteExpandCollapseButton) findViewById(R.id.mr_group_expand_collapse);
        this.u = mediaRouteExpandCollapseButton;
        mediaRouteExpandCollapseButton.m = new View.OnClickListener() { // from class: androidx.mediarouter.app.MediaRouteControllerDialog.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Interpolator interpolator2;
                MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
                boolean z = mediaRouteControllerDialog.j0;
                mediaRouteControllerDialog.j0 = !z;
                if (!z) {
                    mediaRouteControllerDialog.J.setVisibility(0);
                }
                if (mediaRouteControllerDialog.j0) {
                    interpolator2 = mediaRouteControllerDialog.q0;
                } else {
                    interpolator2 = mediaRouteControllerDialog.r0;
                }
                mediaRouteControllerDialog.p0 = interpolator2;
                mediaRouteControllerDialog.t(true);
            }
        };
        if (this.j0) {
            interpolator = this.q0;
        } else {
            interpolator = this.r0;
        }
        this.p0 = interpolator;
        this.m0 = context.getResources().getInteger(R.integer.mr_controller_volume_group_list_animation_duration_ms);
        this.n0 = context.getResources().getInteger(R.integer.mr_controller_volume_group_list_fade_in_duration_ms);
        this.o0 = context.getResources().getInteger(R.integer.mr_controller_volume_group_list_fade_out_duration_ms);
        this.o = true;
        s();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.k.p(this.l);
        p(null);
        this.p = false;
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.app.AlertDialog, android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        int i2;
        if (i != 25 && i != 24) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.E || !this.j0) {
            if (i == 25) {
                i2 = -1;
            } else {
                i2 = 1;
            }
            this.m.l(i2);
        }
        return true;
    }

    @Override // androidx.appcompat.app.AlertDialog, android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 25 && i != 24) {
            return super.onKeyUp(i, keyEvent);
        }
        return true;
    }

    public final void p(MediaSessionCompat.Token token) {
        MediaControllerCompat mediaControllerCompat = this.X;
        MediaDescriptionCompat mediaDescriptionCompat = null;
        MediaControllerCallback mediaControllerCallback = this.Y;
        if (mediaControllerCompat != null) {
            mediaControllerCompat.unregisterCallback(mediaControllerCallback);
            this.X = null;
        }
        if (token == null || !this.p) {
            return;
        }
        MediaControllerCompat mediaControllerCompat2 = new MediaControllerCompat(this.n, token);
        this.X = mediaControllerCompat2;
        mediaControllerCompat2.registerCallback(mediaControllerCallback);
        MediaMetadataCompat metadata = this.X.getMetadata();
        if (metadata != null) {
            mediaDescriptionCompat = metadata.getDescription();
        }
        this.a0 = mediaDescriptionCompat;
        this.Z = this.X.getPlaybackState();
        r();
        q(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0154  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q(boolean r13) {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteControllerDialog.q(boolean):void");
    }

    public final void r() {
        Bitmap iconBitmap;
        Bitmap bitmap;
        Uri uri;
        MediaDescriptionCompat mediaDescriptionCompat = this.a0;
        Uri uri2 = null;
        if (mediaDescriptionCompat == null) {
            iconBitmap = null;
        } else {
            iconBitmap = mediaDescriptionCompat.getIconBitmap();
        }
        MediaDescriptionCompat mediaDescriptionCompat2 = this.a0;
        if (mediaDescriptionCompat2 != null) {
            uri2 = mediaDescriptionCompat2.getIconUri();
        }
        FetchArtTask fetchArtTask = this.b0;
        if (fetchArtTask == null) {
            bitmap = this.c0;
        } else {
            bitmap = fetchArtTask.f1304a;
        }
        if (fetchArtTask == null) {
            uri = this.d0;
        } else {
            uri = fetchArtTask.b;
        }
        if (bitmap == iconBitmap) {
            if (bitmap == null) {
                if (uri == null || !uri.equals(uri2)) {
                    if (uri == null && uri2 == null) {
                        return;
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
        if (!m() || this.E) {
            FetchArtTask fetchArtTask2 = this.b0;
            if (fetchArtTask2 != null) {
                fetchArtTask2.cancel(true);
            }
            FetchArtTask fetchArtTask3 = new FetchArtTask();
            this.b0 = fetchArtTask3;
            fetchArtTask3.execute(new Void[0]);
        }
    }

    public final void s() {
        Context context = this.n;
        int a2 = MediaRouteDialogHelper.a(context);
        getWindow().setLayout(a2, -2);
        View decorView = getWindow().getDecorView();
        this.q = (a2 - decorView.getPaddingLeft()) - decorView.getPaddingRight();
        Resources resources = context.getResources();
        this.S = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_item_icon_size);
        this.T = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_item_height);
        this.U = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_max_height);
        this.c0 = null;
        this.d0 = null;
        r();
        q(false);
    }

    public final void t(final boolean z) {
        this.x.requestLayout();
        this.x.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.mediarouter.app.MediaRouteControllerDialog.6
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                int i;
                int i2;
                boolean z2;
                boolean z3;
                final HashMap hashMap;
                final HashMap hashMap2;
                Bitmap bitmap;
                ImageView.ScaleType scaleType;
                final MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
                mediaRouteControllerDialog.x.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                if (mediaRouteControllerDialog.k0) {
                    mediaRouteControllerDialog.l0 = true;
                    return;
                }
                MediaRouter.RouteInfo routeInfo = mediaRouteControllerDialog.m;
                int i3 = mediaRouteControllerDialog.F.getLayoutParams().height;
                MediaRouteControllerDialog.o(mediaRouteControllerDialog.F, -1);
                mediaRouteControllerDialog.u(mediaRouteControllerDialog.h());
                View decorView = mediaRouteControllerDialog.getWindow().getDecorView();
                decorView.measure(View.MeasureSpec.makeMeasureSpec(mediaRouteControllerDialog.getWindow().getAttributes().width, 1073741824), 0);
                MediaRouteControllerDialog.o(mediaRouteControllerDialog.F, i3);
                if ((mediaRouteControllerDialog.z.getDrawable() instanceof BitmapDrawable) && (bitmap = ((BitmapDrawable) mediaRouteControllerDialog.z.getDrawable()).getBitmap()) != null) {
                    i = mediaRouteControllerDialog.k(bitmap.getWidth(), bitmap.getHeight());
                    ImageView imageView = mediaRouteControllerDialog.z;
                    if (bitmap.getWidth() >= bitmap.getHeight()) {
                        scaleType = ImageView.ScaleType.FIT_XY;
                    } else {
                        scaleType = ImageView.ScaleType.FIT_CENTER;
                    }
                    imageView.setScaleType(scaleType);
                } else {
                    i = 0;
                }
                int l = mediaRouteControllerDialog.l(mediaRouteControllerDialog.h());
                int size = mediaRouteControllerDialog.L.size();
                if (mediaRouteControllerDialog.m()) {
                    i2 = DesugarCollections.unmodifiableList(routeInfo.v).size() * mediaRouteControllerDialog.T;
                } else {
                    i2 = 0;
                }
                if (size > 0) {
                    i2 += mediaRouteControllerDialog.V;
                }
                int min = Math.min(i2, mediaRouteControllerDialog.U);
                if (!mediaRouteControllerDialog.j0) {
                    min = 0;
                }
                int max = Math.max(i, min) + l;
                Rect rect = new Rect();
                decorView.getWindowVisibleDisplayFrame(rect);
                int height = rect.height() - (mediaRouteControllerDialog.w.getMeasuredHeight() - mediaRouteControllerDialog.x.getMeasuredHeight());
                if (i > 0 && max <= height) {
                    mediaRouteControllerDialog.z.setVisibility(0);
                    MediaRouteControllerDialog.o(mediaRouteControllerDialog.z, i);
                } else {
                    if (mediaRouteControllerDialog.F.getMeasuredHeight() + mediaRouteControllerDialog.J.getLayoutParams().height >= mediaRouteControllerDialog.x.getMeasuredHeight()) {
                        mediaRouteControllerDialog.z.setVisibility(8);
                    }
                    max = min + l;
                    i = 0;
                }
                if (mediaRouteControllerDialog.h() && max <= height) {
                    mediaRouteControllerDialog.G.setVisibility(0);
                } else {
                    mediaRouteControllerDialog.G.setVisibility(8);
                }
                if (mediaRouteControllerDialog.G.getVisibility() == 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                mediaRouteControllerDialog.u(z2);
                if (mediaRouteControllerDialog.G.getVisibility() == 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                int l2 = mediaRouteControllerDialog.l(z3);
                int max2 = Math.max(i, min) + l2;
                if (max2 > height) {
                    min -= max2 - height;
                } else {
                    height = max2;
                }
                mediaRouteControllerDialog.F.clearAnimation();
                mediaRouteControllerDialog.J.clearAnimation();
                mediaRouteControllerDialog.x.clearAnimation();
                boolean z4 = z;
                if (z4) {
                    mediaRouteControllerDialog.g(mediaRouteControllerDialog.F, l2);
                    mediaRouteControllerDialog.g(mediaRouteControllerDialog.J, min);
                    mediaRouteControllerDialog.g(mediaRouteControllerDialog.x, height);
                } else {
                    MediaRouteControllerDialog.o(mediaRouteControllerDialog.F, l2);
                    MediaRouteControllerDialog.o(mediaRouteControllerDialog.J, min);
                    MediaRouteControllerDialog.o(mediaRouteControllerDialog.x, height);
                }
                MediaRouteControllerDialog.o(mediaRouteControllerDialog.v, rect.height());
                List unmodifiableList = DesugarCollections.unmodifiableList(routeInfo.v);
                if (unmodifiableList.isEmpty()) {
                    mediaRouteControllerDialog.L.clear();
                    mediaRouteControllerDialog.K.notifyDataSetChanged();
                    return;
                }
                if (new HashSet(mediaRouteControllerDialog.L).equals(new HashSet(unmodifiableList))) {
                    mediaRouteControllerDialog.K.notifyDataSetChanged();
                    return;
                }
                if (z4) {
                    OverlayListView overlayListView = mediaRouteControllerDialog.J;
                    VolumeGroupAdapter volumeGroupAdapter = mediaRouteControllerDialog.K;
                    hashMap = new HashMap();
                    int firstVisiblePosition = overlayListView.getFirstVisiblePosition();
                    for (int i4 = 0; i4 < overlayListView.getChildCount(); i4++) {
                        MediaRouter.RouteInfo item = volumeGroupAdapter.getItem(firstVisiblePosition + i4);
                        View childAt = overlayListView.getChildAt(i4);
                        hashMap.put(item, new Rect(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom()));
                    }
                } else {
                    hashMap = null;
                }
                if (z4) {
                    Context context = mediaRouteControllerDialog.n;
                    OverlayListView overlayListView2 = mediaRouteControllerDialog.J;
                    VolumeGroupAdapter volumeGroupAdapter2 = mediaRouteControllerDialog.K;
                    hashMap2 = new HashMap();
                    int firstVisiblePosition2 = overlayListView2.getFirstVisiblePosition();
                    for (int i5 = 0; i5 < overlayListView2.getChildCount(); i5++) {
                        MediaRouter.RouteInfo item2 = volumeGroupAdapter2.getItem(firstVisiblePosition2 + i5);
                        View childAt2 = overlayListView2.getChildAt(i5);
                        Bitmap createBitmap = Bitmap.createBitmap(childAt2.getWidth(), childAt2.getHeight(), Bitmap.Config.ARGB_8888);
                        childAt2.draw(new Canvas(createBitmap));
                        hashMap2.put(item2, new BitmapDrawable(context.getResources(), createBitmap));
                    }
                } else {
                    hashMap2 = null;
                }
                ArrayList arrayList = mediaRouteControllerDialog.L;
                HashSet hashSet = new HashSet(unmodifiableList);
                hashSet.removeAll(arrayList);
                mediaRouteControllerDialog.M = hashSet;
                HashSet hashSet2 = new HashSet(mediaRouteControllerDialog.L);
                hashSet2.removeAll(unmodifiableList);
                mediaRouteControllerDialog.N = hashSet2;
                mediaRouteControllerDialog.L.addAll(0, mediaRouteControllerDialog.M);
                mediaRouteControllerDialog.L.removeAll(mediaRouteControllerDialog.N);
                mediaRouteControllerDialog.K.notifyDataSetChanged();
                if (z4 && mediaRouteControllerDialog.j0) {
                    if (mediaRouteControllerDialog.N.size() + mediaRouteControllerDialog.M.size() > 0) {
                        mediaRouteControllerDialog.J.setEnabled(false);
                        mediaRouteControllerDialog.J.requestLayout();
                        mediaRouteControllerDialog.k0 = true;
                        mediaRouteControllerDialog.J.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.mediarouter.app.MediaRouteControllerDialog.8
                            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                            public final void onGlobalLayout() {
                                Map map;
                                Map map2;
                                OverlayListView.OverlayObject overlayObject;
                                int i6;
                                MediaRouter.RouteInfo routeInfo2;
                                final MediaRouteControllerDialog mediaRouteControllerDialog2 = MediaRouteControllerDialog.this;
                                mediaRouteControllerDialog2.J.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                                HashSet hashSet3 = mediaRouteControllerDialog2.M;
                                if (hashSet3 != null && mediaRouteControllerDialog2.N != null) {
                                    int size2 = hashSet3.size() - mediaRouteControllerDialog2.N.size();
                                    Animation.AnimationListener animationListener = new Animation.AnimationListener() { // from class: androidx.mediarouter.app.MediaRouteControllerDialog.9
                                        @Override // android.view.animation.Animation.AnimationListener
                                        public final void onAnimationEnd(Animation animation) {
                                        }

                                        @Override // android.view.animation.Animation.AnimationListener
                                        public final void onAnimationRepeat(Animation animation) {
                                        }

                                        @Override // android.view.animation.Animation.AnimationListener
                                        public final void onAnimationStart(Animation animation) {
                                            MediaRouteControllerDialog mediaRouteControllerDialog3 = MediaRouteControllerDialog.this;
                                            OverlayListView overlayListView3 = mediaRouteControllerDialog3.J;
                                            ArrayList arrayList2 = overlayListView3.f1337c;
                                            int size3 = arrayList2.size();
                                            int i7 = 0;
                                            while (i7 < size3) {
                                                Object obj = arrayList2.get(i7);
                                                i7++;
                                                OverlayListView.OverlayObject overlayObject2 = (OverlayListView.OverlayObject) obj;
                                                if (!overlayObject2.j) {
                                                    overlayObject2.i = overlayListView3.getDrawingTime();
                                                    overlayObject2.j = true;
                                                }
                                            }
                                            mediaRouteControllerDialog3.J.postDelayed(mediaRouteControllerDialog3.t0, mediaRouteControllerDialog3.m0);
                                        }
                                    };
                                    int firstVisiblePosition3 = mediaRouteControllerDialog2.J.getFirstVisiblePosition();
                                    int i7 = 0;
                                    boolean z5 = false;
                                    while (true) {
                                        int childCount = mediaRouteControllerDialog2.J.getChildCount();
                                        map = hashMap;
                                        map2 = hashMap2;
                                        if (i7 >= childCount) {
                                            break;
                                        }
                                        View childAt3 = mediaRouteControllerDialog2.J.getChildAt(i7);
                                        MediaRouter.RouteInfo routeInfo3 = (MediaRouter.RouteInfo) mediaRouteControllerDialog2.K.getItem(firstVisiblePosition3 + i7);
                                        Rect rect2 = (Rect) map.get(routeInfo3);
                                        int top = childAt3.getTop();
                                        if (rect2 != null) {
                                            i6 = rect2.top;
                                        } else {
                                            i6 = (mediaRouteControllerDialog2.T * size2) + top;
                                        }
                                        AnimationSet animationSet = new AnimationSet(true);
                                        HashSet hashSet4 = mediaRouteControllerDialog2.M;
                                        if (hashSet4 != null && hashSet4.contains(routeInfo3)) {
                                            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 0.0f);
                                            routeInfo2 = routeInfo3;
                                            alphaAnimation.setDuration(mediaRouteControllerDialog2.n0);
                                            animationSet.addAnimation(alphaAnimation);
                                            i6 = top;
                                        } else {
                                            routeInfo2 = routeInfo3;
                                        }
                                        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, i6 - top, 0.0f);
                                        translateAnimation.setDuration(mediaRouteControllerDialog2.m0);
                                        animationSet.addAnimation(translateAnimation);
                                        animationSet.setFillAfter(true);
                                        animationSet.setFillEnabled(true);
                                        animationSet.setInterpolator(mediaRouteControllerDialog2.p0);
                                        if (!z5) {
                                            animationSet.setAnimationListener(animationListener);
                                            z5 = true;
                                        }
                                        childAt3.clearAnimation();
                                        childAt3.startAnimation(animationSet);
                                        MediaRouter.RouteInfo routeInfo4 = routeInfo2;
                                        map.remove(routeInfo4);
                                        map2.remove(routeInfo4);
                                        i7++;
                                    }
                                    for (Map.Entry entry : map2.entrySet()) {
                                        MediaRouter.RouteInfo routeInfo5 = (MediaRouter.RouteInfo) entry.getKey();
                                        BitmapDrawable bitmapDrawable = (BitmapDrawable) entry.getValue();
                                        Rect rect3 = (Rect) map.get(routeInfo5);
                                        if (mediaRouteControllerDialog2.N.contains(routeInfo5)) {
                                            overlayObject = new OverlayListView.OverlayObject(bitmapDrawable, rect3);
                                            overlayObject.h = 0.0f;
                                            overlayObject.e = mediaRouteControllerDialog2.o0;
                                            overlayObject.d = mediaRouteControllerDialog2.p0;
                                        } else {
                                            int i8 = mediaRouteControllerDialog2.T * size2;
                                            OverlayListView.OverlayObject overlayObject2 = new OverlayListView.OverlayObject(bitmapDrawable, rect3);
                                            overlayObject2.g = i8;
                                            overlayObject2.e = mediaRouteControllerDialog2.m0;
                                            overlayObject2.d = mediaRouteControllerDialog2.p0;
                                            overlayObject2.l = new AnonymousClass10(routeInfo5);
                                            mediaRouteControllerDialog2.O.add(routeInfo5);
                                            overlayObject = overlayObject2;
                                        }
                                        mediaRouteControllerDialog2.J.f1337c.add(overlayObject);
                                    }
                                }
                            }
                        });
                        return;
                    }
                }
                mediaRouteControllerDialog.M = null;
                mediaRouteControllerDialog.N = null;
            }
        });
    }

    public final void u(boolean z) {
        int i;
        View view = this.I;
        int i2 = 0;
        if (this.H.getVisibility() == 0 && z) {
            i = 0;
        } else {
            i = 8;
        }
        view.setVisibility(i);
        LinearLayout linearLayout = this.F;
        if (this.H.getVisibility() == 8 && !z) {
            i2 = 8;
        }
        linearLayout.setVisibility(i2);
    }
}
