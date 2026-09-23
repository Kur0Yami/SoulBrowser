package com.mycompany.app.main;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.URLUtil;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookFilter;
import com.mycompany.app.dialog.DialogSetDesk;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class MainFilterSvc {

    /* renamed from: a, reason: collision with root package name */
    public Context f16540a;
    public DialogSetDesk.SetDeskListener b;

    /* renamed from: c, reason: collision with root package name */
    public Handler f16541c;
    public DialogTask d;
    public boolean e;
    public boolean f;
    public NotificationCompat.Builder g;
    public long h;
    public boolean i;
    public EventReceiver j;
    public MainFilterDown k;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final List f;
        public final int g;
        public final int h;
        public final String i;
        public final String j;
        public boolean k;

        public DialogTask(MainFilterSvc mainFilterSvc, List list, int i) {
            MainItem.ChildItem childItem;
            WeakReference weakReference = new WeakReference(mainFilterSvc);
            this.e = weakReference;
            if (((MainFilterSvc) weakReference.get()) != null) {
                this.f = list;
                this.g = i;
                if (list != null && i < list.size() && (childItem = (MainItem.ChildItem) list.get(i)) != null) {
                    this.h = list.size();
                    this.i = childItem.g;
                    this.j = childItem.h;
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            MainFilterSvc mainFilterSvc;
            boolean z;
            int i;
            int i2;
            NotificationManager q;
            WeakReference weakReference = this.e;
            if (weakReference != null && (mainFilterSvc = (MainFilterSvc) weakReference.get()) != null && !this.f12839c) {
                NotificationCompat.Builder builder = mainFilterSvc.g;
                boolean z2 = false;
                int i3 = this.g;
                String str = this.j;
                if (builder != null && (i = i3 + 1) < (i2 = this.h)) {
                    try {
                        long currentTimeMillis = System.currentTimeMillis();
                        if (currentTimeMillis - mainFilterSvc.h >= 1000) {
                            mainFilterSvc.h = currentTimeMillis;
                            Context context = mainFilterSvc.f16540a;
                            if (context != null && (q = MainApp.q(context)) != null) {
                                builder.e = NotificationCompat.Builder.c(str);
                                builder.f = NotificationCompat.Builder.c(i + " / " + i2);
                                builder.f(i2, i, false);
                                if (!mainFilterSvc.i) {
                                    mainFilterSvc.i = true;
                                    Intent intent = new Intent("com.mycompany.app.soulbrowser.ACTION_FILTER_CANCEL");
                                    intent.setPackage(mainFilterSvc.f16540a.getPackageName());
                                    builder.a(new NotificationCompat.Action(R.drawable.outline_close_black_24, mainFilterSvc.f16540a.getString(R.string.cancel), PendingIntent.getBroadcast(mainFilterSvc.f16540a, 11, intent, 201326592)));
                                }
                                q.notify(2147483639, builder.b());
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
                String str2 = this.i;
                if (URLUtil.isNetworkUrl(str2)) {
                    Context context2 = mainFilterSvc.f16540a;
                    MainFilterDown mainFilterDown = mainFilterSvc.k;
                    if (mainFilterDown == null) {
                        z = false;
                    } else {
                        String z1 = MainUtil.z1(str2);
                        if (!TextUtils.isEmpty(z1)) {
                            z = mainFilterDown.b(context2, z1, str2);
                        } else {
                            z = false;
                        }
                        if (!z) {
                            z = mainFilterDown.b(context2, str2, str2);
                        }
                    }
                    this.k = z;
                } else {
                    this.k = true;
                }
                if (this.k) {
                    DbBookFilter.i(mainFilterSvc.f16540a, str2, str);
                    mainFilterSvc.f = true;
                }
                if (i3 == 0) {
                    Context context3 = mainFilterSvc.f16540a;
                    MainFilterDown mainFilterDown2 = mainFilterSvc.k;
                    if (mainFilterDown2 != null) {
                        String z12 = MainUtil.z1("https://raw.githubusercontent.com/SoulBrowser/SoulBrowser/master/Image/test.txt");
                        if (!TextUtils.isEmpty(z12)) {
                            z2 = mainFilterDown2.b(context3, z12, "https://raw.githubusercontent.com/SoulBrowser/SoulBrowser/master/Image/test.txt");
                        }
                        if (!z2) {
                            mainFilterDown2.b(context3, "https://raw.githubusercontent.com/SoulBrowser/SoulBrowser/master/Image/test.txt", "https://raw.githubusercontent.com/SoulBrowser/SoulBrowser/master/Image/test.txt");
                        }
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            MainFilterSvc mainFilterSvc;
            WeakReference weakReference = this.e;
            if (weakReference == null || (mainFilterSvc = (MainFilterSvc) weakReference.get()) == null) {
                return;
            }
            mainFilterSvc.d = null;
            MainUtil.e8(mainFilterSvc.f16540a, R.string.cancelled);
            mainFilterSvc.c();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final MainFilterSvc mainFilterSvc;
            WeakReference weakReference = this.e;
            if (weakReference != null && (mainFilterSvc = (MainFilterSvc) weakReference.get()) != null) {
                mainFilterSvc.d = null;
                if (mainFilterSvc.e) {
                    MainUtil.e8(mainFilterSvc.f16540a, R.string.cancelled);
                    mainFilterSvc.c();
                } else {
                    Handler handler = mainFilterSvc.f16541c;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.main.MainFilterSvc.DialogTask.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogTask dialogTask = DialogTask.this;
                            List list = dialogTask.f;
                            mainFilterSvc.b(dialogTask.g + 1, list);
                        }
                    });
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class EventReceiver extends BroadcastReceiver {
        public EventReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                action.getClass();
                if (action.equals("com.mycompany.app.soulbrowser.ACTION_FILTER_CANCEL")) {
                    MainFilterSvc mainFilterSvc = MainFilterSvc.this;
                    if (mainFilterSvc.e) {
                        return;
                    }
                    mainFilterSvc.e = true;
                    DialogTask dialogTask = mainFilterSvc.d;
                    if (dialogTask != null) {
                        dialogTask.f12839c = true;
                    }
                    mainFilterSvc.d = null;
                    MainUtil.e8(mainFilterSvc.f16540a, R.string.cancelled);
                    mainFilterSvc.c();
                }
            }
        }
    }

    public MainFilterSvc(Context context, DialogSetDesk.SetDeskListener setDeskListener) {
        this.f16540a = context;
        this.b = setDeskListener;
        Handler handler = new Handler(Looper.getMainLooper());
        this.f16541c = handler;
        handler.post(new Runnable() { // from class: com.mycompany.app.main.MainFilterSvc.1
            @Override // java.lang.Runnable
            public final void run() {
                MainFilterSvc mainFilterSvc = MainFilterSvc.this;
                if (mainFilterSvc.f16540a != null && mainFilterSvc.j == null) {
                    mainFilterSvc.j = new EventReceiver();
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("com.mycompany.app.soulbrowser.ACTION_FILTER_CANCEL");
                    ContextCompat.f(mainFilterSvc.f16540a, mainFilterSvc.j, intentFilter, null, 4);
                }
                MainApp.J(mainFilterSvc.f16540a, new Runnable() { // from class: com.mycompany.app.main.MainFilterSvc.1.1
                    /* JADX WARN: Type inference failed for: r5v2, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        Cursor cursor;
                        final MainFilterSvc mainFilterSvc2 = MainFilterSvc.this;
                        MainFilterSvc.a(mainFilterSvc2);
                        Context context2 = mainFilterSvc2.f16540a;
                        if (context2 != null) {
                            ArrayList arrayList = null;
                            try {
                                cursor = DbUtil.g(DbBookFilter.f(context2).getWritableDatabase(), "DbBookFilter_table", new String[]{"_path", "_title"}, "_use=?", new String[]{"1"}, null);
                                if (cursor != null) {
                                    try {
                                        if (cursor.moveToFirst()) {
                                            int columnIndex = cursor.getColumnIndex("_path");
                                            int columnIndex2 = cursor.getColumnIndex("_title");
                                            do {
                                                String string = cursor.getString(columnIndex);
                                                if (!TextUtils.isEmpty(string)) {
                                                    ?? obj = new Object();
                                                    obj.g = string;
                                                    obj.h = cursor.getString(columnIndex2);
                                                    if (arrayList == null) {
                                                        arrayList = new ArrayList();
                                                    }
                                                    arrayList.add(obj);
                                                }
                                                if (mainFilterSvc2.e) {
                                                    break;
                                                }
                                            } while (cursor.moveToNext());
                                        }
                                    } catch (Exception unused) {
                                    }
                                }
                            } catch (Exception unused2) {
                                cursor = null;
                            }
                            if (cursor != null) {
                                cursor.close();
                            }
                            if (mainFilterSvc2.f16540a != null) {
                                mainFilterSvc2.k = new MainFilterDown(new MainUtil.LoopCancelListener() { // from class: com.mycompany.app.main.MainFilterSvc.4
                                    @Override // com.mycompany.app.main.MainUtil.LoopCancelListener
                                    public final boolean isCancelled() {
                                        DialogTask dialogTask;
                                        MainFilterSvc mainFilterSvc3 = MainFilterSvc.this;
                                        if (mainFilterSvc3.f16540a == null || mainFilterSvc3.e || ((dialogTask = mainFilterSvc3.d) != null && dialogTask.f12839c)) {
                                            return true;
                                        }
                                        return false;
                                    }
                                });
                                mainFilterSvc2.b(0, arrayList);
                            }
                        }
                    }
                });
            }
        });
    }

    public static void a(MainFilterSvc mainFilterSvc) {
        Context context;
        if (mainFilterSvc.g == null && (context = mainFilterSvc.f16540a) != null) {
            try {
                NotificationManager q = MainApp.q(context);
                if (q != null) {
                    mainFilterSvc.i = false;
                    NotificationCompat.Builder builder = new NotificationCompat.Builder(mainFilterSvc.f16540a, "AdBlockFilter");
                    builder.u.icon = R.drawable.outline_verified_user_white_24;
                    builder.e = NotificationCompat.Builder.c(mainFilterSvc.f16540a.getString(R.string.ads_filter) + " " + mainFilterSvc.f16540a.getString(R.string.update));
                    builder.i = 1;
                    builder.r = -1;
                    builder.o = "com.mycompany.app.soulbrowser.NOTI_GROUP_FILTER";
                    mainFilterSvc.g = builder;
                    Notification b = builder.b();
                    b.flags = (b.flags | 32) & (-17);
                    if (Build.VERSION.SDK_INT >= 26) {
                        q.createNotificationChannel(new NotificationChannel("AdBlockFilter", mainFilterSvc.f16540a.getString(R.string.ads_block), 2));
                    }
                    q.notify(2147483639, b);
                    mainFilterSvc.h = System.currentTimeMillis();
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void b(int i, List list) {
        if (this.f16540a == null) {
            return;
        }
        if (!this.e && list != null && i < list.size()) {
            DialogTask dialogTask = this.d;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.d = null;
            DialogTask dialogTask2 = new DialogTask(this, list, i);
            this.d = dialogTask2;
            dialogTask2.b(this.f16540a);
            return;
        }
        c();
    }

    public final void c() {
        Handler handler;
        if (this.b != null && (handler = this.f16541c) != null) {
            handler.post(new Runnable() { // from class: com.mycompany.app.main.MainFilterSvc.2
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z;
                    MainFilterSvc mainFilterSvc = MainFilterSvc.this;
                    DialogSetDesk.SetDeskListener setDeskListener = mainFilterSvc.b;
                    mainFilterSvc.b = null;
                    if (setDeskListener == null) {
                        return;
                    }
                    if (mainFilterSvc.f && !mainFilterSvc.e) {
                        z = true;
                    } else {
                        z = false;
                    }
                    setDeskListener.a(z);
                }
            });
        }
    }

    public final void d() {
        Context context = this.f16540a;
        if (context == null) {
            return;
        }
        EventReceiver eventReceiver = this.j;
        if (eventReceiver != null) {
            context.unregisterReceiver(eventReceiver);
            this.j = null;
        }
        DialogTask dialogTask = this.d;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.d = null;
        this.g = null;
        final Context context2 = this.f16540a;
        if (context2 != null) {
            MainApp.J(context2, new Runnable() { // from class: com.mycompany.app.main.MainFilterSvc.3
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationManager q = MainApp.q(context2);
                    if (q != null) {
                        q.cancel(2147483639);
                    }
                }
            });
        }
        this.f16540a = null;
        this.b = null;
        MainUtil.R6(this.f16541c);
        this.f16541c = null;
        this.k = null;
    }
}
