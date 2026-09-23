package androidx.mediarouter.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.mediarouter.R;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import com.google.android.material.datepicker.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
public class MediaRouteChooserDialog extends AppCompatDialog {
    public static final /* synthetic */ int B = 0;
    public final Handler A;
    public final MediaRouter j;
    public final MediaRouterCallback k;
    public MediaRouteSelector l;
    public ArrayList m;
    public TextView n;
    public TextView o;
    public RelativeLayout p;
    public TextView q;
    public TextView r;
    public LinearLayout s;
    public Button t;
    public ProgressBar u;
    public ListView v;
    public RouteAdapter w;
    public final ScreenOnOffReceiver x;
    public boolean y;
    public long z;

    /* loaded from: classes.dex */
    public final class MediaRouterCallback extends MediaRouter.Callback {
        public MediaRouterCallback() {
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void d(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteChooserDialog.this.f();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void e(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteChooserDialog.this.f();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void h(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteChooserDialog.this.f();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void i(MediaRouter.RouteInfo routeInfo) {
            MediaRouteChooserDialog.this.dismiss();
        }
    }

    /* loaded from: classes.dex */
    public static final class RouteAdapter extends ArrayAdapter<MediaRouter.RouteInfo> implements AdapterView.OnItemClickListener {

        /* renamed from: c, reason: collision with root package name */
        public final LayoutInflater f1288c;
        public final Drawable f;
        public final Drawable g;
        public final Drawable h;
        public final Drawable i;

        public RouteAdapter(Context context, ArrayList arrayList) {
            super(context, 0, arrayList);
            this.f1288c = LayoutInflater.from(context);
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.mediaRouteDefaultIconDrawable, R.attr.mediaRouteTvIconDrawable, R.attr.mediaRouteSpeakerIconDrawable, R.attr.mediaRouteSpeakerGroupIconDrawable});
            this.f = AppCompatResources.a(context, obtainStyledAttributes.getResourceId(0, 0));
            this.g = AppCompatResources.a(context, obtainStyledAttributes.getResourceId(1, 0));
            this.h = AppCompatResources.a(context, obtainStyledAttributes.getResourceId(2, 0));
            this.i = AppCompatResources.a(context, obtainStyledAttributes.getResourceId(3, 0));
            obtainStyledAttributes.recycle();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public final boolean areAllItemsEnabled() {
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x0075, code lost:
        
            if (r0 != null) goto L31;
         */
        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
            /*
                r6 = this;
                r0 = 0
                if (r8 != 0) goto Lb
                android.view.LayoutInflater r8 = r6.f1288c
                int r1 = androidx.mediarouter.R.layout.mr_chooser_list_item
                android.view.View r8 = r8.inflate(r1, r9, r0)
            Lb:
                java.lang.Object r7 = r6.getItem(r7)
                androidx.mediarouter.media.MediaRouter$RouteInfo r7 = (androidx.mediarouter.media.MediaRouter.RouteInfo) r7
                int r9 = androidx.mediarouter.R.id.mr_chooser_route_name
                android.view.View r9 = r8.findViewById(r9)
                android.widget.TextView r9 = (android.widget.TextView) r9
                int r1 = androidx.mediarouter.R.id.mr_chooser_route_desc
                android.view.View r1 = r8.findViewById(r1)
                android.widget.TextView r1 = (android.widget.TextView) r1
                java.lang.String r2 = r7.d
                r9.setText(r2)
                java.lang.String r2 = r7.e
                int r3 = r7.i
                r4 = 1
                r5 = 2
                if (r3 == r5) goto L30
                if (r3 != r4) goto L42
            L30:
                boolean r3 = android.text.TextUtils.isEmpty(r2)
                if (r3 != 0) goto L42
                r3 = 80
                r9.setGravity(r3)
                r1.setVisibility(r0)
                r1.setText(r2)
                goto L51
            L42:
                r0 = 16
                r9.setGravity(r0)
                r9 = 8
                r1.setVisibility(r9)
                java.lang.String r9 = ""
                r1.setText(r9)
            L51:
                boolean r9 = r7.g
                r8.setEnabled(r9)
                int r9 = androidx.mediarouter.R.id.mr_chooser_route_icon
                android.view.View r9 = r8.findViewById(r9)
                android.widget.ImageView r9 = (android.widget.ImageView) r9
                if (r9 == 0) goto La8
                android.net.Uri r0 = r7.f
                if (r0 == 0) goto L8c
                android.content.Context r1 = r6.getContext()     // Catch: java.io.IOException -> L78
                android.content.ContentResolver r1 = r1.getContentResolver()     // Catch: java.io.IOException -> L78
                java.io.InputStream r1 = r1.openInputStream(r0)     // Catch: java.io.IOException -> L78
                r2 = 0
                android.graphics.drawable.Drawable r0 = android.graphics.drawable.Drawable.createFromStream(r1, r2)     // Catch: java.io.IOException -> L78
                if (r0 == 0) goto L8c
                goto La5
            L78:
                r1 = move-exception
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                java.lang.String r3 = "Failed to load "
                r2.<init>(r3)
                r2.append(r0)
                java.lang.String r0 = r2.toString()
                java.lang.String r2 = "MediaRouteChooserDialog"
                android.util.Log.w(r2, r0, r1)
            L8c:
                int r0 = r7.n
                if (r0 == r4) goto La2
                if (r0 == r5) goto L9f
                boolean r7 = r7.f()
                if (r7 == 0) goto L9c
                android.graphics.drawable.Drawable r7 = r6.i
            L9a:
                r0 = r7
                goto La5
            L9c:
                android.graphics.drawable.Drawable r7 = r6.f
                goto L9a
            L9f:
                android.graphics.drawable.Drawable r7 = r6.h
                goto L9a
            La2:
                android.graphics.drawable.Drawable r7 = r6.g
                goto L9a
            La5:
                r9.setImageDrawable(r0)
            La8:
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteChooserDialog.RouteAdapter.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public final boolean isEnabled(int i) {
            return getItem(i).g;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
            MediaRouter.RouteInfo item = getItem(i);
            ImageView imageView = (ImageView) view.findViewById(R.id.mr_chooser_route_icon);
            ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.mr_chooser_route_progress_bar);
            if (imageView != null && progressBar != null) {
                imageView.setVisibility(8);
                progressBar.setVisibility(0);
            }
            item.m(true);
        }
    }

    /* loaded from: classes.dex */
    public static final class RouteComparator implements Comparator<MediaRouter.RouteInfo> {

        /* renamed from: c, reason: collision with root package name */
        public static final RouteComparator f1289c = new Object();

        @Override // java.util.Comparator
        public final int compare(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2) {
            return routeInfo.d.compareToIgnoreCase(routeInfo2.d);
        }
    }

    /* loaded from: classes.dex */
    public final class ScreenOnOffReceiver extends BroadcastReceiver {
        public ScreenOnOffReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                MediaRouteChooserDialog.this.dismiss();
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MediaRouteChooserDialog(android.content.Context r2) {
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
            androidx.mediarouter.app.MediaRouteChooserDialog$1 r2 = new androidx.mediarouter.app.MediaRouteChooserDialog$1
            r2.<init>()
            r1.A = r2
            android.content.Context r2 = r1.getContext()
            androidx.mediarouter.media.MediaRouter r2 = androidx.mediarouter.media.MediaRouter.h(r2)
            r1.j = r2
            androidx.mediarouter.app.MediaRouteChooserDialog$MediaRouterCallback r2 = new androidx.mediarouter.app.MediaRouteChooserDialog$MediaRouterCallback
            r2.<init>()
            r1.k = r2
            androidx.mediarouter.app.MediaRouteChooserDialog$ScreenOnOffReceiver r2 = new androidx.mediarouter.app.MediaRouteChooserDialog$ScreenOnOffReceiver
            r2.<init>()
            r1.x = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteChooserDialog.<init>(android.content.Context):void");
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        try {
            getContext().unregisterReceiver(this.x);
        } catch (IllegalArgumentException unused) {
        }
        super.dismiss();
    }

    public final void e(List list) {
        this.z = SystemClock.uptimeMillis();
        this.m.clear();
        this.m.addAll(list);
        this.w.notifyDataSetChanged();
        Handler handler = this.A;
        handler.removeMessages(3);
        handler.removeMessages(2);
        if (list.isEmpty()) {
            h(0);
            handler.sendMessageDelayed(handler.obtainMessage(2), 5000L);
        } else {
            h(1);
        }
    }

    public final void f() {
        if (this.y) {
            this.j.getClass();
            ArrayList arrayList = new ArrayList(MediaRouter.k());
            int size = arrayList.size();
            while (true) {
                int i = size - 1;
                if (size <= 0) {
                    break;
                }
                MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) arrayList.get(i);
                if (routeInfo.e() || !routeInfo.g || !routeInfo.i(this.l)) {
                    arrayList.remove(i);
                }
                size = i;
            }
            Collections.sort(arrayList, RouteComparator.f1289c);
            if (SystemClock.uptimeMillis() - this.z >= 300) {
                e(arrayList);
                return;
            }
            Handler handler = this.A;
            handler.removeMessages(1);
            handler.sendMessageAtTime(handler.obtainMessage(1, arrayList), this.z + 300);
        }
    }

    public final void g(MediaRouteSelector mediaRouteSelector) {
        if (mediaRouteSelector != null) {
            if (!this.l.equals(mediaRouteSelector)) {
                this.l = mediaRouteSelector;
                if (this.y) {
                    MediaRouter mediaRouter = this.j;
                    MediaRouterCallback mediaRouterCallback = this.k;
                    mediaRouter.p(mediaRouterCallback);
                    mediaRouter.a(mediaRouteSelector, mediaRouterCallback, 1);
                }
                f();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("selector must not be null");
    }

    public final void h(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return;
                    }
                    setTitle(R.string.mr_chooser_zero_routes_found_title);
                    this.v.setVisibility(8);
                    this.o.setVisibility(8);
                    this.u.setVisibility(8);
                    this.s.setVisibility(0);
                    this.t.setVisibility(0);
                    this.r.setVisibility(0);
                    this.p.setVisibility(0);
                    return;
                }
                setTitle(R.string.mr_chooser_title);
                this.v.setVisibility(8);
                this.o.setVisibility(8);
                this.u.setVisibility(0);
                this.s.setVisibility(8);
                this.t.setVisibility(8);
                this.r.setVisibility(4);
                this.p.setVisibility(0);
                return;
            }
            setTitle(R.string.mr_chooser_title);
            this.v.setVisibility(0);
            this.o.setVisibility(8);
            this.u.setVisibility(8);
            this.s.setVisibility(8);
            this.t.setVisibility(8);
            this.r.setVisibility(8);
            this.p.setVisibility(8);
            return;
        }
        setTitle(R.string.mr_chooser_title);
        this.v.setVisibility(8);
        this.o.setVisibility(0);
        this.u.setVisibility(0);
        this.s.setVisibility(8);
        this.t.setVisibility(8);
        this.r.setVisibility(8);
        this.p.setVisibility(8);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.y = true;
        this.j.a(this.l, this.k, 1);
        f();
        Handler handler = this.A;
        handler.removeMessages(2);
        handler.removeMessages(3);
        handler.removeMessages(1);
        handler.sendMessageDelayed(handler.obtainMessage(2), 5000L);
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        String string;
        boolean z;
        super.onCreate(bundle);
        setContentView(R.layout.mr_chooser_dialog);
        this.m = new ArrayList();
        this.w = new RouteAdapter(getContext(), this.m);
        this.n = (TextView) findViewById(R.id.mr_chooser_title);
        this.o = (TextView) findViewById(R.id.mr_chooser_searching);
        this.p = (RelativeLayout) findViewById(R.id.mr_chooser_wifi_warning_container);
        this.q = (TextView) findViewById(R.id.mr_chooser_wifi_warning_description);
        this.r = (TextView) findViewById(R.id.mr_chooser_wifi_learn_more);
        this.s = (LinearLayout) findViewById(R.id.mr_chooser_ok_button_container);
        this.t = (Button) findViewById(R.id.mr_chooser_ok_button);
        this.u = (ProgressBar) findViewById(R.id.mr_chooser_search_progress_bar);
        Context context = getContext();
        boolean z2 = false;
        if (DeviceUtils.f1280a == null) {
            if (!DeviceUtils.c(context)) {
                PackageManager packageManager = context.getPackageManager();
                if (DeviceUtils.e == null) {
                    DeviceUtils.e = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
                }
                if (!DeviceUtils.e.booleanValue() && !DeviceUtils.a(context) && !DeviceUtils.d(context)) {
                    z = true;
                    DeviceUtils.f1280a = Boolean.valueOf(z);
                }
            }
            z = false;
            DeviceUtils.f1280a = Boolean.valueOf(z);
        }
        if (!DeviceUtils.f1280a.booleanValue()) {
            if (DeviceUtils.f1281c == null) {
                SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
                if (Build.VERSION.SDK_INT >= 30 && sensorManager != null && sensorManager.getDefaultSensor(36) != null) {
                    z2 = true;
                }
                DeviceUtils.f1281c = Boolean.valueOf(z2);
            }
            if (!DeviceUtils.f1281c.booleanValue()) {
                if (!DeviceUtils.c(context) && !DeviceUtils.b(context.getResources())) {
                    if (DeviceUtils.d(context)) {
                        string = context.getString(R.string.mr_chooser_wifi_warning_description_tv);
                    } else {
                        PackageManager packageManager2 = context.getPackageManager();
                        if (DeviceUtils.e == null) {
                            DeviceUtils.e = Boolean.valueOf(packageManager2.hasSystemFeature("android.hardware.type.watch"));
                        }
                        if (DeviceUtils.e.booleanValue()) {
                            string = context.getString(R.string.mr_chooser_wifi_warning_description_watch);
                        } else if (DeviceUtils.a(context)) {
                            string = context.getString(R.string.mr_chooser_wifi_warning_description_car);
                        } else {
                            string = context.getString(R.string.mr_chooser_wifi_warning_description_unknown);
                        }
                    }
                } else {
                    string = context.getString(R.string.mr_chooser_wifi_warning_description_tablet);
                }
                this.q.setText(string);
                this.r.setMovementMethod(LinkMovementMethod.getInstance());
                this.t.setOnClickListener(new d(3, this));
                ListView listView = (ListView) findViewById(R.id.mr_chooser_list);
                this.v = listView;
                listView.setAdapter((ListAdapter) this.w);
                this.v.setOnItemClickListener(this.w);
                this.v.setEmptyView(findViewById(android.R.id.empty));
                getWindow().setLayout(MediaRouteDialogHelper.a(getContext()), -2);
                getContext().registerReceiver(this.x, new IntentFilter("android.intent.action.SCREEN_OFF"));
            }
        }
        string = context.getString(R.string.mr_chooser_wifi_warning_description_phone);
        this.q.setText(string);
        this.r.setMovementMethod(LinkMovementMethod.getInstance());
        this.t.setOnClickListener(new d(3, this));
        ListView listView2 = (ListView) findViewById(R.id.mr_chooser_list);
        this.v = listView2;
        listView2.setAdapter((ListAdapter) this.w);
        this.v.setOnItemClickListener(this.w);
        this.v.setEmptyView(findViewById(android.R.id.empty));
        getWindow().setLayout(MediaRouteDialogHelper.a(getContext()), -2);
        getContext().registerReceiver(this.x, new IntentFilter("android.intent.action.SCREEN_OFF"));
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.y = false;
        this.j.p(this.k);
        Handler handler = this.A;
        handler.removeMessages(1);
        handler.removeMessages(2);
        handler.removeMessages(3);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        this.n.setText(charSequence);
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public final void setTitle(int i) {
        this.n.setText(i);
    }
}
