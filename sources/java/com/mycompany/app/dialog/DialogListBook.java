package com.mycompany.app.dialog;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.Window;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListAdapter;
import com.mycompany.app.main.MainListView;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogNormal;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyPopupMenu;
import java.util.ArrayList;
import java.util.Locale;

/* loaded from: classes3.dex */
public class DialogListBook extends MyDialogNormal {
    public static final /* synthetic */ int O = 0;
    public ListBookListener A;
    public ListDcListener B;
    public MyMainRelative C;
    public MainListView D;
    public MyPopupMenu E;
    public ArrayList F;
    public ArrayList G;
    public MainListView.ListViewConfig H;
    public String I;
    public MainListView.ListViewHolder J;
    public String K;
    public String L;
    public int M;
    public long N;
    public MainActivity w;
    public Context x;
    public final int y;
    public String z;

    /* loaded from: classes3.dex */
    public interface ListBookListener {
        void a(int i, MainItem.ChildItem childItem, int i2);

        void b();
    }

    /* loaded from: classes3.dex */
    public interface ListDcListener {
        void a(int i, MainItem.ChildItem childItem);

        void b(ArrayList arrayList, ArrayList arrayList2);

        String c(String str, String str2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DialogListBook(com.mycompany.app.main.MainActivity r2, com.mycompany.app.main.MainListView.ListViewConfig r3, java.lang.String r4, com.mycompany.app.dialog.DialogListBook.ListBookListener r5) {
        /*
            r1 = this;
            boolean r0 = com.mycompany.app.main.MainApp.K1
            if (r0 == 0) goto L7
            int r0 = com.mycompany.app.soulbrowser.R.style.DialogFullBlack
            goto L9
        L7:
            int r0 = com.mycompany.app.soulbrowser.R.style.DialogFullTheme
        L9:
            r1.<init>(r2, r0)
            r1.j()
            r1.w = r2
            android.content.Context r2 = r1.getContext()
            r1.x = r2
            int r2 = r3.f16734a
            r1.y = r2
            java.lang.String r2 = com.mycompany.app.main.MainUtil.S6(r4)
            r1.z = r2
            r1.A = r5
            r1.H = r3
            r1.I = r4
            android.os.Handler r2 = r1.i
            if (r2 != 0) goto L2c
            return
        L2c:
            com.mycompany.app.dialog.DialogListBook$1 r3 = new com.mycompany.app.dialog.DialogListBook$1
            r3.<init>()
            r2.post(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogListBook.<init>(com.mycompany.app.main.MainActivity, com.mycompany.app.main.MainListView$ListViewConfig, java.lang.String, com.mycompany.app.dialog.DialogListBook$ListBookListener):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0132  */
    /* JADX WARN: Type inference failed for: r0v47, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void o(com.mycompany.app.dialog.DialogListBook r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogListBook.o(com.mycompany.app.dialog.DialogListBook, boolean):void");
    }

    @Override // com.mycompany.app.view.MyDialogNormal, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18667c = false;
        if (this.x == null) {
            return;
        }
        MyPopupMenu myPopupMenu = this.E;
        if (myPopupMenu != null) {
            this.u = null;
            myPopupMenu.a();
            this.E = null;
        }
        ArrayList arrayList = this.F;
        ArrayList arrayList2 = this.G;
        this.F = null;
        this.G = null;
        if (this.B != null) {
            if ((arrayList != null && !arrayList.isEmpty()) || (arrayList2 != null && !arrayList2.isEmpty())) {
                this.B.b(arrayList, arrayList2);
            }
            this.B = null;
        }
        MainActivity mainActivity = this.w;
        if (mainActivity != null) {
            mainActivity.n0(null, false);
            this.w = null;
        }
        this.x = null;
        this.A = null;
        MainListView mainListView = this.D;
        if (mainListView != null) {
            mainListView.Q(true);
            this.D.O();
            this.D = null;
        }
        this.z = null;
        this.C = null;
        super.dismiss();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        MainListView mainListView;
        if (!this.f18667c || (mainListView = this.D) == null) {
            return false;
        }
        mainListView.q(motionEvent);
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.mycompany.app.view.MyDialogNormal
    public final void l() {
        MainListView mainListView = this.D;
        if (mainListView != null && mainListView.V()) {
            return;
        }
        dismiss();
    }

    @Override // com.mycompany.app.view.MyDialogNormal, android.app.Dialog
    public final void onBackPressed() {
        if (e()) {
            return;
        }
        l();
    }

    public final boolean p(int i, int i2, Intent intent) {
        int lastIndexOf;
        boolean z = false;
        if (i != 9) {
            return false;
        }
        if (i2 == -1 && intent != null) {
            Uri data = intent.getData();
            if (data == null) {
                MainUtil.e8(this.x, R.string.invalid_file);
                return true;
            }
            String uri = data.toString();
            if (TextUtils.isEmpty(uri)) {
                MainUtil.e8(this.x, R.string.invalid_file);
                return true;
            }
            MainUtil.z7(this.x, data);
            String k = MainUri.k(this.x, uri);
            if (this.D != null) {
                int i3 = this.y;
                if (i3 != 27) {
                    if (!TextUtils.isEmpty(k) && (lastIndexOf = k.lastIndexOf(46)) != -1) {
                        z = Compress.J(k.substring(lastIndexOf + 1).toLowerCase(Locale.US));
                    }
                    if (!z) {
                        MainUtil.e8(this.x, R.string.invalid_file);
                        return true;
                    }
                }
                if (!MainUri.r(this.x, uri)) {
                    MainUtil.e8(this.x, R.string.invalid_file);
                    return true;
                }
                if (i3 == 27) {
                    this.D.w0(null, null, uri);
                    return true;
                }
                MainListView mainListView = this.D;
                if (mainListView != null) {
                    mainListView.o0(0L, true);
                    this.K = uri;
                    this.L = k;
                    m(new Runnable() { // from class: com.mycompany.app.dialog.DialogListBook.10
                        /* JADX WARN: Removed duplicated region for block: B:27:0x0058  */
                        @Override // java.lang.Runnable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final void run() {
                            /*
                                r15 = this;
                                com.mycompany.app.dialog.DialogListBook r0 = com.mycompany.app.dialog.DialogListBook.this
                                java.lang.String r1 = r0.K
                                java.lang.String r2 = r0.L
                                r3 = 0
                                r0.K = r3
                                r0.L = r3
                                r4 = 0
                                r0.M = r4
                                r5 = 0
                                r0.N = r5
                                android.content.Context r7 = r0.x
                                if (r7 == 0) goto Lba
                                boolean r8 = android.text.TextUtils.isEmpty(r1)
                                if (r8 == 0) goto L1e
                                goto Lba
                            L1e:
                                com.mycompany.app.db.book.DbBookFilter r8 = com.mycompany.app.db.book.DbBookFilter.f12931c
                                boolean r8 = android.text.TextUtils.isEmpty(r1)
                                if (r8 == 0) goto L28
                                r10 = r5
                                goto L5b
                            L28:
                                java.lang.String r8 = "_id"
                                java.lang.String[] r11 = new java.lang.String[]{r8}
                                java.lang.String[] r13 = new java.lang.String[]{r1}
                                com.mycompany.app.db.book.DbBookFilter r9 = com.mycompany.app.db.book.DbBookFilter.f(r7)     // Catch: java.lang.Exception -> L54
                                android.database.sqlite.SQLiteDatabase r9 = r9.getWritableDatabase()     // Catch: java.lang.Exception -> L54
                                java.lang.String r10 = "DbBookFilter_table"
                                java.lang.String r12 = "_path=?"
                                r14 = 0
                                android.database.Cursor r9 = com.mycompany.app.db.DbUtil.g(r9, r10, r11, r12, r13, r14)     // Catch: java.lang.Exception -> L54
                                if (r9 == 0) goto L55
                                boolean r10 = r9.moveToFirst()     // Catch: java.lang.Exception -> L55
                                if (r10 == 0) goto L55
                                int r8 = r9.getColumnIndex(r8)     // Catch: java.lang.Exception -> L55
                                long r10 = r9.getLong(r8)     // Catch: java.lang.Exception -> L55
                                goto L56
                            L54:
                                r9 = r3
                            L55:
                                r10 = r5
                            L56:
                                if (r9 == 0) goto L5b
                                r9.close()
                            L5b:
                                int r8 = (r10 > r5 ? 1 : (r10 == r5 ? 0 : -1))
                                if (r8 > 0) goto L71
                                com.mycompany.app.main.MainItem$ChildItem r1 = com.mycompany.app.db.book.DbBookFilter.i(r7, r1, r2)
                                com.mycompany.app.data.book.DataBookFilter r2 = com.mycompany.app.data.book.DataBookFilter.k(r7)
                                r2.j(r1)
                                r0.M = r4
                                long r1 = r1.y
                                r0.N = r1
                                goto Lba
                            L71:
                                com.mycompany.app.data.book.DataBookFilter r2 = com.mycompany.app.data.book.DataBookFilter.k(r7)
                                com.mycompany.app.main.MainItem$ChildItem r2 = r2.e(r10)
                                if (r2 == 0) goto Lb4
                                long r8 = r2.B
                                int r4 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
                                if (r4 <= 0) goto L82
                                goto Lb4
                            L82:
                                long r4 = com.mycompany.app.main.MainUtil.p1(r7, r1)
                                r2.B = r4
                                r8 = -1234(0xfffffffffffffb2e, double:NaN)
                                int r1 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
                                if (r1 != 0) goto L9b
                                int r1 = com.mycompany.app.soulbrowser.R.string.permission_removed
                                java.lang.String r1 = r7.getString(r1)
                                r2.F = r1
                                r2.G = r3
                                int r1 = com.mycompany.app.soulbrowser.R.string.permission_removed
                                goto Laf
                            L9b:
                                long r4 = r2.A
                                java.lang.String r1 = "yyyy.MM.dd"
                                java.lang.String r1 = com.mycompany.app.main.MainUtil.y1(r4, r3, r1)
                                r2.F = r1
                                long r3 = r2.B
                                java.lang.String r1 = com.mycompany.app.main.MainUtil.h1(r3)
                                r2.G = r1
                                int r1 = com.mycompany.app.soulbrowser.R.string.permission_granted
                            Laf:
                                r0.M = r1
                                r0.N = r10
                                goto Lba
                            Lb4:
                                int r1 = com.mycompany.app.soulbrowser.R.string.already_added
                                r0.M = r1
                                r0.N = r10
                            Lba:
                                android.os.Handler r0 = r0.i
                                if (r0 != 0) goto Lbf
                                return
                            Lbf:
                                com.mycompany.app.dialog.DialogListBook$10$1 r1 = new com.mycompany.app.dialog.DialogListBook$10$1
                                r1.<init>()
                                r0.post(r1)
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogListBook.AnonymousClass10.run():void");
                        }
                    });
                }
            }
        }
        return true;
    }

    public final void q(Configuration configuration) {
        MyMainRelative myMainRelative;
        int i;
        MainListView mainListView = this.D;
        if (mainListView == null) {
            return;
        }
        if (mainListView.b0(configuration) && (myMainRelative = this.C) != null) {
            Window window = getWindow();
            if (MainApp.K1) {
                i = -16777216;
            } else {
                i = -460552;
            }
            myMainRelative.b(window, i);
        }
        f();
    }

    public final void r(boolean z) {
        MainListView mainListView = this.D;
        if (mainListView != null) {
            mainListView.Q(z);
        }
    }

    public final void s(boolean z) {
        MainListView mainListView = this.D;
        if (mainListView != null) {
            mainListView.R(z, false, false);
        }
    }

    public final void t(boolean z) {
        MainListView mainListView = this.D;
        if (mainListView != null) {
            mainListView.o0(0L, z);
        }
    }

    public final void u() {
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogListBook.8
            @Override // java.lang.Runnable
            public final void run() {
                MainListAdapter mainListAdapter;
                MainListView mainListView = DialogListBook.this.D;
                if (mainListView != null && (mainListAdapter = mainListView.h0) != null) {
                    mainListAdapter.notifyDataSetChanged();
                    if (mainListView.d == 32) {
                        mainListView.m();
                    }
                }
            }
        });
    }
}
