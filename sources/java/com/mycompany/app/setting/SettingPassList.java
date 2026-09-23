package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.MimeTypeMap;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.workers.a;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookPass;
import com.mycompany.app.dialog.DialogDeleteItem;
import com.mycompany.app.dialog.DialogPassInfo;
import com.mycompany.app.dialog.DialogPassLoad;
import com.mycompany.app.dialog.DialogPassSave;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.setting.SettingPassAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.view.MyScrollBar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class SettingPassList extends SettingActivity {
    public static final /* synthetic */ int t2 = 0;
    public MyButtonImage X1;
    public MyButtonImage Y1;
    public MyScrollBar Z1;
    public ImageView a2;
    public MyButtonText b2;
    public MyCoverView c2;
    public SettingPassAdapter d2;
    public LoadTask e2;
    public MyPopupMenu f2;
    public DialogDeleteItem g2;
    public DialogPassInfo h2;
    public DialogPassLoad i2;
    public DialogPassSave j2;
    public boolean k2;
    public boolean l2;
    public MyRoundImage m2;
    public String n2;
    public MainListLoader o2;
    public Pattern p2;
    public boolean q2;
    public final Runnable r2 = new Runnable() { // from class: com.mycompany.app.setting.SettingPassList.9
        @Override // java.lang.Runnable
        public final void run() {
            MyManagerLinear myManagerLinear;
            SettingPassList settingPassList = SettingPassList.this;
            if (settingPassList.Z1 != null && (myManagerLinear = settingPassList.M1) != null) {
                settingPassList.Z1.p((myManagerLinear.V0() - settingPassList.M1.U0()) + 1, settingPassList.M1.H());
            }
            settingPassList.q2 = false;
        }
    };
    public MainItem.ChildItem s2;

    /* renamed from: com.mycompany.app.setting.SettingPassList$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements SettingPassAdapter.PassListListener {
        public AnonymousClass7() {
        }

        @Override // com.mycompany.app.setting.SettingPassAdapter.PassListListener
        public final void a(final int i, MainItem.ChildItem childItem, boolean z) {
            final SettingPassList settingPassList = SettingPassList.this;
            if (z) {
                SettingPassList.O0(settingPassList, i, childItem);
                return;
            }
            int i2 = SettingPassList.t2;
            if (settingPassList.S0()) {
                return;
            }
            settingPassList.R0();
            DialogPassInfo dialogPassInfo = new DialogPassInfo(settingPassList, childItem.y, childItem.g, childItem.q, childItem.G, childItem.e, new DialogPassInfo.PassInfoListener() { // from class: com.mycompany.app.setting.SettingPassList.14
                @Override // com.mycompany.app.dialog.DialogPassInfo.PassInfoListener
                public final void a(String str, String str2) {
                    List list;
                    int i3;
                    MainItem.ChildItem childItem2;
                    int i4 = R.string.save_success;
                    SettingPassList settingPassList2 = SettingPassList.this;
                    MainUtil.e8(settingPassList2, i4);
                    SettingPassAdapter settingPassAdapter = settingPassList2.d2;
                    if (settingPassAdapter != null && (list = settingPassAdapter.d) != null && (i3 = i) >= 0 && i3 < list.size() - 1 && !TextUtils.isEmpty(str) && (childItem2 = (MainItem.ChildItem) settingPassAdapter.d.get(i3)) != null) {
                        childItem2.q = str;
                        childItem2.G = str2;
                        settingPassAdapter.g();
                    }
                    settingPassList2.R0();
                }

                @Override // com.mycompany.app.dialog.DialogPassInfo.PassInfoListener
                public final void b(String str) {
                }

                @Override // com.mycompany.app.dialog.DialogPassInfo.PassInfoListener
                public final Bitmap getIcon() {
                    return null;
                }
            });
            settingPassList.h2 = dialogPassInfo;
            dialogPassInfo.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingPassList.15
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    int i3 = SettingPassList.t2;
                    SettingPassList.this.R0();
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public static class LoadTask extends MyAsyncTask {
        public final WeakReference e;
        public final boolean f;
        public final boolean g;
        public ArrayList h;

        public LoadTask(SettingPassList settingPassList, boolean z, boolean z2) {
            this.e = new WeakReference(settingPassList);
            this.f = z;
            this.g = z2;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x0115 A[LOOP:0: B:29:0x006c->B:51:0x0115, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:52:0x011a A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r11v2, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 308
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingPassList.LoadTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            SettingPassList settingPassList;
            WeakReference weakReference = this.e;
            if (weakReference == null || (settingPassList = (SettingPassList) weakReference.get()) == null) {
                return;
            }
            settingPassList.e2 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            SettingPassList settingPassList;
            WeakReference weakReference = this.e;
            if (weakReference != null && (settingPassList = (SettingPassList) weakReference.get()) != null) {
                settingPassList.e2 = null;
                SettingPassAdapter settingPassAdapter = settingPassList.d2;
                if (settingPassAdapter != null) {
                    ArrayList arrayList = this.h;
                    MainListLoader mainListLoader = settingPassAdapter.f;
                    if (mainListLoader != null) {
                        mainListLoader.f16599c = null;
                    }
                    settingPassAdapter.d = arrayList;
                    settingPassAdapter.g();
                }
                MyCoverView myCoverView = settingPassList.c2;
                if (myCoverView != null) {
                    myCoverView.f(true);
                    ArrayList arrayList2 = this.h;
                    if (arrayList2 != null && !arrayList2.isEmpty()) {
                        settingPassList.X1.setVisibility(0);
                        settingPassList.a2.setVisibility(8);
                        MyButtonText myButtonText = settingPassList.b2;
                        if (myButtonText != null) {
                            myButtonText.setVisibility(8);
                            settingPassList.k2 = true;
                            return;
                        }
                        return;
                    }
                    settingPassList.X1.setVisibility(8);
                    settingPassList.a2.setVisibility(0);
                    MyButtonText myButtonText2 = settingPassList.b2;
                    if (myButtonText2 != null) {
                        myButtonText2.setVisibility(0);
                        settingPassList.k2 = false;
                    }
                    if (this.g) {
                        MainUtil.e8(settingPassList, R.string.import_no_password);
                    }
                }
            }
        }
    }

    public static void O0(SettingPassList settingPassList, final int i, MainItem.ChildItem childItem) {
        if (settingPassList.d2 == null || settingPassList.S0()) {
            return;
        }
        settingPassList.Q0();
        settingPassList.s2 = childItem;
        DialogDeleteItem dialogDeleteItem = new DialogDeleteItem(settingPassList, new DialogDeleteItem.DelItemListener() { // from class: com.mycompany.app.setting.SettingPassList.11
            @Override // com.mycompany.app.dialog.DialogDeleteItem.DelItemListener
            public final void a() {
                String str;
                int i2;
                SettingPassList settingPassList2 = SettingPassList.this;
                MainItem.ChildItem childItem2 = settingPassList2.s2;
                if (settingPassList2.d2 != null) {
                    if (childItem2 != null) {
                        Context context = settingPassList2.f1;
                        long j = childItem2.y;
                        DbBookPass dbBookPass = DbBookPass.f12940c;
                        if (context != null && j > 0) {
                            DbUtil.b(DbBookPass.d(context).getWritableDatabase(), "DbBookPass_table", j);
                        }
                        SettingPassAdapter settingPassAdapter = settingPassList2.d2;
                        if (settingPassAdapter.d != null && (i2 = i) >= 0 && i2 < r2.size() - 1) {
                            settingPassAdapter.d.remove(i2);
                            settingPassAdapter.g();
                        }
                    } else {
                        Context context2 = settingPassList2.f1;
                        boolean z = PrefSync.k;
                        DbBookPass dbBookPass2 = DbBookPass.f12940c;
                        if (context2 != null) {
                            if (z) {
                                str = "1";
                            } else {
                                str = "0";
                            }
                            DbUtil.a(DbBookPass.d(context2).getWritableDatabase(), "DbBookPass_table", "_secret=?", new String[]{str});
                        }
                        SettingPassAdapter settingPassAdapter2 = settingPassList2.d2;
                        MainListLoader mainListLoader = settingPassAdapter2.f;
                        if (mainListLoader != null) {
                            mainListLoader.f16599c = null;
                        }
                        settingPassAdapter2.d = null;
                        settingPassAdapter2.g();
                    }
                    if (settingPassList2.d2.w() == 0) {
                        MyButtonImage myButtonImage = settingPassList2.X1;
                        if (myButtonImage != null) {
                            myButtonImage.setVisibility(8);
                        }
                        ImageView imageView = settingPassList2.a2;
                        if (imageView != null) {
                            imageView.setVisibility(0);
                        }
                        MyButtonText myButtonText = settingPassList2.b2;
                        if (myButtonText != null) {
                            myButtonText.setVisibility(0);
                            settingPassList2.k2 = false;
                        }
                    }
                }
                settingPassList2.Q0();
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r8v4, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
            @Override // com.mycompany.app.dialog.DialogDeleteItem.DelItemListener
            public final void b(MyRoundImage myRoundImage, AppCompatTextView appCompatTextView) {
                int i2;
                final SettingPassList settingPassList2 = SettingPassList.this;
                MainItem.ChildItem childItem2 = settingPassList2.s2;
                if (childItem2 == null && settingPassList2.d2.w() == 1) {
                    SettingPassAdapter settingPassAdapter = settingPassList2.d2;
                    List list = settingPassAdapter.d;
                    childItem2 = (list == null || list.size() - 1 <= 0) ? null : (MainItem.ChildItem) settingPassAdapter.d.get(0);
                }
                if (childItem2 != null) {
                    settingPassList2.m2 = myRoundImage;
                    String str = childItem2.g;
                    settingPassList2.n2 = str;
                    if (myRoundImage != null) {
                        ?? obj = new Object();
                        obj.f16550a = 34;
                        obj.f16551c = 11;
                        obj.g = str;
                        if (TextUtils.isEmpty(str)) {
                            settingPassList2.m2.o(-460552, R.drawable.outline_public_black_24);
                        } else {
                            Bitmap b = MainListLoader.b(obj);
                            if (MainUtil.f6(b)) {
                                settingPassList2.m2.setIconSmall(true);
                                settingPassList2.m2.setImageBitmap(b);
                            } else {
                                settingPassList2.o2 = new MainListLoader(settingPassList2.f1, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.setting.SettingPassList.13
                                    @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                    public final void a(MainItem.ChildItem childItem3, View view) {
                                        SettingPassList settingPassList3 = SettingPassList.this;
                                        MyRoundImage myRoundImage2 = settingPassList3.m2;
                                        if (myRoundImage2 == null) {
                                            return;
                                        }
                                        int i3 = R.drawable.outline_public_black_24;
                                        String str2 = settingPassList3.n2;
                                        if (settingPassList3.p2 == null) {
                                            settingPassList3.p2 = Pattern.compile("\\p{Punct}");
                                        }
                                        myRoundImage2.p(-460552, i3, str2, settingPassList3.p2);
                                    }

                                    @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                    public final void b(MainItem.ChildItem childItem3, View view, Bitmap bitmap) {
                                        SettingPassList settingPassList3 = SettingPassList.this;
                                        MyRoundImage myRoundImage2 = settingPassList3.m2;
                                        if (myRoundImage2 == null) {
                                            return;
                                        }
                                        myRoundImage2.setIconSmall(true);
                                        settingPassList3.m2.setImageBitmap(bitmap);
                                    }
                                });
                                settingPassList2.m2.setTag(0);
                                settingPassList2.o2.e(obj, settingPassList2.m2);
                            }
                        }
                    }
                    appCompatTextView.setText(childItem2.g);
                    return;
                }
                int w = settingPassList2.d2.w();
                if (w == 0) {
                    return;
                }
                myRoundImage.o(-460552, R.drawable.outline_public_black_24);
                StringBuilder sb = new StringBuilder();
                sb.append(w);
                if (w > 1) {
                    i2 = R.string.items;
                } else {
                    i2 = R.string.item;
                }
                sb.append(settingPassList2.getString(i2));
                appCompatTextView.setText(sb.toString());
            }
        });
        settingPassList.g2 = dialogDeleteItem;
        dialogDeleteItem.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingPassList.12
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i2 = SettingPassList.t2;
                SettingPassList settingPassList2 = SettingPassList.this;
                settingPassList2.Q0();
                settingPassList2.s2 = null;
            }
        });
    }

    public final void P0(boolean z, boolean z2) {
        LoadTask loadTask = this.e2;
        if (loadTask != null) {
            loadTask.f12839c = true;
        }
        this.e2 = null;
        LoadTask loadTask2 = new LoadTask(this, z, z2);
        this.e2 = loadTask2;
        loadTask2.b(this.f1);
    }

    public final void Q0() {
        DialogDeleteItem dialogDeleteItem = this.g2;
        if (dialogDeleteItem != null) {
            dialogDeleteItem.dismiss();
            this.g2 = null;
        }
        MainListLoader mainListLoader = this.o2;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.o2 = null;
        }
        MyRoundImage myRoundImage = this.m2;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.m2 = null;
        }
        this.n2 = null;
    }

    public final void R0() {
        DialogPassInfo dialogPassInfo = this.h2;
        if (dialogPassInfo != null) {
            dialogPassInfo.dismiss();
            this.h2 = null;
        }
    }

    public final boolean S0() {
        if (this.g2 != null || this.h2 != null || this.i2 != null || this.j2 != null) {
            return true;
        }
        return false;
    }

    @Override // android.app.Activity
    public final void finish() {
        if (this.k2) {
            setResult(-1);
        }
        super.finish();
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        DialogPassSave dialogPassSave = this.j2;
        if (dialogPassSave != null && i == 19) {
            if (i2 == -1 && intent != null) {
                Uri data = intent.getData();
                if (data == null) {
                    MainUtil.e8(dialogPassSave.b0, R.string.invalid_path);
                    return;
                }
                String a2 = MainUri.a(data);
                if (TextUtils.isEmpty(a2)) {
                    MainUtil.e8(dialogPassSave.b0, R.string.invalid_path);
                    return;
                } else {
                    dialogPassSave.E(a2);
                    MainUtil.z7(dialogPassSave.b0, data);
                    return;
                }
            }
            return;
        }
        if (i == 9 && i2 == -1 && intent != null) {
            Uri data2 = intent.getData();
            if (data2 == null) {
                MainUtil.e8(this, R.string.invalid_file);
                return;
            }
            String uri = data2.toString();
            if (TextUtils.isEmpty(uri)) {
                MainUtil.e8(this, R.string.invalid_file);
                return;
            }
            if (!"csv".equals(MainUtil.W0(MainUri.k(this.f1, uri)))) {
                MainUtil.e8(this, R.string.invalid_file);
                return;
            }
            MainUtil.z7(this.f1, data2);
            if (!S0()) {
                DialogPassLoad dialogPassLoad = this.i2;
                if (dialogPassLoad != null) {
                    dialogPassLoad.dismiss();
                    this.i2 = null;
                }
                DialogPassLoad dialogPassLoad2 = new DialogPassLoad(this, uri);
                this.i2 = dialogPassLoad2;
                dialogPassLoad2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingPassList.16
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i3 = SettingPassList.t2;
                        SettingPassList settingPassList = SettingPassList.this;
                        DialogPassLoad dialogPassLoad3 = settingPassList.i2;
                        if (dialogPassLoad3 != null) {
                            dialogPassLoad3.dismiss();
                            settingPassList.i2 = null;
                        }
                        MyCoverView myCoverView = settingPassList.c2;
                        if (myCoverView == null) {
                            return;
                        }
                        myCoverView.m(true);
                        settingPassList.P0(PrefSync.k, true);
                    }
                });
            }
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        boolean z = this.l2;
        boolean z2 = MainApp.K1;
        if (z != z2) {
            this.l2 = z2;
            if (this.L1 != null) {
                try {
                    if (z2) {
                        this.X1.setImageResource(R.drawable.outline_delete_dark_24);
                        this.Y1.setImageResource(R.drawable.outline_more_vert_dark_24);
                        this.L1.setBackgroundColor(-14606047);
                    } else {
                        this.X1.setImageResource(R.drawable.outline_delete_black_24);
                        this.Y1.setImageResource(R.drawable.outline_more_vert_black_24);
                        this.L1.setBackgroundColor(-1);
                    }
                    SettingPassAdapter settingPassAdapter = this.d2;
                    if (settingPassAdapter != null) {
                        settingPassAdapter.g();
                    }
                    MyButtonText myButtonText = this.b2;
                    if (myButtonText != null) {
                        if (MainApp.K1) {
                            myButtonText.setTextColor(-328966);
                            this.b2.u(-16777216, -14211289);
                        } else {
                            myButtonText.setTextColor(-16777216);
                            this.b2.u(-460552, 553648128);
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        MyButtonText myButtonText;
        super.onCreate(bundle);
        this.l2 = MainApp.K1;
        o0(null, 9);
        o0(null, 19);
        int i = R.string.password;
        int i2 = R.id.set_icon_frame;
        int i3 = R.id.set_cast_ctrl;
        MyMainRelative myMainRelative = new MyMainRelative(this);
        myMainRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        RelativeLayout relativeLayout = new RelativeLayout(this);
        myMainRelative.addView(relativeLayout, a.h(-1, -1, 2, i3));
        MyRecyclerView myRecyclerView = new MyRecyclerView(this);
        myRecyclerView.u0(true, true);
        myRecyclerView.setVerticalScrollBarEnabled(true);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.topMargin = MainApp.b1;
        relativeLayout.addView(myRecyclerView, layoutParams);
        MyScrollBar myScrollBar = new MyScrollBar(this);
        int i4 = MainApp.b1;
        int i5 = MainApp.i1;
        myScrollBar.O = i4;
        myScrollBar.P = i5;
        myScrollBar.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(MainApp.g1, -1);
        layoutParams2.addRule(21);
        relativeLayout.addView(myScrollBar, layoutParams2);
        ImageView imageView = new ImageView(this);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        imageView.setScaleType(scaleType);
        imageView.setImageResource(R.drawable.logo_gray);
        imageView.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams3.topMargin = MainApp.b1;
        if (PrefSync.k) {
            layoutParams3.bottomMargin = MainApp.i1;
        }
        relativeLayout.addView(imageView, layoutParams3);
        if (PrefSync.k) {
            myButtonText = new MyButtonText(this);
            myButtonText.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
            myButtonText.setGravity(17);
            myButtonText.setMinHeight(MainApp.f1);
            myButtonText.setTextSize(1, 14.0f);
            myButtonText.setText(R.string.import_normal);
            myButtonText.setBgNorFixed(true);
            myButtonText.setRoundRect(true);
            myButtonText.setRoundRadius(MainApp.F1);
            myButtonText.setVisibility(8);
            int G = (int) MainUtil.G(this, 20.0f);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams4.addRule(12);
            layoutParams4.setMarginStart(G);
            layoutParams4.setMarginEnd(G);
            layoutParams4.bottomMargin = G;
            relativeLayout.addView(myButtonText, layoutParams4);
        } else {
            myButtonText = null;
        }
        MyCoverView myCoverView = new MyCoverView(this);
        myCoverView.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams5.topMargin = MainApp.b1;
        relativeLayout.addView(myCoverView, layoutParams5);
        MyHeaderView myHeaderView = new MyHeaderView(this);
        relativeLayout.addView(myHeaderView, -1, MainApp.b1);
        MyButtonImage myButtonImage = new MyButtonImage(this);
        myButtonImage.setScaleType(scaleType);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.b1);
        layoutParams6.setMarginStart(MainApp.F1);
        myHeaderView.addView(myButtonImage, layoutParams6);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this, null);
        appCompatTextView.setGravity(16);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 18.0f);
        if (i > 0) {
            appCompatTextView.setText(i);
        }
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, MainApp.b1);
        layoutParams7.addRule(16, i2);
        layoutParams7.setMarginStart(MainApp.i1);
        myHeaderView.addView(appCompatTextView, layoutParams7);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setId(i2);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
        layoutParams8.addRule(21);
        layoutParams8.topMargin = MainApp.G1;
        myHeaderView.addView(linearLayout, layoutParams8);
        int G2 = (int) MainUtil.G(this, 14.0f);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setPadding(G2, G2, G2, G2);
        myButtonImage2.setScaleType(scaleType);
        myButtonImage2.setVisibility(8);
        int i6 = MainApp.g1;
        linearLayout.addView(myButtonImage2, i6, i6);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setPadding(G2, G2, G2, G2);
        myButtonImage3.setScaleType(scaleType);
        int i7 = MainApp.g1;
        linearLayout.addView(myButtonImage3, i7, i7);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setVisibility(4);
        linearLayout.addView(frameLayout, -2, MainApp.g1);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i3);
        frameLayout2.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams9.addRule(12);
        myMainRelative.addView(frameLayout2, layoutParams9);
        this.E1 = myMainRelative;
        this.F1 = myHeaderView;
        this.G1 = myButtonImage;
        this.H1 = appCompatTextView;
        this.X1 = myButtonImage2;
        this.Y1 = myButtonImage3;
        this.Z1 = myScrollBar;
        this.a2 = imageView;
        this.b2 = myButtonText;
        this.c2 = myCoverView;
        this.L1 = myRecyclerView;
        B0(myMainRelative, frameLayout, frameLayout2);
        this.E1.setWindow(getWindow());
        initMainScreenOn(this.E1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingPassList.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v15, types: [androidx.recyclerview.widget.RecyclerView$Adapter, com.mycompany.app.setting.SettingPassAdapter] */
            /* JADX WARN: Type inference failed for: r1v16, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.RecyclerView$LayoutManager, androidx.recyclerview.widget.LinearLayoutManager] */
            @Override // java.lang.Runnable
            public final void run() {
                MyButtonText myButtonText2;
                int i8 = SettingPassList.t2;
                final SettingPassList settingPassList = SettingPassList.this;
                if (settingPassList.E1 == null) {
                    return;
                }
                if (MainApp.K1) {
                    settingPassList.G1.setImageResource(R.drawable.outline_chevron_left_dark_24);
                    settingPassList.G1.setBgPreColor(-12632257);
                    settingPassList.H1.setTextColor(-328966);
                    settingPassList.X1.setImageResource(R.drawable.outline_delete_dark_24);
                    settingPassList.X1.setBgPreColor(-12632257);
                    settingPassList.Y1.setImageResource(R.drawable.outline_more_vert_dark_24);
                    settingPassList.Y1.setBgPreColor(-12632257);
                    settingPassList.L1.setBackgroundColor(-14606047);
                } else {
                    settingPassList.G1.setImageResource(R.drawable.outline_chevron_left_black_24);
                    settingPassList.G1.setBgPreColor(553648128);
                    settingPassList.H1.setTextColor(-16777216);
                    settingPassList.X1.setImageResource(R.drawable.outline_delete_black_24);
                    settingPassList.X1.setBgPreColor(553648128);
                    settingPassList.Y1.setImageResource(R.drawable.outline_more_vert_black_24);
                    settingPassList.Y1.setBgPreColor(553648128);
                    settingPassList.L1.setBackgroundColor(-1);
                }
                settingPassList.G1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingPassList.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SettingPassList.this.finish();
                    }
                });
                settingPassList.X1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingPassList.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SettingPassList.O0(SettingPassList.this, 0, null);
                    }
                });
                settingPassList.Y1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingPassList.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        final SettingPassList settingPassList2 = SettingPassList.this;
                        MyPopupMenu myPopupMenu = settingPassList2.f2;
                        if (myPopupMenu == null) {
                            if (myPopupMenu != null) {
                                settingPassList2.Z0 = null;
                                myPopupMenu.a();
                                settingPassList2.f2 = null;
                            }
                            if (view == null) {
                                return;
                            }
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.import_csv));
                            arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.export_csv));
                            MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingPassList2, settingPassList2.E1, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingPassList.10
                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                public final void a() {
                                    int i9 = SettingPassList.t2;
                                    SettingPassList settingPassList3 = SettingPassList.this;
                                    MyPopupMenu myPopupMenu3 = settingPassList3.f2;
                                    if (myPopupMenu3 != null) {
                                        settingPassList3.Z0 = null;
                                        myPopupMenu3.a();
                                        settingPassList3.f2 = null;
                                    }
                                }

                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                public final boolean b(View view2, int i9) {
                                    final SettingPassList settingPassList3 = SettingPassList.this;
                                    if (i9 == 1) {
                                        int i10 = SettingPassList.t2;
                                        if (!settingPassList3.S0()) {
                                            DialogPassSave dialogPassSave = settingPassList3.j2;
                                            if (dialogPassSave != null) {
                                                dialogPassSave.dismiss();
                                                settingPassList3.j2 = null;
                                            }
                                            SettingPassAdapter settingPassAdapter = settingPassList3.d2;
                                            if (settingPassAdapter != null && settingPassAdapter.w() != 0) {
                                                DialogPassSave dialogPassSave2 = new DialogPassSave(settingPassList3);
                                                settingPassList3.j2 = dialogPassSave2;
                                                dialogPassSave2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingPassList.17
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int i11 = SettingPassList.t2;
                                                        SettingPassList settingPassList4 = SettingPassList.this;
                                                        DialogPassSave dialogPassSave3 = settingPassList4.j2;
                                                        if (dialogPassSave3 != null) {
                                                            dialogPassSave3.dismiss();
                                                            settingPassList4.j2 = null;
                                                        }
                                                    }
                                                });
                                                return true;
                                            }
                                            MainUtil.e8(settingPassList3, R.string.no_password);
                                            return true;
                                        }
                                    } else {
                                        try {
                                            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension("csv");
                                            if (TextUtils.isEmpty(mimeTypeFromExtension)) {
                                                mimeTypeFromExtension = "*/*";
                                            }
                                            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                                            intent.addCategory("android.intent.category.OPENABLE");
                                            intent.setType(mimeTypeFromExtension);
                                            intent.addFlags(65);
                                            settingPassList3.o0(intent, 9);
                                        } catch (Exception unused) {
                                        }
                                    }
                                    return true;
                                }
                            });
                            settingPassList2.f2 = myPopupMenu2;
                            settingPassList2.Z0 = myPopupMenu2;
                        }
                    }
                });
                if (PrefSync.k && (myButtonText2 = settingPassList.b2) != null) {
                    if (MainApp.K1) {
                        myButtonText2.setTextColor(-328966);
                        settingPassList.b2.u(-16777216, -14211289);
                    } else {
                        myButtonText2.setTextColor(-16777216);
                        settingPassList.b2.u(-460552, 553648128);
                    }
                    settingPassList.b2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingPassList.5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i9 = SettingPassList.t2;
                            SettingPassList.this.P0(false, true);
                        }
                    });
                }
                settingPassList.Z1.setListener(new MyScrollBar.ScrollBarListener() { // from class: com.mycompany.app.setting.SettingPassList.6
                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final void c(int i9) {
                        SettingPassAdapter settingPassAdapter;
                        SettingPassList settingPassList2 = SettingPassList.this;
                        if (settingPassList2.L1 != null && (settingPassAdapter = settingPassList2.d2) != null && i9 >= 0 && i9 < settingPassAdapter.d()) {
                            ((LinearLayoutManager) settingPassList2.L1.getLayoutManager()).k1(i9, 0);
                        }
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final int d() {
                        MyRecyclerView myRecyclerView2 = SettingPassList.this.L1;
                        if (myRecyclerView2 == null) {
                            return 0;
                        }
                        return myRecyclerView2.computeVerticalScrollOffset();
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final void e() {
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final int f() {
                        MyRecyclerView myRecyclerView2 = SettingPassList.this.L1;
                        if (myRecyclerView2 == null) {
                            return 0;
                        }
                        return myRecyclerView2.computeVerticalScrollRange();
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final int g() {
                        MyRecyclerView myRecyclerView2 = SettingPassList.this.L1;
                        if (myRecyclerView2 == null) {
                            return 0;
                        }
                        return myRecyclerView2.computeVerticalScrollExtent();
                    }
                });
                Context context = settingPassList.f1;
                AnonymousClass7 anonymousClass7 = new AnonymousClass7();
                final ?? adapter = new RecyclerView.Adapter();
                adapter.e = anonymousClass7;
                adapter.f = new MainListLoader(context, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.setting.SettingPassAdapter.1
                    @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                    public final void a(MainItem.ChildItem childItem, View view) {
                    }

                    @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                    public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
                        if (childItem != null && view != null && SettingPassAdapter.v(SettingPassAdapter.this, view) == childItem.J) {
                            MyRoundImage myRoundImage = (MyRoundImage) view;
                            myRoundImage.r(childItem.g, true);
                            myRoundImage.setImageBitmap(bitmap);
                        }
                    }
                });
                settingPassList.d2 = adapter;
                ?? linearLayoutManager = new LinearLayoutManager(1);
                settingPassList.M1 = linearLayoutManager;
                settingPassList.L1.setLayoutManager(linearLayoutManager);
                settingPassList.L1.setAdapter(settingPassList.d2);
                settingPassList.L1.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.setting.SettingPassList.8
                    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                    public final void b(RecyclerView recyclerView, int i9, int i10) {
                        SettingPassList settingPassList2 = SettingPassList.this;
                        MyRecyclerView myRecyclerView2 = settingPassList2.L1;
                        if (myRecyclerView2 != null) {
                            if (myRecyclerView2.computeVerticalScrollOffset() > 0) {
                                settingPassList2.L1.w0();
                            } else {
                                settingPassList2.L1.r0();
                            }
                            Runnable runnable = settingPassList2.r2;
                            MyScrollBar myScrollBar2 = settingPassList2.Z1;
                            if (myScrollBar2 != null && settingPassList2.M1 != null && !settingPassList2.q2) {
                                settingPassList2.q2 = true;
                                myScrollBar2.removeCallbacks(runnable);
                                settingPassList2.Z1.post(runnable);
                            }
                        }
                    }
                });
                settingPassList.c2.m(true);
                settingPassList.P0(PrefSync.k, false);
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        MyButtonImage myButtonImage = this.X1;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.X1 = null;
        }
        MyButtonImage myButtonImage2 = this.Y1;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.Y1 = null;
        }
        MyScrollBar myScrollBar = this.Z1;
        if (myScrollBar != null) {
            myScrollBar.k();
            this.Z1 = null;
        }
        MyButtonText myButtonText = this.b2;
        if (myButtonText != null) {
            myButtonText.t();
            this.b2 = null;
        }
        MyCoverView myCoverView = this.c2;
        if (myCoverView != null) {
            myCoverView.i();
            this.c2 = null;
        }
        SettingPassAdapter settingPassAdapter = this.d2;
        if (settingPassAdapter != null) {
            settingPassAdapter.h = settingPassAdapter.d();
            MainListLoader mainListLoader = settingPassAdapter.f;
            if (mainListLoader != null) {
                mainListLoader.f();
                settingPassAdapter.f = null;
            }
            settingPassAdapter.d = null;
            settingPassAdapter.e = null;
            settingPassAdapter.g = null;
            this.d2 = null;
        }
        this.a2 = null;
        this.p2 = null;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            MyPopupMenu myPopupMenu = this.f2;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.f2 = null;
            }
            Q0();
            R0();
            DialogPassLoad dialogPassLoad = this.i2;
            if (dialogPassLoad != null) {
                dialogPassLoad.dismiss();
                this.i2 = null;
            }
            DialogPassSave dialogPassSave = this.j2;
            if (dialogPassSave != null) {
                dialogPassSave.dismiss();
                this.j2 = null;
            }
            LoadTask loadTask = this.e2;
            if (loadTask != null) {
                loadTask.f12839c = true;
            }
            this.e2 = null;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        MyScrollBar myScrollBar;
        super.onWindowFocusChanged(z);
        if (!z && (myScrollBar = this.Z1) != null) {
            myScrollBar.e();
        }
    }
}
