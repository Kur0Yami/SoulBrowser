package com.mycompany.app.setting;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import androidx.work.impl.workers.a;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.quick.QuickAddAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundRelative;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class SettingHome extends SettingActivity {
    public static final /* synthetic */ int E2 = 0;
    public boolean A2;
    public int B2;
    public String C2;
    public boolean D2;
    public MainSelectAdapter X1;
    public MyButtonImage Y1;
    public MyRoundRelative Z1;
    public MyEditText a2;
    public MyButtonImage b2;
    public MyButtonImage c2;
    public MyLineText d2;
    public AppCompatTextView e2;
    public TabLayout f2;
    public ViewPager2 g2;
    public ViewPager2.OnPageChangeCallback h2;
    public RelativeLayout i2;
    public MyRecyclerView j2;
    public ImageView k2;
    public MyButtonText l2;
    public MyCoverView m2;
    public MyManagerLinear n2;
    public QuickAddAdapter o2;
    public BookTask p2;
    public boolean q2;
    public RelativeLayout r2;
    public MyRecyclerView s2;
    public ImageView t2;
    public MyButtonText u2;
    public MyCoverView v2;
    public MyManagerLinear w2;
    public QuickAddAdapter x2;
    public HistTask y2;
    public MyPopupMenu z2;

    /* renamed from: com.mycompany.app.setting.SettingHome$12, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass12 implements Runnable {
        public AnonymousClass12() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SettingHome settingHome = SettingHome.this;
            SettingHome.O0(settingHome, true);
            Handler handler = settingHome.O0;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingHome.12.1
                @Override // java.lang.Runnable
                public final void run() {
                    SettingHome settingHome2 = SettingHome.this;
                    SettingHome.O0(settingHome2, false);
                    Handler handler2 = settingHome2.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingHome.12.1.1
                        /* JADX WARN: Type inference failed for: r1v11, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.LinearLayoutManager] */
                        /* JADX WARN: Type inference failed for: r1v16, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.LinearLayoutManager] */
                        /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.material.tabs.TabLayoutMediator$TabConfigurationStrategy, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            final SettingHome settingHome3 = SettingHome.this;
                            int i = SettingHome.E2;
                            if (settingHome3.E1 == null) {
                                return;
                            }
                            if (MainApp.K1) {
                                settingHome3.j2.setBackgroundColor(-14606047);
                                settingHome3.s2.setBackgroundColor(-14606047);
                            } else {
                                settingHome3.j2.setBackgroundColor(-1);
                                settingHome3.s2.setBackgroundColor(-1);
                            }
                            if (Build.VERSION.SDK_INT < 31) {
                                settingHome3.g2.setOverScrollMode(2);
                            }
                            if (MainUtil.O5(settingHome3.f1)) {
                                settingHome3.g2.setLayoutDirection(1);
                            }
                            MainUtil.q7(settingHome3.g2);
                            ViewPager2 viewPager2 = settingHome3.g2;
                            if (viewPager2 != null) {
                                settingHome3.h2 = new ViewPager2.OnPageChangeCallback() { // from class: com.mycompany.app.setting.SettingHome.20
                                    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                                    public final void c(int i2) {
                                        SettingHome settingHome4 = SettingHome.this;
                                        MyLineText myLineText = settingHome4.d2;
                                        if (myLineText == null) {
                                            return;
                                        }
                                        if (i2 == 0) {
                                            if (MainApp.K1) {
                                                myLineText.setTextColor(-328966);
                                                settingHome4.e2.setTextColor(-4079167);
                                                return;
                                            } else {
                                                myLineText.setTextColor(-14784824);
                                                settingHome4.e2.setTextColor(-10395295);
                                                return;
                                            }
                                        }
                                        if (MainApp.K1) {
                                            myLineText.setTextColor(-4079167);
                                            settingHome4.e2.setTextColor(-328966);
                                        } else {
                                            myLineText.setTextColor(-10395295);
                                            settingHome4.e2.setTextColor(-14784824);
                                        }
                                    }
                                };
                                viewPager2.setAdapter(new ViewPagerAdapter());
                                settingHome3.g2.b(settingHome3.h2);
                            }
                            new TabLayoutMediator(settingHome3.f2, settingHome3.g2, new Object()).a();
                            settingHome3.n2 = new LinearLayoutManager(1);
                            settingHome3.o2 = new QuickAddAdapter(settingHome3.f1, new QuickAddAdapter.QuickListListener() { // from class: com.mycompany.app.setting.SettingHome.14
                                @Override // com.mycompany.app.quick.QuickAddAdapter.QuickListListener
                                public final void a(String str, String str2, boolean z) {
                                    SettingHome settingHome4 = SettingHome.this;
                                    if (z) {
                                        settingHome4.Q0(str2, settingHome4.q2, false);
                                        return;
                                    }
                                    MyEditText myEditText = settingHome4.a2;
                                    if (myEditText != null) {
                                        myEditText.setText(str2);
                                    }
                                }
                            });
                            settingHome3.j2.setLayoutManager(settingHome3.n2);
                            settingHome3.j2.setAdapter(settingHome3.o2);
                            settingHome3.j2.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.setting.SettingHome.15
                                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                                public final void b(RecyclerView recyclerView, int i2, int i3) {
                                    SettingHome settingHome4 = SettingHome.this;
                                    MyRecyclerView myRecyclerView = settingHome4.j2;
                                    if (myRecyclerView == null) {
                                        return;
                                    }
                                    if (myRecyclerView.computeVerticalScrollOffset() > 0) {
                                        settingHome4.j2.w0();
                                    } else {
                                        settingHome4.j2.r0();
                                    }
                                }
                            });
                            settingHome3.w2 = new LinearLayoutManager(1);
                            settingHome3.x2 = new QuickAddAdapter(settingHome3.f1, new QuickAddAdapter.QuickListListener() { // from class: com.mycompany.app.setting.SettingHome.16
                                @Override // com.mycompany.app.quick.QuickAddAdapter.QuickListListener
                                public final void a(String str, String str2, boolean z) {
                                    MyEditText myEditText = SettingHome.this.a2;
                                    if (myEditText != null) {
                                        myEditText.setText(str2);
                                    }
                                }
                            });
                            settingHome3.s2.setLayoutManager(settingHome3.w2);
                            settingHome3.s2.setAdapter(settingHome3.x2);
                            settingHome3.s2.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.setting.SettingHome.17
                                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                                public final void b(RecyclerView recyclerView, int i2, int i3) {
                                    SettingHome settingHome4 = SettingHome.this;
                                    MyRecyclerView myRecyclerView = settingHome4.s2;
                                    if (myRecyclerView == null) {
                                        return;
                                    }
                                    if (myRecyclerView.computeVerticalScrollOffset() > 0) {
                                        settingHome4.s2.w0();
                                    } else {
                                        settingHome4.s2.r0();
                                    }
                                }
                            });
                            MyButtonText myButtonText = settingHome3.l2;
                            if (myButtonText != null) {
                                if (MainApp.K1) {
                                    myButtonText.setTextColor(-328966);
                                    settingHome3.l2.u(-16777216, -14211289);
                                } else {
                                    myButtonText.setTextColor(-16777216);
                                    settingHome3.l2.u(-460552, 553648128);
                                }
                                settingHome3.l2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingHome.18
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i2 = SettingHome.E2;
                                        SettingHome.this.Q0(null, false, true);
                                    }
                                });
                            }
                            MyButtonText myButtonText2 = settingHome3.u2;
                            if (myButtonText2 != null) {
                                if (MainApp.K1) {
                                    myButtonText2.setTextColor(-328966);
                                    settingHome3.u2.u(-16777216, -14211289);
                                } else {
                                    myButtonText2.setTextColor(-16777216);
                                    settingHome3.u2.u(-460552, 553648128);
                                }
                                settingHome3.u2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingHome.19
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i2 = SettingHome.E2;
                                        SettingHome settingHome4 = SettingHome.this;
                                        HistTask histTask = settingHome4.y2;
                                        if (histTask != null) {
                                            histTask.f12839c = true;
                                        }
                                        settingHome4.y2 = null;
                                        HistTask histTask2 = new HistTask(settingHome4, false, true);
                                        settingHome4.y2 = histTask2;
                                        histTask2.b(settingHome4.f1);
                                    }
                                });
                            }
                            settingHome3.m2.m(true);
                            settingHome3.v2.m(true);
                            boolean z = PrefSync.k;
                            settingHome3.q2 = z;
                            settingHome3.Q0(null, z, false);
                            boolean z2 = PrefSync.k;
                            HistTask histTask = settingHome3.y2;
                            if (histTask != null) {
                                histTask.f12839c = true;
                            }
                            settingHome3.y2 = null;
                            HistTask histTask2 = new HistTask(settingHome3, z2, false);
                            settingHome3.y2 = histTask2;
                            histTask2.b(settingHome3.f1);
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.setting.SettingHome$13, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass13 implements TabLayoutMediator.TabConfigurationStrategy {
    }

    /* loaded from: classes3.dex */
    public static class BookTask extends MyAsyncTask {
        public final WeakReference e;
        public String f;
        public final boolean g;
        public final boolean h;
        public ArrayList i;

        public BookTask(SettingHome settingHome, String str, boolean z, boolean z2) {
            this.e = new WeakReference(settingHome);
            this.f = str;
            this.g = z;
            this.h = z2;
        }

        /* JADX WARN: Removed duplicated region for block: B:59:0x0134 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:60:? A[LOOP:0: B:43:0x009f->B:60:?, LOOP_END, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r0v8, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r11v2, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object, java.util.Comparator] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 386
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingHome.BookTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            SettingHome settingHome;
            WeakReference weakReference = this.e;
            if (weakReference == null || (settingHome = (SettingHome) weakReference.get()) == null) {
                return;
            }
            settingHome.p2 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            SettingHome settingHome;
            WeakReference weakReference = this.e;
            if (weakReference != null && (settingHome = (SettingHome) weakReference.get()) != null) {
                settingHome.p2 = null;
                QuickAddAdapter quickAddAdapter = settingHome.o2;
                if (quickAddAdapter != null) {
                    quickAddAdapter.x(this.i);
                }
                MyCoverView myCoverView = settingHome.m2;
                if (myCoverView != null) {
                    myCoverView.f(true);
                    ArrayList arrayList = this.i;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        settingHome.q2 = this.g;
                        settingHome.k2.setVisibility(8);
                        MyButtonText myButtonText = settingHome.l2;
                        if (myButtonText != null) {
                            myButtonText.setVisibility(8);
                            return;
                        }
                        return;
                    }
                    settingHome.k2.setVisibility(0);
                    MyButtonText myButtonText2 = settingHome.l2;
                    if (myButtonText2 != null) {
                        myButtonText2.setVisibility(0);
                    }
                    if (this.h) {
                        MainUtil.e8(settingHome, R.string.import_no_book);
                    }
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class HistTask extends MyAsyncTask {
        public final WeakReference e;
        public final boolean f;
        public final boolean g;
        public ArrayList h;

        public HistTask(SettingHome settingHome, boolean z, boolean z2) {
            this.e = new WeakReference(settingHome);
            this.f = z;
            this.g = z2;
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r6v2, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                r13 = this;
                java.lang.ref.WeakReference r0 = r13.e
                if (r0 != 0) goto L6
                goto Lcc
            L6:
                java.lang.Object r0 = r0.get()
                com.mycompany.app.setting.SettingHome r0 = (com.mycompany.app.setting.SettingHome) r0
                if (r0 == 0) goto Lcc
                boolean r1 = r13.f12839c
                if (r1 == 0) goto L14
                goto Lcc
            L14:
                int r1 = com.mycompany.app.pref.PrefWeb.n
                if (r1 == 0) goto Lcc
                boolean r2 = com.mycompany.app.pref.PrefSync.k
                boolean r3 = r13.f
                r4 = 0
                if (r2 == 0) goto L28
                long r6 = com.mycompany.app.pref.PrefSecret.l
                int r2 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
                if (r2 != 0) goto L28
                if (r3 != 0) goto Lcc
            L28:
                r2 = -1
                if (r1 == r2) goto L43
                long r1 = java.lang.System.currentTimeMillis()
                int r4 = com.mycompany.app.pref.PrefWeb.n
                long r4 = (long) r4
                r6 = 86400000(0x5265c00, double:4.2687272E-316)
                long r4 = r4 * r6
                long r4 = r1 - r4
                boolean r1 = com.mycompany.app.pref.PrefSync.k
                if (r1 == 0) goto L43
                long r1 = com.mycompany.app.pref.PrefSecret.l
                int r6 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
                if (r6 <= 0) goto L43
                r4 = r1
            L43:
                java.lang.String r1 = "_id"
                java.lang.String r2 = "_path"
                java.lang.String r6 = "_title"
                java.lang.String[] r9 = new java.lang.String[]{r1, r2, r6}
                java.lang.String r10 = "_secret=? AND _time>?"
                if (r3 == 0) goto L54
                java.lang.String r3 = "1"
                goto L56
            L54:
                java.lang.String r3 = "0"
            L56:
                java.lang.String r4 = java.lang.Long.toString(r4)
                java.lang.String[] r11 = new java.lang.String[]{r3, r4}
                java.lang.String r12 = "_time DESC"
                r3 = 0
                android.content.Context r0 = r0.f1     // Catch: java.lang.Exception -> Lc6
                com.mycompany.app.db.book.DbBookHistory r0 = com.mycompany.app.db.book.DbBookHistory.b(r0)     // Catch: java.lang.Exception -> Lc6
                android.database.sqlite.SQLiteDatabase r7 = r0.getWritableDatabase()     // Catch: java.lang.Exception -> Lc6
                java.lang.String r8 = "DbBookHistory_table"
                android.database.Cursor r0 = com.mycompany.app.db.DbUtil.g(r7, r8, r9, r10, r11, r12)     // Catch: java.lang.Exception -> Lc6
                if (r0 == 0) goto Lc7
                boolean r4 = r0.moveToFirst()     // Catch: java.lang.Exception -> L97
                if (r4 == 0) goto Lc7
                int r1 = r0.getColumnIndex(r1)     // Catch: java.lang.Exception -> L97
                int r2 = r0.getColumnIndex(r2)     // Catch: java.lang.Exception -> L97
                int r4 = r0.getColumnIndex(r6)     // Catch: java.lang.Exception -> L97
                java.util.ArrayList r5 = new java.util.ArrayList     // Catch: java.lang.Exception -> L97
                r5.<init>()     // Catch: java.lang.Exception -> L97
                r13.h = r5     // Catch: java.lang.Exception -> L97
                r5 = 0
            L8d:
                boolean r6 = r13.f12839c     // Catch: java.lang.Exception -> L97
                if (r6 == 0) goto L99
                r13.h = r3     // Catch: java.lang.Exception -> L97
                r0.close()     // Catch: java.lang.Exception -> L97
                return
            L97:
                r3 = r0
                goto Lc6
            L99:
                com.mycompany.app.main.MainItem$ChildItem r6 = new com.mycompany.app.main.MainItem$ChildItem     // Catch: java.lang.Exception -> L97
                r6.<init>()     // Catch: java.lang.Exception -> L97
                r7 = 18
                r6.f16550a = r7     // Catch: java.lang.Exception -> L97
                long r7 = r0.getLong(r1)     // Catch: java.lang.Exception -> L97
                r6.y = r7     // Catch: java.lang.Exception -> L97
                java.lang.String r7 = r0.getString(r2)     // Catch: java.lang.Exception -> L97
                r6.g = r7     // Catch: java.lang.Exception -> L97
                java.lang.String r7 = r0.getString(r4)     // Catch: java.lang.Exception -> L97
                r6.h = r7     // Catch: java.lang.Exception -> L97
                java.util.ArrayList r7 = r13.h     // Catch: java.lang.Exception -> L97
                r7.add(r6)     // Catch: java.lang.Exception -> L97
                int r5 = r5 + 1
                r6 = 100
                if (r5 >= r6) goto Lc7
                boolean r6 = r0.moveToNext()     // Catch: java.lang.Exception -> L97
                if (r6 != 0) goto L8d
                goto Lc7
            Lc6:
                r0 = r3
            Lc7:
                if (r0 == 0) goto Lcc
                r0.close()
            Lcc:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingHome.HistTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            SettingHome settingHome;
            WeakReference weakReference = this.e;
            if (weakReference == null || (settingHome = (SettingHome) weakReference.get()) == null) {
                return;
            }
            settingHome.y2 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            SettingHome settingHome;
            WeakReference weakReference = this.e;
            if (weakReference != null && (settingHome = (SettingHome) weakReference.get()) != null) {
                settingHome.y2 = null;
                QuickAddAdapter quickAddAdapter = settingHome.x2;
                if (quickAddAdapter != null) {
                    quickAddAdapter.x(this.h);
                }
                MyCoverView myCoverView = settingHome.v2;
                if (myCoverView != null) {
                    myCoverView.f(true);
                    ArrayList arrayList = this.h;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        settingHome.t2.setVisibility(8);
                        MyButtonText myButtonText = settingHome.u2;
                        if (myButtonText != null) {
                            myButtonText.setVisibility(8);
                            return;
                        }
                        return;
                    }
                    settingHome.t2.setVisibility(0);
                    MyButtonText myButtonText2 = settingHome.u2;
                    if (myButtonText2 != null) {
                        myButtonText2.setVisibility(0);
                    }
                    if (this.g) {
                        MainUtil.e8(settingHome, R.string.import_no_history);
                    }
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class ViewPagerAdapter extends RecyclerView.Adapter<ViewPagerHolder> {
        public ViewPagerAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int d() {
            return 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int f(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final /* bridge */ /* synthetic */ void n(RecyclerView.ViewHolder viewHolder, int i) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
            View view;
            SettingHome settingHome = SettingHome.this;
            if (i == 0) {
                view = settingHome.i2;
            } else {
                view = settingHome.r2;
            }
            try {
                MainUtil.W6(view);
                view.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
            } catch (Exception unused) {
                settingHome.finish();
            }
            int i2 = SettingHome.E2;
            if (view == null) {
                try {
                    View view2 = new View(settingHome.f1);
                    try {
                        view2.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                    } catch (Exception unused2) {
                    }
                    view = view2;
                } catch (Exception unused3) {
                }
            }
            return new RecyclerView.ViewHolder(view);
        }
    }

    /* loaded from: classes3.dex */
    public static class ViewPagerHolder extends RecyclerView.ViewHolder {
    }

    public static void O0(SettingHome settingHome, boolean z) {
        MyButtonText myButtonText;
        RelativeLayout relativeLayout = new RelativeLayout(settingHome);
        relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        MyRecyclerView myRecyclerView = new MyRecyclerView(settingHome);
        myRecyclerView.setVerticalScrollBarEnabled(true);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        relativeLayout.addView(myRecyclerView, -1, -1);
        ImageView imageView = new ImageView(settingHome);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView.setImageResource(R.drawable.logo_gray);
        imageView.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (PrefSync.k) {
            layoutParams.bottomMargin = MainApp.i1;
        }
        relativeLayout.addView(imageView, layoutParams);
        if (PrefSync.k) {
            myButtonText = new MyButtonText(settingHome);
            myButtonText.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
            myButtonText.setGravity(17);
            myButtonText.setMinHeight(MainApp.f1);
            myButtonText.setTextSize(1, 14.0f);
            myButtonText.setText(R.string.import_normal);
            myButtonText.setBgNorFixed(true);
            myButtonText.setRoundRect(true);
            myButtonText.setRoundRadius(MainApp.F1);
            myButtonText.setVisibility(8);
            int G = (int) MainUtil.G(settingHome, 20.0f);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams2.addRule(12);
            layoutParams2.setMarginStart(G);
            layoutParams2.setMarginEnd(G);
            layoutParams2.bottomMargin = G;
            relativeLayout.addView(myButtonText, layoutParams2);
        } else {
            myButtonText = null;
        }
        MyCoverView myCoverView = new MyCoverView(settingHome);
        myCoverView.setVisibility(8);
        relativeLayout.addView(myCoverView, -1, -1);
        if (z) {
            settingHome.i2 = relativeLayout;
            settingHome.j2 = myRecyclerView;
            settingHome.k2 = imageView;
            settingHome.l2 = myButtonText;
            settingHome.m2 = myCoverView;
            return;
        }
        settingHome.r2 = relativeLayout;
        settingHome.s2 = myRecyclerView;
        settingHome.t2 = imageView;
        settingHome.u2 = myButtonText;
        settingHome.v2 = myCoverView;
    }

    public static void P0(SettingHome settingHome) {
        MyEditText myEditText = settingHome.a2;
        if (myEditText == null) {
            return;
        }
        String Q0 = MainUtil.Q0(myEditText, true);
        if (TextUtils.isEmpty(Q0)) {
            MainUtil.b7(settingHome.a2);
            MainUtil.e8(settingHome, R.string.input_url);
            return;
        }
        int i = settingHome.B2;
        if (i == 1) {
            if (!Q0.equals(PrefWeb.k)) {
                PrefWeb.k = Q0;
                PrefSet.c(14, settingHome.f1, "mHomePage3", Q0);
                Intent intent = new Intent();
                intent.putExtra("EXTRA_TYPE", settingHome.B2);
                settingHome.setResult(-1, intent);
            }
            settingHome.finish();
        }
        if (i == 2) {
            if (!Q0.equals(PrefWeb.l)) {
                PrefWeb.l = Q0;
                PrefSet.c(14, settingHome.f1, "mStartPage", Q0);
                Intent intent2 = new Intent();
                intent2.putExtra("EXTRA_TYPE", settingHome.B2);
                settingHome.setResult(-1, intent2);
            }
            settingHome.finish();
        }
        if (!Q0.equals(PrefWeb.m)) {
            PrefWeb.m = Q0;
            PrefSet.c(14, settingHome.f1, "mTabPage", Q0);
            Intent intent22 = new Intent();
            intent22.putExtra("EXTRA_TYPE", settingHome.B2);
            settingHome.setResult(-1, intent22);
        }
        settingHome.finish();
    }

    public final void Q0(String str, boolean z, boolean z2) {
        BookTask bookTask = this.p2;
        if (bookTask != null) {
            bookTask.f12839c = true;
        }
        this.p2 = null;
        BookTask bookTask2 = new BookTask(this, str, z, z2);
        this.p2 = bookTask2;
        bookTask2.b(this.f1);
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        boolean z = this.D2;
        boolean z2 = MainApp.K1;
        if (z != z2) {
            this.D2 = z2;
            MyRecyclerView myRecyclerView = this.L1;
            if (myRecyclerView != null) {
                try {
                    if (z2) {
                        myRecyclerView.setBackgroundColor(-14606047);
                        this.Y1.setImageResource(R.drawable.outline_check_dark_24);
                        this.a2.setTextColor(-328966);
                        this.b2.setImageResource(R.drawable.outline_cancel_dark_18);
                        this.c2.setImageResource(R.drawable.outline_more_vert_dark_24);
                        this.Y1.setBgPreColor(-12632257);
                        this.b2.setBgPreColor(-12632257);
                        this.c2.setBgPreColor(-12632257);
                        this.d2.setBackgroundResource(R.drawable.selector_normal_dark);
                        this.e2.setBackgroundResource(R.drawable.selector_normal_dark);
                        this.f2.setSelectedTabIndicatorColor(-5197648);
                        MyRecyclerView myRecyclerView2 = this.j2;
                        if (myRecyclerView2 != null) {
                            myRecyclerView2.setBackgroundColor(-14606047);
                        }
                        MyRecyclerView myRecyclerView3 = this.s2;
                        if (myRecyclerView3 != null) {
                            myRecyclerView3.setBackgroundColor(-14606047);
                        }
                    } else {
                        myRecyclerView.setBackgroundColor(-1);
                        this.Y1.setImageResource(R.drawable.outline_check_black_24);
                        this.a2.setTextColor(-16777216);
                        this.b2.setImageResource(R.drawable.outline_cancel_black_18);
                        this.c2.setImageResource(R.drawable.outline_more_vert_black_24);
                        this.Y1.setBgPreColor(553648128);
                        this.b2.setBgPreColor(-2039584);
                        this.c2.setBgPreColor(-2039584);
                        this.d2.setBackgroundResource(R.drawable.selector_normal_gray);
                        this.e2.setBackgroundResource(R.drawable.selector_normal_gray);
                        this.f2.setSelectedTabIndicatorColor(-5854742);
                        MyRecyclerView myRecyclerView4 = this.j2;
                        if (myRecyclerView4 != null) {
                            myRecyclerView4.setBackgroundColor(-1);
                        }
                        MyRecyclerView myRecyclerView5 = this.s2;
                        if (myRecyclerView5 != null) {
                            myRecyclerView5.setBackgroundColor(-1);
                        }
                    }
                    this.Z1.a();
                    this.a2.d();
                    ViewPager2 viewPager2 = this.g2;
                    if (viewPager2 != null) {
                        if (viewPager2.getCurrentItem() == 0) {
                            if (MainApp.K1) {
                                this.d2.setTextColor(-328966);
                                this.e2.setTextColor(-4079167);
                            } else {
                                this.d2.setTextColor(-14784824);
                                this.e2.setTextColor(-10395295);
                            }
                        } else if (MainApp.K1) {
                            this.d2.setTextColor(-4079167);
                            this.e2.setTextColor(-328966);
                        } else {
                            this.d2.setTextColor(-10395295);
                            this.e2.setTextColor(-14784824);
                        }
                        MainSelectAdapter mainSelectAdapter = this.X1;
                        if (mainSelectAdapter != null) {
                            mainSelectAdapter.g();
                        }
                        QuickAddAdapter quickAddAdapter = this.o2;
                        if (quickAddAdapter != null) {
                            quickAddAdapter.g();
                        }
                        QuickAddAdapter quickAddAdapter2 = this.x2;
                        if (quickAddAdapter2 != null) {
                            quickAddAdapter2.g();
                        }
                        MyButtonText myButtonText = this.l2;
                        if (myButtonText != null) {
                            if (MainApp.K1) {
                                myButtonText.setTextColor(-328966);
                                this.l2.u(-16777216, -14211289);
                            } else {
                                myButtonText.setTextColor(-16777216);
                                this.l2.u(-460552, 553648128);
                            }
                        }
                        MyButtonText myButtonText2 = this.u2;
                        if (myButtonText2 != null) {
                            if (MainApp.K1) {
                                myButtonText2.setTextColor(-328966);
                                this.u2.u(-16777216, -14211289);
                            } else {
                                myButtonText2.setTextColor(-16777216);
                                this.u2.u(-460552, 553648128);
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        this.D2 = MainApp.K1;
        this.B2 = getIntent().getIntExtra("EXTRA_TYPE", 1);
        String stringExtra = getIntent().getStringExtra("EXTRA_PATH");
        this.C2 = stringExtra;
        this.C2 = MainUtil.S6(stringExtra);
        int i2 = this.B2;
        if (i2 == 1) {
            i = R.string.home_page;
        } else if (i2 == 2) {
            i = R.string.start_page;
        } else {
            i = R.string.new_url;
        }
        int i3 = R.id.set_icon_frame;
        int i4 = R.id.set_cast_ctrl;
        MyMainRelative myMainRelative = new MyMainRelative(this);
        myMainRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        myMainRelative.addView(linearLayout, a.h(-1, -1, 2, i4));
        MyHeaderView myHeaderView = new MyHeaderView(this);
        linearLayout.addView(myHeaderView, -1, MainApp.b1);
        MyButtonImage myButtonImage = new MyButtonImage(this);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage.setScaleType(scaleType);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.b1);
        layoutParams.setMarginStart(MainApp.F1);
        myHeaderView.addView(myButtonImage, layoutParams);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this, null);
        appCompatTextView.setGravity(16);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 18.0f);
        if (i > 0) {
            appCompatTextView.setText(i);
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, MainApp.b1);
        layoutParams2.addRule(16, i3);
        layoutParams2.setMarginStart(MainApp.i1);
        myHeaderView.addView(appCompatTextView, layoutParams2);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setId(i3);
        linearLayout2.setBaselineAligned(false);
        linearLayout2.setOrientation(0);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
        layoutParams3.addRule(21);
        layoutParams3.topMargin = MainApp.G1;
        myHeaderView.addView(linearLayout2, layoutParams3);
        int G = (int) MainUtil.G(this, 14.0f);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setPadding(G, G, G, G);
        myButtonImage2.setScaleType(scaleType);
        int i5 = MainApp.g1;
        linearLayout2.addView(myButtonImage2, i5, i5);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setVisibility(4);
        linearLayout2.addView(frameLayout, -2, MainApp.g1);
        MyRoundRelative myRoundRelative = new MyRoundRelative(this);
        myRoundRelative.setPadding(0, 0, 0, MainApp.F1);
        linearLayout.addView(myRoundRelative, -1, -2);
        MyEditText myEditText = new MyEditText(this);
        myEditText.setPaddingRelative(0, 0, (int) MainUtil.G(this, 32.0f), 0);
        com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText, 16, true, 3);
        myEditText.setTextSize(1, 16.0f);
        if (Build.VERSION.SDK_INT >= 29) {
            myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
        }
        myEditText.setHint(R.string.url);
        myEditText.setHintTextColor(-8289919);
        myEditText.setInputType(16);
        myEditText.setImeOptions(268435462);
        myEditText.setBackground(null);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, MainApp.i1);
        layoutParams4.setMarginStart(MainApp.E1);
        layoutParams4.setMarginEnd(MainApp.E1);
        myRoundRelative.addView(myEditText, layoutParams4);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setScaleType(scaleType);
        myButtonImage3.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.i1);
        layoutParams5.addRule(21);
        myRoundRelative.addView(myButtonImage3, layoutParams5);
        MyButtonImage myButtonImage4 = new MyButtonImage(this);
        myButtonImage4.setScaleType(scaleType);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.i1);
        layoutParams6.addRule(21);
        myRoundRelative.addView(myButtonImage4, layoutParams6);
        MyRecyclerView myRecyclerView = new MyRecyclerView(this);
        myRecyclerView.u0(true, true);
        myRecyclerView.setVerticalScrollBarEnabled(true);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams7.topMargin = MainApp.E1;
        linearLayout.addView(myRecyclerView, layoutParams7);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setBaselineAligned(false);
        linearLayout3.setOrientation(0);
        linearLayout.addView(linearLayout3, -1, MainApp.g1);
        MyLineText myLineText = new MyLineText(this);
        myLineText.setGravity(17);
        myLineText.setTextSize(1, 16.0f);
        myLineText.setText(R.string.bookmark);
        myLineText.s(this);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(0, -1);
        layoutParams8.weight = 1.0f;
        linearLayout3.addView(myLineText, layoutParams8);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this, null);
        appCompatTextView2.setGravity(17);
        appCompatTextView2.setTextSize(1, 16.0f);
        LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(appCompatTextView2, R.string.history, 0, -1);
        e.weight = 1.0f;
        linearLayout3.addView(appCompatTextView2, e);
        TabLayout tabLayout = new TabLayout(this);
        tabLayout.setTabMode(1);
        tabLayout.setTabGravity(0);
        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-1, (int) MainUtil.G(this, 2.0f));
        layoutParams9.setMarginStart(MainApp.E1);
        layoutParams9.setMarginEnd(MainApp.E1);
        linearLayout.addView(tabLayout, layoutParams9);
        ViewPager2 viewPager2 = new ViewPager2(this);
        viewPager2.setOrientation(0);
        linearLayout.addView(viewPager2, -1, -1);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i4);
        frameLayout2.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams10.addRule(12);
        myMainRelative.addView(frameLayout2, layoutParams10);
        this.E1 = myMainRelative;
        this.F1 = myHeaderView;
        this.G1 = myButtonImage;
        this.H1 = appCompatTextView;
        this.Y1 = myButtonImage2;
        this.Z1 = myRoundRelative;
        this.a2 = myEditText;
        this.b2 = myButtonImage3;
        this.c2 = myButtonImage4;
        this.L1 = myRecyclerView;
        this.d2 = myLineText;
        this.e2 = appCompatTextView2;
        this.f2 = tabLayout;
        this.g2 = viewPager2;
        B0(myMainRelative, frameLayout, frameLayout2);
        this.E1.setWindow(getWindow());
        this.E1.setFocusable(true);
        this.E1.setFocusableInTouchMode(true);
        initMainScreenOn(this.E1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingHome.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v34, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.RecyclerView$LayoutManager, androidx.recyclerview.widget.LinearLayoutManager] */
            @Override // java.lang.Runnable
            public final void run() {
                String str;
                int i6 = SettingHome.E2;
                final SettingHome settingHome = SettingHome.this;
                if (settingHome.E1 != null) {
                    if (MainApp.K1) {
                        settingHome.G1.setImageResource(R.drawable.outline_chevron_left_dark_24);
                        settingHome.H1.setTextColor(-328966);
                        settingHome.L1.setBackgroundColor(-14606047);
                        settingHome.Y1.setImageResource(R.drawable.outline_check_dark_24);
                        settingHome.a2.setTextColor(-328966);
                        settingHome.b2.setImageResource(R.drawable.outline_cancel_dark_18);
                        settingHome.c2.setImageResource(R.drawable.outline_more_vert_dark_24);
                        settingHome.G1.setBgPreColor(-12632257);
                        settingHome.Y1.setBgPreColor(-12632257);
                        settingHome.b2.setBgPreColor(-12632257);
                        settingHome.c2.setBgPreColor(-12632257);
                        settingHome.d2.setBackgroundResource(R.drawable.selector_normal_dark);
                        settingHome.e2.setBackgroundResource(R.drawable.selector_normal_dark);
                        settingHome.d2.setTextColor(-328966);
                        settingHome.e2.setTextColor(-4079167);
                        settingHome.f2.setSelectedTabIndicatorColor(-5197648);
                    } else {
                        settingHome.G1.setImageResource(R.drawable.outline_chevron_left_black_24);
                        settingHome.H1.setTextColor(-16777216);
                        settingHome.L1.setBackgroundColor(-1);
                        settingHome.Y1.setImageResource(R.drawable.outline_check_black_24);
                        settingHome.a2.setTextColor(-16777216);
                        settingHome.b2.setImageResource(R.drawable.outline_cancel_black_18);
                        settingHome.c2.setImageResource(R.drawable.outline_more_vert_black_24);
                        settingHome.G1.setBgPreColor(553648128);
                        settingHome.Y1.setBgPreColor(553648128);
                        settingHome.b2.setBgPreColor(-2039584);
                        settingHome.c2.setBgPreColor(-2039584);
                        settingHome.d2.setBackgroundResource(R.drawable.selector_normal_gray);
                        settingHome.e2.setBackgroundResource(R.drawable.selector_normal_gray);
                        settingHome.d2.setTextColor(-14784824);
                        settingHome.e2.setTextColor(-10395295);
                        settingHome.f2.setSelectedTabIndicatorColor(-5854742);
                    }
                    settingHome.G1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingHome.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingHome.this.finish();
                        }
                    });
                    settingHome.Y1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingHome.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingHome settingHome2 = SettingHome.this;
                            MyButtonImage myButtonImage5 = settingHome2.Y1;
                            if (myButtonImage5 == null || settingHome2.A2) {
                                return;
                            }
                            settingHome2.A2 = true;
                            myButtonImage5.post(new Runnable() { // from class: com.mycompany.app.setting.SettingHome.3.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                    SettingHome.P0(SettingHome.this);
                                    SettingHome.this.A2 = false;
                                }
                            });
                        }
                    });
                    int i7 = settingHome.B2;
                    if (i7 == 1) {
                        str = PrefWeb.k;
                    } else {
                        if (i7 == 2) {
                            str = PrefWeb.l;
                        } else {
                            str = PrefWeb.m;
                        }
                        if ("..home_link".equals(str)) {
                            str = PrefWeb.k;
                        }
                    }
                    if (!TextUtils.isEmpty(str)) {
                        str = str.trim();
                    }
                    if (settingHome.B2 != 2 && TextUtils.isEmpty(str)) {
                        str = "file:///android_asset/shortcut.html";
                    }
                    if (!TextUtils.isEmpty(str)) {
                        settingHome.a2.setText(str);
                        settingHome.b2.setVisibility(0);
                        settingHome.c2.setVisibility(8);
                    }
                    settingHome.a2.setSelectAllOnFocus(true);
                    settingHome.a2.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.setting.SettingHome.4
                        @Override // android.text.TextWatcher
                        public final void afterTextChanged(Editable editable) {
                            SettingHome settingHome2 = SettingHome.this;
                            if (settingHome2.b2 == null) {
                                return;
                            }
                            if (TextUtils.isEmpty(editable)) {
                                settingHome2.b2.setVisibility(8);
                                settingHome2.c2.setVisibility(0);
                            } else {
                                settingHome2.b2.setVisibility(0);
                                settingHome2.c2.setVisibility(8);
                            }
                        }

                        @Override // android.text.TextWatcher
                        public final void beforeTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
                        }

                        @Override // android.text.TextWatcher
                        public final void onTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
                        }
                    });
                    settingHome.a2.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.setting.SettingHome.5
                        @Override // android.widget.TextView.OnEditorActionListener
                        public final boolean onEditorAction(TextView textView, int i8, KeyEvent keyEvent) {
                            SettingHome settingHome2 = SettingHome.this;
                            MyEditText myEditText2 = settingHome2.a2;
                            if (myEditText2 == null || settingHome2.A2) {
                                return true;
                            }
                            settingHome2.A2 = true;
                            myEditText2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingHome.5.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                    SettingHome.P0(SettingHome.this);
                                    SettingHome.this.A2 = false;
                                }
                            });
                            return true;
                        }
                    });
                    settingHome.b2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingHome.6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            MyEditText myEditText2 = SettingHome.this.a2;
                            if (myEditText2 != null) {
                                myEditText2.setText((CharSequence) null);
                            }
                        }
                    });
                    settingHome.c2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingHome.7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            final SettingHome settingHome2 = SettingHome.this;
                            MyPopupMenu myPopupMenu = settingHome2.z2;
                            if (myPopupMenu == null) {
                                if (myPopupMenu != null) {
                                    settingHome2.Z0 = null;
                                    myPopupMenu.a();
                                    settingHome2.z2 = null;
                                }
                                if (view == null) {
                                    return;
                                }
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new MyPopupAdapter.PopMenuItem(0, "https://"));
                                arrayList.add(new MyPopupAdapter.PopMenuItem(1, "www."));
                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingHome2, settingHome2.E1, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingHome.21
                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final void a() {
                                        int i8 = SettingHome.E2;
                                        SettingHome settingHome3 = SettingHome.this;
                                        MyPopupMenu myPopupMenu3 = settingHome3.z2;
                                        if (myPopupMenu3 != null) {
                                            settingHome3.Z0 = null;
                                            myPopupMenu3.a();
                                            settingHome3.z2 = null;
                                        }
                                    }

                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final boolean b(View view2, int i8) {
                                        SettingHome settingHome3 = SettingHome.this;
                                        MyEditText myEditText2 = settingHome3.a2;
                                        if (myEditText2 == null) {
                                            return true;
                                        }
                                        if (i8 == 0) {
                                            myEditText2.setText("https://");
                                            settingHome3.a2.setSelection(8);
                                            return true;
                                        }
                                        myEditText2.setText("www.");
                                        settingHome3.a2.setSelection(4);
                                        return true;
                                    }
                                });
                                settingHome2.z2 = myPopupMenu2;
                                settingHome2.Z0 = myPopupMenu2;
                            }
                        }
                    });
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new MainSelectAdapter.MainSelectItem(0, R.string.soul_home));
                    arrayList.add(new MainSelectAdapter.MainSelectItem(1, R.string.current_page));
                    arrayList.add(new MainSelectAdapter.MainSelectItem(2, R.string.blank_page));
                    settingHome.X1 = new MainSelectAdapter(arrayList, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.setting.SettingHome.8
                        @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                        public final void a(int i8) {
                            String str2;
                            SettingHome settingHome2 = SettingHome.this;
                            MyEditText myEditText2 = settingHome2.a2;
                            if (myEditText2 == null) {
                                return;
                            }
                            if (i8 == 0) {
                                str2 = "file:///android_asset/shortcut.html";
                            } else if (i8 == 1) {
                                str2 = settingHome2.C2;
                            } else {
                                str2 = "about:blank";
                            }
                            myEditText2.setText(str2);
                        }
                    });
                    ?? linearLayoutManager = new LinearLayoutManager(1);
                    settingHome.M1 = linearLayoutManager;
                    settingHome.L1.setLayoutManager(linearLayoutManager);
                    settingHome.L1.setAdapter(settingHome.X1);
                    settingHome.L1.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.setting.SettingHome.9
                        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                        public final void b(RecyclerView recyclerView, int i8, int i9) {
                            SettingHome settingHome2 = SettingHome.this;
                            MyRecyclerView myRecyclerView2 = settingHome2.L1;
                            if (myRecyclerView2 == null) {
                                return;
                            }
                            if (myRecyclerView2.computeVerticalScrollOffset() > settingHome2.O1) {
                                settingHome2.L1.w0();
                            } else {
                                settingHome2.L1.r0();
                            }
                        }
                    });
                    settingHome.d2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingHome.10
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ViewPager2 viewPager22 = SettingHome.this.g2;
                            if (viewPager22 != null) {
                                viewPager22.setCurrentItem(0);
                            }
                        }
                    });
                    settingHome.e2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingHome.11
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ViewPager2 viewPager22 = SettingHome.this.g2;
                            if (viewPager22 != null) {
                                viewPager22.setCurrentItem(1);
                            }
                        }
                    });
                    Handler handler2 = settingHome.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new AnonymousClass12());
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        ViewPager2 viewPager2 = this.g2;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.h2;
        this.g2 = null;
        this.h2 = null;
        if (viewPager2 != null) {
            if (onPageChangeCallback != null) {
                viewPager2.f(onPageChangeCallback);
            }
            viewPager2.setAdapter(null);
        }
        MainSelectAdapter mainSelectAdapter = this.X1;
        if (mainSelectAdapter != null) {
            mainSelectAdapter.w();
            this.X1 = null;
        }
        MyButtonImage myButtonImage = this.Y1;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.Y1 = null;
        }
        MyRoundRelative myRoundRelative = this.Z1;
        if (myRoundRelative != null) {
            myRoundRelative.f = null;
            myRoundRelative.g = null;
            this.Z1 = null;
        }
        MyEditText myEditText = this.a2;
        if (myEditText != null) {
            myEditText.c();
            this.a2 = null;
        }
        MyButtonImage myButtonImage2 = this.b2;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.b2 = null;
        }
        MyButtonImage myButtonImage3 = this.c2;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.c2 = null;
        }
        MyLineText myLineText = this.d2;
        if (myLineText != null) {
            myLineText.u();
            this.d2 = null;
        }
        MyRecyclerView myRecyclerView = this.j2;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.j2 = null;
        }
        MyButtonText myButtonText = this.l2;
        if (myButtonText != null) {
            myButtonText.t();
            this.l2 = null;
        }
        MyCoverView myCoverView = this.m2;
        if (myCoverView != null) {
            myCoverView.i();
            this.m2 = null;
        }
        MyRecyclerView myRecyclerView2 = this.s2;
        if (myRecyclerView2 != null) {
            myRecyclerView2.s0();
            this.s2 = null;
        }
        MyButtonText myButtonText2 = this.u2;
        if (myButtonText2 != null) {
            myButtonText2.t();
            this.u2 = null;
        }
        MyCoverView myCoverView2 = this.v2;
        if (myCoverView2 != null) {
            myCoverView2.i();
            this.v2 = null;
        }
        QuickAddAdapter quickAddAdapter = this.o2;
        if (quickAddAdapter != null) {
            quickAddAdapter.w();
            this.o2 = null;
        }
        QuickAddAdapter quickAddAdapter2 = this.x2;
        if (quickAddAdapter2 != null) {
            quickAddAdapter2.w();
            this.x2 = null;
        }
        this.e2 = null;
        this.f2 = null;
        this.i2 = null;
        this.k2 = null;
        this.r2 = null;
        this.t2 = null;
        this.n2 = null;
        this.w2 = null;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            MyPopupMenu myPopupMenu = this.z2;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.z2 = null;
            }
            BookTask bookTask = this.p2;
            if (bookTask != null) {
                bookTask.f12839c = true;
            }
            this.p2 = null;
            HistTask histTask = this.y2;
            if (histTask != null) {
                histTask.f12839c = true;
            }
            this.y2 = null;
        }
    }
}
