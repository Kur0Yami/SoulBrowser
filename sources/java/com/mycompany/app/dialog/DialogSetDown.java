package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainAppAdapter;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogRelative;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogSetDown extends MyDialogBottom {
    public static final String[] m0 = {"com.android.chrome", "com.chrome.beta", "com.chrome.dev", "com.google.android.apps.chrome"};
    public Activity a0;
    public Context b0;
    public boolean c0;
    public SetDownListener d0;
    public MyDialogRelative e0;
    public MyRecyclerView f0;
    public MyLineText g0;
    public MainAppAdapter h0;
    public DialogTask i0;
    public String j0;
    public String k0;
    public int l0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final String g;
        public List h;

        public DialogTask(DialogSetDown dialogSetDown, String str, String str2) {
            WeakReference weakReference = new WeakReference(dialogSetDown);
            this.e = weakReference;
            DialogSetDown dialogSetDown2 = (DialogSetDown) weakReference.get();
            if (dialogSetDown2 != null) {
                this.f = str;
                this.g = str2;
                MyDialogRelative myDialogRelative = dialogSetDown2.e0;
                if (myDialogRelative == null) {
                    return;
                }
                myDialogRelative.e(true);
            }
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, java.util.Comparator] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogSetDown dialogSetDown;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetDown = (DialogSetDown) weakReference.get()) != null && !this.f12839c) {
                String[] strArr = DialogSetDown.m0;
                String str = this.g;
                boolean isEmpty = TextUtils.isEmpty(str);
                if (isEmpty) {
                    str = "*/*";
                }
                String str2 = this.f;
                boolean z = true;
                if (TextUtils.isEmpty(str2)) {
                    if (str.startsWith("image")) {
                        str2 = "https://test.com/test.jpg";
                    } else if (str.startsWith("video")) {
                        str2 = "https://test.com/test.mp4";
                    } else {
                        z = false;
                        str2 = "https://test.com";
                    }
                }
                Intent intent = new Intent("android.intent.action.WEB_SEARCH");
                intent.setData(Uri.parse(str2));
                List B = dialogSetDown.B(null, intent);
                Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.setData(Uri.parse(str2));
                List B2 = dialogSetDown.B(B, intent2);
                Intent intent3 = new Intent("android.intent.action.SEND");
                intent3.setData(Uri.parse(str2));
                List B3 = dialogSetDown.B(B2, intent3);
                Intent intent4 = new Intent("android.intent.action.SEND");
                intent4.setType("text/plain");
                intent4.putExtra("android.intent.extra.TEXT", str2);
                List B4 = dialogSetDown.B(B3, intent4);
                Intent intent5 = new Intent("android.intent.action.WEB_SEARCH");
                intent5.setType(str);
                List B5 = dialogSetDown.B(B4, intent5);
                Intent intent6 = new Intent("android.intent.action.VIEW");
                intent6.setType(str);
                List B6 = dialogSetDown.B(B5, intent6);
                Intent intent7 = new Intent("android.intent.action.SEND");
                intent7.setType(str);
                List B7 = dialogSetDown.B(dialogSetDown.B(dialogSetDown.B(dialogSetDown.B(B6, intent7), DialogSetDown.D("android.intent.action.WEB_SEARCH", str2, str)), DialogSetDown.D("android.intent.action.VIEW", str2, str)), DialogSetDown.D("android.intent.action.SEND", str2, str));
                if (!isEmpty && z) {
                    B7 = dialogSetDown.B(dialogSetDown.B(dialogSetDown.B(B7, DialogSetDown.D("android.intent.action.WEB_SEARCH", "https://test.com", "*/*")), DialogSetDown.D("android.intent.action.VIEW", "https://test.com", "*/*")), DialogSetDown.D("android.intent.action.SEND", "https://test.com", "*/*"));
                }
                if (B7 != null && !B7.isEmpty()) {
                    try {
                        Collections.sort(B7, new Object());
                    } catch (Exception unused) {
                    }
                }
                this.h = B7;
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogSetDown dialogSetDown;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogSetDown = (DialogSetDown) weakReference.get()) == null) {
                return;
            }
            dialogSetDown.i0 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogSetDown dialogSetDown;
            int i;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetDown = (DialogSetDown) weakReference.get()) != null) {
                dialogSetDown.i0 = null;
                MyDialogRelative myDialogRelative = dialogSetDown.e0;
                if (myDialogRelative != null) {
                    myDialogRelative.e(false);
                    List list = this.h;
                    if (list != null && !list.isEmpty()) {
                        MainAppAdapter mainAppAdapter = dialogSetDown.h0;
                        List list2 = this.h;
                        MainListLoader mainListLoader = mainAppAdapter.f;
                        if (mainListLoader != null) {
                            mainListLoader.f16599c = null;
                        }
                        mainAppAdapter.e = list2;
                        mainAppAdapter.g();
                        return;
                    }
                    Context context = dialogSetDown.b0;
                    if (context != null && dialogSetDown.e0 != null) {
                        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                        int i2 = MainApp.E1;
                        appCompatTextView.setPadding(i2, i2, i2, i2);
                        appCompatTextView.setMinHeight(dialogSetDown.l0);
                        appCompatTextView.setGravity(17);
                        appCompatTextView.setLineSpacing(MainApp.F1, 1.0f);
                        appCompatTextView.setTextSize(1, 16.0f);
                        if (MainApp.K1) {
                            i = -328966;
                        } else {
                            i = -16777216;
                        }
                        appCompatTextView.setTextColor(i);
                        appCompatTextView.setText(R.string.apps_none);
                        dialogSetDown.e0.addView(appCompatTextView, -1, -2);
                        dialogSetDown.f0.setVisibility(8);
                    }
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface SetDownListener {
        void a(String str, String str2, String str3);
    }

    /* loaded from: classes3.dex */
    public static class SortApp implements Comparator<MainItem.ChildItem> {
        @Override // java.util.Comparator
        public final int compare(MainItem.ChildItem childItem, MainItem.ChildItem childItem2) {
            MainItem.ChildItem childItem3 = childItem;
            MainItem.ChildItem childItem4 = childItem2;
            if (childItem3 == null && childItem4 == null) {
                return 0;
            }
            if (childItem3 == null) {
                return 1;
            }
            if (childItem4 == null) {
                return -1;
            }
            int n = MainUtil.n(childItem3.h, childItem4.h, false);
            if (n != 0) {
                return n;
            }
            int n2 = MainUtil.n(childItem3.g, childItem4.g, false);
            if (n2 != 0) {
                return n2;
            }
            return MainUtil.n(childItem3.G, childItem4.G, false);
        }
    }

    public DialogSetDown(Activity activity, String str, boolean z, SetDownListener setDownListener) {
        super(activity, z ? 0 : R.style.DialogExpandTheme);
        this.c0 = false;
        E(activity, null, str, z, false, false, 0, setDownListener);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public static MainItem.ChildItem C(ResolveInfo resolveInfo, String str) {
        ?? obj = new Object();
        obj.S = resolveInfo;
        obj.g = "isCustomTab:".concat(str);
        obj.h = "Chrome Custom Tab";
        obj.G = null;
        return obj;
    }

    public static Intent D(String str, String str2, String str3) {
        Intent intent = new Intent(str);
        intent.setDataAndType(Uri.parse(str2), str3);
        return intent;
    }

    /* JADX WARN: Type inference failed for: r12v5, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v2, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public final List B(List list, Intent intent) {
        List<ResolveInfo> queryIntentActivities;
        boolean z;
        ActivityInfo activityInfo;
        CharSequence loadLabel;
        Activity activity = this.a0;
        if (activity != null) {
            DialogTask dialogTask = this.i0;
            if (dialogTask != null && dialogTask.f12839c) {
                return list;
            }
            try {
                PackageManager packageManager = activity.getPackageManager();
                if (Build.VERSION.SDK_INT >= 33) {
                    queryIntentActivities = packageManager.queryIntentActivities(intent, PackageManager.ResolveInfoFlags.of(0L));
                } else {
                    queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
                }
                if (queryIntentActivities != null) {
                    for (ResolveInfo resolveInfo : queryIntentActivities) {
                        DialogTask dialogTask2 = this.i0;
                        boolean z2 = true;
                        if (dialogTask2 != null && dialogTask2.f12839c) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (!z) {
                            if (resolveInfo != null && (activityInfo = resolveInfo.activityInfo) != null && activityInfo.exported) {
                                String str = activityInfo.packageName;
                                if (!TextUtils.isEmpty(str) && !str.equals("com.mycompany.app.soulbrowser")) {
                                    String str2 = resolveInfo.activityInfo.name;
                                    if (!TextUtils.isEmpty(str2) && !str2.equals("com.logiclooper.idm.activities.MainActivity") && (loadLabel = resolveInfo.loadLabel(packageManager)) != null) {
                                        String charSequence = loadLabel.toString();
                                        if (TextUtils.isEmpty(charSequence)) {
                                            continue;
                                        } else {
                                            String[] strArr = m0;
                                            if (list == null) {
                                                ArrayList arrayList = new ArrayList();
                                                try {
                                                    ?? obj = new Object();
                                                    obj.S = resolveInfo;
                                                    obj.g = str;
                                                    obj.h = charSequence;
                                                    obj.G = str2;
                                                    arrayList.add(obj);
                                                    if (this.c0) {
                                                        if (!TextUtils.isEmpty(str)) {
                                                            for (int i = 0; i < 4; i++) {
                                                                if (str.equals(strArr[i])) {
                                                                    break;
                                                                }
                                                            }
                                                        }
                                                        z2 = false;
                                                        if (z2) {
                                                            this.c0 = false;
                                                            arrayList.add(C(resolveInfo, str));
                                                        }
                                                    }
                                                    list = arrayList;
                                                } catch (Exception unused) {
                                                    return arrayList;
                                                }
                                            } else {
                                                Iterator it = list.iterator();
                                                while (true) {
                                                    if (it.hasNext()) {
                                                        MainItem.ChildItem childItem = (MainItem.ChildItem) it.next();
                                                        if (childItem != null && str2.equals(childItem.G)) {
                                                            break;
                                                        }
                                                    } else {
                                                        ?? obj2 = new Object();
                                                        obj2.S = resolveInfo;
                                                        obj2.g = str;
                                                        obj2.h = charSequence;
                                                        obj2.G = str2;
                                                        list.add(obj2);
                                                        if (this.c0) {
                                                            if (!TextUtils.isEmpty(str)) {
                                                                for (int i2 = 0; i2 < 4; i2++) {
                                                                    if (str.equals(strArr[i2])) {
                                                                        break;
                                                                    }
                                                                }
                                                            }
                                                            z2 = false;
                                                            if (z2) {
                                                                this.c0 = false;
                                                                list.add(C(resolveInfo, str));
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            return list;
                        }
                    }
                    return list;
                }
            } catch (Exception unused2) {
                return list;
            }
        }
        return list;
    }

    public final void E(Activity activity, String str, String str2, boolean z, boolean z2, boolean z3, int i, SetDownListener setDownListener) {
        DialogSetDown dialogSetDown;
        this.w = MainApp.g1;
        this.C = true;
        if (!z) {
            this.x = true;
        }
        this.a0 = activity;
        this.b0 = getContext();
        this.d0 = setDownListener;
        this.j0 = str;
        this.k0 = str2;
        if (!MainConst.e && z) {
            dialogSetDown = this;
        } else {
            dialogSetDown = this;
            dialogSetDown.x(i, MainUtil.l1(), z2, z3, true);
        }
        Handler handler = dialogSetDown.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetDown.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetDown dialogSetDown2 = DialogSetDown.this;
                Context context = dialogSetDown2.b0;
                if (context != null) {
                    dialogSetDown2.l0 = (int) MainUtil.G(context, 100.0f);
                    MyDialogRelative myDialogRelative = new MyDialogRelative(context, 0);
                    myDialogRelative.setMinimumHeight(dialogSetDown2.l0);
                    MyRecyclerView myRecyclerView = new MyRecyclerView(context);
                    myRecyclerView.setVerticalScrollBarEnabled(true);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams.topMargin = MainApp.F1;
                    layoutParams.bottomMargin = MainApp.G1;
                    myDialogRelative.addView(myRecyclerView, layoutParams);
                    dialogSetDown2.e0 = myDialogRelative;
                    dialogSetDown2.f0 = myRecyclerView;
                    Handler handler2 = dialogSetDown2.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetDown.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            Context context2;
                            final DialogSetDown dialogSetDown3 = DialogSetDown.this;
                            if (dialogSetDown3.e0 != null && (context2 = dialogSetDown3.b0) != null) {
                                dialogSetDown3.h0 = new MainAppAdapter(context2, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.dialog.DialogSetDown.3
                                    @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                                    public final void a(int i2) {
                                        MainItem.ChildItem childItem;
                                        SetDownListener setDownListener2;
                                        DialogSetDown dialogSetDown4 = DialogSetDown.this;
                                        MainAppAdapter mainAppAdapter = dialogSetDown4.h0;
                                        if (mainAppAdapter != null) {
                                            List list = mainAppAdapter.e;
                                            if (list != null && i2 >= 0 && i2 < list.size()) {
                                                childItem = (MainItem.ChildItem) mainAppAdapter.e.get(i2);
                                            } else {
                                                childItem = null;
                                            }
                                            if (childItem == null || (setDownListener2 = dialogSetDown4.d0) == null) {
                                                return;
                                            }
                                            setDownListener2.a(childItem.h, childItem.g, childItem.G);
                                            dialogSetDown4.dismiss();
                                        }
                                    }
                                });
                                dialogSetDown3.f0.setLayoutManager(new GridLayoutManager(4));
                                dialogSetDown3.f0.setAdapter(dialogSetDown3.h0);
                                dialogSetDown3.g(dialogSetDown3.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetDown.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        Context context3;
                                        String[] strArr = DialogSetDown.m0;
                                        final DialogSetDown dialogSetDown4 = DialogSetDown.this;
                                        if (dialogSetDown4.t != null && dialogSetDown4.e0 != null && (context3 = dialogSetDown4.b0) != null) {
                                            MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context3, 17, 1, 16.0f);
                                            r.setLinePad(MainApp.E1);
                                            r.setLineUp(true);
                                            dialogSetDown4.g0 = r;
                                            if (MainApp.K1) {
                                                r.setBackgroundResource(R.drawable.selector_list_back_dark);
                                                dialogSetDown4.g0.setTextColor(-328966);
                                            } else {
                                                r.setBackgroundResource(R.drawable.selector_list_back);
                                                dialogSetDown4.g0.setTextColor(-14784824);
                                            }
                                            dialogSetDown4.g0.setFilterColor(MainUtil.l1());
                                            dialogSetDown4.g0.setText(R.string.close);
                                            dialogSetDown4.g0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetDown.5
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view2) {
                                                    DialogSetDown.this.dismiss();
                                                }
                                            });
                                            try {
                                                CoordinatorLayout.LayoutParams layoutParams2 = new CoordinatorLayout.LayoutParams(-1, MainApp.g1);
                                                layoutParams2.f611c = 80;
                                                dialogSetDown4.t.addView(r, layoutParams2);
                                                Handler handler3 = dialogSetDown4.i;
                                                if (handler3 != null) {
                                                    handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetDown.7
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogSetDown dialogSetDown5 = DialogSetDown.this;
                                                            if (dialogSetDown5.e0 == null) {
                                                                return;
                                                            }
                                                            dialogSetDown5.show();
                                                            String str3 = dialogSetDown5.j0;
                                                            String str4 = dialogSetDown5.k0;
                                                            DialogTask dialogTask = dialogSetDown5.i0;
                                                            if (dialogTask != null) {
                                                                dialogTask.f12839c = true;
                                                            }
                                                            dialogSetDown5.i0 = null;
                                                            DialogTask dialogTask2 = new DialogTask(dialogSetDown5, str3, str4);
                                                            dialogSetDown5.i0 = dialogTask2;
                                                            dialogTask2.b(dialogSetDown5.b0);
                                                        }
                                                    });
                                                }
                                            } catch (Exception unused) {
                                                Handler handler4 = dialogSetDown4.i;
                                                if (handler4 != null) {
                                                    handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetDown.6
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            DialogSetDown.this.dismiss();
                                                        }
                                                    });
                                                }
                                            }
                                        }
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogTask dialogTask = this.i0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.i0 = null;
        MyDialogRelative myDialogRelative = this.e0;
        if (myDialogRelative != null) {
            myDialogRelative.c();
            this.e0 = null;
        }
        MyRecyclerView myRecyclerView = this.f0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.f0 = null;
        }
        MyLineText myLineText = this.g0;
        if (myLineText != null) {
            myLineText.u();
            this.g0 = null;
        }
        MainAppAdapter mainAppAdapter = this.h0;
        if (mainAppAdapter != null) {
            mainAppAdapter.g = mainAppAdapter.d();
            MainListLoader mainListLoader = mainAppAdapter.f;
            if (mainListLoader != null) {
                mainListLoader.f();
                mainAppAdapter.f = null;
            }
            mainAppAdapter.d = null;
            mainAppAdapter.e = null;
            this.h0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.d0 = null;
        this.j0 = null;
        this.k0 = null;
        super.dismiss();
    }

    public DialogSetDown(Activity activity, String str, String str2, boolean z, boolean z2, boolean z3, int i, SetDownListener setDownListener) {
        super(activity, z ? 0 : R.style.DialogExpandTheme);
        this.c0 = true;
        E(activity, str, str2, z, z2, z3, i, setDownListener);
    }
}
