package com.mycompany.app.help;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import com.android.billingclient.api.AcknowledgePurchaseResponseListener;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ConsumeResponseListener;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryPurchasesParams;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookPay;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.pref.PrefPdf;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class PayHelper implements BillingClientStateListener, PurchasesUpdatedListener {
    public static final String[] i = {"soul_remove_ads", "soul_donation_1", "soul_donation_2"};

    /* renamed from: a, reason: collision with root package name */
    public final Context f15720a;
    public BillingClient b;

    /* renamed from: c, reason: collision with root package name */
    public PayListener f15721c;
    public int d = 0;
    public int e = 0;
    public ExecutorService f;
    public long g;
    public boolean h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.help.PayHelper$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass6 implements AcknowledgePurchaseResponseListener {
        @Override // com.android.billingclient.api.AcknowledgePurchaseResponseListener
        public final void c(BillingResult billingResult) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.help.PayHelper$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass7 implements ConsumeResponseListener {
        @Override // com.android.billingclient.api.ConsumeResponseListener
        public final void f(BillingResult billingResult, String str) {
        }
    }

    /* loaded from: classes3.dex */
    public interface PayListener {
        void a();

        boolean b(int i);

        void c(HashMap hashMap);

        void d();
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [com.mycompany.app.db.book.DbBookPay$DbPayItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v8, types: [com.android.billingclient.api.PendingPurchasesParams, java.lang.Object] */
    public PayHelper(Context context, boolean z, PayListener payListener) {
        Cursor cursor;
        boolean z2;
        this.f15720a = context;
        this.f15721c = payListener;
        boolean z3 = false;
        DbBookPay dbBookPay = DbBookPay.f12941c;
        boolean z4 = true;
        DbBookPay.DbPayItem dbPayItem = null;
        if (context != null) {
            try {
                cursor = DbUtil.g(DbBookPay.a(context).getWritableDatabase(), "DbBookPay_table", null, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            int columnIndex = cursor.getColumnIndex("_time");
                            int columnIndex2 = cursor.getColumnIndex("_paid");
                            ?? obj = new Object();
                            try {
                                obj.f12942a = cursor.getLong(columnIndex);
                                if (cursor.getInt(columnIndex2) == 1) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                obj.b = z2;
                            } catch (Exception unused) {
                            }
                            dbPayItem = obj;
                        }
                    } catch (Exception unused2) {
                    }
                }
            } catch (Exception unused3) {
                cursor = null;
            }
            if (cursor != null) {
                cursor.close();
            }
        }
        if (dbPayItem != null) {
            long j = dbPayItem.f12942a;
            this.g = j;
            this.h = dbPayItem.b;
            if (f(j, PrefPdf.O)) {
                PrefPdf.O = this.g;
                z3 = true;
            }
            boolean z5 = this.h;
            boolean z6 = PrefPdf.P;
            if (z5 && !z6) {
                PrefPdf.P = z5;
            } else {
                z4 = z3;
            }
            if (z4) {
                h(new Runnable() { // from class: com.mycompany.app.help.PayHelper.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        PrefPdf r = PrefPdf.r(PayHelper.this.f15720a, false);
                        r.o(PrefPdf.O, "mPayTime");
                        r.l("mPayConfirm", PrefPdf.P);
                        r.c();
                    }
                });
            }
        }
        try {
            ?? obj2 = new Object();
            BillingClient.Builder builder = new BillingClient.Builder(this.f15720a);
            builder.f1991a = obj2;
            builder.f1992c = this;
            this.b = builder.a();
        } catch (Exception unused4) {
        }
        BillingClient billingClient = this.b;
        if (billingClient != null) {
            try {
                if (!billingClient.d()) {
                    this.b.h(this);
                }
            } catch (Exception unused5) {
            }
        }
        g(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0101 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ce A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r12v4, types: [com.android.billingclient.api.AcknowledgePurchaseResponseListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v5, types: [com.android.billingclient.api.ConsumeResponseListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.lang.Object, com.android.billingclient.api.QueryProductDetailsParams$Builder] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object, com.android.billingclient.api.QueryProductDetailsParams$Product$Builder] */
    /* JADX WARN: Type inference failed for: r8v2, types: [com.android.billingclient.api.AcknowledgePurchaseParams, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.android.billingclient.api.ConsumeParams, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.mycompany.app.help.PayHelper r18, java.util.List r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 473
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.help.PayHelper.a(com.mycompany.app.help.PayHelper, java.util.List, boolean):void");
    }

    public static boolean f(long j, long j2) {
        if (j > 0 && j != j2) {
            if (j2 <= 0 || j < j2) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.android.billingclient.api.PurchasesUpdatedListener
    public final void b(BillingResult billingResult, final List list) {
        PayListener payListener;
        if (billingResult != null) {
            int i2 = billingResult.f2001a;
            if (i2 == 0) {
                h(new Runnable() { // from class: com.mycompany.app.help.PayHelper.9
                    @Override // java.lang.Runnable
                    public final void run() {
                        PayHelper.a(PayHelper.this, list, false);
                    }
                });
                return;
            }
            if (i2 == 7) {
                h(new Runnable() { // from class: com.mycompany.app.help.PayHelper.10
                    @Override // java.lang.Runnable
                    public final void run() {
                        PayHelper.this.g(false);
                    }
                });
            } else if (i2 == -1 && (payListener = this.f15721c) != null) {
                payListener.a();
            }
        }
    }

    public final void c(Handler handler) {
        if (handler != null) {
            int i2 = this.e + 1;
            this.e = i2;
            if (i2 > 10) {
                PayListener payListener = this.f15721c;
                if (payListener != null) {
                    payListener.d();
                    return;
                }
                return;
            }
            handler.postDelayed(new Runnable() { // from class: com.mycompany.app.help.PayHelper.1
                @Override // java.lang.Runnable
                public final void run() {
                    PayHelper.this.h(new Runnable() { // from class: com.mycompany.app.help.PayHelper.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            PayHelper payHelper = PayHelper.this;
                            BillingClient billingClient = payHelper.b;
                            if (billingClient != null) {
                                try {
                                    if (!billingClient.d()) {
                                        payHelper.b.h(payHelper);
                                    }
                                } catch (Exception unused) {
                                }
                            }
                        }
                    });
                }
            }, 5000L);
        }
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void d(BillingResult billingResult) {
        if (billingResult != null && billingResult.f2001a == 0) {
            h(new Runnable() { // from class: com.mycompany.app.help.PayHelper.8
                @Override // java.lang.Runnable
                public final void run() {
                    PayHelper.this.g(true);
                }
            });
        }
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void e() {
        PayListener payListener = this.f15721c;
        if (payListener != null) {
            payListener.a();
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.android.billingclient.api.QueryPurchasesParams$Builder] */
    public final void g(final boolean z) {
        BillingClient billingClient = this.b;
        if (billingClient != null && billingClient.d()) {
            try {
                ?? obj = new Object();
                obj.f2019a = "inapp";
                this.b.g(new QueryPurchasesParams(obj), new PurchasesResponseListener() { // from class: com.mycompany.app.help.PayHelper.2
                    @Override // com.android.billingclient.api.PurchasesResponseListener
                    public final void a(BillingResult billingResult, final List list) {
                        PayHelper.this.h(new Runnable() { // from class: com.mycompany.app.help.PayHelper.2.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                PayHelper.a(PayHelper.this, list, z);
                            }
                        });
                    }
                });
            } catch (Exception unused) {
            }
        }
    }

    public final void h(Runnable runnable) {
        ExecutorService executorService = this.f;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(this.f15720a);
            if (executorService == null) {
                return;
            } else {
                this.f = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }

    public final void i() {
        boolean z;
        boolean z2 = true;
        if (f(PrefPdf.O, this.g)) {
            this.g = PrefPdf.O;
            z = true;
        } else {
            z = false;
        }
        boolean z3 = PrefPdf.P;
        boolean z4 = this.h;
        if (z3 && !z4) {
            this.h = z3;
        } else {
            z2 = z;
        }
        if (!z2) {
            return;
        }
        h(new Runnable() { // from class: com.mycompany.app.help.PayHelper.4
            @Override // java.lang.Runnable
            public final void run() {
                PayHelper payHelper = PayHelper.this;
                Context context = payHelper.f15720a;
                long j = payHelper.g;
                boolean z5 = payHelper.h;
                if (context == null) {
                    DbBookPay dbBookPay = DbBookPay.f12941c;
                    return;
                }
                SQLiteDatabase writableDatabase = DbBookPay.a(context).getWritableDatabase();
                int d = DbUtil.d(writableDatabase, "DbBookPay_table", null, null, null);
                if (d == 0) {
                    return;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("_time", Long.valueOf(j));
                contentValues.put("_paid", Integer.valueOf(z5 ? 1 : 0));
                if (d == 1) {
                    DbUtil.h(writableDatabase, "DbBookPay_table", contentValues, null, null);
                } else {
                    DbUtil.e(writableDatabase, "DbBookPay_table", contentValues);
                }
            }
        });
    }
}
