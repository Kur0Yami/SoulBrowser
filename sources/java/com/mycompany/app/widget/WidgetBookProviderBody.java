package com.mycompany.app.widget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.soulbrowser.R;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class WidgetBookProviderBody extends AppWidgetProvider {

    /* renamed from: a, reason: collision with root package name */
    public boolean f20741a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public AppWidgetManager f20742c;
    public int[] d;
    public int e;
    public Context f;
    public int g;
    public Context h;
    public String i;

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c A[Catch: Exception -> 0x0053, TryCatch #0 {Exception -> 0x0053, blocks: (B:3:0x0001, B:7:0x0015, B:10:0x001c, B:14:0x0041, B:16:0x0048, B:18:0x0035, B:20:0x0039, B:23:0x003d, B:24:0x0009, B:26:0x000d, B:29:0x0011), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0041 A[Catch: Exception -> 0x0053, TryCatch #0 {Exception -> 0x0053, blocks: (B:3:0x0001, B:7:0x0015, B:10:0x001c, B:14:0x0041, B:16:0x0048, B:18:0x0035, B:20:0x0039, B:23:0x003d, B:24:0x0009, B:26:0x000d, B:29:0x0011), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0048 A[Catch: Exception -> 0x0053, TRY_LEAVE, TryCatch #0 {Exception -> 0x0053, blocks: (B:3:0x0001, B:7:0x0015, B:10:0x001c, B:14:0x0041, B:16:0x0048, B:18:0x0035, B:20:0x0039, B:23:0x003d, B:24:0x0009, B:26:0x000d, B:29:0x0011), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015 A[Catch: Exception -> 0x0053, TryCatch #0 {Exception -> 0x0053, blocks: (B:3:0x0001, B:7:0x0015, B:10:0x001c, B:14:0x0041, B:16:0x0048, B:18:0x0035, B:20:0x0039, B:23:0x003d, B:24:0x0009, B:26:0x000d, B:29:0x0011), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.mycompany.app.widget.WidgetBookProviderBody r6) {
        /*
            r0 = 0
            int r1 = r6.e     // Catch: java.lang.Exception -> L53
            r2 = -1234(0xfffffffffffffb2e, float:NaN)
            if (r1 >= 0) goto L9
        L7:
            r1 = r2
            goto L13
        L9:
            int[] r3 = r6.d     // Catch: java.lang.Exception -> L53
            if (r3 == 0) goto L7
            int r4 = r3.length     // Catch: java.lang.Exception -> L53
            if (r1 < r4) goto L11
            goto L7
        L11:
            r1 = r3[r1]     // Catch: java.lang.Exception -> L53
        L13:
            if (r1 != r2) goto L1c
            r6.b = r0     // Catch: java.lang.Exception -> L53
            r6.f20742c = r0     // Catch: java.lang.Exception -> L53
            r6.d = r0     // Catch: java.lang.Exception -> L53
            return
        L1c:
            com.mycompany.app.widget.WidgetBookData r3 = com.mycompany.app.widget.WidgetBookData.b()     // Catch: java.lang.Exception -> L53
            java.lang.String r3 = r3.a(r1)     // Catch: java.lang.Exception -> L53
            android.content.Context r4 = r6.b     // Catch: java.lang.Exception -> L53
            android.appwidget.AppWidgetManager r5 = r6.f20742c     // Catch: java.lang.Exception -> L53
            r6.g(r4, r5, r1, r3)     // Catch: java.lang.Exception -> L53
            int r1 = r6.e     // Catch: java.lang.Exception -> L53
            int r1 = r1 + 1
            r6.e = r1     // Catch: java.lang.Exception -> L53
            if (r1 >= 0) goto L35
        L33:
            r1 = r2
            goto L3f
        L35:
            int[] r3 = r6.d     // Catch: java.lang.Exception -> L53
            if (r3 == 0) goto L33
            int r4 = r3.length     // Catch: java.lang.Exception -> L53
            if (r1 < r4) goto L3d
            goto L33
        L3d:
            r1 = r3[r1]     // Catch: java.lang.Exception -> L53
        L3f:
            if (r1 != r2) goto L48
            r6.b = r0     // Catch: java.lang.Exception -> L53
            r6.f20742c = r0     // Catch: java.lang.Exception -> L53
            r6.d = r0     // Catch: java.lang.Exception -> L53
            return
        L48:
            android.content.Context r1 = r6.b     // Catch: java.lang.Exception -> L53
            com.mycompany.app.widget.WidgetBookProviderBody$5 r2 = new com.mycompany.app.widget.WidgetBookProviderBody$5     // Catch: java.lang.Exception -> L53
            r2.<init>()     // Catch: java.lang.Exception -> L53
            com.mycompany.app.main.MainApp.J(r1, r2)     // Catch: java.lang.Exception -> L53
            return
        L53:
            r6.b = r0
            r6.f20742c = r0
            r6.d = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.widget.WidgetBookProviderBody.a(com.mycompany.app.widget.WidgetBookProviderBody):void");
    }

    public static Bitmap b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Bitmap a2 = ImageLoader.f().g().a(MemoryCacheUtils.a(2, str));
        if (MainUtil.f6(a2)) {
            return a2;
        }
        return MainUtil.n4(MainUtil.O1(str));
    }

    public static RemoteViews c(Context context, MainItem.ChildItem childItem, boolean z) {
        int i;
        if (context != null && childItem != null) {
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_book_item);
            int i2 = R.id.icon_view;
            if (childItem.k) {
                if (childItem.b == 1) {
                    if (z) {
                        remoteViews.setImageViewResource(i2, R.drawable.outline_shift_2_dark_24);
                    } else {
                        remoteViews.setImageViewResource(i2, R.drawable.outline_shift_2_black_24);
                    }
                } else if (z) {
                    remoteViews.setImageViewResource(i2, R.drawable.outline_folder_dark_24);
                } else {
                    remoteViews.setImageViewResource(i2, R.drawable.outline_folder_black_24);
                }
            } else if (TextUtils.isEmpty(childItem.g)) {
                if (z) {
                    remoteViews.setImageViewResource(i2, R.drawable.outline_public_dark_web_24);
                } else {
                    remoteViews.setImageViewResource(i2, R.drawable.outline_public_black_24);
                }
            } else if (childItem.g.startsWith("file:///")) {
                if ("file:///android_asset/shortcut.html".equals(childItem.g)) {
                    if (z) {
                        remoteViews.setImageViewResource(i2, R.drawable.outline_home_dark_web_24);
                    } else {
                        remoteViews.setImageViewResource(i2, R.drawable.outline_home_black_24);
                    }
                } else if (z) {
                    remoteViews.setImageViewResource(i2, R.drawable.outline_offline_pin_dark_web_24);
                } else {
                    remoteViews.setImageViewResource(i2, R.drawable.outline_offline_pin_black_24);
                }
            } else {
                Bitmap b = b(childItem.g);
                if (MainUtil.f6(b)) {
                    remoteViews.setImageViewBitmap(i2, b);
                } else if (z) {
                    remoteViews.setImageViewResource(i2, R.drawable.outline_public_dark_web_24);
                } else {
                    remoteViews.setImageViewResource(i2, R.drawable.outline_public_black_24);
                }
            }
            remoteViews.setTextViewText(R.id.name_view, childItem.h);
            int i3 = R.id.name_view;
            if (z) {
                i = -5197648;
            } else {
                i = -16777216;
            }
            remoteViews.setTextColor(i3, i);
            Intent intent = new Intent();
            intent.putExtra("EXTRA_TYPE", childItem.k);
            intent.putExtra("EXTRA_PATH", childItem.g);
            remoteViews.setOnClickFillInIntent(R.id.item_view, intent);
            return remoteViews;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:92:0x002a, code lost:
    
        if (com.mycompany.app.db.book.DbBookWeb.i(r18, com.mycompany.app.main.MainUtil.d1(null, r3), com.mycompany.app.main.MainUtil.b1(null, r3)) == false) goto L8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0104 A[LOOP:0: B:58:0x0081->B:77:0x0104, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x010c A[EDGE_INSN: B:78:0x010c->B:11:0x010c BREAK  A[LOOP:0: B:58:0x0081->B:77:0x0104], SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r14v1, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v7, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.lang.Object, java.util.Comparator] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList d(android.content.Context r18, int r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.widget.WidgetBookProviderBody.d(android.content.Context, int, java.lang.String):java.util.ArrayList");
    }

    public static void e(Context context, MainItem.ChildItem childItem) {
        if (!childItem.k && !TextUtils.isEmpty(childItem.g) && !MainUtil.f6(b(childItem.g))) {
            Bitmap g0 = MainUtil.g0(childItem.f16550a, childItem.y, context, childItem.g);
            if (MainUtil.f6(g0)) {
                ImageLoader.f().g().b(MemoryCacheUtils.a(2, childItem.g), g0);
            }
        }
    }

    public final void f(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        if (context != null && iArr != null && iArr.length != 0) {
            this.b = context;
            this.f20742c = appWidgetManager;
            this.d = iArr;
            this.e = 0;
            MainApp.J(context, new Runnable() { // from class: com.mycompany.app.widget.WidgetBookProviderBody.4
                @Override // java.lang.Runnable
                public final void run() {
                    WidgetBookProviderBody.a(WidgetBookProviderBody.this);
                }
            });
            return;
        }
        this.b = null;
        this.f20742c = null;
        this.d = null;
    }

    public final void g(Context context, AppWidgetManager appWidgetManager, int i, String str) {
        Class cls;
        int i2;
        int i3;
        Class cls2;
        int i4;
        if (context != null && i != 0 && appWidgetManager != null) {
            if (this.f20741a) {
                cls = WidgetBookProviderDark.class;
            } else {
                cls = WidgetBookProviderLight.class;
            }
            Intent intent = new Intent(context, (Class<?>) cls);
            intent.putExtra("appWidgetId", i);
            intent.setAction("com.mycompany.app.soulbrowser.ACTION_BOOKGET_SELECT");
            intent.setData(Uri.parse(intent.toUri(1)));
            int i5 = Build.VERSION.SDK_INT;
            if (i5 >= 31) {
                i2 = 167772160;
            } else {
                i2 = 134217728;
            }
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 10, intent, i2);
            String packageName = context.getPackageName();
            if (this.f20741a) {
                i3 = R.layout.widget_book_layout_dark;
            } else {
                i3 = R.layout.widget_book_layout_light;
            }
            RemoteViews remoteViews = new RemoteViews(packageName, i3);
            remoteViews.setEmptyView(R.id.list_view, R.id.empty_view);
            remoteViews.setPendingIntentTemplate(R.id.list_view, broadcast);
            ArrayList d = d(context, i, str);
            if (i5 >= 31) {
                RemoteViews.RemoteCollectionItems.Builder builder = new RemoteViews.RemoteCollectionItems.Builder();
                int i6 = 0;
                if (d != null) {
                    i4 = d.size();
                } else {
                    i4 = 0;
                }
                if (i4 != 0) {
                    int size = d.size();
                    int i7 = 0;
                    while (i7 < size) {
                        Object obj = d.get(i7);
                        i7++;
                        builder.addItem(i6, c(context, (MainItem.ChildItem) obj, this.f20741a));
                        i6++;
                    }
                }
                remoteViews.setRemoteAdapter(R.id.list_view, builder.build());
            } else {
                if (this.f20741a) {
                    cls2 = WidgetBookServiceDark.class;
                } else {
                    cls2 = WidgetBookServiceLight.class;
                }
                Intent intent2 = new Intent(context, (Class<?>) cls2);
                intent2.putExtra("appWidgetId", i);
                intent2.setData(Uri.parse(intent2.toUri(1)));
                remoteViews.setRemoteAdapter(R.id.list_view, intent2);
                appWidgetManager.notifyAppWidgetViewDataChanged(i, R.id.list_view);
            }
            appWidgetManager.updateAppWidget(i, remoteViews);
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onDeleted(Context context, int[] iArr) {
        super.onDeleted(context, iArr);
        if (context != null && iArr != null && iArr.length != 0) {
            for (int i : iArr) {
                WidgetBookData b = WidgetBookData.b();
                if (i == 0) {
                    b.getClass();
                } else {
                    SparseArray sparseArray = b.f20740a;
                    if (sparseArray != null) {
                        try {
                            sparseArray.remove(i);
                            SparseArray sparseArray2 = b.b;
                            if (sparseArray2 != null) {
                                sparseArray2.remove(i);
                            }
                        } catch (Exception unused) {
                        }
                        b.c(context);
                    }
                }
            }
        }
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
        String action = intent.getAction();
        action.getClass();
        if (!action.equals("com.mycompany.app.soulbrowser.ACTION_BOOKGET_SELECT")) {
            if (!action.equals("com.mycompany.app.soulbrowser.ACTION_BOOKGET_UPDATE")) {
                return;
            }
            this.f = context;
            MainApp.J(context, new Runnable() { // from class: com.mycompany.app.widget.WidgetBookProviderBody.1
                @Override // java.lang.Runnable
                public final void run() {
                    AppWidgetManager appWidgetManager;
                    Class cls;
                    WidgetBookProviderBody widgetBookProviderBody = WidgetBookProviderBody.this;
                    Context context2 = widgetBookProviderBody.f;
                    widgetBookProviderBody.f = null;
                    if (context2 == null || (appWidgetManager = AppWidgetManager.getInstance(context2)) == null) {
                        return;
                    }
                    if (widgetBookProviderBody.f20741a) {
                        cls = WidgetBookProviderDark.class;
                    } else {
                        cls = WidgetBookProviderLight.class;
                    }
                    widgetBookProviderBody.f(context2, appWidgetManager, appWidgetManager.getAppWidgetIds(new ComponentName(context2, (Class<?>) cls)));
                }
            });
            return;
        }
        int intExtra = intent.getIntExtra("appWidgetId", 0);
        boolean booleanExtra = intent.getBooleanExtra("EXTRA_TYPE", false);
        String stringExtra = intent.getStringExtra("EXTRA_PATH");
        this.g = intExtra;
        this.h = context;
        this.i = stringExtra;
        if (booleanExtra) {
            MainApp.J(context, new Runnable() { // from class: com.mycompany.app.widget.WidgetBookProviderBody.2
                @Override // java.lang.Runnable
                public final void run() {
                    WidgetBookProviderBody widgetBookProviderBody = WidgetBookProviderBody.this;
                    int i = widgetBookProviderBody.g;
                    Context context2 = widgetBookProviderBody.h;
                    String str = widgetBookProviderBody.i;
                    widgetBookProviderBody.h = null;
                    widgetBookProviderBody.i = null;
                    if (context2 != null && i != 0) {
                        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context2);
                        if (Build.VERSION.SDK_INT >= 31) {
                            widgetBookProviderBody.g(context2, appWidgetManager, i, str);
                        } else if (i != 0 && appWidgetManager != null) {
                            WidgetBookProviderBody.d(context2, i, str);
                            try {
                                appWidgetManager.notifyAppWidgetViewDataChanged(i, R.id.list_view);
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            });
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.mycompany.app.widget.WidgetBookProviderBody.3
                @Override // java.lang.Runnable
                public final void run() {
                    WidgetBookProviderBody widgetBookProviderBody = WidgetBookProviderBody.this;
                    Context context2 = widgetBookProviderBody.h;
                    String str = widgetBookProviderBody.i;
                    widgetBookProviderBody.h = null;
                    widgetBookProviderBody.i = null;
                    widgetBookProviderBody.getClass();
                    if (context2 == null) {
                        return;
                    }
                    if (MainUtil.z6()) {
                        MainApp p = MainApp.p(context2);
                        if (p != null) {
                            p.p = true;
                        }
                        Intent i2 = MainUtil.i2(context2, PrefSecret.s);
                        i2.putExtra("EXTRA_TYPE", 0);
                        i2.putExtra("EXTRA_PATH", str);
                        i2.addFlags(268435456);
                        context2.startActivity(i2);
                        return;
                    }
                    Intent o4 = MainUtil.o4(context2);
                    o4.putExtra("EXTRA_PATH", str);
                    if (PrefTts.w) {
                        o4.putExtra("EXTRA_KEYPAD", true);
                    }
                    o4.addFlags(268435456);
                    context2.startActivity(o4);
                }
            });
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        f(context, appWidgetManager, iArr);
    }
}
