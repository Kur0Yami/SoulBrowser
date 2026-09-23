package com.mycompany.app.setting;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.mycompany.app.dialog.DialogGreeting;
import com.mycompany.app.dialog.DialogGuideAds;
import com.mycompany.app.dialog.DialogPayQuiz;
import com.mycompany.app.dialog.DialogWebView;
import com.mycompany.app.dialog.a;
import com.mycompany.app.help.PayHelper;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.web.WebNestView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingPay extends SettingActivity {
    public static final /* synthetic */ int m2 = 0;
    public String X1;
    public boolean Y1;
    public boolean Z1;
    public PayHelper a2;
    public boolean b2;
    public boolean c2;
    public PayItem d2;
    public PayItem e2;
    public PayItem f2;
    public MyPopupMenu g2;
    public DialogGuideAds h2;
    public DialogGreeting i2;
    public DialogPayQuiz j2;
    public int k2;
    public ProductDetails l2;

    /* loaded from: classes3.dex */
    public static class PayItem {

        /* renamed from: a, reason: collision with root package name */
        public ProductDetails f18080a;
        public String b;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.mycompany.app.setting.SettingPay$PayItem] */
    public static PayItem O0(HashMap hashMap, String str) {
        ProductDetails productDetails;
        if (!hashMap.isEmpty() && (productDetails = (ProductDetails) hashMap.get(str)) != null) {
            String str2 = productDetails.a().f2008a;
            if (TextUtils.isEmpty(str2)) {
                return null;
            }
            ?? obj = new Object();
            obj.f18080a = productDetails;
            obj.b = str2;
            return obj;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r2v7, types: [com.mycompany.app.setting.SettingListAdapter$SettingItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1, types: [com.mycompany.app.setting.SettingListAdapter$SettingItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v3, types: [com.mycompany.app.setting.SettingListAdapter$SettingItem, java.lang.Object] */
    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        int i;
        int i2;
        String string = getString(R.string.loading);
        String str = getString(R.string.remove_ads_info_1) + "\n" + getString(R.string.remove_ads_info_2);
        String str2 = getString(R.string.remove_ads_info_3) + "\n" + getString(R.string.remove_ads_info_4);
        String str3 = getString(R.string.donate_info_1) + "\n" + getString(R.string.donate_info_2);
        if (MainApp.K1) {
            i = R.drawable.outline_favorite_dark_20;
            i2 = R.drawable.outline_local_cafe_dark_24;
        } else {
            i = R.drawable.outline_favorite_black_20;
            i2 = R.drawable.outline_local_cafe_black_24;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.remove_ads, 0, string, 1, 0));
        arrayList.add(new SettingListAdapter.SettingItem(2, str, 0, 0, 0));
        ?? obj = new Object();
        obj.f17931a = 16;
        obj.b = 3;
        obj.d = str2;
        obj.u = 2;
        arrayList.add(obj);
        arrayList.add(new SettingListAdapter.SettingItem(4, false));
        int i3 = R.string.donation;
        ?? obj2 = new Object();
        obj2.f17931a = 21;
        obj2.b = 5;
        obj2.f17932c = i3;
        obj2.e = i;
        arrayList.add(obj2);
        int i4 = i2;
        arrayList.add(new SettingListAdapter.SettingItem(6, R.string.donate_1, i4, string, 1, 0));
        arrayList.add(new SettingListAdapter.SettingItem(7, R.string.donate_2, i4, string, 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(8, str3, 0, 0, 0));
        int i5 = R.drawable.dev_cat;
        ?? obj3 = new Object();
        obj3.f17931a = 12;
        obj3.b = 9;
        obj3.v = i5;
        obj3.u = 2;
        a.u(arrayList, obj3, 10, false);
        return arrayList;
    }

    public final void P0() {
        DialogPayQuiz dialogPayQuiz = this.j2;
        if (dialogPayQuiz != null) {
            dialogPayQuiz.dismiss();
            this.j2 = null;
        }
    }

    public final void Q0(PayItem payItem, boolean z) {
        if (this.h2 != null || this.i2 != null || this.j2 != null) {
            return;
        }
        P0();
        if (payItem == null) {
            if (this.b2) {
                MainUtil.e8(this, R.string.pay_fail);
                return;
            } else {
                MainUtil.e8(this, R.string.wait_retry);
                return;
            }
        }
        if (z && this.c2) {
            MainUtil.e8(this, R.string.already_paid);
            return;
        }
        DialogPayQuiz dialogPayQuiz = new DialogPayQuiz(this, payItem.f18080a, new DialogPayQuiz.DialogPayListener() { // from class: com.mycompany.app.setting.SettingPay.14
            @Override // com.mycompany.app.dialog.DialogPayQuiz.DialogPayListener
            public final void a(ProductDetails productDetails) {
                int i = SettingPay.m2;
                final SettingPay settingPay = SettingPay.this;
                settingPay.P0();
                if (settingPay.a2 == null) {
                    return;
                }
                settingPay.l2 = productDetails;
                settingPay.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingPay.16
                    /* JADX WARN: Type inference failed for: r1v5, types: [com.android.billingclient.api.BillingFlowParams$Builder, java.lang.Object] */
                    /* JADX WARN: Type inference failed for: r4v0, types: [com.android.billingclient.api.BillingFlowParams$ProductDetailsParams$Builder, java.lang.Object] */
                    /* JADX WARN: Type inference failed for: r4v1, types: [com.android.billingclient.api.BillingFlowParams$SubscriptionUpdateParams$Builder, java.lang.Object] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        SettingPay settingPay2 = SettingPay.this;
                        ProductDetails productDetails2 = settingPay2.l2;
                        settingPay2.l2 = null;
                        PayHelper payHelper = settingPay2.a2;
                        if (payHelper != null) {
                            BillingClient billingClient = payHelper.b;
                            if (billingClient != null && productDetails2 != null) {
                                try {
                                    if (billingClient.d()) {
                                        ArrayList arrayList = new ArrayList();
                                        ?? obj = new Object();
                                        obj.f1999a = productDetails2;
                                        if (productDetails2.a() != null) {
                                            productDetails2.a().getClass();
                                            String str = productDetails2.a().b;
                                            if (str != null) {
                                                obj.b = str;
                                            }
                                        }
                                        if (obj.f1999a != null) {
                                            arrayList.add(new BillingFlowParams.ProductDetailsParams(obj));
                                            ?? obj2 = new Object();
                                            ?? obj3 = new Object();
                                            obj3.f2000a = true;
                                            obj2.b = obj3;
                                            obj2.f1997a = new ArrayList(arrayList);
                                            BillingResult e = payHelper.b.e(settingPay2, obj2.a());
                                            if (e != null && e.f2001a == 0) {
                                                return;
                                            }
                                        } else {
                                            throw new NullPointerException("ProductDetails is required for constructing ProductDetailsParams.");
                                        }
                                    }
                                } catch (Exception unused) {
                                }
                            }
                            MyMainRelative myMainRelative = settingPay2.E1;
                            if (myMainRelative == null) {
                                return;
                            }
                            myMainRelative.post(new Runnable() { // from class: com.mycompany.app.setting.SettingPay.16.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainUtil.e8(SettingPay.this, R.string.pay_fail);
                                }
                            });
                        }
                    }
                });
            }
        });
        this.j2 = dialogPayQuiz;
        dialogPayQuiz.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingPay.15
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingPay.m2;
                SettingPay.this.P0();
            }
        });
    }

    @Override // android.app.Activity
    public final void finish() {
        if (this.Y1) {
            Intent intent = new Intent();
            intent.putExtra("EXTRA_FILTER", this.Z1);
            setResult(-1, intent);
        }
        super.finish();
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        if (i == 32 && i2 == -1) {
            this.Y1 = true;
            if (!this.Z1) {
                if (intent != null) {
                    this.Z1 = intent.getBooleanExtra("EXTRA_FILTER", true);
                } else {
                    this.Z1 = true;
                }
            }
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.X1 = getIntent().getStringExtra("EXTRA_PATH");
        o0(null, 32);
        F0(R.string.purchase, false, true);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingPay.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingPay.m2;
                final SettingPay settingPay = SettingPay.this;
                if (settingPay.O0 != null) {
                    settingPay.K0(false, new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingPay.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            final SettingPay settingPay2 = SettingPay.this;
                            MyPopupMenu myPopupMenu = settingPay2.g2;
                            if (myPopupMenu == null) {
                                if (myPopupMenu != null) {
                                    settingPay2.Z0 = null;
                                    myPopupMenu.a();
                                    settingPay2.g2 = null;
                                }
                                if (view == null) {
                                    return;
                                }
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.inapp_ads));
                                arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.greeting));
                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingPay2, settingPay2.E1, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingPay.10
                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final void a() {
                                        int i2 = SettingPay.m2;
                                        SettingPay settingPay3 = SettingPay.this;
                                        MyPopupMenu myPopupMenu3 = settingPay3.g2;
                                        if (myPopupMenu3 != null) {
                                            settingPay3.Z0 = null;
                                            myPopupMenu3.a();
                                            settingPay3.g2 = null;
                                        }
                                    }

                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final boolean b(View view2, int i2) {
                                        DialogGreeting dialogGreeting;
                                        final SettingPay settingPay3 = SettingPay.this;
                                        if (i2 == 0) {
                                            int i3 = SettingPay.m2;
                                            DialogGuideAds dialogGuideAds = settingPay3.h2;
                                            if (dialogGuideAds == null && settingPay3.i2 == null && settingPay3.j2 == null) {
                                                if (dialogGuideAds != null) {
                                                    dialogGuideAds.dismiss();
                                                    settingPay3.h2 = null;
                                                }
                                                DialogGuideAds dialogGuideAds2 = new DialogGuideAds(settingPay3);
                                                settingPay3.h2 = dialogGuideAds2;
                                                dialogGuideAds2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingPay.11
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int i4 = SettingPay.m2;
                                                        SettingPay settingPay4 = SettingPay.this;
                                                        DialogGuideAds dialogGuideAds3 = settingPay4.h2;
                                                        if (dialogGuideAds3 != null) {
                                                            dialogGuideAds3.dismiss();
                                                            settingPay4.h2 = null;
                                                        }
                                                    }
                                                });
                                                return true;
                                            }
                                            return true;
                                        }
                                        int i4 = SettingPay.m2;
                                        if (settingPay3.h2 == null && (dialogGreeting = settingPay3.i2) == null && settingPay3.j2 == null) {
                                            if (dialogGreeting != null) {
                                                dialogGreeting.dismiss();
                                                settingPay3.i2 = null;
                                            }
                                            DialogGreeting dialogGreeting2 = new DialogGreeting(settingPay3, false, new DialogWebView.DialogWebListener() { // from class: com.mycompany.app.setting.SettingPay.12
                                                @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                public final void a(int i5, String str, String str2) {
                                                    SettingPay settingPay4 = SettingPay.this;
                                                    Intent o4 = MainUtil.o4(settingPay4.f1);
                                                    o4.putExtra("EXTRA_PATH", str);
                                                    o4.addFlags(67108864);
                                                    settingPay4.startActivity(o4);
                                                }

                                                @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                public final void b() {
                                                }

                                                @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                public final void c(String str, String str2, String str3, long j) {
                                                }

                                                @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                public final void d(WebNestView webNestView, String str) {
                                                }

                                                @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                public final void e() {
                                                }

                                                @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                public final void f() {
                                                }
                                            });
                                            settingPay3.i2 = dialogGreeting2;
                                            dialogGreeting2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingPay.13
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    int i5 = SettingPay.m2;
                                                    SettingPay settingPay4 = SettingPay.this;
                                                    DialogGreeting dialogGreeting3 = settingPay4.i2;
                                                    if (dialogGreeting3 != null) {
                                                        dialogGreeting3.dismiss();
                                                        settingPay4.i2 = null;
                                                    }
                                                }
                                            });
                                            return true;
                                        }
                                        return true;
                                    }
                                });
                                settingPay2.g2 = myPopupMenu2;
                                settingPay2.Z0 = myPopupMenu2;
                            }
                        }
                    });
                    Handler handler2 = settingPay.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingPay.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            Intent intent;
                            int i2 = SettingPay.m2;
                            final SettingPay settingPay2 = SettingPay.this;
                            if (settingPay2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingPay2.D0(), false, settingPay2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingPay.4
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                    int i5 = SettingPay.m2;
                                    SettingPay settingPay3 = SettingPay.this;
                                    settingPay3.getClass();
                                    if (i3 != 1) {
                                        if (i3 != 3) {
                                            if (i3 != 6) {
                                                if (i3 != 7) {
                                                    return;
                                                }
                                                settingPay3.Q0(settingPay3.f2, false);
                                                return;
                                            }
                                            settingPay3.Q0(settingPay3.e2, false);
                                            return;
                                        }
                                        Intent intent2 = new Intent(settingPay3.f1, (Class<?>) SettingClean.class);
                                        intent2.putExtra("EXTRA_PATH", settingPay3.X1);
                                        settingPay3.o0(intent2, 32);
                                        return;
                                    }
                                    settingPay3.Q0(settingPay3.d2, true);
                                }
                            });
                            settingPay2.N1 = settingListAdapter;
                            settingListAdapter.d = settingPay2;
                            settingPay2.L1.setAdapter(settingListAdapter);
                            if (settingPay2.O0 != null && settingPay2.a2 == null) {
                                settingPay2.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingPay.5
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        SettingPay settingPay3 = SettingPay.this;
                                        if (settingPay3.O0 == null || settingPay3.a2 != null) {
                                            return;
                                        }
                                        settingPay3.a2 = new PayHelper(settingPay3.getApplicationContext(), true, new PayHelper.PayListener() { // from class: com.mycompany.app.setting.SettingPay.5.1
                                            @Override // com.mycompany.app.help.PayHelper.PayListener
                                            public final void a() {
                                                PayHelper payHelper;
                                                SettingPay settingPay4 = SettingPay.this;
                                                Handler handler3 = settingPay4.O0;
                                                if (handler3 != null && (payHelper = settingPay4.a2) != null) {
                                                    payHelper.c(handler3);
                                                }
                                            }

                                            @Override // com.mycompany.app.help.PayHelper.PayListener
                                            public final boolean b(int i3) {
                                                MyRecyclerView myRecyclerView;
                                                final SettingPay settingPay4 = SettingPay.this;
                                                boolean z = false;
                                                settingPay4.b2 = false;
                                                if (i3 == 2) {
                                                    z = true;
                                                }
                                                settingPay4.c2 = z;
                                                if (settingPay4.d2 == null || (myRecyclerView = settingPay4.L1) == null) {
                                                    return true;
                                                }
                                                myRecyclerView.post(new Runnable() { // from class: com.mycompany.app.setting.SettingPay.9
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        SettingPay settingPay5 = SettingPay.this;
                                                        PayItem payItem = settingPay5.d2;
                                                        if (payItem != null) {
                                                            String str = payItem.b;
                                                            if (TextUtils.isEmpty(str) || settingPay5.N1 == null) {
                                                                return;
                                                            }
                                                            if (settingPay5.c2) {
                                                                str = settingPay5.getString(R.string.paid);
                                                            }
                                                            settingPay5.N1.G(1, str);
                                                        }
                                                    }
                                                });
                                                return true;
                                            }

                                            @Override // com.mycompany.app.help.PayHelper.PayListener
                                            public final void c(HashMap hashMap) {
                                                final SettingPay settingPay4 = SettingPay.this;
                                                settingPay4.b2 = false;
                                                if (settingPay4.L1 != null) {
                                                    settingPay4.d2 = null;
                                                    settingPay4.e2 = null;
                                                    settingPay4.f2 = null;
                                                    try {
                                                        if (!hashMap.isEmpty()) {
                                                            settingPay4.d2 = SettingPay.O0(hashMap, "soul_remove_ads");
                                                            settingPay4.e2 = SettingPay.O0(hashMap, "soul_donation_1");
                                                            settingPay4.f2 = SettingPay.O0(hashMap, "soul_donation_2");
                                                        }
                                                        MyRecyclerView myRecyclerView = settingPay4.L1;
                                                        if (myRecyclerView != null) {
                                                            myRecyclerView.post(new Runnable() { // from class: com.mycompany.app.setting.SettingPay.7
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    String str;
                                                                    String str2;
                                                                    int i3 = SettingPay.m2;
                                                                    SettingPay settingPay5 = SettingPay.this;
                                                                    if (settingPay5.N1 != null) {
                                                                        PayItem payItem = settingPay5.d2;
                                                                        String str3 = null;
                                                                        if (payItem != null) {
                                                                            str = payItem.b;
                                                                        } else {
                                                                            str = null;
                                                                        }
                                                                        PayItem payItem2 = settingPay5.e2;
                                                                        if (payItem2 != null) {
                                                                            str2 = payItem2.b;
                                                                        } else {
                                                                            str2 = null;
                                                                        }
                                                                        PayItem payItem3 = settingPay5.f2;
                                                                        if (payItem3 != null) {
                                                                            str3 = payItem3.b;
                                                                        }
                                                                        if (!TextUtils.isEmpty(str) && settingPay5.c2) {
                                                                            str = settingPay5.getString(R.string.paid);
                                                                        }
                                                                        if (!TextUtils.isEmpty(str)) {
                                                                            settingPay5.N1.G(1, str);
                                                                        }
                                                                        if (!TextUtils.isEmpty(str2)) {
                                                                            settingPay5.N1.G(6, str2);
                                                                        }
                                                                        if (!TextUtils.isEmpty(str3)) {
                                                                            settingPay5.N1.G(7, str3);
                                                                        }
                                                                    }
                                                                    int i4 = settingPay5.k2;
                                                                    if (i4 >= 0) {
                                                                        settingPay5.N0(i4);
                                                                        settingPay5.k2 = -1;
                                                                    }
                                                                }
                                                            });
                                                        }
                                                    } catch (Exception unused) {
                                                    }
                                                }
                                            }

                                            @Override // com.mycompany.app.help.PayHelper.PayListener
                                            public final void d() {
                                                MyRecyclerView myRecyclerView;
                                                final SettingPay settingPay4 = SettingPay.this;
                                                if (settingPay4.d2 == null) {
                                                    settingPay4.b2 = true;
                                                    if (settingPay4.N1 == null || (myRecyclerView = settingPay4.L1) == null) {
                                                        return;
                                                    }
                                                    myRecyclerView.post(new Runnable() { // from class: com.mycompany.app.setting.SettingPay.8
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            SettingPay settingPay5 = SettingPay.this;
                                                            if (!settingPay5.b2 || settingPay5.N1 == null) {
                                                                return;
                                                            }
                                                            String string = settingPay5.getString(R.string.fail);
                                                            settingPay5.N1.G(1, string);
                                                            settingPay5.N1.G(6, string);
                                                            settingPay5.N1.G(7, string);
                                                        }
                                                    });
                                                }
                                            }
                                        });
                                    }
                                });
                            }
                            int i3 = -1;
                            if (settingPay2.L1 != null && (intent = settingPay2.getIntent()) != null && intent.getBooleanExtra("EXTRA_NOTI", false)) {
                                i3 = intent.getIntExtra("EXTRA_INDEX", -1);
                            }
                            settingPay2.k2 = i3;
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        this.X1 = null;
        this.d2 = null;
        this.e2 = null;
        this.f2 = null;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            if (this.a2 != null) {
                m0(new Runnable() { // from class: com.mycompany.app.setting.SettingPay.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        SettingPay settingPay = SettingPay.this;
                        PayHelper payHelper = settingPay.a2;
                        if (payHelper != null) {
                            BillingClient billingClient = payHelper.b;
                            if (billingClient != null) {
                                try {
                                    if (billingClient.d()) {
                                        payHelper.b.c();
                                    }
                                } catch (Exception unused) {
                                }
                                payHelper.b = null;
                                payHelper.f15721c = null;
                                payHelper.f = null;
                            }
                            settingPay.a2 = null;
                        }
                    }
                });
            }
            MyPopupMenu myPopupMenu = this.g2;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.g2 = null;
            }
            DialogGuideAds dialogGuideAds = this.h2;
            if (dialogGuideAds != null) {
                dialogGuideAds.dismiss();
                this.h2 = null;
            }
            DialogGreeting dialogGreeting = this.i2;
            if (dialogGreeting != null) {
                dialogGreeting.dismiss();
                this.i2 = null;
            }
            P0();
            return;
        }
        DialogGreeting dialogGreeting2 = this.i2;
        if (dialogGreeting2 != null) {
            WebNestView webNestView = dialogGreeting2.i0;
            if (webNestView != null) {
                webNestView.C();
            }
            DialogWebView dialogWebView = dialogGreeting2.z0;
            if (dialogWebView != null) {
                dialogWebView.V();
            }
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        DialogGreeting dialogGreeting = this.i2;
        if (dialogGreeting != null) {
            WebNestView webNestView = dialogGreeting.i0;
            if (webNestView != null) {
                webNestView.onResume();
            }
            DialogWebView dialogWebView = dialogGreeting.z0;
            if (dialogWebView != null) {
                dialogWebView.X();
            }
        }
    }
}
