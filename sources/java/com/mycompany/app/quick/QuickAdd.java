package com.mycompany.app.quick;

import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
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
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookQuick;
import com.mycompany.app.dialog.DialogQuickColor;
import com.mycompany.app.dialog.DialogQuickIcon;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.image.MainImageCropper;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.quick.QuickAddAdapter;
import com.mycompany.app.setting.SettingActivity;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyLineView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.view.MyRoundLinear;
import com.mycompany.app.view.MyRoundRelative;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class QuickAdd extends SettingActivity {
    public static final /* synthetic */ int X2 = 0;
    public MyCoverView A2;
    public MyManagerLinear B2;
    public QuickAddAdapter C2;
    public HistTask D2;
    public MainListLoader E2;
    public MyPopupMenu F2;
    public MyPopupMenu G2;
    public Uri H2;
    public String I2;
    public DialogQuickIcon J2;
    public DialogQuickColor K2;
    public boolean L2;
    public String M2;
    public String N2;
    public boolean O2;
    public Bitmap P2;
    public int Q2;
    public int R2;
    public boolean S2;
    public Pattern T2;
    public String U2;
    public String V2;
    public boolean W2;
    public MyButtonImage X1;
    public MyRoundRelative Y1;
    public MyRoundImage Z1;
    public MyLineView a2;
    public MyEditText b2;
    public MyButtonImage c2;
    public MyEditText d2;
    public MyButtonImage e2;
    public MyButtonImage f2;
    public MyRoundLinear g2;
    public AppCompatTextView h2;
    public MyLineText i2;
    public AppCompatTextView j2;
    public TabLayout k2;
    public ViewPager2 l2;
    public ViewPager2.OnPageChangeCallback m2;
    public RelativeLayout n2;
    public MyRecyclerView o2;
    public ImageView p2;
    public MyButtonText q2;
    public MyCoverView r2;
    public MyManagerLinear s2;
    public QuickAddAdapter t2;
    public BookTask u2;
    public boolean v2;
    public RelativeLayout w2;
    public MyRecyclerView x2;
    public ImageView y2;
    public MyButtonText z2;

    /* renamed from: com.mycompany.app.quick.QuickAdd$16, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass16 implements Runnable {
        public AnonymousClass16() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            QuickAdd quickAdd = QuickAdd.this;
            QuickAdd.O0(quickAdd, true);
            Handler handler = quickAdd.O0;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.quick.QuickAdd.16.1
                @Override // java.lang.Runnable
                public final void run() {
                    QuickAdd quickAdd2 = QuickAdd.this;
                    QuickAdd.O0(quickAdd2, false);
                    Handler handler2 = quickAdd2.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.quick.QuickAdd.16.1.1
                        /* JADX WARN: Type inference failed for: r1v11, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.LinearLayoutManager] */
                        /* JADX WARN: Type inference failed for: r1v16, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.LinearLayoutManager] */
                        /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.material.tabs.TabLayoutMediator$TabConfigurationStrategy, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            final QuickAdd quickAdd3 = QuickAdd.this;
                            int i = QuickAdd.X2;
                            if (quickAdd3.E1 == null) {
                                return;
                            }
                            if (MainApp.K1) {
                                quickAdd3.o2.setBackgroundColor(-14606047);
                                quickAdd3.x2.setBackgroundColor(-14606047);
                            } else {
                                quickAdd3.o2.setBackgroundColor(-1);
                                quickAdd3.x2.setBackgroundColor(-1);
                            }
                            if (Build.VERSION.SDK_INT < 31) {
                                quickAdd3.l2.setOverScrollMode(2);
                            }
                            if (MainUtil.O5(quickAdd3.f1)) {
                                quickAdd3.l2.setLayoutDirection(1);
                            }
                            MainUtil.q7(quickAdd3.l2);
                            ViewPager2 viewPager2 = quickAdd3.l2;
                            if (viewPager2 != null) {
                                quickAdd3.m2 = new ViewPager2.OnPageChangeCallback() { // from class: com.mycompany.app.quick.QuickAdd.24
                                    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                                    public final void c(int i2) {
                                        QuickAdd quickAdd4 = QuickAdd.this;
                                        MyLineText myLineText = quickAdd4.i2;
                                        if (myLineText == null) {
                                            return;
                                        }
                                        if (i2 == 0) {
                                            if (MainApp.K1) {
                                                myLineText.setTextColor(-328966);
                                                quickAdd4.j2.setTextColor(-4079167);
                                                return;
                                            } else {
                                                myLineText.setTextColor(-14784824);
                                                quickAdd4.j2.setTextColor(-10395295);
                                                return;
                                            }
                                        }
                                        if (MainApp.K1) {
                                            myLineText.setTextColor(-4079167);
                                            quickAdd4.j2.setTextColor(-328966);
                                        } else {
                                            myLineText.setTextColor(-10395295);
                                            quickAdd4.j2.setTextColor(-14784824);
                                        }
                                    }
                                };
                                viewPager2.setAdapter(new ViewPagerAdapter());
                                quickAdd3.l2.b(quickAdd3.m2);
                            }
                            new TabLayoutMediator(quickAdd3.k2, quickAdd3.l2, new Object()).a();
                            quickAdd3.s2 = new LinearLayoutManager(1);
                            quickAdd3.t2 = new QuickAddAdapter(quickAdd3.f1, new QuickAddAdapter.QuickListListener() { // from class: com.mycompany.app.quick.QuickAdd.18
                                @Override // com.mycompany.app.quick.QuickAddAdapter.QuickListListener
                                public final void a(String str, String str2, boolean z) {
                                    QuickAdd quickAdd4 = QuickAdd.this;
                                    if (z) {
                                        quickAdd4.Q0(str2, quickAdd4.v2, false);
                                        return;
                                    }
                                    MyEditText myEditText = quickAdd4.b2;
                                    if (myEditText == null) {
                                        return;
                                    }
                                    myEditText.setText(str);
                                    quickAdd4.d2.setText(str2);
                                    quickAdd4.T0(17, str2, str);
                                }
                            });
                            quickAdd3.o2.setLayoutManager(quickAdd3.s2);
                            quickAdd3.o2.setAdapter(quickAdd3.t2);
                            quickAdd3.o2.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.quick.QuickAdd.19
                                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                                public final void b(RecyclerView recyclerView, int i2, int i3) {
                                    QuickAdd quickAdd4 = QuickAdd.this;
                                    MyRecyclerView myRecyclerView = quickAdd4.o2;
                                    if (myRecyclerView == null) {
                                        return;
                                    }
                                    if (myRecyclerView.computeVerticalScrollOffset() > 0) {
                                        quickAdd4.o2.w0();
                                    } else {
                                        quickAdd4.o2.r0();
                                    }
                                }
                            });
                            quickAdd3.B2 = new LinearLayoutManager(1);
                            quickAdd3.C2 = new QuickAddAdapter(quickAdd3.f1, new QuickAddAdapter.QuickListListener() { // from class: com.mycompany.app.quick.QuickAdd.20
                                @Override // com.mycompany.app.quick.QuickAddAdapter.QuickListListener
                                public final void a(String str, String str2, boolean z) {
                                    QuickAdd quickAdd4 = QuickAdd.this;
                                    MyEditText myEditText = quickAdd4.b2;
                                    if (myEditText == null) {
                                        return;
                                    }
                                    myEditText.setText(str);
                                    quickAdd4.d2.setText(str2);
                                    quickAdd4.T0(18, str2, str);
                                }
                            });
                            quickAdd3.x2.setLayoutManager(quickAdd3.B2);
                            quickAdd3.x2.setAdapter(quickAdd3.C2);
                            quickAdd3.x2.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.quick.QuickAdd.21
                                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                                public final void b(RecyclerView recyclerView, int i2, int i3) {
                                    QuickAdd quickAdd4 = QuickAdd.this;
                                    MyRecyclerView myRecyclerView = quickAdd4.x2;
                                    if (myRecyclerView == null) {
                                        return;
                                    }
                                    if (myRecyclerView.computeVerticalScrollOffset() > 0) {
                                        quickAdd4.x2.w0();
                                    } else {
                                        quickAdd4.x2.r0();
                                    }
                                }
                            });
                            MyButtonText myButtonText = quickAdd3.q2;
                            if (myButtonText != null) {
                                if (MainApp.K1) {
                                    myButtonText.setTextColor(-328966);
                                    quickAdd3.q2.u(-16777216, -14211289);
                                } else {
                                    myButtonText.setTextColor(-16777216);
                                    quickAdd3.q2.u(-460552, 553648128);
                                }
                                quickAdd3.q2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickAdd.22
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i2 = QuickAdd.X2;
                                        QuickAdd.this.Q0(null, false, true);
                                    }
                                });
                            }
                            MyButtonText myButtonText2 = quickAdd3.z2;
                            if (myButtonText2 != null) {
                                if (MainApp.K1) {
                                    myButtonText2.setTextColor(-328966);
                                    quickAdd3.z2.u(-16777216, -14211289);
                                } else {
                                    myButtonText2.setTextColor(-16777216);
                                    quickAdd3.z2.u(-460552, 553648128);
                                }
                                quickAdd3.z2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickAdd.23
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i2 = QuickAdd.X2;
                                        QuickAdd quickAdd4 = QuickAdd.this;
                                        HistTask histTask = quickAdd4.D2;
                                        if (histTask != null) {
                                            histTask.f12839c = true;
                                        }
                                        quickAdd4.D2 = null;
                                        HistTask histTask2 = new HistTask(quickAdd4, false, true);
                                        quickAdd4.D2 = histTask2;
                                        histTask2.b(quickAdd4.f1);
                                    }
                                });
                            }
                            quickAdd3.r2.m(true);
                            quickAdd3.A2.m(true);
                            boolean z = PrefSync.k;
                            quickAdd3.v2 = z;
                            quickAdd3.Q0(null, z, false);
                            boolean z2 = PrefSync.k;
                            HistTask histTask = quickAdd3.D2;
                            if (histTask != null) {
                                histTask.f12839c = true;
                            }
                            quickAdd3.D2 = null;
                            HistTask histTask2 = new HistTask(quickAdd3, z2, false);
                            quickAdd3.D2 = histTask2;
                            histTask2.b(quickAdd3.f1);
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.quick.QuickAdd$17, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass17 implements TabLayoutMediator.TabConfigurationStrategy {
    }

    /* loaded from: classes3.dex */
    public static class BookTask extends MyAsyncTask {
        public final WeakReference e;
        public String f;
        public final boolean g;
        public final boolean h;
        public ArrayList i;

        public BookTask(QuickAdd quickAdd, String str, boolean z, boolean z2) {
            this.e = new WeakReference(quickAdd);
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
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.quick.QuickAdd.BookTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            QuickAdd quickAdd;
            WeakReference weakReference = this.e;
            if (weakReference == null || (quickAdd = (QuickAdd) weakReference.get()) == null) {
                return;
            }
            quickAdd.u2 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            QuickAdd quickAdd;
            WeakReference weakReference = this.e;
            if (weakReference != null && (quickAdd = (QuickAdd) weakReference.get()) != null) {
                quickAdd.u2 = null;
                QuickAddAdapter quickAddAdapter = quickAdd.t2;
                if (quickAddAdapter != null) {
                    quickAddAdapter.x(this.i);
                }
                MyCoverView myCoverView = quickAdd.r2;
                if (myCoverView != null) {
                    myCoverView.f(true);
                    ArrayList arrayList = this.i;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        quickAdd.v2 = this.g;
                        quickAdd.p2.setVisibility(8);
                        MyButtonText myButtonText = quickAdd.q2;
                        if (myButtonText != null) {
                            myButtonText.setVisibility(8);
                            return;
                        }
                        return;
                    }
                    quickAdd.p2.setVisibility(0);
                    MyButtonText myButtonText2 = quickAdd.q2;
                    if (myButtonText2 != null) {
                        myButtonText2.setVisibility(0);
                    }
                    if (this.h) {
                        MainUtil.e8(quickAdd, R.string.import_no_book);
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

        public HistTask(QuickAdd quickAdd, boolean z, boolean z2) {
            this.e = new WeakReference(quickAdd);
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
                com.mycompany.app.quick.QuickAdd r0 = (com.mycompany.app.quick.QuickAdd) r0
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
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.quick.QuickAdd.HistTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            QuickAdd quickAdd;
            WeakReference weakReference = this.e;
            if (weakReference == null || (quickAdd = (QuickAdd) weakReference.get()) == null) {
                return;
            }
            quickAdd.D2 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            QuickAdd quickAdd;
            WeakReference weakReference = this.e;
            if (weakReference != null && (quickAdd = (QuickAdd) weakReference.get()) != null) {
                quickAdd.D2 = null;
                QuickAddAdapter quickAddAdapter = quickAdd.C2;
                if (quickAddAdapter != null) {
                    quickAddAdapter.x(this.h);
                }
                MyCoverView myCoverView = quickAdd.A2;
                if (myCoverView != null) {
                    myCoverView.f(true);
                    ArrayList arrayList = this.h;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        quickAdd.y2.setVisibility(8);
                        MyButtonText myButtonText = quickAdd.z2;
                        if (myButtonText != null) {
                            myButtonText.setVisibility(8);
                            return;
                        }
                        return;
                    }
                    quickAdd.y2.setVisibility(0);
                    MyButtonText myButtonText2 = quickAdd.z2;
                    if (myButtonText2 != null) {
                        myButtonText2.setVisibility(0);
                    }
                    if (this.g) {
                        MainUtil.e8(quickAdd, R.string.import_no_history);
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
            QuickAdd quickAdd = QuickAdd.this;
            if (i == 0) {
                view = quickAdd.n2;
            } else {
                view = quickAdd.w2;
            }
            try {
                MainUtil.W6(view);
                view.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
            } catch (Exception unused) {
                quickAdd.finish();
            }
            int i2 = QuickAdd.X2;
            if (view == null) {
                try {
                    View view2 = new View(quickAdd.f1);
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

    public static void O0(QuickAdd quickAdd, boolean z) {
        MyButtonText myButtonText;
        RelativeLayout relativeLayout = new RelativeLayout(quickAdd);
        relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        MyRecyclerView myRecyclerView = new MyRecyclerView(quickAdd);
        myRecyclerView.setVerticalScrollBarEnabled(true);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        relativeLayout.addView(myRecyclerView, -1, -1);
        ImageView imageView = new ImageView(quickAdd);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView.setImageResource(R.drawable.logo_gray);
        imageView.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (PrefSync.k) {
            layoutParams.bottomMargin = MainApp.i1;
        }
        relativeLayout.addView(imageView, layoutParams);
        if (PrefSync.k) {
            myButtonText = new MyButtonText(quickAdd);
            myButtonText.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
            myButtonText.setGravity(17);
            myButtonText.setMinHeight(MainApp.f1);
            myButtonText.setTextSize(1, 14.0f);
            myButtonText.setText(R.string.import_normal);
            myButtonText.setBgNorFixed(true);
            myButtonText.setRoundRect(true);
            myButtonText.setRoundRadius(MainApp.F1);
            myButtonText.setVisibility(8);
            int G = (int) MainUtil.G(quickAdd, 20.0f);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams2.addRule(12);
            layoutParams2.setMarginStart(G);
            layoutParams2.setMarginEnd(G);
            layoutParams2.bottomMargin = G;
            relativeLayout.addView(myButtonText, layoutParams2);
        } else {
            myButtonText = null;
        }
        MyCoverView myCoverView = new MyCoverView(quickAdd);
        myCoverView.setVisibility(8);
        relativeLayout.addView(myCoverView, -1, -1);
        if (z) {
            quickAdd.n2 = relativeLayout;
            quickAdd.o2 = myRecyclerView;
            quickAdd.p2 = imageView;
            quickAdd.q2 = myButtonText;
            quickAdd.r2 = myCoverView;
            return;
        }
        quickAdd.w2 = relativeLayout;
        quickAdd.x2 = myRecyclerView;
        quickAdd.y2 = imageView;
        quickAdd.z2 = myButtonText;
        quickAdd.A2 = myCoverView;
    }

    public static void P0(QuickAdd quickAdd) {
        MyEditText myEditText = quickAdd.b2;
        if (myEditText == null) {
            return;
        }
        String Q0 = MainUtil.Q0(myEditText, true);
        if (TextUtils.isEmpty(Q0)) {
            MainUtil.b7(quickAdd.b2);
            MainUtil.e8(quickAdd, R.string.input_name);
            quickAdd.L2 = false;
            return;
        }
        String Q02 = MainUtil.Q0(quickAdd.d2, true);
        if (TextUtils.isEmpty(Q02)) {
            MainUtil.b7(quickAdd.d2);
            MainUtil.e8(quickAdd, R.string.input_url);
            quickAdd.L2 = false;
        } else {
            quickAdd.U2 = Q02;
            quickAdd.V2 = Q0;
            quickAdd.m0(new Runnable() { // from class: com.mycompany.app.quick.QuickAdd.32
                @Override // java.lang.Runnable
                public final void run() {
                    Context context;
                    QuickAdd quickAdd2 = QuickAdd.this;
                    String str = quickAdd2.U2;
                    String str2 = quickAdd2.V2;
                    boolean o = DbBookQuick.o(quickAdd2.f1, str);
                    quickAdd2.W2 = o;
                    if (!o && (context = quickAdd2.f1) != null) {
                        quickAdd2.R2 = DbBookQuick.j(context);
                        ContentValues e = a.e("_path", str, "_title", str2);
                        e.put("_order", Integer.valueOf(quickAdd2.R2));
                        e.put("_secret", Integer.valueOf(PrefSync.k ? 1 : 0));
                        if (MainUtil.f6(quickAdd2.P2)) {
                            quickAdd2.Q2 = 0;
                            try {
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                quickAdd2.P2.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                                e.put("_icon", byteArrayOutputStream.toByteArray());
                                byteArrayOutputStream.close();
                                MainListLoader.g(str, quickAdd2.P2, PrefSync.k);
                            } catch (Exception unused) {
                            }
                        } else {
                            if (quickAdd2.Q2 == 0) {
                                quickAdd2.Q2 = DbBookQuick.m();
                            }
                            e.put("_rsv4", Integer.valueOf(quickAdd2.Q2));
                        }
                        DbUtil.e(DbBookQuick.i(quickAdd2.f1).getWritableDatabase(), "DbBookQuick_table", e);
                    }
                    MyEditText myEditText2 = quickAdd2.d2;
                    if (myEditText2 == null) {
                        return;
                    }
                    myEditText2.post(new Runnable() { // from class: com.mycompany.app.quick.QuickAdd.32.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            QuickAdd quickAdd3 = QuickAdd.this;
                            String str3 = quickAdd3.U2;
                            String str4 = quickAdd3.V2;
                            quickAdd3.U2 = null;
                            quickAdd3.V2 = null;
                            MyEditText myEditText3 = quickAdd3.d2;
                            if (myEditText3 == null) {
                                return;
                            }
                            if (quickAdd3.W2) {
                                myEditText3.selectAll();
                                MainUtil.b7(quickAdd3.d2);
                                MainUtil.e8(quickAdd3, R.string.already_added);
                                quickAdd3.L2 = false;
                                return;
                            }
                            Intent intent = new Intent();
                            intent.putExtra("EXTRA_PATH", str3);
                            intent.putExtra("EXTRA_NAME", str4);
                            intent.putExtra("EXTRA_ICON", quickAdd3.Q2);
                            intent.putExtra("EXTRA_INDEX", quickAdd3.R2);
                            quickAdd3.setResult(-1, intent);
                            quickAdd3.finish();
                        }
                    });
                }
            });
        }
    }

    public final void Q0(String str, boolean z, boolean z2) {
        BookTask bookTask = this.u2;
        if (bookTask != null) {
            bookTask.f12839c = true;
        }
        this.u2 = null;
        BookTask bookTask2 = new BookTask(this, str, z, z2);
        this.u2 = bookTask2;
        bookTask2.b(this.f1);
    }

    public final void R0() {
        DialogQuickColor dialogQuickColor = this.K2;
        if (dialogQuickColor != null) {
            dialogQuickColor.dismiss();
            this.K2 = null;
        }
    }

    public final void S0(String str) {
        if (this.Z1 == null) {
            return;
        }
        if (this.Q2 == 0 && TextUtils.isEmpty(str)) {
            this.Z1.o(0, R.drawable.outline_public_black_24);
            return;
        }
        if (this.Q2 == 0) {
            this.Q2 = DbBookQuick.m();
        }
        MyRoundImage myRoundImage = this.Z1;
        int i = this.Q2;
        if (this.T2 == null) {
            this.T2 = Pattern.compile("\\p{Punct}");
        }
        myRoundImage.t(i, str, this.T2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public final void T0(int i, String str, String str2) {
        Bitmap b;
        if (this.Z1 == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            this.O2 = false;
            this.P2 = null;
            S0(str2);
            return;
        }
        ?? obj = new Object();
        obj.f16550a = i;
        obj.g = str;
        obj.z = str;
        boolean z = PrefSync.k;
        obj.N = z;
        if (i == 0) {
            obj.f16551c = 1;
        } else {
            obj.f16551c = 11;
        }
        if (i == 33) {
            b = MainListLoader.c(str, z);
        } else {
            b = MainListLoader.b(obj);
        }
        if (MainUtil.f6(b)) {
            this.O2 = true;
            this.P2 = b;
            this.Q2 = 0;
            this.Z1.setBackColor(0);
            this.Z1.setImageBitmap(b);
            return;
        }
        this.E2 = new MainListLoader(this.f1, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.quick.QuickAdd.25
            @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
            public final void a(MainItem.ChildItem childItem, View view) {
                QuickAdd quickAdd = QuickAdd.this;
                quickAdd.O2 = false;
                quickAdd.P2 = null;
                quickAdd.S0(MainUtil.Q0(quickAdd.b2, true));
            }

            @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
            public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
                QuickAdd quickAdd = QuickAdd.this;
                if (quickAdd.Z1 == null) {
                    return;
                }
                if (MainUtil.f6(bitmap)) {
                    quickAdd.O2 = true;
                    quickAdd.P2 = bitmap;
                    quickAdd.Q2 = 0;
                    quickAdd.Z1.setBackColor(0);
                    quickAdd.Z1.setImageBitmap(bitmap);
                    return;
                }
                quickAdd.O2 = false;
                quickAdd.P2 = null;
                quickAdd.S0(MainUtil.Q0(quickAdd.b2, true));
            }
        });
        this.Z1.setTag(0);
        this.E2.e(obj, this.Z1);
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        Uri uri = null;
        if (i != 9) {
            if (i == 12) {
                String str = this.I2;
                this.I2 = null;
                if (i2 == -1) {
                    if (!TextUtils.isEmpty(str) && new File(str).exists()) {
                        T0(0, str, MainUtil.Q0(this.b2, true));
                        return;
                    } else {
                        MainUtil.e8(this, R.string.invalid_path);
                        return;
                    }
                }
                return;
            }
            return;
        }
        Uri uri2 = this.H2;
        this.H2 = null;
        if (i2 == -1) {
            if (intent != null) {
                uri = intent.getData();
            }
            if (uri != null) {
                uri2 = uri;
            }
            MainUtil.z7(this.f1, uri2);
            Context context = this.f1;
            if (context == null) {
                return;
            }
            if (uri2 == null) {
                MainUtil.e8(this, R.string.invalid_path);
                return;
            }
            String m0 = MainUtil.m0(context);
            this.I2 = m0;
            if (TextUtils.isEmpty(m0)) {
                MainUtil.e8(this, R.string.invalid_path);
                return;
            }
            Intent intent2 = new Intent(this.f1, (Class<?>) MainImageCropper.class);
            intent2.setData(uri2);
            intent2.putExtra("EXTRA_DST", this.I2);
            intent2.putExtra("EXTRA_ICON", true);
            o0(intent2, 12);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        boolean z = this.S2;
        boolean z2 = MainApp.K1;
        if (z != z2) {
            this.S2 = z2;
            MyButtonImage myButtonImage = this.X1;
            if (myButtonImage != null) {
                try {
                    if (z2) {
                        myButtonImage.setImageResource(R.drawable.outline_check_dark_24);
                        this.a2.setBackgroundResource(R.drawable.selector_overlay_dark);
                        this.b2.setTextColor(-328966);
                        this.c2.setImageResource(R.drawable.outline_cancel_dark_18);
                        this.d2.setTextColor(-328966);
                        this.e2.setImageResource(R.drawable.outline_cancel_dark_18);
                        this.f2.setImageResource(R.drawable.outline_more_vert_dark_24);
                        this.X1.setBgPreColor(-12632257);
                        this.c2.setBgPreColor(-12632257);
                        this.e2.setBgPreColor(-12632257);
                        this.f2.setBgPreColor(-12632257);
                        this.h2.setBackgroundResource(R.drawable.selector_normal_dark);
                        this.i2.setBackgroundResource(R.drawable.selector_normal_dark);
                        this.j2.setBackgroundResource(R.drawable.selector_normal_dark);
                        this.h2.setTextColor(-328966);
                        this.k2.setSelectedTabIndicatorColor(-5197648);
                        MyRecyclerView myRecyclerView = this.o2;
                        if (myRecyclerView != null) {
                            myRecyclerView.setBackgroundColor(-14606047);
                        }
                        MyRecyclerView myRecyclerView2 = this.x2;
                        if (myRecyclerView2 != null) {
                            myRecyclerView2.setBackgroundColor(-14606047);
                        }
                    } else {
                        myButtonImage.setImageResource(R.drawable.outline_check_black_24);
                        this.a2.setBackgroundResource(R.drawable.selector_overlay);
                        this.b2.setTextColor(-16777216);
                        this.c2.setImageResource(R.drawable.outline_cancel_black_18);
                        this.d2.setTextColor(-16777216);
                        this.e2.setImageResource(R.drawable.outline_cancel_black_18);
                        this.f2.setImageResource(R.drawable.outline_more_vert_black_24);
                        this.X1.setBgPreColor(553648128);
                        this.c2.setBgPreColor(-2039584);
                        this.e2.setBgPreColor(-2039584);
                        this.f2.setBgPreColor(-2039584);
                        this.h2.setBackgroundResource(R.drawable.selector_normal);
                        this.i2.setBackgroundResource(R.drawable.selector_normal_gray);
                        this.j2.setBackgroundResource(R.drawable.selector_normal_gray);
                        this.h2.setTextColor(-16777216);
                        this.k2.setSelectedTabIndicatorColor(-5854742);
                        MyRecyclerView myRecyclerView3 = this.o2;
                        if (myRecyclerView3 != null) {
                            myRecyclerView3.setBackgroundColor(-1);
                        }
                        MyRecyclerView myRecyclerView4 = this.x2;
                        if (myRecyclerView4 != null) {
                            myRecyclerView4.setBackgroundColor(-1);
                        }
                    }
                    this.Y1.a();
                    this.b2.d();
                    this.d2.d();
                    ViewPager2 viewPager2 = this.l2;
                    if (viewPager2 != null) {
                        if (viewPager2.getCurrentItem() == 0) {
                            if (MainApp.K1) {
                                this.i2.setTextColor(-328966);
                                this.j2.setTextColor(-4079167);
                            } else {
                                this.i2.setTextColor(-14784824);
                                this.j2.setTextColor(-10395295);
                            }
                        } else if (MainApp.K1) {
                            this.i2.setTextColor(-4079167);
                            this.j2.setTextColor(-328966);
                        } else {
                            this.i2.setTextColor(-10395295);
                            this.j2.setTextColor(-14784824);
                        }
                        QuickAddAdapter quickAddAdapter = this.t2;
                        if (quickAddAdapter != null) {
                            quickAddAdapter.g();
                        }
                        QuickAddAdapter quickAddAdapter2 = this.C2;
                        if (quickAddAdapter2 != null) {
                            quickAddAdapter2.g();
                        }
                        MyButtonText myButtonText = this.q2;
                        if (myButtonText != null) {
                            if (MainApp.K1) {
                                myButtonText.setTextColor(-328966);
                                this.q2.u(-16777216, -14211289);
                            } else {
                                myButtonText.setTextColor(-16777216);
                                this.q2.u(-460552, 553648128);
                            }
                        }
                        MyButtonText myButtonText2 = this.z2;
                        if (myButtonText2 != null) {
                            if (MainApp.K1) {
                                myButtonText2.setTextColor(-328966);
                                this.z2.u(-16777216, -14211289);
                            } else {
                                myButtonText2.setTextColor(-16777216);
                                this.z2.u(-460552, 553648128);
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
        super.onCreate(bundle);
        this.S2 = MainApp.K1;
        this.M2 = getIntent().getStringExtra("EXTRA_PATH");
        this.N2 = getIntent().getStringExtra("EXTRA_NAME");
        o0(null, 9);
        o0(null, 12);
        int i = R.string.quick_access;
        int i2 = R.id.set_icon_frame;
        int i3 = R.id.set_cast_ctrl;
        MyMainRelative myMainRelative = new MyMainRelative(this);
        myMainRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        myMainRelative.addView(linearLayout, androidx.work.impl.workers.a.h(-1, -1, 2, i3));
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
        layoutParams2.addRule(16, i2);
        layoutParams2.setMarginStart(MainApp.i1);
        myHeaderView.addView(appCompatTextView, layoutParams2);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setId(i2);
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
        int i4 = MainApp.g1;
        linearLayout2.addView(myButtonImage2, i4, i4);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setVisibility(4);
        linearLayout2.addView(frameLayout, -2, MainApp.g1);
        MyRoundRelative myRoundRelative = new MyRoundRelative(this);
        int i5 = MainApp.F1;
        myRoundRelative.setPadding(0, i5, 0, i5 + MainApp.G1);
        linearLayout.addView(myRoundRelative, -1, -2);
        MyRoundImage myRoundImage = new MyRoundImage(this);
        myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
        myRoundImage.setCircleRadius(MainApp.f1 / 2);
        int i6 = MainApp.f1;
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i6, i6);
        layoutParams4.topMargin = MainApp.G1;
        layoutParams4.setMarginStart(MainApp.E1);
        myRoundRelative.addView(myRoundImage, layoutParams4);
        MyLineView myLineView = new MyLineView(this);
        myLineView.a(MainUtil.G(this, 2.0f));
        int i7 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(i7, i7);
        layoutParams5.setMarginStart(MainApp.F1 + MainApp.G1);
        myRoundRelative.addView(myLineView, layoutParams5);
        MyEditText myEditText = new MyEditText(this);
        int G2 = (int) MainUtil.G(this, 32.0f);
        myEditText.setPaddingRelative(0, 0, G2, 0);
        com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText, 16, true, 3);
        myEditText.setTextSize(1, 16.0f);
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 29) {
            myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
        }
        myEditText.setHint(R.string.name);
        myEditText.setHintTextColor(-8289919);
        myEditText.setImeOptions(268435456);
        myEditText.setBackground(null);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
        layoutParams6.setMarginStart((int) MainUtil.G(this, 72.0f));
        layoutParams6.setMarginEnd(MainApp.E1);
        myRoundRelative.addView(myEditText, layoutParams6);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setScaleType(scaleType);
        myButtonImage3.setVisibility(8);
        int i9 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(i9, i9);
        layoutParams7.addRule(21);
        myRoundRelative.addView(myButtonImage3, layoutParams7);
        MyEditText myEditText2 = new MyEditText(this);
        myEditText2.setPaddingRelative(0, 0, G2, 0);
        com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText2, 16, true, 3);
        myEditText2.setTextSize(1, 16.0f);
        if (i8 >= 29) {
            myEditText2.setTextCursorDrawable(R.drawable.edit_cursor);
        }
        myEditText2.setHint(R.string.url);
        myEditText2.setHintTextColor(-8289919);
        myEditText2.setInputType(16);
        myEditText2.setImeOptions(268435462);
        myEditText2.setBackground(null);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
        int i10 = MainApp.g1;
        int i11 = MainApp.E1;
        layoutParams8.topMargin = i10 + i11;
        layoutParams8.setMarginStart(i11);
        layoutParams8.setMarginEnd(MainApp.E1);
        myRoundRelative.addView(myEditText2, layoutParams8);
        MyButtonImage myButtonImage4 = new MyButtonImage(this);
        myButtonImage4.setScaleType(scaleType);
        myButtonImage4.setVisibility(8);
        int i12 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(i12, i12);
        layoutParams9.topMargin = MainApp.g1 + MainApp.E1;
        layoutParams9.addRule(21);
        myRoundRelative.addView(myButtonImage4, layoutParams9);
        MyButtonImage myButtonImage5 = new MyButtonImage(this);
        myButtonImage5.setScaleType(scaleType);
        int i13 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(i13, i13);
        layoutParams10.topMargin = MainApp.g1 + MainApp.E1;
        layoutParams10.addRule(21);
        myRoundRelative.addView(myButtonImage5, layoutParams10);
        MyRoundLinear myRoundLinear = new MyRoundLinear(this);
        myRoundLinear.setVisibility(8);
        LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(-1, MainApp.g1);
        layoutParams11.topMargin = MainApp.E1;
        linearLayout.addView(myRoundLinear, layoutParams11);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this, null);
        appCompatTextView2.setGravity(17);
        appCompatTextView2.setTextSize(1, 16.0f);
        appCompatTextView2.setText(R.string.current_page);
        myRoundLinear.addView(appCompatTextView2, -1, -1);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setBaselineAligned(false);
        linearLayout3.setOrientation(0);
        linearLayout.addView(linearLayout3, -1, MainApp.g1);
        MyLineText myLineText = new MyLineText(this);
        myLineText.setGravity(17);
        myLineText.setTextSize(1, 16.0f);
        myLineText.setText(R.string.bookmark);
        myLineText.s(this);
        LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(0, -1);
        layoutParams12.weight = 1.0f;
        linearLayout3.addView(myLineText, layoutParams12);
        AppCompatTextView appCompatTextView3 = new AppCompatTextView(this, null);
        appCompatTextView3.setGravity(17);
        appCompatTextView3.setTextSize(1, 16.0f);
        LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(appCompatTextView3, R.string.history, 0, -1);
        e.weight = 1.0f;
        linearLayout3.addView(appCompatTextView3, e);
        TabLayout tabLayout = new TabLayout(this);
        tabLayout.setTabMode(1);
        tabLayout.setTabGravity(0);
        LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(-1, (int) MainUtil.G(this, 2.0f));
        layoutParams13.setMarginStart(MainApp.E1);
        layoutParams13.setMarginEnd(MainApp.E1);
        linearLayout.addView(tabLayout, layoutParams13);
        ViewPager2 viewPager2 = new ViewPager2(this);
        viewPager2.setOrientation(0);
        linearLayout.addView(viewPager2, -1, -1);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i3);
        frameLayout2.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams14 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams14.addRule(12);
        myMainRelative.addView(frameLayout2, layoutParams14);
        this.E1 = myMainRelative;
        this.F1 = myHeaderView;
        this.G1 = myButtonImage;
        this.H1 = appCompatTextView;
        this.X1 = myButtonImage2;
        this.Y1 = myRoundRelative;
        this.Z1 = myRoundImage;
        this.a2 = myLineView;
        this.b2 = myEditText;
        this.c2 = myButtonImage3;
        this.d2 = myEditText2;
        this.e2 = myButtonImage4;
        this.f2 = myButtonImage5;
        this.g2 = myRoundLinear;
        this.h2 = appCompatTextView2;
        this.i2 = myLineText;
        this.j2 = appCompatTextView3;
        this.k2 = tabLayout;
        this.l2 = viewPager2;
        B0(myMainRelative, frameLayout, frameLayout2);
        this.E1.setWindow(getWindow());
        this.E1.setFocusable(true);
        this.E1.setFocusableInTouchMode(true);
        initMainScreenOn(this.E1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.quick.QuickAdd.1
            @Override // java.lang.Runnable
            public final void run() {
                int i14 = QuickAdd.X2;
                final QuickAdd quickAdd = QuickAdd.this;
                if (quickAdd.E1 != null) {
                    if (MainApp.K1) {
                        quickAdd.G1.setImageResource(R.drawable.outline_chevron_left_dark_24);
                        quickAdd.H1.setTextColor(-328966);
                        quickAdd.X1.setImageResource(R.drawable.outline_check_dark_24);
                        quickAdd.a2.setBackgroundResource(R.drawable.selector_overlay_dark);
                        quickAdd.b2.setTextColor(-328966);
                        quickAdd.c2.setImageResource(R.drawable.outline_cancel_dark_18);
                        quickAdd.d2.setTextColor(-328966);
                        quickAdd.e2.setImageResource(R.drawable.outline_cancel_dark_18);
                        quickAdd.f2.setImageResource(R.drawable.outline_more_vert_dark_24);
                        quickAdd.G1.setBgPreColor(-12632257);
                        quickAdd.X1.setBgPreColor(-12632257);
                        quickAdd.c2.setBgPreColor(-12632257);
                        quickAdd.e2.setBgPreColor(-12632257);
                        quickAdd.f2.setBgPreColor(-12632257);
                        quickAdd.h2.setBackgroundResource(R.drawable.selector_normal_dark);
                        quickAdd.i2.setBackgroundResource(R.drawable.selector_normal_dark);
                        quickAdd.j2.setBackgroundResource(R.drawable.selector_normal_dark);
                        quickAdd.h2.setTextColor(-328966);
                        quickAdd.i2.setTextColor(-328966);
                        quickAdd.j2.setTextColor(-4079167);
                        quickAdd.k2.setSelectedTabIndicatorColor(-5197648);
                    } else {
                        quickAdd.G1.setImageResource(R.drawable.outline_chevron_left_black_24);
                        quickAdd.H1.setTextColor(-16777216);
                        quickAdd.X1.setImageResource(R.drawable.outline_check_black_24);
                        quickAdd.a2.setBackgroundResource(R.drawable.selector_overlay);
                        quickAdd.b2.setTextColor(-16777216);
                        quickAdd.c2.setImageResource(R.drawable.outline_cancel_black_18);
                        quickAdd.d2.setTextColor(-16777216);
                        quickAdd.e2.setImageResource(R.drawable.outline_cancel_black_18);
                        quickAdd.f2.setImageResource(R.drawable.outline_more_vert_black_24);
                        quickAdd.G1.setBgPreColor(553648128);
                        quickAdd.X1.setBgPreColor(553648128);
                        quickAdd.c2.setBgPreColor(-2039584);
                        quickAdd.e2.setBgPreColor(-2039584);
                        quickAdd.f2.setBgPreColor(-2039584);
                        quickAdd.h2.setBackgroundResource(R.drawable.selector_normal);
                        quickAdd.i2.setBackgroundResource(R.drawable.selector_normal_gray);
                        quickAdd.j2.setBackgroundResource(R.drawable.selector_normal_gray);
                        quickAdd.h2.setTextColor(-16777216);
                        quickAdd.i2.setTextColor(-14784824);
                        quickAdd.j2.setTextColor(-10395295);
                        quickAdd.k2.setSelectedTabIndicatorColor(-5854742);
                    }
                    quickAdd.G1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickAdd.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            QuickAdd.this.finish();
                        }
                    });
                    if (!TextUtils.isEmpty(quickAdd.M2) && !TextUtils.isEmpty(quickAdd.N2)) {
                        quickAdd.b2.setText(quickAdd.N2);
                        quickAdd.c2.setVisibility(0);
                        quickAdd.d2.setText(quickAdd.M2);
                        quickAdd.e2.setVisibility(0);
                        quickAdd.f2.setVisibility(8);
                        quickAdd.g2.c(true, true);
                        quickAdd.g2.setVisibility(0);
                        quickAdd.h2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickAdd.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                QuickAdd quickAdd2 = QuickAdd.this;
                                MyEditText myEditText3 = quickAdd2.b2;
                                if (myEditText3 == null) {
                                    return;
                                }
                                myEditText3.setText(quickAdd2.N2);
                                quickAdd2.d2.setText(quickAdd2.M2);
                                quickAdd2.T0(18, quickAdd2.M2, quickAdd2.N2);
                            }
                        });
                    }
                    quickAdd.d2.setHint("example.com");
                    quickAdd.b2.setElineColor(-14784824);
                    quickAdd.d2.setElineColor(-2434342);
                    quickAdd.b2.setSelectAllOnFocus(true);
                    quickAdd.d2.setSelectAllOnFocus(true);
                    quickAdd.X1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickAdd.4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            QuickAdd quickAdd2 = QuickAdd.this;
                            MyButtonImage myButtonImage6 = quickAdd2.X1;
                            if (myButtonImage6 == null || quickAdd2.L2) {
                                return;
                            }
                            quickAdd2.L2 = true;
                            myButtonImage6.post(new Runnable() { // from class: com.mycompany.app.quick.QuickAdd.4.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    QuickAdd.P0(QuickAdd.this);
                                }
                            });
                        }
                    });
                    if (MainApp.K1) {
                        quickAdd.a2.c(MainApp.n1, -328966);
                    } else {
                        quickAdd.a2.setLineColor(-14784824);
                    }
                    quickAdd.a2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickAdd.5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            final QuickAdd quickAdd2 = QuickAdd.this;
                            MyPopupMenu myPopupMenu = quickAdd2.G2;
                            if (myPopupMenu == null) {
                                if (myPopupMenu != null) {
                                    quickAdd2.Z0 = null;
                                    myPopupMenu.a();
                                    quickAdd2.G2 = null;
                                }
                                if (view == null) {
                                    return;
                                }
                                quickAdd2.H2 = null;
                                quickAdd2.I2 = null;
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.web_title));
                                arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.image));
                                arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.camera));
                                arrayList.add(new MyPopupAdapter.PopMenuItem(3, R.string.color_title));
                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(quickAdd2, quickAdd2.E1, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.quick.QuickAdd.27
                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final void a() {
                                        int i15 = QuickAdd.X2;
                                        QuickAdd quickAdd3 = QuickAdd.this;
                                        MyPopupMenu myPopupMenu3 = quickAdd3.G2;
                                        if (myPopupMenu3 != null) {
                                            quickAdd3.Z0 = null;
                                            myPopupMenu3.a();
                                            quickAdd3.G2 = null;
                                        }
                                    }

                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final boolean b(View view2, int i15) {
                                        final QuickAdd quickAdd3 = QuickAdd.this;
                                        MyEditText myEditText3 = quickAdd3.b2;
                                        if (myEditText3 != null) {
                                            if (myEditText3.isFocused()) {
                                                MainUtil.X4(quickAdd3.f1, quickAdd3.b2);
                                            } else if (quickAdd3.d2.isFocused()) {
                                                MainUtil.X4(quickAdd3.f1, quickAdd3.d2);
                                            }
                                            if (i15 == 1) {
                                                MainUtil.O4(quickAdd3, 9);
                                                return true;
                                            }
                                            if (i15 == 2) {
                                                if (!MainUtil.D4(quickAdd3, 30)) {
                                                    quickAdd3.H2 = MainUtil.C4(9, quickAdd3, false);
                                                    return true;
                                                }
                                            } else if (i15 == 3) {
                                                if (quickAdd3.J2 == null && quickAdd3.K2 == null) {
                                                    quickAdd3.R0();
                                                    DialogQuickColor dialogQuickColor = new DialogQuickColor(quickAdd3, quickAdd3.Q2, new DialogQuickColor.QuickColorListener() { // from class: com.mycompany.app.quick.QuickAdd.30
                                                        @Override // com.mycompany.app.dialog.DialogQuickColor.QuickColorListener
                                                        public final void a(int i16) {
                                                            int i17 = QuickAdd.X2;
                                                            QuickAdd quickAdd4 = QuickAdd.this;
                                                            quickAdd4.R0();
                                                            if (quickAdd4.Z1 == null) {
                                                                return;
                                                            }
                                                            quickAdd4.O2 = false;
                                                            quickAdd4.P2 = null;
                                                            quickAdd4.Q2 = i16;
                                                            quickAdd4.S0(MainUtil.Q0(quickAdd4.b2, true));
                                                        }
                                                    });
                                                    quickAdd3.K2 = dialogQuickColor;
                                                    dialogQuickColor.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.quick.QuickAdd.31
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            int i16 = QuickAdd.X2;
                                                            QuickAdd.this.R0();
                                                        }
                                                    });
                                                    return true;
                                                }
                                            } else {
                                                DialogQuickIcon dialogQuickIcon = quickAdd3.J2;
                                                if (dialogQuickIcon == null && quickAdd3.K2 == null) {
                                                    if (dialogQuickIcon != null) {
                                                        dialogQuickIcon.dismiss();
                                                        quickAdd3.J2 = null;
                                                    }
                                                    MyEditText myEditText4 = quickAdd3.d2;
                                                    if (myEditText4 != null) {
                                                        String Q0 = MainUtil.Q0(myEditText4, true);
                                                        if (TextUtils.isEmpty(Q0)) {
                                                            MainUtil.b7(quickAdd3.d2);
                                                            MainUtil.e8(quickAdd3, R.string.input_url);
                                                            return true;
                                                        }
                                                        DialogQuickIcon dialogQuickIcon2 = new DialogQuickIcon(quickAdd3, Q0, new DialogQuickIcon.QuickLoadListener() { // from class: com.mycompany.app.quick.QuickAdd.28
                                                            @Override // com.mycompany.app.dialog.DialogQuickIcon.QuickLoadListener
                                                            public final void a(Bitmap bitmap) {
                                                                QuickAdd quickAdd4 = QuickAdd.this;
                                                                if (quickAdd4.Z1 != null && MainUtil.f6(bitmap)) {
                                                                    quickAdd4.O2 = true;
                                                                    quickAdd4.P2 = bitmap;
                                                                    quickAdd4.Q2 = 0;
                                                                    quickAdd4.Z1.setBackColor(0);
                                                                    quickAdd4.Z1.setImageBitmap(bitmap);
                                                                }
                                                            }
                                                        });
                                                        quickAdd3.J2 = dialogQuickIcon2;
                                                        dialogQuickIcon2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.quick.QuickAdd.29
                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                int i16 = QuickAdd.X2;
                                                                QuickAdd quickAdd4 = QuickAdd.this;
                                                                DialogQuickIcon dialogQuickIcon3 = quickAdd4.J2;
                                                                if (dialogQuickIcon3 != null) {
                                                                    dialogQuickIcon3.dismiss();
                                                                    quickAdd4.J2 = null;
                                                                }
                                                            }
                                                        });
                                                        return true;
                                                    }
                                                }
                                            }
                                        }
                                        return true;
                                    }
                                });
                                quickAdd2.G2 = myPopupMenu2;
                                quickAdd2.Z0 = myPopupMenu2;
                            }
                        }
                    });
                    quickAdd.b2.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.quick.QuickAdd.6
                        @Override // android.view.View.OnFocusChangeListener
                        public final void onFocusChange(View view, boolean z) {
                            QuickAdd quickAdd2;
                            MyEditText myEditText3;
                            if (!z || (myEditText3 = (quickAdd2 = QuickAdd.this).b2) == null) {
                                return;
                            }
                            myEditText3.setElineColor(-14784824);
                            quickAdd2.d2.setElineColor(-2434342);
                        }
                    });
                    quickAdd.b2.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.quick.QuickAdd.7
                        /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
                        /* JADX WARN: Removed duplicated region for block: B:9:0x0029  */
                        @Override // android.text.TextWatcher
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final void afterTextChanged(android.text.Editable r4) {
                            /*
                                r3 = this;
                                com.mycompany.app.quick.QuickAdd r0 = com.mycompany.app.quick.QuickAdd.this
                                com.mycompany.app.view.MyButtonImage r1 = r0.c2
                                if (r1 != 0) goto L7
                                goto L2c
                            L7:
                                boolean r1 = android.text.TextUtils.isEmpty(r4)
                                if (r1 == 0) goto L15
                                com.mycompany.app.view.MyButtonImage r4 = r0.c2
                                r1 = 8
                                r4.setVisibility(r1)
                                goto L24
                            L15:
                                com.mycompany.app.view.MyButtonImage r1 = r0.c2
                                r2 = 0
                                r1.setVisibility(r2)
                                boolean r1 = r0.O2
                                if (r1 != 0) goto L24
                                java.lang.String r4 = r4.toString()
                                goto L25
                            L24:
                                r4 = 0
                            L25:
                                boolean r1 = r0.O2
                                if (r1 != 0) goto L2c
                                r0.S0(r4)
                            L2c:
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.quick.QuickAdd.AnonymousClass7.afterTextChanged(android.text.Editable):void");
                        }

                        @Override // android.text.TextWatcher
                        public final void beforeTextChanged(CharSequence charSequence, int i15, int i16, int i17) {
                        }

                        @Override // android.text.TextWatcher
                        public final void onTextChanged(CharSequence charSequence, int i15, int i16, int i17) {
                        }
                    });
                    quickAdd.c2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickAdd.8
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            QuickAdd quickAdd2 = QuickAdd.this;
                            MyEditText myEditText3 = quickAdd2.b2;
                            if (myEditText3 != null) {
                                myEditText3.setText((CharSequence) null);
                                MainUtil.b7(quickAdd2.b2);
                                if (!quickAdd2.O2) {
                                    quickAdd2.S0(null);
                                }
                            }
                        }
                    });
                    quickAdd.d2.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.quick.QuickAdd.9
                        @Override // android.view.View.OnFocusChangeListener
                        public final void onFocusChange(View view, boolean z) {
                            QuickAdd quickAdd2;
                            MyEditText myEditText3;
                            if (!z || (myEditText3 = (quickAdd2 = QuickAdd.this).b2) == null) {
                                return;
                            }
                            myEditText3.setElineColor(-2434342);
                            quickAdd2.d2.setElineColor(-14784824);
                        }
                    });
                    quickAdd.d2.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.quick.QuickAdd.10
                        @Override // android.text.TextWatcher
                        public final void afterTextChanged(Editable editable) {
                            QuickAdd quickAdd2 = QuickAdd.this;
                            if (quickAdd2.e2 == null) {
                                return;
                            }
                            if (TextUtils.isEmpty(editable)) {
                                quickAdd2.e2.setVisibility(8);
                                quickAdd2.f2.setVisibility(0);
                            } else {
                                quickAdd2.e2.setVisibility(0);
                                quickAdd2.f2.setVisibility(8);
                            }
                        }

                        @Override // android.text.TextWatcher
                        public final void beforeTextChanged(CharSequence charSequence, int i15, int i16, int i17) {
                        }

                        @Override // android.text.TextWatcher
                        public final void onTextChanged(CharSequence charSequence, int i15, int i16, int i17) {
                        }
                    });
                    quickAdd.d2.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.quick.QuickAdd.11
                        @Override // android.widget.TextView.OnEditorActionListener
                        public final boolean onEditorAction(TextView textView, int i15, KeyEvent keyEvent) {
                            QuickAdd quickAdd2 = QuickAdd.this;
                            MyEditText myEditText3 = quickAdd2.d2;
                            if (myEditText3 == null || quickAdd2.L2) {
                                return true;
                            }
                            quickAdd2.L2 = true;
                            myEditText3.post(new Runnable() { // from class: com.mycompany.app.quick.QuickAdd.11.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    QuickAdd.P0(QuickAdd.this);
                                }
                            });
                            return true;
                        }
                    });
                    quickAdd.e2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickAdd.12
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            QuickAdd quickAdd2 = QuickAdd.this;
                            MyEditText myEditText3 = quickAdd2.d2;
                            if (myEditText3 == null) {
                                return;
                            }
                            myEditText3.setText((CharSequence) null);
                            MainUtil.b7(quickAdd2.d2);
                        }
                    });
                    quickAdd.f2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickAdd.13
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            final QuickAdd quickAdd2 = QuickAdd.this;
                            MyPopupMenu myPopupMenu = quickAdd2.F2;
                            if (myPopupMenu == null) {
                                if (myPopupMenu != null) {
                                    quickAdd2.Z0 = null;
                                    myPopupMenu.a();
                                    quickAdd2.F2 = null;
                                }
                                if (view == null) {
                                    return;
                                }
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new MyPopupAdapter.PopMenuItem(0, "https://"));
                                arrayList.add(new MyPopupAdapter.PopMenuItem(1, "www."));
                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(quickAdd2, quickAdd2.E1, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.quick.QuickAdd.26
                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final void a() {
                                        int i15 = QuickAdd.X2;
                                        QuickAdd quickAdd3 = QuickAdd.this;
                                        MyPopupMenu myPopupMenu3 = quickAdd3.F2;
                                        if (myPopupMenu3 != null) {
                                            quickAdd3.Z0 = null;
                                            myPopupMenu3.a();
                                            quickAdd3.F2 = null;
                                        }
                                    }

                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final boolean b(View view2, int i15) {
                                        QuickAdd quickAdd3 = QuickAdd.this;
                                        MyEditText myEditText3 = quickAdd3.d2;
                                        if (myEditText3 == null) {
                                            return true;
                                        }
                                        if (i15 == 0) {
                                            myEditText3.setText("https://");
                                            quickAdd3.d2.setSelection(8);
                                        } else {
                                            myEditText3.setText("www.");
                                            quickAdd3.d2.setSelection(4);
                                        }
                                        MainUtil.b7(quickAdd3.d2);
                                        return true;
                                    }
                                });
                                quickAdd2.F2 = myPopupMenu2;
                                quickAdd2.Z0 = myPopupMenu2;
                            }
                        }
                    });
                    quickAdd.i2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickAdd.14
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ViewPager2 viewPager22 = QuickAdd.this.l2;
                            if (viewPager22 != null) {
                                viewPager22.setCurrentItem(0);
                            }
                        }
                    });
                    quickAdd.j2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickAdd.15
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ViewPager2 viewPager22 = QuickAdd.this.l2;
                            if (viewPager22 != null) {
                                viewPager22.setCurrentItem(1);
                            }
                        }
                    });
                    quickAdd.T0(18, quickAdd.M2, quickAdd.N2);
                    Handler handler2 = quickAdd.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new AnonymousClass16());
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        ViewPager2 viewPager2 = this.l2;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.m2;
        this.l2 = null;
        this.m2 = null;
        if (viewPager2 != null) {
            if (onPageChangeCallback != null) {
                viewPager2.f(onPageChangeCallback);
            }
            viewPager2.setAdapter(null);
        }
        MyButtonImage myButtonImage = this.X1;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.X1 = null;
        }
        MyRoundRelative myRoundRelative = this.Y1;
        if (myRoundRelative != null) {
            myRoundRelative.f = null;
            myRoundRelative.g = null;
            this.Y1 = null;
        }
        MyRoundImage myRoundImage = this.Z1;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.Z1 = null;
        }
        MyLineView myLineView = this.a2;
        if (myLineView != null) {
            myLineView.b();
            this.a2 = null;
        }
        MyEditText myEditText = this.b2;
        if (myEditText != null) {
            myEditText.c();
            this.b2 = null;
        }
        MyButtonImage myButtonImage2 = this.c2;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.c2 = null;
        }
        MyEditText myEditText2 = this.d2;
        if (myEditText2 != null) {
            myEditText2.c();
            this.d2 = null;
        }
        MyButtonImage myButtonImage3 = this.e2;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.e2 = null;
        }
        MyButtonImage myButtonImage4 = this.f2;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.f2 = null;
        }
        MyRoundLinear myRoundLinear = this.g2;
        if (myRoundLinear != null) {
            myRoundLinear.a();
            this.g2 = null;
        }
        MyLineText myLineText = this.i2;
        if (myLineText != null) {
            myLineText.u();
            this.i2 = null;
        }
        MyRecyclerView myRecyclerView = this.o2;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.o2 = null;
        }
        MyButtonText myButtonText = this.q2;
        if (myButtonText != null) {
            myButtonText.t();
            this.q2 = null;
        }
        MyCoverView myCoverView = this.r2;
        if (myCoverView != null) {
            myCoverView.i();
            this.r2 = null;
        }
        MyRecyclerView myRecyclerView2 = this.x2;
        if (myRecyclerView2 != null) {
            myRecyclerView2.s0();
            this.x2 = null;
        }
        MyButtonText myButtonText2 = this.z2;
        if (myButtonText2 != null) {
            myButtonText2.t();
            this.z2 = null;
        }
        MyCoverView myCoverView2 = this.A2;
        if (myCoverView2 != null) {
            myCoverView2.i();
            this.A2 = null;
        }
        QuickAddAdapter quickAddAdapter = this.t2;
        if (quickAddAdapter != null) {
            quickAddAdapter.w();
            this.t2 = null;
        }
        QuickAddAdapter quickAddAdapter2 = this.C2;
        if (quickAddAdapter2 != null) {
            quickAddAdapter2.w();
            this.C2 = null;
        }
        MainListLoader mainListLoader = this.E2;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.E2 = null;
        }
        this.h2 = null;
        this.j2 = null;
        this.k2 = null;
        this.n2 = null;
        this.p2 = null;
        this.w2 = null;
        this.y2 = null;
        this.s2 = null;
        this.B2 = null;
        this.M2 = null;
        this.N2 = null;
        this.P2 = null;
        this.T2 = null;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            DialogQuickIcon dialogQuickIcon = this.J2;
            if (dialogQuickIcon != null) {
                dialogQuickIcon.dismiss();
                this.J2 = null;
            }
            R0();
            MyPopupMenu myPopupMenu = this.F2;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.F2 = null;
            }
            MyPopupMenu myPopupMenu2 = this.G2;
            if (myPopupMenu2 != null) {
                this.Z0 = null;
                myPopupMenu2.a();
                this.G2 = null;
            }
            BookTask bookTask = this.u2;
            if (bookTask != null) {
                bookTask.f12839c = true;
            }
            this.u2 = null;
            HistTask histTask = this.D2;
            if (histTask != null) {
                histTask.f12839c = true;
            }
            this.D2 = null;
            MainApp.T1 = null;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 30 && iArr != null && iArr.length > 0 && iArr[0] == 0) {
            this.H2 = MainUtil.C4(9, this, false);
        }
    }
}
