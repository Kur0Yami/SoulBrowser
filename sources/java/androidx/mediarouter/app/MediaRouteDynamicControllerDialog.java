package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.appcompat.app.AppCompatDialog;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.mediarouter.R;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

@RestrictTo
/* loaded from: classes.dex */
public class MediaRouteDynamicControllerDialog extends AppCompatDialog {
    public static final /* synthetic */ int X = 0;
    public MediaRouter.RouteInfo A;
    public HashMap B;
    public boolean C;
    public boolean D;
    public boolean E;
    public ImageButton F;
    public Button G;
    public ImageView H;
    public View I;
    public ImageView J;
    public TextView K;
    public TextView L;
    public String M;
    public MediaControllerCompat N;
    public final MediaControllerCallback O;
    public MediaDescriptionCompat P;
    public FetchArtTask Q;
    public Bitmap R;
    public Uri S;
    public boolean T;
    public Bitmap U;
    public int V;
    public final boolean W;
    public final MediaRouter j;
    public final MediaRouterCallback k;
    public MediaRouteSelector l;
    public MediaRouter.RouteInfo m;
    public final ArrayList n;
    public final ArrayList o;
    public final ArrayList p;
    public final ArrayList q;
    public final Context r;
    public boolean s;
    public boolean t;
    public long u;
    public final Handler v;
    public RecyclerView w;
    public RecyclerAdapter x;
    public VolumeChangeListener y;
    public HashMap z;

    /* loaded from: classes.dex */
    public class FetchArtTask extends AsyncTask<Void, Void, Bitmap> {

        /* renamed from: a, reason: collision with root package name */
        public final Bitmap f1323a;
        public final Uri b;

        /* renamed from: c, reason: collision with root package name */
        public int f1324c;

        public FetchArtTask() {
            Bitmap iconBitmap;
            MediaDescriptionCompat mediaDescriptionCompat = MediaRouteDynamicControllerDialog.this.P;
            if (mediaDescriptionCompat == null) {
                iconBitmap = null;
            } else {
                iconBitmap = mediaDescriptionCompat.getIconBitmap();
            }
            if (iconBitmap != null && iconBitmap.isRecycled()) {
                Log.w("MediaRouteCtrlDialog", "Can't fetch the given art bitmap because it's already recycled.");
                iconBitmap = null;
            }
            this.f1323a = iconBitmap;
            MediaDescriptionCompat mediaDescriptionCompat2 = MediaRouteDynamicControllerDialog.this.P;
            this.b = mediaDescriptionCompat2 != null ? mediaDescriptionCompat2.getIconUri() : null;
        }

        public final BufferedInputStream a(Uri uri) {
            InputStream openInputStream;
            String lowerCase = uri.getScheme().toLowerCase();
            if (!"android.resource".equals(lowerCase) && !"content".equals(lowerCase) && !"file".equals(lowerCase)) {
                URLConnection openConnection = new URL(uri.toString()).openConnection();
                openConnection.setConnectTimeout(30000);
                openConnection.setReadTimeout(30000);
                openInputStream = openConnection.getInputStream();
            } else {
                openInputStream = MediaRouteDynamicControllerDialog.this.r.getContentResolver().openInputStream(uri);
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
        /* JADX WARN: Removed duplicated region for block: B:72:0x00f6  */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.graphics.Bitmap doInBackground(java.lang.Void[] r10) {
            /*
                Method dump skipped, instructions count: 262
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.FetchArtTask.doInBackground(java.lang.Object[]):java.lang.Object");
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            mediaRouteDynamicControllerDialog.Q = null;
            Bitmap bitmap3 = mediaRouteDynamicControllerDialog.R;
            Bitmap bitmap4 = this.f1323a;
            boolean equals = Objects.equals(bitmap3, bitmap4);
            Uri uri = this.b;
            if (equals && Objects.equals(mediaRouteDynamicControllerDialog.S, uri)) {
                return;
            }
            mediaRouteDynamicControllerDialog.R = bitmap4;
            mediaRouteDynamicControllerDialog.U = bitmap2;
            mediaRouteDynamicControllerDialog.S = uri;
            mediaRouteDynamicControllerDialog.V = this.f1324c;
            mediaRouteDynamicControllerDialog.T = true;
            mediaRouteDynamicControllerDialog.j();
        }

        @Override // android.os.AsyncTask
        public final void onPreExecute() {
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            mediaRouteDynamicControllerDialog.T = false;
            mediaRouteDynamicControllerDialog.U = null;
            mediaRouteDynamicControllerDialog.V = 0;
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
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            mediaRouteDynamicControllerDialog.P = description;
            mediaRouteDynamicControllerDialog.f();
            mediaRouteDynamicControllerDialog.j();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.Callback
        public final void onSessionDestroyed() {
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            MediaControllerCompat mediaControllerCompat = mediaRouteDynamicControllerDialog.N;
            if (mediaControllerCompat != null) {
                mediaControllerCompat.unregisterCallback(mediaRouteDynamicControllerDialog.O);
                mediaRouteDynamicControllerDialog.N = null;
            }
        }
    }

    /* loaded from: classes.dex */
    public abstract class MediaRouteVolumeSliderHolder extends RecyclerView.ViewHolder {
        public MediaRouter.RouteInfo u;
        public final ImageButton v;
        public final MediaRouteVolumeSlider w;

        public MediaRouteVolumeSliderHolder(View view, ImageButton imageButton, MediaRouteVolumeSlider mediaRouteVolumeSlider) {
            super(view);
            int color;
            int color2;
            this.v = imageButton;
            this.w = mediaRouteVolumeSlider;
            Context context = MediaRouteDynamicControllerDialog.this.r;
            int i = R.drawable.mr_cast_mute_button;
            int i2 = MediaRouterThemeHelper.f1336a;
            Drawable a2 = AppCompatResources.a(context, i);
            if (MediaRouterThemeHelper.h(context)) {
                a2.setTint(context.getColor(MediaRouterThemeHelper.f1336a));
            }
            imageButton.setImageDrawable(a2);
            if (MediaRouterThemeHelper.h(context)) {
                color = context.getColor(R.color.mr_cast_progressbar_progress_and_thumb_light);
                color2 = context.getColor(R.color.mr_cast_progressbar_background_light);
            } else {
                color = context.getColor(R.color.mr_cast_progressbar_progress_and_thumb_dark);
                color2 = context.getColor(R.color.mr_cast_progressbar_background_dark);
            }
            mediaRouteVolumeSlider.a(color, color2);
        }

        public final void s(MediaRouter.RouteInfo routeInfo) {
            boolean z;
            this.u = routeInfo;
            int i = routeInfo.p;
            if (i == 0) {
                z = true;
            } else {
                z = false;
            }
            ImageButton imageButton = this.v;
            imageButton.setActivated(z);
            imageButton.setOnClickListener(new View.OnClickListener() { // from class: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.MediaRouteVolumeSliderHolder.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int max;
                    MediaRouteVolumeSliderHolder mediaRouteVolumeSliderHolder = MediaRouteVolumeSliderHolder.this;
                    MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
                    if (mediaRouteDynamicControllerDialog.A != null) {
                        mediaRouteDynamicControllerDialog.v.removeMessages(2);
                    }
                    mediaRouteDynamicControllerDialog.A = mediaRouteVolumeSliderHolder.u;
                    boolean isActivated = view.isActivated();
                    boolean z2 = !isActivated;
                    if (!isActivated) {
                        max = 0;
                    } else {
                        Integer num = (Integer) mediaRouteDynamicControllerDialog.B.get(mediaRouteVolumeSliderHolder.u.f1387c);
                        if (num == null) {
                            max = 1;
                        } else {
                            max = Math.max(1, num.intValue());
                        }
                    }
                    mediaRouteVolumeSliderHolder.t(z2);
                    mediaRouteVolumeSliderHolder.w.setProgress(max);
                    mediaRouteVolumeSliderHolder.u.k(max);
                    mediaRouteDynamicControllerDialog.v.sendEmptyMessageDelayed(2, 500L);
                }
            });
            MediaRouter.RouteInfo routeInfo2 = this.u;
            MediaRouteVolumeSlider mediaRouteVolumeSlider = this.w;
            mediaRouteVolumeSlider.setTag(routeInfo2);
            mediaRouteVolumeSlider.setMax(routeInfo.q);
            mediaRouteVolumeSlider.setProgress(i);
            mediaRouteVolumeSlider.setOnSeekBarChangeListener(MediaRouteDynamicControllerDialog.this.y);
        }

        public final void t(boolean z) {
            ImageButton imageButton = this.v;
            if (imageButton.isActivated() == z) {
                return;
            }
            imageButton.setActivated(z);
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            if (z) {
                mediaRouteDynamicControllerDialog.B.put(this.u.f1387c, Integer.valueOf(this.w.getProgress()));
            } else {
                mediaRouteDynamicControllerDialog.B.remove(this.u.f1387c);
            }
        }
    }

    /* loaded from: classes.dex */
    public final class MediaRouterCallback extends MediaRouter.Callback {
        public MediaRouterCallback() {
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void d(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteDynamicControllerDialog.this.l();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void e(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouter.GroupRouteInfo a2;
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            if (routeInfo == mediaRouteDynamicControllerDialog.m && MediaRouter.RouteInfo.c() != null) {
                MediaRouter.ProviderInfo providerInfo = routeInfo.f1386a;
                providerInfo.getClass();
                MediaRouter.c();
                for (MediaRouter.RouteInfo routeInfo2 : DesugarCollections.unmodifiableList(providerInfo.b)) {
                    if (!DesugarCollections.unmodifiableList(mediaRouteDynamicControllerDialog.m.v).contains(routeInfo2) && (a2 = mediaRouteDynamicControllerDialog.m.a()) != null && a2.p(routeInfo2) && !mediaRouteDynamicControllerDialog.o.contains(routeInfo2)) {
                        mediaRouteDynamicControllerDialog.m();
                        mediaRouteDynamicControllerDialog.k();
                        return;
                    }
                }
            }
            mediaRouteDynamicControllerDialog.l();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void h(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteDynamicControllerDialog.this.l();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void i(MediaRouter.RouteInfo routeInfo) {
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            mediaRouteDynamicControllerDialog.m = routeInfo;
            mediaRouteDynamicControllerDialog.m();
            mediaRouteDynamicControllerDialog.k();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void k() {
            MediaRouteDynamicControllerDialog.this.l();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void m(MediaRouter.RouteInfo routeInfo) {
            MediaRouteVolumeSliderHolder mediaRouteVolumeSliderHolder;
            boolean z;
            int i = MediaRouteDynamicControllerDialog.X;
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            if (mediaRouteDynamicControllerDialog.A != routeInfo && (mediaRouteVolumeSliderHolder = (MediaRouteVolumeSliderHolder) mediaRouteDynamicControllerDialog.z.get(routeInfo.f1387c)) != null) {
                int i2 = mediaRouteVolumeSliderHolder.u.p;
                if (i2 == 0) {
                    z = true;
                } else {
                    z = false;
                }
                mediaRouteVolumeSliderHolder.t(z);
                mediaRouteVolumeSliderHolder.w.setProgress(i2);
            }
        }
    }

    /* loaded from: classes.dex */
    public final class RecyclerAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        public final ArrayList d = new ArrayList();
        public final LayoutInflater e;
        public final Drawable f;
        public final Drawable g;
        public final Drawable h;
        public final Drawable i;
        public Item j;
        public final int k;
        public final AccelerateDecelerateInterpolator l;

        /* loaded from: classes.dex */
        public class GroupViewHolder extends RecyclerView.ViewHolder {
            public final View u;
            public final ImageView v;
            public final ProgressBar w;
            public final TextView x;
            public final float y;
            public MediaRouter.RouteInfo z;

            public GroupViewHolder(View view) {
                super(view);
                this.u = view;
                this.v = (ImageView) view.findViewById(R.id.mr_cast_group_icon);
                ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.mr_cast_group_progress_bar);
                this.w = progressBar;
                this.x = (TextView) view.findViewById(R.id.mr_cast_group_name);
                MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
                this.y = MediaRouterThemeHelper.c(mediaRouteDynamicControllerDialog.r);
                MediaRouterThemeHelper.i(mediaRouteDynamicControllerDialog.r, progressBar);
            }
        }

        /* loaded from: classes.dex */
        public class GroupVolumeViewHolder extends MediaRouteVolumeSliderHolder {
            public final TextView y;
            public final int z;

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public GroupVolumeViewHolder(android.view.View r5) {
                /*
                    r3 = this;
                    androidx.mediarouter.app.MediaRouteDynamicControllerDialog.RecyclerAdapter.this = r4
                    androidx.mediarouter.app.MediaRouteDynamicControllerDialog r4 = androidx.mediarouter.app.MediaRouteDynamicControllerDialog.this
                    int r0 = androidx.mediarouter.R.id.mr_cast_mute_button
                    android.view.View r0 = r5.findViewById(r0)
                    android.widget.ImageButton r0 = (android.widget.ImageButton) r0
                    int r1 = androidx.mediarouter.R.id.mr_cast_volume_slider
                    android.view.View r1 = r5.findViewById(r1)
                    androidx.mediarouter.app.MediaRouteVolumeSlider r1 = (androidx.mediarouter.app.MediaRouteVolumeSlider) r1
                    r3.<init>(r5, r0, r1)
                    int r0 = androidx.mediarouter.R.id.mr_group_volume_route_name
                    android.view.View r5 = r5.findViewById(r0)
                    android.widget.TextView r5 = (android.widget.TextView) r5
                    r3.y = r5
                    android.content.Context r4 = r4.r
                    android.content.res.Resources r4 = r4.getResources()
                    android.util.DisplayMetrics r5 = r4.getDisplayMetrics()
                    android.util.TypedValue r0 = new android.util.TypedValue
                    r0.<init>()
                    int r1 = androidx.mediarouter.R.dimen.mr_dynamic_volume_group_list_item_height
                    r2 = 1
                    r4.getValue(r1, r0, r2)
                    float r4 = r0.getDimension(r5)
                    int r4 = (int) r4
                    r3.z = r4
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.RecyclerAdapter.GroupVolumeViewHolder.<init>(androidx.mediarouter.app.MediaRouteDynamicControllerDialog$RecyclerAdapter, android.view.View):void");
            }
        }

        /* loaded from: classes.dex */
        public class HeaderViewHolder extends RecyclerView.ViewHolder {
            public final TextView u;

            public HeaderViewHolder(View view) {
                super(view);
                this.u = (TextView) view.findViewById(R.id.mr_cast_header_name);
            }
        }

        /* loaded from: classes.dex */
        public class Item {

            /* renamed from: a, reason: collision with root package name */
            public final Object f1331a;
            public final int b;

            public Item(int i, Object obj) {
                this.f1331a = obj;
                this.b = i;
            }
        }

        /* loaded from: classes.dex */
        public class RouteViewHolder extends MediaRouteVolumeSliderHolder {
            public final ProgressBar A;
            public final TextView B;
            public final RelativeLayout C;
            public final CheckBox D;
            public final float E;
            public final int F;
            public final View.OnClickListener G;
            public final View y;
            public final ImageView z;

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public RouteViewHolder(android.view.View r5) {
                /*
                    r3 = this;
                    androidx.mediarouter.app.MediaRouteDynamicControllerDialog.RecyclerAdapter.this = r4
                    androidx.mediarouter.app.MediaRouteDynamicControllerDialog r4 = androidx.mediarouter.app.MediaRouteDynamicControllerDialog.this
                    int r0 = androidx.mediarouter.R.id.mr_cast_mute_button
                    android.view.View r0 = r5.findViewById(r0)
                    android.widget.ImageButton r0 = (android.widget.ImageButton) r0
                    int r1 = androidx.mediarouter.R.id.mr_cast_volume_slider
                    android.view.View r1 = r5.findViewById(r1)
                    androidx.mediarouter.app.MediaRouteVolumeSlider r1 = (androidx.mediarouter.app.MediaRouteVolumeSlider) r1
                    r3.<init>(r5, r0, r1)
                    androidx.mediarouter.app.MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder$1 r0 = new androidx.mediarouter.app.MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder$1
                    r0.<init>()
                    r3.G = r0
                    r3.y = r5
                    int r0 = androidx.mediarouter.R.id.mr_cast_route_icon
                    android.view.View r0 = r5.findViewById(r0)
                    android.widget.ImageView r0 = (android.widget.ImageView) r0
                    r3.z = r0
                    int r0 = androidx.mediarouter.R.id.mr_cast_route_progress_bar
                    android.view.View r0 = r5.findViewById(r0)
                    android.widget.ProgressBar r0 = (android.widget.ProgressBar) r0
                    r3.A = r0
                    int r1 = androidx.mediarouter.R.id.mr_cast_route_name
                    android.view.View r1 = r5.findViewById(r1)
                    android.widget.TextView r1 = (android.widget.TextView) r1
                    r3.B = r1
                    int r1 = androidx.mediarouter.R.id.mr_cast_volume_layout
                    android.view.View r1 = r5.findViewById(r1)
                    android.widget.RelativeLayout r1 = (android.widget.RelativeLayout) r1
                    r3.C = r1
                    int r1 = androidx.mediarouter.R.id.mr_cast_checkbox
                    android.view.View r5 = r5.findViewById(r1)
                    android.widget.CheckBox r5 = (android.widget.CheckBox) r5
                    r3.D = r5
                    android.content.Context r4 = r4.r
                    int r1 = androidx.mediarouter.R.drawable.mr_cast_checkbox
                    android.graphics.drawable.Drawable r1 = androidx.appcompat.content.res.AppCompatResources.a(r4, r1)
                    boolean r2 = androidx.mediarouter.app.MediaRouterThemeHelper.h(r4)
                    if (r2 == 0) goto L69
                    int r2 = androidx.mediarouter.app.MediaRouterThemeHelper.f1336a
                    int r2 = r4.getColor(r2)
                    r1.setTint(r2)
                L69:
                    r5.setButtonDrawable(r1)
                    androidx.mediarouter.app.MediaRouterThemeHelper.i(r4, r0)
                    float r5 = androidx.mediarouter.app.MediaRouterThemeHelper.c(r4)
                    r3.E = r5
                    android.content.res.Resources r4 = r4.getResources()
                    android.util.DisplayMetrics r5 = r4.getDisplayMetrics()
                    android.util.TypedValue r0 = new android.util.TypedValue
                    r0.<init>()
                    int r1 = androidx.mediarouter.R.dimen.mr_dynamic_dialog_row_height
                    r2 = 1
                    r4.getValue(r1, r0, r2)
                    float r4 = r0.getDimension(r5)
                    int r4 = (int) r4
                    r3.F = r4
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.RecyclerAdapter.RouteViewHolder.<init>(androidx.mediarouter.app.MediaRouteDynamicControllerDialog$RecyclerAdapter, android.view.View):void");
            }

            public final boolean u(MediaRouter.RouteInfo routeInfo) {
                int i;
                if (!routeInfo.h()) {
                    MediaRouter.GroupRouteInfo a2 = MediaRouteDynamicControllerDialog.this.m.a();
                    if (a2 != null) {
                        MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor = (MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor) a2.x.get(routeInfo.f1387c);
                        if (dynamicRouteDescriptor != null) {
                            i = dynamicRouteDescriptor.b;
                        } else {
                            i = 4;
                        }
                        if (i == 3) {
                            return true;
                        }
                        return false;
                    }
                    return false;
                }
                return true;
            }

            public final void v(boolean z, boolean z2) {
                CheckBox checkBox = this.D;
                int i = 0;
                checkBox.setEnabled(false);
                this.y.setEnabled(false);
                checkBox.setChecked(z);
                if (z) {
                    this.z.setVisibility(4);
                    this.A.setVisibility(0);
                }
                if (z2) {
                    if (z) {
                        i = this.F;
                    }
                    RecyclerAdapter.this.v(this.C, i);
                }
            }
        }

        public RecyclerAdapter() {
            Context context = MediaRouteDynamicControllerDialog.this.r;
            this.e = LayoutInflater.from(context);
            this.f = MediaRouterThemeHelper.d(context, R.attr.mediaRouteDefaultIconDrawable);
            this.g = MediaRouterThemeHelper.d(context, R.attr.mediaRouteTvIconDrawable);
            this.h = MediaRouterThemeHelper.d(context, R.attr.mediaRouteSpeakerIconDrawable);
            this.i = MediaRouterThemeHelper.d(context, R.attr.mediaRouteSpeakerGroupIconDrawable);
            this.k = context.getResources().getInteger(R.integer.mr_cast_volume_slider_layout_animation_duration_ms);
            this.l = new AccelerateDecelerateInterpolator();
            y();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int d() {
            return this.d.size() + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int f(int i) {
            Item item;
            if (i == 0) {
                item = this.j;
            } else {
                item = (Item) this.d.get(i - 1);
            }
            return item.b;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void n(RecyclerView.ViewHolder viewHolder, int i) {
            Item item;
            Item item2;
            boolean z;
            MediaRouter.GroupRouteInfo a2;
            MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor;
            boolean z2;
            boolean z3;
            float f;
            float f2;
            float f3;
            ArrayList arrayList = this.d;
            if (i == 0) {
                item = this.j;
            } else {
                item = (Item) arrayList.get(i - 1);
            }
            int i2 = item.b;
            if (i == 0) {
                item2 = this.j;
            } else {
                item2 = (Item) arrayList.get(i - 1);
            }
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            int i3 = 0;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 == 4) {
                            final GroupViewHolder groupViewHolder = (GroupViewHolder) viewHolder;
                            View view = groupViewHolder.u;
                            MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) item2.f1331a;
                            groupViewHolder.z = routeInfo;
                            ImageView imageView = groupViewHolder.v;
                            imageView.setVisibility(0);
                            groupViewHolder.w.setVisibility(4);
                            RecyclerAdapter recyclerAdapter = RecyclerAdapter.this;
                            List unmodifiableList = DesugarCollections.unmodifiableList(MediaRouteDynamicControllerDialog.this.m.v);
                            if (unmodifiableList.size() == 1 && unmodifiableList.get(0) == routeInfo) {
                                f3 = groupViewHolder.y;
                            } else {
                                f3 = 1.0f;
                            }
                            view.setAlpha(f3);
                            view.setOnClickListener(new View.OnClickListener() { // from class: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.RecyclerAdapter.GroupViewHolder.1
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view2) {
                                    GroupViewHolder groupViewHolder2 = GroupViewHolder.this;
                                    MediaRouter mediaRouter = MediaRouteDynamicControllerDialog.this.j;
                                    MediaRouter.RouteInfo routeInfo2 = groupViewHolder2.z;
                                    mediaRouter.getClass();
                                    MediaRouter.u(routeInfo2);
                                    groupViewHolder2.v.setVisibility(4);
                                    groupViewHolder2.w.setVisibility(0);
                                }
                            });
                            imageView.setImageDrawable(recyclerAdapter.w(routeInfo));
                            groupViewHolder.x.setText(routeInfo.d);
                            return;
                        }
                        throw new IllegalStateException();
                    }
                    mediaRouteDynamicControllerDialog.z.put(((MediaRouter.RouteInfo) item2.f1331a).f1387c, (MediaRouteVolumeSliderHolder) viewHolder);
                    RouteViewHolder routeViewHolder = (RouteViewHolder) viewHolder;
                    float f4 = routeViewHolder.E;
                    View.OnClickListener onClickListener = routeViewHolder.G;
                    ImageView imageView2 = routeViewHolder.z;
                    View view2 = routeViewHolder.y;
                    CheckBox checkBox = routeViewHolder.D;
                    MediaRouter.RouteInfo routeInfo2 = (MediaRouter.RouteInfo) item2.f1331a;
                    RecyclerAdapter recyclerAdapter2 = RecyclerAdapter.this;
                    MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog2 = MediaRouteDynamicControllerDialog.this;
                    if (routeInfo2 == mediaRouteDynamicControllerDialog2.m && DesugarCollections.unmodifiableList(routeInfo2.v).size() > 0) {
                        Iterator it = DesugarCollections.unmodifiableList(routeInfo2.v).iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            MediaRouter.RouteInfo routeInfo3 = (MediaRouter.RouteInfo) it.next();
                            if (!mediaRouteDynamicControllerDialog2.o.contains(routeInfo3)) {
                                routeInfo2 = routeInfo3;
                                break;
                            }
                        }
                    }
                    routeViewHolder.s(routeInfo2);
                    imageView2.setImageDrawable(recyclerAdapter2.w(routeInfo2));
                    routeViewHolder.B.setText(routeInfo2.d);
                    checkBox.setVisibility(0);
                    boolean u = routeViewHolder.u(routeInfo2);
                    if (mediaRouteDynamicControllerDialog2.q.contains(routeInfo2) || ((routeViewHolder.u(routeInfo2) && DesugarCollections.unmodifiableList(mediaRouteDynamicControllerDialog2.m.v).size() < 2) || (routeViewHolder.u(routeInfo2) && ((a2 = mediaRouteDynamicControllerDialog2.m.a()) == null || (dynamicRouteDescriptor = (MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor) a2.x.get(routeInfo2.f1387c)) == null || !dynamicRouteDescriptor.f1366c)))) {
                        z = false;
                    } else {
                        z = true;
                    }
                    checkBox.setChecked(u);
                    routeViewHolder.A.setVisibility(4);
                    imageView2.setVisibility(0);
                    view2.setEnabled(z);
                    checkBox.setEnabled(z);
                    ImageButton imageButton = routeViewHolder.v;
                    if (!z && !u) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    imageButton.setEnabled(z2);
                    MediaRouteVolumeSlider mediaRouteVolumeSlider = routeViewHolder.w;
                    if (!z && !u) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    mediaRouteVolumeSlider.setEnabled(z3);
                    view2.setOnClickListener(onClickListener);
                    checkBox.setOnClickListener(onClickListener);
                    RelativeLayout relativeLayout = routeViewHolder.C;
                    if (u && !routeViewHolder.u.f()) {
                        i3 = routeViewHolder.F;
                    }
                    ViewGroup.LayoutParams layoutParams = relativeLayout.getLayoutParams();
                    layoutParams.height = i3;
                    relativeLayout.setLayoutParams(layoutParams);
                    if (!z && !u) {
                        f = f4;
                    } else {
                        f = 1.0f;
                    }
                    view2.setAlpha(f);
                    if (!z && u) {
                        f2 = f4;
                    } else {
                        f2 = 1.0f;
                    }
                    checkBox.setAlpha(f2);
                    return;
                }
                ((HeaderViewHolder) viewHolder).u.setText(item2.f1331a.toString());
                return;
            }
            mediaRouteDynamicControllerDialog.z.put(((MediaRouter.RouteInfo) item2.f1331a).f1387c, (MediaRouteVolumeSliderHolder) viewHolder);
            GroupVolumeViewHolder groupVolumeViewHolder = (GroupVolumeViewHolder) viewHolder;
            View view3 = groupVolumeViewHolder.f1589a;
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog3 = MediaRouteDynamicControllerDialog.this;
            if (mediaRouteDynamicControllerDialog3.W && DesugarCollections.unmodifiableList(mediaRouteDynamicControllerDialog3.m.v).size() > 1) {
                i3 = groupVolumeViewHolder.z;
            }
            ViewGroup.LayoutParams layoutParams2 = view3.getLayoutParams();
            layoutParams2.height = i3;
            view3.setLayoutParams(layoutParams2);
            MediaRouter.RouteInfo routeInfo4 = (MediaRouter.RouteInfo) item2.f1331a;
            groupVolumeViewHolder.s(routeInfo4);
            groupVolumeViewHolder.y.setText(routeInfo4.d);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
            LayoutInflater layoutInflater = this.e;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            return new GroupViewHolder(layoutInflater.inflate(R.layout.mr_cast_group_item, viewGroup, false));
                        }
                        throw new IllegalStateException();
                    }
                    return new RouteViewHolder(this, layoutInflater.inflate(R.layout.mr_cast_route_item, viewGroup, false));
                }
                return new HeaderViewHolder(layoutInflater.inflate(R.layout.mr_cast_header_item, viewGroup, false));
            }
            return new GroupVolumeViewHolder(this, layoutInflater.inflate(R.layout.mr_cast_group_volume_item, viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void t(RecyclerView.ViewHolder viewHolder) {
            MediaRouteDynamicControllerDialog.this.z.values().remove(viewHolder);
        }

        public final void v(final View view, final int i) {
            final int i2 = view.getLayoutParams().height;
            Animation animation = new Animation() { // from class: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.RecyclerAdapter.1
                @Override // android.view.animation.Animation
                public final void applyTransformation(float f, Transformation transformation) {
                    int i3 = i;
                    int i4 = i2 + ((int) ((i3 - r0) * f));
                    int i5 = MediaRouteDynamicControllerDialog.X;
                    View view2 = view;
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    layoutParams.height = i4;
                    view2.setLayoutParams(layoutParams);
                }
            };
            animation.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.RecyclerAdapter.2
                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationEnd(Animation animation2) {
                    MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
                    mediaRouteDynamicControllerDialog.C = false;
                    mediaRouteDynamicControllerDialog.m();
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationRepeat(Animation animation2) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationStart(Animation animation2) {
                    MediaRouteDynamicControllerDialog.this.C = true;
                }
            });
            animation.setDuration(this.k);
            animation.setInterpolator(this.l);
            view.startAnimation(animation);
        }

        public final Drawable w(MediaRouter.RouteInfo routeInfo) {
            Uri uri = routeInfo.f;
            if (uri != null) {
                try {
                    Drawable createFromStream = Drawable.createFromStream(MediaRouteDynamicControllerDialog.this.r.getContentResolver().openInputStream(uri), null);
                    if (createFromStream != null) {
                        return createFromStream;
                    }
                } catch (IOException e) {
                    Log.w("MediaRouteCtrlDialog", "Failed to load " + uri, e);
                }
            }
            int i = routeInfo.n;
            if (i != 1) {
                if (i != 2) {
                    if (routeInfo.f()) {
                        return this.i;
                    }
                    return this.f;
                }
                return this.h;
            }
            return this.g;
        }

        public final void x() {
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            ArrayList arrayList = mediaRouteDynamicControllerDialog.q;
            arrayList.clear();
            ArrayList arrayList2 = mediaRouteDynamicControllerDialog.o;
            ArrayList arrayList3 = new ArrayList();
            MediaRouter.GroupRouteInfo a2 = mediaRouteDynamicControllerDialog.m.a();
            if (a2 != null) {
                MediaRouter.ProviderInfo providerInfo = mediaRouteDynamicControllerDialog.m.f1386a;
                providerInfo.getClass();
                MediaRouter.c();
                for (MediaRouter.RouteInfo routeInfo : DesugarCollections.unmodifiableList(providerInfo.b)) {
                    if (a2.p(routeInfo)) {
                        arrayList3.add(routeInfo);
                    }
                }
            }
            HashSet hashSet = new HashSet(arrayList2);
            hashSet.removeAll(arrayList3);
            arrayList.addAll(hashSet);
            g();
        }

        public final void y() {
            String str;
            String str2;
            ArrayList arrayList = this.d;
            arrayList.clear();
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            ArrayList arrayList2 = mediaRouteDynamicControllerDialog.p;
            Context context = mediaRouteDynamicControllerDialog.r;
            ArrayList arrayList3 = mediaRouteDynamicControllerDialog.o;
            this.j = new Item(1, mediaRouteDynamicControllerDialog.m);
            ArrayList arrayList4 = mediaRouteDynamicControllerDialog.n;
            boolean z = false;
            if (!arrayList4.isEmpty()) {
                int size = arrayList4.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList4.get(i);
                    i++;
                    arrayList.add(new Item(3, (MediaRouter.RouteInfo) obj));
                }
            } else {
                arrayList.add(new Item(3, mediaRouteDynamicControllerDialog.m));
            }
            if (!arrayList3.isEmpty()) {
                int size2 = arrayList3.size();
                boolean z2 = false;
                int i2 = 0;
                while (i2 < size2) {
                    Object obj2 = arrayList3.get(i2);
                    i2++;
                    MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) obj2;
                    if (!arrayList4.contains(routeInfo)) {
                        if (!z2) {
                            mediaRouteDynamicControllerDialog.m.getClass();
                            MediaRouteProvider.DynamicGroupRouteController c2 = MediaRouter.RouteInfo.c();
                            if (c2 != null) {
                                str2 = c2.j();
                            } else {
                                str2 = null;
                            }
                            if (TextUtils.isEmpty(str2)) {
                                str2 = context.getString(R.string.mr_dialog_groupable_header);
                            }
                            arrayList.add(new Item(2, str2));
                            z2 = true;
                        }
                        arrayList.add(new Item(3, routeInfo));
                    }
                }
            }
            if (!arrayList2.isEmpty()) {
                int size3 = arrayList2.size();
                int i3 = 0;
                while (i3 < size3) {
                    Object obj3 = arrayList2.get(i3);
                    i3++;
                    MediaRouter.RouteInfo routeInfo2 = (MediaRouter.RouteInfo) obj3;
                    MediaRouter.RouteInfo routeInfo3 = mediaRouteDynamicControllerDialog.m;
                    if (routeInfo3 != routeInfo2) {
                        if (!z) {
                            routeInfo3.getClass();
                            MediaRouteProvider.DynamicGroupRouteController c3 = MediaRouter.RouteInfo.c();
                            if (c3 != null) {
                                str = c3.k();
                            } else {
                                str = null;
                            }
                            if (TextUtils.isEmpty(str)) {
                                str = context.getString(R.string.mr_dialog_transferable_header);
                            }
                            arrayList.add(new Item(2, str));
                            z = true;
                        }
                        arrayList.add(new Item(4, routeInfo2));
                    }
                }
            }
            x();
        }
    }

    /* loaded from: classes.dex */
    public static final class RouteComparator implements Comparator<MediaRouter.RouteInfo> {

        /* renamed from: c, reason: collision with root package name */
        public static final RouteComparator f1333c = new Object();

        @Override // java.util.Comparator
        public final int compare(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2) {
            return routeInfo.d.compareToIgnoreCase(routeInfo2.d);
        }
    }

    /* loaded from: classes.dex */
    public class VolumeChangeListener implements SeekBar.OnSeekBarChangeListener {
        public VolumeChangeListener() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            boolean z2;
            if (z) {
                MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) seekBar.getTag();
                MediaRouteVolumeSliderHolder mediaRouteVolumeSliderHolder = (MediaRouteVolumeSliderHolder) MediaRouteDynamicControllerDialog.this.z.get(routeInfo.f1387c);
                if (mediaRouteVolumeSliderHolder != null) {
                    if (i == 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    mediaRouteVolumeSliderHolder.t(z2);
                }
                routeInfo.k(i);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStartTrackingTouch(SeekBar seekBar) {
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            if (mediaRouteDynamicControllerDialog.A != null) {
                mediaRouteDynamicControllerDialog.v.removeMessages(2);
            }
            mediaRouteDynamicControllerDialog.A = (MediaRouter.RouteInfo) seekBar.getTag();
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStopTrackingTouch(SeekBar seekBar) {
            MediaRouteDynamicControllerDialog.this.v.sendEmptyMessageDelayed(2, 500L);
        }
    }

    static {
        Log.isLoggable("MediaRouteCtrlDialog", 3);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MediaRouteDynamicControllerDialog(android.content.Context r2) {
        /*
            r1 = this;
            r0 = 0
            android.view.ContextThemeWrapper r2 = androidx.mediarouter.app.MediaRouterThemeHelper.a(r2, r0)
            int r0 = androidx.mediarouter.R.attr.mediaRouteTheme
            int r0 = androidx.mediarouter.app.MediaRouterThemeHelper.g(r2, r0)
            if (r0 != 0) goto L11
            int r0 = androidx.mediarouter.app.MediaRouterThemeHelper.e(r2)
        L11:
            r1.<init>(r2, r0)
            androidx.mediarouter.media.MediaRouteSelector r2 = androidx.mediarouter.media.MediaRouteSelector.f1375c
            r1.l = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.n = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.o = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.p = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.q = r2
            androidx.mediarouter.app.MediaRouteDynamicControllerDialog$1 r2 = new androidx.mediarouter.app.MediaRouteDynamicControllerDialog$1
            r2.<init>()
            r1.v = r2
            android.content.Context r2 = r1.getContext()
            r1.r = r2
            androidx.mediarouter.media.MediaRouter r2 = androidx.mediarouter.media.MediaRouter.h(r2)
            r1.j = r2
            boolean r2 = androidx.mediarouter.media.MediaRouter.m()
            r1.W = r2
            androidx.mediarouter.app.MediaRouteDynamicControllerDialog$MediaRouterCallback r2 = new androidx.mediarouter.app.MediaRouteDynamicControllerDialog$MediaRouterCallback
            r2.<init>()
            r1.k = r2
            androidx.mediarouter.media.MediaRouter$RouteInfo r2 = androidx.mediarouter.media.MediaRouter.l()
            r1.m = r2
            androidx.mediarouter.app.MediaRouteDynamicControllerDialog$MediaControllerCallback r2 = new androidx.mediarouter.app.MediaRouteDynamicControllerDialog$MediaControllerCallback
            r2.<init>()
            r1.O = r2
            android.support.v4.media.session.MediaSessionCompat$Token r2 = androidx.mediarouter.media.MediaRouter.i()
            r1.g(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.<init>(android.content.Context):void");
    }

    public final void e(List list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) list.get(size);
            if (routeInfo.e() || !routeInfo.g || !routeInfo.i(this.l) || this.m == routeInfo) {
                list.remove(size);
            }
        }
    }

    public final void f() {
        Bitmap iconBitmap;
        Bitmap bitmap;
        Uri uri;
        MediaDescriptionCompat mediaDescriptionCompat = this.P;
        Uri uri2 = null;
        if (mediaDescriptionCompat == null) {
            iconBitmap = null;
        } else {
            iconBitmap = mediaDescriptionCompat.getIconBitmap();
        }
        MediaDescriptionCompat mediaDescriptionCompat2 = this.P;
        if (mediaDescriptionCompat2 != null) {
            uri2 = mediaDescriptionCompat2.getIconUri();
        }
        FetchArtTask fetchArtTask = this.Q;
        if (fetchArtTask == null) {
            bitmap = this.R;
        } else {
            bitmap = fetchArtTask.f1323a;
        }
        if (fetchArtTask == null) {
            uri = this.S;
        } else {
            uri = fetchArtTask.b;
        }
        if (bitmap == iconBitmap && (bitmap != null || Objects.equals(uri, uri2))) {
            return;
        }
        FetchArtTask fetchArtTask2 = this.Q;
        if (fetchArtTask2 != null) {
            fetchArtTask2.cancel(true);
        }
        FetchArtTask fetchArtTask3 = new FetchArtTask();
        this.Q = fetchArtTask3;
        fetchArtTask3.execute(new Void[0]);
    }

    public final void g(MediaSessionCompat.Token token) {
        MediaControllerCompat mediaControllerCompat = this.N;
        MediaDescriptionCompat mediaDescriptionCompat = null;
        MediaControllerCallback mediaControllerCallback = this.O;
        if (mediaControllerCompat != null) {
            mediaControllerCompat.unregisterCallback(mediaControllerCallback);
            this.N = null;
        }
        if (token == null || !this.t) {
            return;
        }
        MediaControllerCompat mediaControllerCompat2 = new MediaControllerCompat(this.r, token);
        this.N = mediaControllerCompat2;
        mediaControllerCompat2.registerCallback(mediaControllerCallback);
        MediaMetadataCompat metadata = this.N.getMetadata();
        if (metadata != null) {
            mediaDescriptionCompat = metadata.getDescription();
        }
        this.P = mediaDescriptionCompat;
        f();
        j();
    }

    public final void h(MediaRouteSelector mediaRouteSelector) {
        if (mediaRouteSelector != null) {
            if (!this.l.equals(mediaRouteSelector)) {
                this.l = mediaRouteSelector;
                if (this.t) {
                    MediaRouter mediaRouter = this.j;
                    MediaRouterCallback mediaRouterCallback = this.k;
                    mediaRouter.p(mediaRouterCallback);
                    mediaRouter.a(mediaRouteSelector, mediaRouterCallback, 1);
                    k();
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("selector must not be null");
    }

    public final void i() {
        int a2;
        Context context = this.r;
        int i = -1;
        if (!context.getResources().getBoolean(R.bool.is_tablet)) {
            a2 = -1;
        } else {
            a2 = MediaRouteDialogHelper.a(context);
        }
        if (context.getResources().getBoolean(R.bool.is_tablet)) {
            i = -2;
        }
        getWindow().setLayout(a2, i);
        this.R = null;
        this.S = null;
        f();
        j();
        l();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j() {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.j():void");
    }

    public final void k() {
        ArrayList arrayList = this.n;
        arrayList.clear();
        ArrayList arrayList2 = this.o;
        arrayList2.clear();
        ArrayList arrayList3 = this.p;
        arrayList3.clear();
        arrayList.addAll(DesugarCollections.unmodifiableList(this.m.v));
        MediaRouter.GroupRouteInfo a2 = this.m.a();
        if (a2 != null) {
            MediaRouter.ProviderInfo providerInfo = this.m.f1386a;
            providerInfo.getClass();
            MediaRouter.c();
            for (MediaRouter.RouteInfo routeInfo : DesugarCollections.unmodifiableList(providerInfo.b)) {
                if (a2.p(routeInfo)) {
                    arrayList2.add(routeInfo);
                }
                MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor = (MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor) a2.x.get(routeInfo.f1387c);
                if (dynamicRouteDescriptor != null && dynamicRouteDescriptor.e) {
                    arrayList3.add(routeInfo);
                }
            }
        }
        e(arrayList2);
        e(arrayList3);
        RouteComparator routeComparator = RouteComparator.f1333c;
        Collections.sort(arrayList, routeComparator);
        Collections.sort(arrayList2, routeComparator);
        Collections.sort(arrayList3, routeComparator);
        this.x.y();
    }

    public final void l() {
        boolean z;
        if (this.t) {
            if (SystemClock.uptimeMillis() - this.u >= 300) {
                if (this.A == null && !this.C) {
                    z = !this.s;
                } else {
                    z = true;
                }
                if (z) {
                    this.D = true;
                    return;
                }
                this.D = false;
                if (!this.m.h() || this.m.e()) {
                    dismiss();
                }
                this.u = SystemClock.uptimeMillis();
                this.x.x();
                return;
            }
            Handler handler = this.v;
            handler.removeMessages(1);
            handler.sendEmptyMessageAtTime(1, this.u + 300);
        }
    }

    public final void m() {
        if (this.D) {
            l();
        }
        if (this.E) {
            j();
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.t = true;
        this.j.a(this.l, this.k, 1);
        k();
        g(MediaRouter.i());
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        setContentView(R.layout.mr_cast_dialog);
        int i2 = MediaRouterThemeHelper.f1336a;
        View decorView = getWindow().getDecorView();
        Context context = this.r;
        if (MediaRouterThemeHelper.h(context)) {
            i = R.color.mr_dynamic_dialog_background_light;
        } else {
            i = R.color.mr_dynamic_dialog_background_dark;
        }
        decorView.setBackgroundColor(context.getColor(i));
        ImageButton imageButton = (ImageButton) findViewById(R.id.mr_cast_close_button);
        this.F = imageButton;
        imageButton.setColorFilter(-1);
        this.F.setOnClickListener(new View.OnClickListener() { // from class: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaRouteDynamicControllerDialog.this.dismiss();
            }
        });
        Button button = (Button) findViewById(R.id.mr_cast_stop_button);
        this.G = button;
        button.setTextColor(-1);
        this.G.setOnClickListener(new View.OnClickListener() { // from class: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
                if (mediaRouteDynamicControllerDialog.m.h()) {
                    mediaRouteDynamicControllerDialog.j.getClass();
                    MediaRouter.v(2);
                }
                mediaRouteDynamicControllerDialog.dismiss();
            }
        });
        this.x = new RecyclerAdapter();
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.mr_cast_list);
        this.w = recyclerView;
        recyclerView.setAdapter(this.x);
        this.w.setLayoutManager(new LinearLayoutManager(1));
        this.y = new VolumeChangeListener();
        this.z = new HashMap();
        this.B = new HashMap();
        this.H = (ImageView) findViewById(R.id.mr_cast_meta_background);
        this.I = findViewById(R.id.mr_cast_meta_black_scrim);
        this.J = (ImageView) findViewById(R.id.mr_cast_meta_art);
        TextView textView = (TextView) findViewById(R.id.mr_cast_meta_title);
        this.K = textView;
        textView.setTextColor(-1);
        TextView textView2 = (TextView) findViewById(R.id.mr_cast_meta_subtitle);
        this.L = textView2;
        textView2.setTextColor(-1);
        this.M = context.getResources().getString(R.string.mr_cast_dialog_title_view_placeholder);
        this.s = true;
        i();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.t = false;
        this.j.p(this.k);
        this.v.removeCallbacksAndMessages(null);
        g(null);
    }
}
