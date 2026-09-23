package com.mycompany.app.widget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.RemoteViews;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.soulbrowser.R;

/* loaded from: classes3.dex */
public class WidgetSearchProviderBody extends AppWidgetProvider {

    /* renamed from: a, reason: collision with root package name */
    public boolean f20790a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public AppWidgetManager f20791c;
    public int[] d;
    public int e;
    public Context f;

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c A[Catch: Exception -> 0x004b, TryCatch #0 {Exception -> 0x004b, blocks: (B:3:0x0001, B:7:0x0015, B:10:0x001c, B:14:0x0039, B:16:0x0040, B:18:0x002d, B:20:0x0031, B:23:0x0035, B:24:0x0009, B:26:0x000d, B:29:0x0011), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039 A[Catch: Exception -> 0x004b, TryCatch #0 {Exception -> 0x004b, blocks: (B:3:0x0001, B:7:0x0015, B:10:0x001c, B:14:0x0039, B:16:0x0040, B:18:0x002d, B:20:0x0031, B:23:0x0035, B:24:0x0009, B:26:0x000d, B:29:0x0011), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040 A[Catch: Exception -> 0x004b, TRY_LEAVE, TryCatch #0 {Exception -> 0x004b, blocks: (B:3:0x0001, B:7:0x0015, B:10:0x001c, B:14:0x0039, B:16:0x0040, B:18:0x002d, B:20:0x0031, B:23:0x0035, B:24:0x0009, B:26:0x000d, B:29:0x0011), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015 A[Catch: Exception -> 0x004b, TryCatch #0 {Exception -> 0x004b, blocks: (B:3:0x0001, B:7:0x0015, B:10:0x001c, B:14:0x0039, B:16:0x0040, B:18:0x002d, B:20:0x0031, B:23:0x0035, B:24:0x0009, B:26:0x000d, B:29:0x0011), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.mycompany.app.widget.WidgetSearchProviderBody r5) {
        /*
            r0 = 0
            int r1 = r5.e     // Catch: java.lang.Exception -> L4b
            r2 = -1234(0xfffffffffffffb2e, float:NaN)
            if (r1 >= 0) goto L9
        L7:
            r1 = r2
            goto L13
        L9:
            int[] r3 = r5.d     // Catch: java.lang.Exception -> L4b
            if (r3 == 0) goto L7
            int r4 = r3.length     // Catch: java.lang.Exception -> L4b
            if (r1 < r4) goto L11
            goto L7
        L11:
            r1 = r3[r1]     // Catch: java.lang.Exception -> L4b
        L13:
            if (r1 != r2) goto L1c
            r5.b = r0     // Catch: java.lang.Exception -> L4b
            r5.f20791c = r0     // Catch: java.lang.Exception -> L4b
            r5.d = r0     // Catch: java.lang.Exception -> L4b
            return
        L1c:
            android.content.Context r3 = r5.b     // Catch: java.lang.Exception -> L4b
            android.appwidget.AppWidgetManager r4 = r5.f20791c     // Catch: java.lang.Exception -> L4b
            r5.c(r3, r4, r1)     // Catch: java.lang.Exception -> L4b
            int r1 = r5.e     // Catch: java.lang.Exception -> L4b
            int r1 = r1 + 1
            r5.e = r1     // Catch: java.lang.Exception -> L4b
            if (r1 >= 0) goto L2d
        L2b:
            r1 = r2
            goto L37
        L2d:
            int[] r3 = r5.d     // Catch: java.lang.Exception -> L4b
            if (r3 == 0) goto L2b
            int r4 = r3.length     // Catch: java.lang.Exception -> L4b
            if (r1 < r4) goto L35
            goto L2b
        L35:
            r1 = r3[r1]     // Catch: java.lang.Exception -> L4b
        L37:
            if (r1 != r2) goto L40
            r5.b = r0     // Catch: java.lang.Exception -> L4b
            r5.f20791c = r0     // Catch: java.lang.Exception -> L4b
            r5.d = r0     // Catch: java.lang.Exception -> L4b
            return
        L40:
            android.content.Context r1 = r5.b     // Catch: java.lang.Exception -> L4b
            com.mycompany.app.widget.WidgetSearchProviderBody$3 r2 = new com.mycompany.app.widget.WidgetSearchProviderBody$3     // Catch: java.lang.Exception -> L4b
            r2.<init>()     // Catch: java.lang.Exception -> L4b
            com.mycompany.app.main.MainApp.J(r1, r2)     // Catch: java.lang.Exception -> L4b
            return
        L4b:
            r5.b = r0
            r5.f20791c = r0
            r5.d = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.widget.WidgetSearchProviderBody.a(com.mycompany.app.widget.WidgetSearchProviderBody):void");
    }

    public final void b(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        if (context != null && iArr != null && iArr.length != 0) {
            this.b = context;
            this.f20791c = appWidgetManager;
            this.d = iArr;
            this.e = 0;
            MainApp.J(context, new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchProviderBody.2
                @Override // java.lang.Runnable
                public final void run() {
                    WidgetSearchProviderBody.a(WidgetSearchProviderBody.this);
                }
            });
            return;
        }
        this.b = null;
        this.f20791c = null;
        this.d = null;
    }

    public final void c(Context context, AppWidgetManager appWidgetManager, int i) {
        int i2;
        if (appWidgetManager == null) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) WidgetSearchActivity.class);
        intent.putExtra("EXTRA_VOICE", false);
        intent.addFlags(268435456);
        intent.setData(Uri.parse(intent.toUri(1)));
        PendingIntent activity = PendingIntent.getActivity(context, 8, intent, 201326592);
        Intent intent2 = new Intent(context, (Class<?>) WidgetSearchActivity.class);
        intent2.putExtra("EXTRA_VOICE", true);
        intent2.addFlags(268435456);
        intent2.setData(Uri.parse(intent2.toUri(1)));
        PendingIntent activity2 = PendingIntent.getActivity(context, 9, intent2, 201326592);
        String packageName = context.getPackageName();
        if (this.f20790a) {
            i2 = R.layout.widget_search_layout_dark;
        } else {
            i2 = R.layout.widget_search_layout_light;
        }
        RemoteViews remoteViews = new RemoteViews(packageName, i2);
        remoteViews.setOnClickPendingIntent(R.id.back_view, activity);
        remoteViews.setOnClickPendingIntent(R.id.icon_view, activity2);
        appWidgetManager.updateAppWidget(i, remoteViews);
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
        String action = intent.getAction();
        action.getClass();
        if (!action.equals("com.mycompany.app.soulbrowser.ACTION_SRCHGET_UPDATE")) {
            return;
        }
        this.f = context;
        MainApp.J(context, new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchProviderBody.1
            @Override // java.lang.Runnable
            public final void run() {
                AppWidgetManager appWidgetManager;
                Class cls;
                WidgetSearchProviderBody widgetSearchProviderBody = WidgetSearchProviderBody.this;
                Context context2 = widgetSearchProviderBody.f;
                widgetSearchProviderBody.f = null;
                if (context2 == null || (appWidgetManager = AppWidgetManager.getInstance(context2)) == null) {
                    return;
                }
                if (widgetSearchProviderBody.f20790a) {
                    cls = WidgetSearchProviderDark.class;
                } else {
                    cls = WidgetSearchProviderLight.class;
                }
                widgetSearchProviderBody.b(context2, appWidgetManager, appWidgetManager.getAppWidgetIds(new ComponentName(context2, (Class<?>) cls)));
            }
        });
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        b(context, appWidgetManager, iArr);
    }
}
