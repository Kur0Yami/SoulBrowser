package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.appcompat.app.AppCompatDialog;
import androidx.mediarouter.R;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

@RestrictTo
/* loaded from: classes.dex */
public class MediaRouteDynamicChooserDialog extends AppCompatDialog {
    public final MediaRouter j;
    public final MediaRouterCallback k;
    public final Context l;
    public MediaRouteSelector m;
    public ArrayList n;
    public RecyclerAdapter o;
    public RecyclerView p;
    public boolean q;
    public MediaRouter.RouteInfo r;
    public final long s;
    public long t;
    public final Handler u;

    /* loaded from: classes.dex */
    public final class MediaRouterCallback extends MediaRouter.Callback {
        public MediaRouterCallback() {
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void d(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteDynamicChooserDialog.this.e();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void e(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteDynamicChooserDialog.this.e();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void h(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteDynamicChooserDialog.this.e();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void i(MediaRouter.RouteInfo routeInfo) {
            MediaRouteDynamicChooserDialog.this.dismiss();
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

        /* loaded from: classes.dex */
        public class HeaderViewHolder extends RecyclerView.ViewHolder {
            public TextView u;
        }

        /* loaded from: classes.dex */
        public class Item {

            /* renamed from: a, reason: collision with root package name */
            public final Object f1317a;
            public final int b;

            public Item(Object obj) {
                this.f1317a = obj;
                if (obj instanceof String) {
                    this.b = 1;
                } else {
                    if (obj instanceof MediaRouter.RouteInfo) {
                        this.b = 2;
                        return;
                    }
                    throw new IllegalArgumentException();
                }
            }
        }

        /* loaded from: classes.dex */
        public class RouteViewHolder extends RecyclerView.ViewHolder {
            public final View u;
            public final ImageView v;
            public final ProgressBar w;
            public final TextView x;

            public RouteViewHolder(View view) {
                super(view);
                this.u = view;
                this.v = (ImageView) view.findViewById(R.id.mr_picker_route_icon);
                ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.mr_picker_route_progress_bar);
                this.w = progressBar;
                this.x = (TextView) view.findViewById(R.id.mr_picker_route_name);
                MediaRouterThemeHelper.i(MediaRouteDynamicChooserDialog.this.l, progressBar);
            }
        }

        public RecyclerAdapter() {
            Context context = MediaRouteDynamicChooserDialog.this.l;
            this.e = LayoutInflater.from(context);
            this.f = MediaRouterThemeHelper.d(context, R.attr.mediaRouteDefaultIconDrawable);
            this.g = MediaRouterThemeHelper.d(context, R.attr.mediaRouteTvIconDrawable);
            this.h = MediaRouterThemeHelper.d(context, R.attr.mediaRouteSpeakerIconDrawable);
            this.i = MediaRouterThemeHelper.d(context, R.attr.mediaRouteSpeakerGroupIconDrawable);
            v();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int d() {
            return this.d.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int f(int i) {
            return ((Item) this.d.get(i)).b;
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
        
            if (r2 != null) goto L25;
         */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void n(androidx.recyclerview.widget.RecyclerView.ViewHolder r9, int r10) {
            /*
                r8 = this;
                int r0 = r8.f(r10)
                java.util.ArrayList r1 = r8.d
                java.lang.Object r10 = r1.get(r10)
                androidx.mediarouter.app.MediaRouteDynamicChooserDialog$RecyclerAdapter$Item r10 = (androidx.mediarouter.app.MediaRouteDynamicChooserDialog.RecyclerAdapter.Item) r10
                r1 = 1
                if (r0 == r1) goto L86
                java.lang.String r2 = "RecyclerAdapter"
                r3 = 2
                if (r0 == r3) goto L1a
                java.lang.String r9 = "Cannot bind item to ViewHolder because of wrong view type"
                android.util.Log.w(r2, r9)
                return
            L1a:
                androidx.mediarouter.app.MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder r9 = (androidx.mediarouter.app.MediaRouteDynamicChooserDialog.RecyclerAdapter.RouteViewHolder) r9
                java.lang.Object r10 = r10.f1317a
                androidx.mediarouter.media.MediaRouter$RouteInfo r10 = (androidx.mediarouter.media.MediaRouter.RouteInfo) r10
                android.view.View r0 = r9.u
                r4 = 0
                r0.setVisibility(r4)
                android.widget.ProgressBar r4 = r9.w
                r5 = 4
                r4.setVisibility(r5)
                androidx.mediarouter.app.MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder$1 r4 = new androidx.mediarouter.app.MediaRouteDynamicChooserDialog$RecyclerAdapter$RouteViewHolder$1
                r4.<init>()
                r0.setOnClickListener(r4)
                android.widget.TextView r0 = r9.x
                java.lang.String r4 = r10.d
                r0.setText(r4)
                android.widget.ImageView r0 = r9.v
                androidx.mediarouter.app.MediaRouteDynamicChooserDialog$RecyclerAdapter r9 = androidx.mediarouter.app.MediaRouteDynamicChooserDialog.RecyclerAdapter.this
                android.net.Uri r4 = r10.f
                if (r4 == 0) goto L69
                androidx.mediarouter.app.MediaRouteDynamicChooserDialog r5 = androidx.mediarouter.app.MediaRouteDynamicChooserDialog.this     // Catch: java.io.IOException -> L57
                android.content.Context r5 = r5.l     // Catch: java.io.IOException -> L57
                android.content.ContentResolver r5 = r5.getContentResolver()     // Catch: java.io.IOException -> L57
                java.io.InputStream r5 = r5.openInputStream(r4)     // Catch: java.io.IOException -> L57
                r6 = 0
                android.graphics.drawable.Drawable r2 = android.graphics.drawable.Drawable.createFromStream(r5, r6)     // Catch: java.io.IOException -> L57
                if (r2 == 0) goto L69
                goto L82
            L57:
                r5 = move-exception
                java.lang.StringBuilder r6 = new java.lang.StringBuilder
                java.lang.String r7 = "Failed to load "
                r6.<init>(r7)
                r6.append(r4)
                java.lang.String r4 = r6.toString()
                android.util.Log.w(r2, r4, r5)
            L69:
                int r2 = r10.n
                if (r2 == r1) goto L7f
                if (r2 == r3) goto L7c
                boolean r10 = r10.f()
                if (r10 == 0) goto L79
                android.graphics.drawable.Drawable r9 = r9.i
            L77:
                r2 = r9
                goto L82
            L79:
                android.graphics.drawable.Drawable r9 = r9.f
                goto L77
            L7c:
                android.graphics.drawable.Drawable r9 = r9.h
                goto L77
            L7f:
                android.graphics.drawable.Drawable r9 = r9.g
                goto L77
            L82:
                r0.setImageDrawable(r2)
                return
            L86:
                androidx.mediarouter.app.MediaRouteDynamicChooserDialog$RecyclerAdapter$HeaderViewHolder r9 = (androidx.mediarouter.app.MediaRouteDynamicChooserDialog.RecyclerAdapter.HeaderViewHolder) r9
                java.lang.Object r10 = r10.f1317a
                java.lang.String r10 = r10.toString()
                android.widget.TextView r9 = r9.u
                r9.setText(r10)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteDynamicChooserDialog.RecyclerAdapter.n(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
        }

        /* JADX WARN: Type inference failed for: r5v2, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, androidx.mediarouter.app.MediaRouteDynamicChooserDialog$RecyclerAdapter$HeaderViewHolder] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
            LayoutInflater layoutInflater = this.e;
            if (i != 1) {
                if (i == 2) {
                    return new RouteViewHolder(layoutInflater.inflate(R.layout.mr_picker_route_item, viewGroup, false));
                }
                throw new IllegalStateException();
            }
            View inflate = layoutInflater.inflate(R.layout.mr_picker_header_item, viewGroup, false);
            ?? viewHolder = new RecyclerView.ViewHolder(inflate);
            viewHolder.u = (TextView) inflate.findViewById(R.id.mr_picker_header_name);
            return viewHolder;
        }

        public final void v() {
            ArrayList arrayList = this.d;
            arrayList.clear();
            MediaRouteDynamicChooserDialog mediaRouteDynamicChooserDialog = MediaRouteDynamicChooserDialog.this;
            arrayList.add(new Item(mediaRouteDynamicChooserDialog.l.getString(R.string.mr_chooser_title)));
            ArrayList arrayList2 = mediaRouteDynamicChooserDialog.n;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                arrayList.add(new Item((MediaRouter.RouteInfo) obj));
            }
            g();
        }
    }

    /* loaded from: classes.dex */
    public static final class RouteComparator implements Comparator<MediaRouter.RouteInfo> {

        /* renamed from: c, reason: collision with root package name */
        public static final RouteComparator f1319c = new Object();

        @Override // java.util.Comparator
        public final int compare(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2) {
            return routeInfo.d.compareToIgnoreCase(routeInfo2.d);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MediaRouteDynamicChooserDialog(android.content.Context r3) {
        /*
            r2 = this;
            r0 = 0
            android.view.ContextThemeWrapper r3 = androidx.mediarouter.app.MediaRouterThemeHelper.a(r3, r0)
            int r0 = androidx.mediarouter.R.attr.mediaRouteTheme
            int r0 = androidx.mediarouter.app.MediaRouterThemeHelper.g(r3, r0)
            if (r0 != 0) goto L11
            int r0 = androidx.mediarouter.app.MediaRouterThemeHelper.e(r3)
        L11:
            r2.<init>(r3, r0)
            androidx.mediarouter.media.MediaRouteSelector r3 = androidx.mediarouter.media.MediaRouteSelector.f1375c
            r2.m = r3
            androidx.mediarouter.app.MediaRouteDynamicChooserDialog$1 r3 = new androidx.mediarouter.app.MediaRouteDynamicChooserDialog$1
            r3.<init>()
            r2.u = r3
            android.content.Context r3 = r2.getContext()
            androidx.mediarouter.media.MediaRouter r0 = androidx.mediarouter.media.MediaRouter.h(r3)
            r2.j = r0
            androidx.mediarouter.app.MediaRouteDynamicChooserDialog$MediaRouterCallback r0 = new androidx.mediarouter.app.MediaRouteDynamicChooserDialog$MediaRouterCallback
            r0.<init>()
            r2.k = r0
            r2.l = r3
            android.content.res.Resources r3 = r3.getResources()
            int r0 = androidx.mediarouter.R.integer.mr_update_routes_delay_ms
            int r3 = r3.getInteger(r0)
            long r0 = (long) r3
            r2.s = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteDynamicChooserDialog.<init>(android.content.Context):void");
    }

    public final void e() {
        if (this.r == null && this.q) {
            this.j.getClass();
            ArrayList arrayList = new ArrayList(MediaRouter.k());
            int size = arrayList.size();
            while (true) {
                int i = size - 1;
                if (size <= 0) {
                    break;
                }
                MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) arrayList.get(i);
                if (routeInfo.e() || !routeInfo.g || !routeInfo.i(this.m)) {
                    arrayList.remove(i);
                }
                size = i;
            }
            Collections.sort(arrayList, RouteComparator.f1319c);
            long uptimeMillis = SystemClock.uptimeMillis() - this.t;
            long j = this.s;
            if (uptimeMillis >= j) {
                this.t = SystemClock.uptimeMillis();
                this.n.clear();
                this.n.addAll(arrayList);
                this.o.v();
                return;
            }
            Handler handler = this.u;
            handler.removeMessages(1);
            handler.sendMessageAtTime(handler.obtainMessage(1, arrayList), this.t + j);
        }
    }

    public final void f(MediaRouteSelector mediaRouteSelector) {
        if (mediaRouteSelector != null) {
            if (!this.m.equals(mediaRouteSelector)) {
                this.m = mediaRouteSelector;
                if (this.q) {
                    MediaRouter mediaRouter = this.j;
                    MediaRouterCallback mediaRouterCallback = this.k;
                    mediaRouter.p(mediaRouterCallback);
                    mediaRouter.a(mediaRouteSelector, mediaRouterCallback, 1);
                }
                e();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("selector must not be null");
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.q = true;
        this.j.a(this.m, this.k, 1);
        e();
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int i;
        int a2;
        super.onCreate(bundle);
        setContentView(R.layout.mr_picker_dialog);
        int i2 = MediaRouterThemeHelper.f1336a;
        View decorView = getWindow().getDecorView();
        Context context = this.l;
        if (MediaRouterThemeHelper.h(context)) {
            i = R.color.mr_dynamic_dialog_background_light;
        } else {
            i = R.color.mr_dynamic_dialog_background_dark;
        }
        decorView.setBackgroundColor(context.getColor(i));
        this.n = new ArrayList();
        ((ImageButton) findViewById(R.id.mr_picker_close_button)).setOnClickListener(new View.OnClickListener() { // from class: androidx.mediarouter.app.MediaRouteDynamicChooserDialog.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaRouteDynamicChooserDialog.this.dismiss();
            }
        });
        this.o = new RecyclerAdapter();
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.mr_picker_list);
        this.p = recyclerView;
        recyclerView.setAdapter(this.o);
        this.p.setLayoutManager(new LinearLayoutManager(1));
        int i3 = -1;
        if (!context.getResources().getBoolean(R.bool.is_tablet)) {
            a2 = -1;
        } else {
            a2 = MediaRouteDialogHelper.a(context);
        }
        if (context.getResources().getBoolean(R.bool.is_tablet)) {
            i3 = -2;
        }
        getWindow().setLayout(a2, i3);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.q = false;
        this.j.p(this.k);
        this.u.removeMessages(1);
    }
}
