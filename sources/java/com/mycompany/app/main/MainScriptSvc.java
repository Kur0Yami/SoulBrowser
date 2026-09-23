package com.mycompany.app.main;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookScript;
import com.mycompany.app.dialog.DialogSetDesk;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.soulbrowser.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class MainScriptSvc {

    /* renamed from: a, reason: collision with root package name */
    public Context f16828a;
    public DialogSetDesk.SetDeskListener b;

    /* renamed from: c, reason: collision with root package name */
    public Handler f16829c;
    public DialogTask d;
    public boolean e;
    public boolean f;
    public NotificationCompat.Builder g;
    public long h;
    public boolean i;
    public EventReceiver j;
    public String k;
    public String l;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final List f;
        public final MainItem.ChildItem g;
        public final int h;
        public final int i;
        public final String j;
        public final String k;
        public boolean l;

        public DialogTask(MainScriptSvc mainScriptSvc, List list, int i) {
            WeakReference weakReference = new WeakReference(mainScriptSvc);
            this.e = weakReference;
            if (((MainScriptSvc) weakReference.get()) != null) {
                this.f = list;
                this.h = i;
                if (list != null && i < list.size()) {
                    MainItem.ChildItem childItem = (MainItem.ChildItem) list.get(i);
                    this.g = childItem;
                    if (childItem != null) {
                        this.i = list.size();
                        this.j = childItem.g;
                        this.k = childItem.h;
                    }
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:111:0x0134  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x010d A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:94:0x0108 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 406
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainScriptSvc.DialogTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            MainScriptSvc mainScriptSvc;
            WeakReference weakReference = this.e;
            if (weakReference == null || (mainScriptSvc = (MainScriptSvc) weakReference.get()) == null) {
                return;
            }
            mainScriptSvc.d = null;
            MainUtil.e8(mainScriptSvc.f16828a, R.string.cancelled);
            mainScriptSvc.c();
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final MainScriptSvc mainScriptSvc;
            WeakReference weakReference = this.e;
            if (weakReference != null && (mainScriptSvc = (MainScriptSvc) weakReference.get()) != null) {
                mainScriptSvc.d = null;
                if (mainScriptSvc.e) {
                    MainUtil.e8(mainScriptSvc.f16828a, R.string.cancelled);
                    mainScriptSvc.c();
                } else {
                    Handler handler = mainScriptSvc.f16829c;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.main.MainScriptSvc.DialogTask.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogTask dialogTask = DialogTask.this;
                            List list = dialogTask.f;
                            mainScriptSvc.b(dialogTask.h + 1, list);
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
                if (action.equals("com.mycompany.app.soulbrowser.ACTION_SCRIPT_CANCEL")) {
                    MainScriptSvc mainScriptSvc = MainScriptSvc.this;
                    if (mainScriptSvc.e) {
                        return;
                    }
                    mainScriptSvc.e = true;
                    DialogTask dialogTask = mainScriptSvc.d;
                    if (dialogTask != null) {
                        dialogTask.f12839c = true;
                    }
                    mainScriptSvc.d = null;
                    MainUtil.e8(mainScriptSvc.f16828a, R.string.cancelled);
                    mainScriptSvc.c();
                }
            }
        }
    }

    public MainScriptSvc(Context context, DialogSetDesk.SetDeskListener setDeskListener) {
        this.f16828a = context;
        this.b = setDeskListener;
        Handler handler = new Handler(Looper.getMainLooper());
        this.f16829c = handler;
        handler.post(new Runnable() { // from class: com.mycompany.app.main.MainScriptSvc.1
            @Override // java.lang.Runnable
            public final void run() {
                MainScriptSvc mainScriptSvc = MainScriptSvc.this;
                if (mainScriptSvc.f16828a != null && mainScriptSvc.j == null) {
                    mainScriptSvc.j = new EventReceiver();
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("com.mycompany.app.soulbrowser.ACTION_SCRIPT_CANCEL");
                    ContextCompat.f(mainScriptSvc.f16828a, mainScriptSvc.j, intentFilter, null, 4);
                }
                MainApp.J(mainScriptSvc.f16828a, new Runnable() { // from class: com.mycompany.app.main.MainScriptSvc.1.1
                    /* JADX WARN: Type inference failed for: r5v2, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        Cursor cursor;
                        MainScriptSvc mainScriptSvc2 = MainScriptSvc.this;
                        MainScriptSvc.a(mainScriptSvc2);
                        Context context2 = mainScriptSvc2.f16828a;
                        if (context2 != null) {
                            ArrayList arrayList = null;
                            try {
                                cursor = DbUtil.g(DbBookScript.d(context2).getWritableDatabase(), "DbBookScript_table", new String[]{"_downurl", "_name"}, "_enabled=?", new String[]{"1"}, null);
                                if (cursor != null) {
                                    try {
                                        if (cursor.moveToFirst()) {
                                            int columnIndex = cursor.getColumnIndex("_downurl");
                                            int columnIndex2 = cursor.getColumnIndex("_name");
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
                                                if (mainScriptSvc2.e) {
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
                            if (mainScriptSvc2.f16828a != null) {
                                mainScriptSvc2.b(0, arrayList);
                            }
                        }
                    }
                });
            }
        });
    }

    public static void a(MainScriptSvc mainScriptSvc) {
        Context context;
        if (mainScriptSvc.g == null && (context = mainScriptSvc.f16828a) != null) {
            try {
                NotificationManager q = MainApp.q(context);
                if (q != null) {
                    mainScriptSvc.i = false;
                    NotificationCompat.Builder builder = new NotificationCompat.Builder(mainScriptSvc.f16828a, "UserScript");
                    builder.u.icon = R.drawable.outline_extension_dark_24;
                    builder.e = NotificationCompat.Builder.c(mainScriptSvc.f16828a.getString(R.string.user_script_title) + " " + mainScriptSvc.f16828a.getString(R.string.update));
                    builder.i = 1;
                    builder.r = -1;
                    builder.o = "com.mycompany.app.soulbrowser.NOTI_GROUP_SCRIPT";
                    mainScriptSvc.g = builder;
                    Notification b = builder.b();
                    b.flags = (b.flags | 32) & (-17);
                    if (Build.VERSION.SDK_INT >= 26) {
                        q.createNotificationChannel(new NotificationChannel("UserScript", mainScriptSvc.f16828a.getString(R.string.ads_block), 2));
                    }
                    q.notify(2147483637, b);
                    mainScriptSvc.h = System.currentTimeMillis();
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void b(int i, List list) {
        if (this.f16828a == null) {
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
            dialogTask2.b(this.f16828a);
            return;
        }
        c();
    }

    public final void c() {
        Handler handler;
        if (this.b != null && (handler = this.f16829c) != null) {
            handler.post(new Runnable() { // from class: com.mycompany.app.main.MainScriptSvc.2
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z;
                    MainScriptSvc mainScriptSvc = MainScriptSvc.this;
                    DialogSetDesk.SetDeskListener setDeskListener = mainScriptSvc.b;
                    mainScriptSvc.b = null;
                    if (setDeskListener == null) {
                        return;
                    }
                    if (mainScriptSvc.f && !mainScriptSvc.e) {
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
        Context context = this.f16828a;
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
        final Context context2 = this.f16828a;
        if (context2 != null) {
            MainApp.J(context2, new Runnable() { // from class: com.mycompany.app.main.MainScriptSvc.3
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationManager q = MainApp.q(context2);
                    if (q != null) {
                        q.cancel(2147483637);
                    }
                }
            });
        }
        this.f16828a = null;
        this.b = null;
        MainUtil.R6(this.f16829c);
        this.f16829c = null;
        this.k = null;
        this.l = null;
    }
}
