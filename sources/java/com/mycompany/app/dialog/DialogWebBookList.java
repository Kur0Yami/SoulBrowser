package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.webkit.MimeTypeMap;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookWeb;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogWebBookEdit;
import com.mycompany.app.dialog.DialogWebBookMove;
import com.mycompany.app.dialog.DialogWebBookSave;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListAdapter2;
import com.mycompany.app.main.MainListView;
import com.mycompany.app.main.MainListView2;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyDialogNormal;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRoundImage;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogWebBookList extends MyDialogNormal {
    public static int V;
    public MyMainRelative A;
    public MainListView2 B;
    public MyButtonText C;
    public MyLineText D;
    public AppCompatTextView E;
    public final String F;
    public String G;
    public final int H;
    public final boolean I;
    public ArrayList J;
    public MyPopupMenu K;
    public DialogWebBookEdit L;
    public DialogWebBookDir M;
    public DialogWebBookLoad N;
    public DialogWebBookSave O;
    public boolean P;
    public int Q;
    public MyFadeFrame R;
    public final int S;
    public final int T;
    public MainListView.ListViewHolder U;
    public MainActivity w;
    public Context x;
    public BookListListener y;
    public BookInfoListener z;

    /* renamed from: com.mycompany.app.dialog.DialogWebBookList$19, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass19 extends SimpleImageLoadingListener {
        public AnonymousClass19() {
        }

        @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
        public final void c(MainItem.ViewItem viewItem, View view, final Bitmap bitmap) {
            if (viewItem != null && !TextUtils.isEmpty(viewItem.v) && MainUtil.f6(bitmap)) {
                final String str = viewItem.v;
                DialogWebBookList.this.m(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookList.19.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogWebBookList dialogWebBookList = DialogWebBookList.this;
                        DbBookWeb.o(dialogWebBookList.x, bitmap, str);
                        Handler handler = dialogWebBookList.i;
                        if (handler == null) {
                            return;
                        }
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookList.19.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainListAdapter2 mainListAdapter2;
                                MainListView2 mainListView2 = DialogWebBookList.this.B;
                                if (mainListView2 != null && (mainListAdapter2 = mainListView2.T) != null) {
                                    mainListAdapter2.g();
                                }
                            }
                        });
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogWebBookList$20, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass20 implements DialogWebBookMove.BookMoveListener {
        public AnonymousClass20() {
        }

        @Override // com.mycompany.app.dialog.DialogWebBookMove.BookMoveListener
        public final void a() {
        }

        @Override // com.mycompany.app.dialog.DialogWebBookMove.BookMoveListener
        public final void b(ArrayList arrayList, String str) {
            DialogWebBookList dialogWebBookList = DialogWebBookList.this;
            MainListView2 mainListView2 = dialogWebBookList.B;
            if (mainListView2 != null) {
                mainListView2.K(dialogWebBookList.G, dialogWebBookList.J, arrayList);
            }
            dialogWebBookList.t();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.dialog.DialogWebBookList$22, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass22 implements DialogSetFull.DialogApplyListener {
        public AnonymousClass22() {
        }

        @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
        public final void a() {
            DialogWebBookList dialogWebBookList = DialogWebBookList.this;
            MainListView2 mainListView2 = dialogWebBookList.B;
            if (mainListView2 != null) {
                String str = dialogWebBookList.G;
                ArrayList arrayList = dialogWebBookList.J;
                if (mainListView2.S == null) {
                    return;
                }
                mainListView2.G(str);
                mainListView2.S.m(true, str, arrayList, null);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface BookInfoListener {
        Bitmap getIcon();

        String getTitle();

        String getUrl();
    }

    /* loaded from: classes3.dex */
    public interface BookListListener {
        void a(String str);

        void b(int i, String str);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DialogWebBookList(com.mycompany.app.main.MainActivity r4, java.lang.String r5, java.util.List r6, int r7, com.mycompany.app.dialog.DialogWebBookList.BookListListener r8) {
        /*
            r3 = this;
            boolean r0 = com.mycompany.app.main.MainApp.K1
            if (r0 == 0) goto L7
            int r0 = com.mycompany.app.soulbrowser.R.style.DialogFullBlack
            goto L9
        L7:
            int r0 = com.mycompany.app.soulbrowser.R.style.DialogFullTheme
        L9:
            r3.<init>(r4, r0)
            r3.j()
            r3.w = r4
            android.content.Context r4 = r3.getContext()
            r3.x = r4
            r3.G = r5
            r3.H = r7
            r3.y = r8
            r4 = 0
            r3.Q = r4
            com.mycompany.app.dialog.DialogWebBookList.V = r4
            r5 = 3
            if (r7 != 0) goto L2b
            r3.I = r4
            int r8 = com.mycompany.app.soulbrowser.R.string.bookmark
            r0 = r4
            goto L3e
        L2b:
            r8 = 1
            if (r7 != r5) goto L35
            r3.I = r8
            int r8 = com.mycompany.app.soulbrowser.R.string.move_to
            int r0 = com.mycompany.app.soulbrowser.R.string.move
            goto L3e
        L35:
            r0 = 6
            if (r7 != r0) goto L9e
            r3.I = r8
            int r8 = com.mycompany.app.soulbrowser.R.string.save_location
            int r0 = com.mycompany.app.soulbrowser.R.string.apply
        L3e:
            if (r6 == 0) goto L8d
            boolean r1 = r6.isEmpty()
            if (r1 != 0) goto L8d
            if (r7 != r5) goto L6a
            java.lang.Object r4 = r6.get(r4)
            com.mycompany.app.main.MainItem$ChildItem r4 = (com.mycompany.app.main.MainItem.ChildItem) r4
            java.lang.String r4 = r4.e
            r3.F = r4
            boolean r5 = android.text.TextUtils.isEmpty(r4)
            java.lang.String r7 = "/"
            if (r5 != 0) goto L68
            boolean r5 = r4.equals(r7)
            if (r5 == 0) goto L61
            goto L68
        L61:
            java.lang.String r4 = r4.concat(r7)
            r3.F = r4
            goto L6a
        L68:
            r3.F = r7
        L6a:
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            r3.J = r4
            java.util.Iterator r4 = r6.iterator()
        L75:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L8d
            java.lang.Object r5 = r4.next()
            com.mycompany.app.main.MainItem$ChildItem r5 = (com.mycompany.app.main.MainItem.ChildItem) r5
            java.util.ArrayList r6 = r3.J
            long r1 = r5.y
            java.lang.Long r5 = java.lang.Long.valueOf(r1)
            r6.add(r5)
            goto L75
        L8d:
            r3.S = r8
            r3.T = r0
            android.os.Handler r4 = r3.i
            if (r4 != 0) goto L96
            goto L9e
        L96:
            com.mycompany.app.dialog.DialogWebBookList$1 r5 = new com.mycompany.app.dialog.DialogWebBookList$1
            r5.<init>()
            r4.post(r5)
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogWebBookList.<init>(com.mycompany.app.main.MainActivity, java.lang.String, java.util.List, int, com.mycompany.app.dialog.DialogWebBookList$BookListListener):void");
    }

    public static void o(DialogWebBookList dialogWebBookList, boolean z) {
        if (!z) {
            MyButtonText myButtonText = dialogWebBookList.C;
            if (myButtonText != null) {
                myButtonText.setClickable(false);
                dialogWebBookList.m(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookList.25
                    /* JADX WARN: Removed duplicated region for block: B:16:0x00ca  */
                    /* JADX WARN: Removed duplicated region for block: B:6:0x00d1 A[RETURN] */
                    /* JADX WARN: Removed duplicated region for block: B:8:0x00d2  */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final void run() {
                        /*
                            r19 = this;
                            r0 = r19
                            com.mycompany.app.dialog.DialogWebBookList r1 = com.mycompany.app.dialog.DialogWebBookList.this
                            android.content.Context r4 = r1.x
                            com.mycompany.app.db.book.DbBookWeb r2 = com.mycompany.app.db.book.DbBookWeb.f12966c
                            if (r4 != 0) goto Ld
                            r8 = 0
                            goto Lcd
                        Ld:
                            java.lang.String r2 = "0"
                            java.lang.String[] r13 = new java.lang.String[]{r2}
                            r2 = 0
                            com.mycompany.app.db.book.DbBookWeb r3 = com.mycompany.app.db.book.DbBookWeb.f(r4)     // Catch: java.lang.Exception -> Lc3
                            android.database.sqlite.SQLiteDatabase r9 = r3.getWritableDatabase()     // Catch: java.lang.Exception -> Lc3
                            java.lang.String r10 = "DbBookWeb_table"
                            java.lang.String r12 = "_secret=?"
                            r14 = 0
                            r11 = 0
                            android.database.Cursor r9 = com.mycompany.app.db.DbUtil.g(r9, r10, r11, r12, r13, r14)     // Catch: java.lang.Exception -> Lc3
                            if (r9 == 0) goto Lc5
                            boolean r2 = r9.moveToFirst()     // Catch: java.lang.Exception -> Lc2
                            if (r2 == 0) goto Lc5
                            java.lang.String r2 = "_isdir"
                            int r10 = r9.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lc2
                            java.lang.String r2 = "_dir"
                            int r11 = r9.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lc2
                            java.lang.String r2 = "_path"
                            int r12 = r9.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lc2
                            java.lang.String r2 = "_title"
                            int r13 = r9.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lc2
                            java.lang.String r2 = "_icon"
                            int r14 = r9.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lc2
                            r15 = 0
                        L4d:
                            int r2 = r9.getInt(r10)     // Catch: java.lang.Exception -> L71
                            r3 = 1
                            if (r2 != r3) goto L56
                            r2 = r3
                            goto L57
                        L56:
                            r2 = 0
                        L57:
                            java.lang.String r5 = r9.getString(r11)     // Catch: java.lang.Exception -> L71
                            java.lang.String r6 = r9.getString(r13)     // Catch: java.lang.Exception -> L71
                            if (r2 == 0) goto L77
                            boolean r2 = com.mycompany.app.db.book.DbBookWeb.i(r4, r5, r6)     // Catch: java.lang.Exception -> L71
                            if (r2 != 0) goto L74
                            r7 = r3
                            r2 = -1
                            r16 = r7
                            r7 = 0
                            com.mycompany.app.db.book.DbBookWeb.l(r2, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L71
                            goto Lb2
                        L71:
                            r2 = r9
                            r8 = r15
                            goto Lc7
                        L74:
                            r16 = r3
                            goto Lb2
                        L77:
                            r16 = r3
                            java.lang.String r2 = r9.getString(r12)     // Catch: java.lang.Exception -> L71
                            boolean r3 = com.mycompany.app.db.book.DbBookWeb.j(r4, r2)     // Catch: java.lang.Exception -> L71
                            if (r3 != 0) goto Lb2
                            java.lang.String r3 = com.mycompany.app.main.MainUtil.O1(r2)     // Catch: java.lang.Exception -> L71
                            android.graphics.Bitmap r7 = com.mycompany.app.main.MainUtil.n4(r3)     // Catch: java.lang.Exception -> L71
                            boolean r17 = com.mycompany.app.main.MainUtil.f6(r7)     // Catch: java.lang.Exception -> L71
                            if (r17 != 0) goto Lab
                            byte[] r8 = r9.getBlob(r14)     // Catch: java.lang.Exception -> L71
                            if (r8 == 0) goto Lab
                            r18 = r7
                            int r7 = r8.length     // Catch: java.lang.Exception -> L71
                            if (r7 <= 0) goto Lad
                            int r7 = r8.length     // Catch: java.lang.Exception -> L71
                            android.graphics.Bitmap r7 = com.mycompany.app.main.BitmapUtil.a(r8, r7)     // Catch: java.lang.Exception -> L71
                            boolean r8 = com.mycompany.app.main.MainUtil.f6(r7)     // Catch: java.lang.Exception -> L71
                            if (r8 == 0) goto Laf
                            com.mycompany.app.main.MainUtil.V7(r3, r7)     // Catch: java.lang.Exception -> L71
                            goto Laf
                        Lab:
                            r18 = r7
                        Lad:
                            r7 = r18
                        Laf:
                            com.mycompany.app.db.book.DbBookWeb.m(r4, r5, r2, r6, r7)     // Catch: java.lang.Exception -> L71
                        Lb2:
                            boolean r2 = r9.moveToNext()     // Catch: java.lang.Exception -> Lbe
                            if (r2 != 0) goto Lbb
                            r8 = r16
                            goto Lc8
                        Lbb:
                            r15 = r16
                            goto L4d
                        Lbe:
                            r2 = r9
                            r8 = r16
                            goto Lc7
                        Lc2:
                            r2 = r9
                        Lc3:
                            r8 = 0
                            goto Lc7
                        Lc5:
                            r8 = 0
                            goto Lc8
                        Lc7:
                            r9 = r2
                        Lc8:
                            if (r9 == 0) goto Lcd
                            r9.close()
                        Lcd:
                            com.mycompany.app.view.MyButtonText r1 = r1.C
                            if (r1 != 0) goto Ld2
                            return
                        Ld2:
                            com.mycompany.app.dialog.DialogWebBookList$25$1 r2 = new com.mycompany.app.dialog.DialogWebBookList$25$1
                            r2.<init>()
                            r1.post(r2)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogWebBookList.AnonymousClass25.run():void");
                    }
                });
                return;
            }
            return;
        }
        try {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension("html");
            if (TextUtils.isEmpty(mimeTypeFromExtension)) {
                mimeTypeFromExtension = "*/*";
            }
            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
            intent.addCategory("android.intent.category.OPENABLE");
            intent.setType(mimeTypeFromExtension);
            intent.addFlags(65);
            dialogWebBookList.w.t0(intent, 9);
        } catch (Exception unused) {
        }
    }

    public static void p(DialogWebBookList dialogWebBookList, boolean z) {
        Handler handler;
        if (!z) {
            MyFadeFrame myFadeFrame = dialogWebBookList.R;
            if (myFadeFrame != null && dialogWebBookList.A != null) {
                myFadeFrame.f();
                dialogWebBookList.A.removeView(dialogWebBookList.R);
                dialogWebBookList.R = null;
                if (PrefRead.s) {
                    PrefRead.s = false;
                    PrefSet.d(8, dialogWebBookList.x, "mGuideSort", false);
                    return;
                }
                return;
            }
            return;
        }
        if (PrefRead.s && !dialogWebBookList.I && (handler = dialogWebBookList.i) != null) {
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookList.12
                @Override // java.lang.Runnable
                public final void run() {
                    Handler handler2;
                    if (PrefRead.s) {
                        final DialogWebBookList dialogWebBookList2 = DialogWebBookList.this;
                        if (dialogWebBookList2.R == null && dialogWebBookList2.A != null && (handler2 = dialogWebBookList2.i) != null) {
                            handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookList.13
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainActivity mainActivity;
                                    if (PrefRead.s) {
                                        final DialogWebBookList dialogWebBookList3 = DialogWebBookList.this;
                                        if (dialogWebBookList3.R == null && dialogWebBookList3.A != null && (mainActivity = dialogWebBookList3.w) != null) {
                                            MyFadeFrame myFadeFrame2 = new MyFadeFrame(mainActivity);
                                            int i = MainApp.F1;
                                            myFadeFrame2.setPadding(i, i, i, i);
                                            FrameLayout frameLayout = new FrameLayout(mainActivity);
                                            frameLayout.setBackgroundResource(R.drawable.round_guide_8);
                                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                                            layoutParams.gravity = 8388691;
                                            myFadeFrame2.addView(frameLayout, layoutParams);
                                            LinearLayout linearLayout = new LinearLayout(mainActivity);
                                            int i2 = MainApp.E1;
                                            linearLayout.setPadding(i2, i2, i2, i2);
                                            linearLayout.setOrientation(1);
                                            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
                                            layoutParams2.gravity = 1;
                                            frameLayout.addView(linearLayout, layoutParams2);
                                            AppCompatTextView appCompatTextView = new AppCompatTextView(mainActivity, null);
                                            appCompatTextView.setLineSpacing(MainApp.G1, 1.0f);
                                            appCompatTextView.setTextSize(1, 16.0f);
                                            appCompatTextView.setTextColor(-1);
                                            linearLayout.addView(appCompatTextView, -2, -2);
                                            AppCompatTextView appCompatTextView2 = new AppCompatTextView(mainActivity, null);
                                            appCompatTextView2.setLineSpacing(MainApp.G1, 1.0f);
                                            appCompatTextView2.setTextSize(1, 16.0f);
                                            appCompatTextView2.setTextColor(-1);
                                            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
                                            layoutParams3.topMargin = MainApp.E1;
                                            linearLayout.addView(appCompatTextView2, layoutParams3);
                                            dialogWebBookList3.R = myFadeFrame2;
                                            appCompatTextView.setText(R.string.sort_guide_1);
                                            appCompatTextView2.setText(R.string.sort_guide_2);
                                            dialogWebBookList3.R.setListener(new MyFadeListener() { // from class: com.mycompany.app.dialog.DialogWebBookList.14
                                                @Override // com.mycompany.app.view.MyFadeListener
                                                public final void a(boolean z2) {
                                                    DialogWebBookList dialogWebBookList4;
                                                    MyFadeFrame myFadeFrame3;
                                                    if (!z2 && (myFadeFrame3 = (dialogWebBookList4 = DialogWebBookList.this).R) != null && dialogWebBookList4.A != null) {
                                                        myFadeFrame3.f();
                                                        dialogWebBookList4.A.removeView(dialogWebBookList4.R);
                                                        dialogWebBookList4.R = null;
                                                    }
                                                }

                                                @Override // com.mycompany.app.view.MyFadeListener
                                                public final void b(boolean z2, boolean z3) {
                                                }
                                            });
                                            dialogWebBookList3.R.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.dialog.DialogWebBookList.15
                                                @Override // android.view.View.OnTouchListener
                                                public final boolean onTouch(View view, MotionEvent motionEvent) {
                                                    boolean z2 = PrefRead.s;
                                                    DialogWebBookList dialogWebBookList4 = DialogWebBookList.this;
                                                    if (z2) {
                                                        PrefRead.s = false;
                                                        PrefSet.d(8, dialogWebBookList4.x, "mGuideSort", false);
                                                    }
                                                    MyFadeFrame myFadeFrame3 = dialogWebBookList4.R;
                                                    if (myFadeFrame3 != null) {
                                                        myFadeFrame3.d(true);
                                                    }
                                                    return false;
                                                }
                                            });
                                            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebBookList.16
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    boolean z2 = PrefRead.s;
                                                    DialogWebBookList dialogWebBookList4 = DialogWebBookList.this;
                                                    if (z2) {
                                                        PrefRead.s = false;
                                                        PrefSet.d(8, dialogWebBookList4.x, "mGuideSort", false);
                                                    }
                                                    MyFadeFrame myFadeFrame3 = dialogWebBookList4.R;
                                                    if (myFadeFrame3 != null) {
                                                        myFadeFrame3.d(true);
                                                    }
                                                }
                                            });
                                            dialogWebBookList3.A.addView(dialogWebBookList3.R, -1, -1);
                                            return;
                                        }
                                        return;
                                    }
                                    int i3 = DialogWebBookList.V;
                                }
                            });
                            return;
                        }
                        return;
                    }
                    int i = DialogWebBookList.V;
                }
            });
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.mycompany.app.dialog.DialogWebBookDir, android.app.Dialog, com.mycompany.app.view.MyDialogBottom] */
    public static void q(DialogWebBookList dialogWebBookList) {
        if (dialogWebBookList.w == null || dialogWebBookList.u()) {
            return;
        }
        dialogWebBookList.t();
        MainActivity mainActivity = dialogWebBookList.w;
        String str = dialogWebBookList.G;
        AnonymousClass20 anonymousClass20 = new AnonymousClass20();
        final ?? myDialogBottom = new MyDialogBottom(mainActivity);
        myDialogBottom.a0 = myDialogBottom.getContext();
        myDialogBottom.f0 = str;
        myDialogBottom.b0 = anonymousClass20;
        Handler handler = myDialogBottom.i;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookDir.1
                @Override // java.lang.Runnable
                public final void run() {
                    DialogWebBookDir.B(DialogWebBookDir.this);
                }
            });
        }
        dialogWebBookList.M = myDialogBottom;
        myDialogBottom.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogWebBookList.21
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = DialogWebBookList.V;
                DialogWebBookList.this.t();
            }
        });
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public static void r(DialogWebBookList dialogWebBookList, boolean z) {
        String str;
        String str2;
        Cursor cursor;
        if (dialogWebBookList.w != null && !dialogWebBookList.u()) {
            DialogWebBookEdit dialogWebBookEdit = dialogWebBookList.L;
            String str3 = null;
            if (dialogWebBookEdit != null) {
                dialogWebBookEdit.dismiss();
                dialogWebBookList.L = null;
            }
            BookInfoListener bookInfoListener = dialogWebBookList.z;
            if (bookInfoListener != null) {
                if (z) {
                    String url = bookInfoListener.getUrl();
                    if (TextUtils.isEmpty(url)) {
                        MainUtil.e8(dialogWebBookList.x, R.string.invalid_url);
                        return;
                    }
                    long d = DbBookWeb.d(dialogWebBookList.x, url);
                    if (d > 0) {
                        MainUtil.e8(dialogWebBookList.x, R.string.already_added);
                        if (dialogWebBookList.B != null) {
                            Context context = dialogWebBookList.x;
                            if (context != null && d > 0) {
                                try {
                                    cursor = DbUtil.f(DbBookWeb.f(context).getWritableDatabase(), "DbBookWeb_table", new String[]{"_dir"}, d);
                                    if (cursor != null) {
                                        try {
                                            if (cursor.moveToFirst()) {
                                                str3 = cursor.getString(cursor.getColumnIndex("_dir"));
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
                            }
                            if (!TextUtils.isEmpty(str3)) {
                                dialogWebBookList.G = str3;
                                dialogWebBookList.x(str3);
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(Long.valueOf(d));
                                dialogWebBookList.B.K(dialogWebBookList.G, dialogWebBookList.J, arrayList);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    str = url;
                    str2 = dialogWebBookList.z.getTitle();
                } else {
                    str = null;
                    str2 = null;
                }
                ?? obj = new Object();
                obj.e = dialogWebBookList.G;
                DialogWebBookEdit dialogWebBookEdit2 = new DialogWebBookEdit(dialogWebBookList.w, obj, str, str2, new DialogWebBookEdit.BookEditListener() { // from class: com.mycompany.app.dialog.DialogWebBookList.17
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r3v4, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
                    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
                    @Override // com.mycompany.app.dialog.DialogWebBookEdit.BookEditListener
                    public final void a(long j, String str4, String str5) {
                        DialogWebBookList dialogWebBookList2 = DialogWebBookList.this;
                        if (dialogWebBookList2.B != null) {
                            dialogWebBookList2.G = str4;
                            dialogWebBookList2.x(str4);
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.add(Long.valueOf(j));
                            dialogWebBookList2.B.K(dialogWebBookList2.G, dialogWebBookList2.J, arrayList2);
                            if (!TextUtils.isEmpty(str5)) {
                                ?? obj2 = new Object();
                                obj2.f16554a = 7;
                                obj2.q = MainUtil.e7(str5);
                                obj2.t = 2;
                                obj2.u = true;
                                obj2.v = str5;
                                DisplayImageOptions.Builder builder = new DisplayImageOptions.Builder();
                                builder.f20960a = true;
                                builder.b = true;
                                builder.f = new Object();
                                ImageLoader.f().i(obj2, new DisplayImageOptions(builder), new AnonymousClass19());
                            }
                        }
                    }

                    @Override // com.mycompany.app.dialog.DialogWebBookEdit.BookEditListener
                    public final Bitmap getIcon() {
                        BookInfoListener bookInfoListener2 = DialogWebBookList.this.z;
                        if (bookInfoListener2 == null) {
                            return null;
                        }
                        return bookInfoListener2.getIcon();
                    }
                });
                dialogWebBookList.L = dialogWebBookEdit2;
                dialogWebBookEdit2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogWebBookList.18
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i = DialogWebBookList.V;
                        DialogWebBookList dialogWebBookList2 = DialogWebBookList.this;
                        DialogWebBookEdit dialogWebBookEdit3 = dialogWebBookList2.L;
                        if (dialogWebBookEdit3 != null) {
                            dialogWebBookEdit3.dismiss();
                            dialogWebBookList2.L = null;
                        }
                    }
                });
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogNormal, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18667c = false;
        if (this.x == null) {
            return;
        }
        MyPopupMenu myPopupMenu = this.K;
        if (myPopupMenu != null) {
            this.u = null;
            myPopupMenu.a();
            this.K = null;
        }
        DialogWebBookEdit dialogWebBookEdit = this.L;
        if (dialogWebBookEdit != null) {
            dialogWebBookEdit.dismiss();
            this.L = null;
        }
        t();
        DialogWebBookLoad dialogWebBookLoad = this.N;
        if (dialogWebBookLoad != null) {
            dialogWebBookLoad.dismiss();
            this.N = null;
        }
        DialogWebBookSave dialogWebBookSave = this.O;
        if (dialogWebBookSave != null) {
            dialogWebBookSave.dismiss();
            this.O = null;
        }
        MainListView2 mainListView2 = this.B;
        if (mainListView2 != null) {
            if (this.H == 0) {
                mainListView2.s();
            }
            this.B.o(true);
            this.B.n();
            this.B = null;
        }
        MyButtonText myButtonText = this.C;
        if (myButtonText != null) {
            myButtonText.t();
            this.C = null;
        }
        MyLineText myLineText = this.D;
        if (myLineText != null) {
            myLineText.u();
            this.D = null;
        }
        MyFadeFrame myFadeFrame = this.R;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.R = null;
        }
        MainActivity mainActivity = this.w;
        if (mainActivity != null) {
            mainActivity.n0(null, false);
            this.w = null;
        }
        this.x = null;
        this.y = null;
        this.z = null;
        this.A = null;
        this.E = null;
        this.J = null;
        super.dismiss();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        MainListView2 mainListView2;
        int actionMasked;
        if (!this.f18667c || (mainListView2 = this.B) == null) {
            return false;
        }
        if (mainListView2.w0 || mainListView2.x0) {
            return true;
        }
        if (motionEvent != null) {
            if (mainListView2.E != null && ((actionMasked = motionEvent.getActionMasked()) == 1 || actionMasked == 3)) {
                mainListView2.E.e();
            }
        } else {
            mainListView2.getClass();
        }
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.mycompany.app.view.MyDialogNormal
    public final void l() {
        MainListView2 mainListView2;
        if (this.I || (mainListView2 = this.B) == null || !mainListView2.t()) {
            if (!TextUtils.isEmpty(this.G)) {
                String str = "/";
                if (!"/".equals(this.G)) {
                    if (this.B == null) {
                        return;
                    }
                    String str2 = this.G;
                    if (!TextUtils.isEmpty(str2) && !"/".equals(str2)) {
                        str = MainUtil.d1(null, str2);
                    }
                    this.G = str;
                    x(str);
                    this.B.L(this.J, this.G);
                    return;
                }
            }
            dismiss();
        }
    }

    @Override // com.mycompany.app.view.MyDialogNormal, android.app.Dialog
    public final void onBackPressed() {
        if (e()) {
            return;
        }
        l();
    }

    @Override // com.mycompany.app.view.MyDialogNormal, android.app.Dialog, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (!this.I) {
            if (z) {
                if (this.P) {
                    this.P = false;
                    int i = this.Q;
                    int i2 = V;
                    if (i != i2) {
                        this.Q = i2;
                        MainListView2 mainListView2 = this.B;
                        if (mainListView2 != null) {
                            String str = mainListView2.t0;
                            if (!TextUtils.isEmpty(str)) {
                                this.G = str;
                                x(str);
                            } else {
                                MainListView2 mainListView22 = this.B;
                                String str2 = this.G;
                                ArrayList arrayList = this.J;
                                if (mainListView22.S != null) {
                                    mainListView22.G(str2);
                                    mainListView22.S.m(true, str2, arrayList, null);
                                }
                            }
                        }
                    }
                }
            } else {
                this.P = true;
            }
            MainListView2 mainListView23 = this.B;
            if (mainListView23 != null) {
                mainListView23.t0 = null;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r5v5, types: [com.mycompany.app.dialog.DialogWebBookLoad, android.app.Dialog, com.mycompany.app.view.MyDialogBottom] */
    public final boolean s(int i, int i2, Intent intent) {
        DialogWebBookSave dialogWebBookSave = this.O;
        if (dialogWebBookSave != null && i == 19) {
            if (i2 == -1 && intent != null) {
                Uri data = intent.getData();
                if (data == null) {
                    MainUtil.e8(dialogWebBookSave.b0, R.string.invalid_path);
                    return true;
                }
                String a2 = MainUri.a(data);
                if (TextUtils.isEmpty(a2)) {
                    MainUtil.e8(dialogWebBookSave.b0, R.string.invalid_path);
                    return true;
                }
                if (!TextUtils.isEmpty(a2) && !a2.equals(PrefPath.r)) {
                    PrefPath.r = a2;
                    dialogWebBookSave.s(new DialogWebBookSave.AnonymousClass9());
                }
                MainUtil.z7(dialogWebBookSave.b0, data);
                return true;
            }
        } else {
            boolean z = false;
            if (i != 9) {
                return false;
            }
            if (i2 == -1 && intent != null) {
                Uri data2 = intent.getData();
                if (data2 == null) {
                    MainUtil.e8(this.x, R.string.invalid_file);
                    return true;
                }
                String uri = data2.toString();
                if (TextUtils.isEmpty(uri)) {
                    MainUtil.e8(this.x, R.string.invalid_file);
                    return true;
                }
                String W0 = MainUtil.W0(MainUri.k(this.x, uri));
                if (!TextUtils.isEmpty(W0)) {
                    z = W0.equals("html");
                }
                if (!z) {
                    MainUtil.e8(this.x, R.string.invalid_file);
                    return true;
                }
                MainUtil.z7(this.x, data2);
                if (this.w != null && !u()) {
                    DialogWebBookLoad dialogWebBookLoad = this.N;
                    if (dialogWebBookLoad != null) {
                        dialogWebBookLoad.dismiss();
                        this.N = null;
                    }
                    MainActivity mainActivity = this.w;
                    AnonymousClass22 anonymousClass22 = new AnonymousClass22();
                    final ?? myDialogBottom = new MyDialogBottom(mainActivity);
                    myDialogBottom.a0 = myDialogBottom.getContext();
                    myDialogBottom.b0 = anonymousClass22;
                    myDialogBottom.c0 = uri;
                    Handler handler = myDialogBottom.i;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookLoad.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                final DialogWebBookLoad dialogWebBookLoad2 = DialogWebBookLoad.this;
                                Context context = dialogWebBookLoad2.a0;
                                if (context != null) {
                                    int i3 = R.id.area_view_1;
                                    int i4 = R.id.area_view_2;
                                    int i5 = R.id.area_view_3;
                                    int i6 = R.id.area_view_4;
                                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                                    FrameLayout frameLayout = new FrameLayout(context);
                                    q.addView(frameLayout, -1, -2);
                                    int G = (int) MainUtil.G(context, 72.0f);
                                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                                    int i7 = MainApp.E1;
                                    appCompatTextView.setPadding(i7, i7, i7, i7);
                                    appCompatTextView.setGravity(17);
                                    appCompatTextView.setTextSize(1, 16.0f);
                                    appCompatTextView.setText(R.string.loading);
                                    appCompatTextView.setMinHeight(G);
                                    frameLayout.addView(appCompatTextView, -1, -2);
                                    LinearLayout linearLayout = new LinearLayout(context);
                                    linearLayout.setOrientation(1);
                                    linearLayout.setVisibility(8);
                                    frameLayout.addView(linearLayout, -1, -2);
                                    int G2 = (int) MainUtil.G(context, 32.0f);
                                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                                    int i8 = MainApp.E1;
                                    appCompatTextView2.setPadding(i8, 0, i8, 0);
                                    appCompatTextView2.setGravity(16);
                                    appCompatTextView2.setTextSize(1, 14.0f);
                                    appCompatTextView2.setText(R.string.exist_url);
                                    linearLayout.addView(appCompatTextView2, -1, G2);
                                    int G3 = (int) MainUtil.G(context, 12.0f);
                                    MyLineRelative myLineRelative = new MyLineRelative(context);
                                    myLineRelative.setPadding(0, MainApp.F1, 0, G3);
                                    myLineRelative.b(MainApp.E1);
                                    linearLayout.addView(myLineRelative, -1, -2);
                                    AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
                                    appCompatTextView3.setId(i3);
                                    appCompatTextView3.setGravity(16);
                                    appCompatTextView3.setTextSize(1, 14.0f);
                                    appCompatTextView3.setText(R.string.change_before);
                                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                                    layoutParams.setMarginStart(MainApp.E1);
                                    myLineRelative.addView(appCompatTextView3, layoutParams);
                                    int G4 = (int) MainUtil.G(context, 20.0f);
                                    MyRoundImage myRoundImage = new MyRoundImage(context);
                                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_CROP;
                                    myRoundImage.setScaleType(scaleType);
                                    float f = G4;
                                    myRoundImage.setCircleRadius(f);
                                    int i9 = MainApp.f1;
                                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i9, i9);
                                    layoutParams2.addRule(3, i3);
                                    layoutParams2.topMargin = MainApp.F1;
                                    layoutParams2.setMarginStart(MainApp.E1);
                                    myLineRelative.addView(myRoundImage, layoutParams2);
                                    AppCompatTextView appCompatTextView4 = new AppCompatTextView(context, null);
                                    appCompatTextView4.setId(i4);
                                    appCompatTextView4.setGravity(16);
                                    appCompatTextView4.setSingleLine(true);
                                    RelativeLayout.LayoutParams h = com.google.android.gms.internal.mlkit_vision_text_common.a.h(appCompatTextView4, 1, 16.0f, -1, G4);
                                    h.addRule(3, i3);
                                    h.topMargin = MainApp.F1;
                                    h.setMarginStart(G);
                                    h.setMarginEnd(MainApp.E1);
                                    myLineRelative.addView(appCompatTextView4, h);
                                    AppCompatTextView appCompatTextView5 = new AppCompatTextView(context, null);
                                    appCompatTextView5.setGravity(16);
                                    appCompatTextView5.setSingleLine(true);
                                    RelativeLayout.LayoutParams h2 = com.google.android.gms.internal.mlkit_vision_text_common.a.h(appCompatTextView5, 1, 16.0f, -1, G4);
                                    h2.addRule(3, i4);
                                    h2.setMarginStart(G);
                                    h2.setMarginEnd(MainApp.E1);
                                    myLineRelative.addView(appCompatTextView5, h2);
                                    MyLineRelative myLineRelative2 = new MyLineRelative(context);
                                    myLineRelative2.setPadding(0, MainApp.F1, 0, G3);
                                    myLineRelative2.b(MainApp.E1);
                                    linearLayout.addView(myLineRelative2, -1, -2);
                                    AppCompatTextView appCompatTextView6 = new AppCompatTextView(context, null);
                                    appCompatTextView6.setId(i5);
                                    appCompatTextView6.setGravity(16);
                                    appCompatTextView6.setTextSize(1, 14.0f);
                                    appCompatTextView6.setText(R.string.change_after);
                                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
                                    layoutParams3.setMarginStart(MainApp.E1);
                                    myLineRelative2.addView(appCompatTextView6, layoutParams3);
                                    MyRoundImage myRoundImage2 = new MyRoundImage(context);
                                    myRoundImage2.setScaleType(scaleType);
                                    myRoundImage2.setCircleRadius(f);
                                    int i10 = MainApp.f1;
                                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i10, i10);
                                    layoutParams4.addRule(3, i5);
                                    layoutParams4.topMargin = MainApp.F1;
                                    layoutParams4.setMarginStart(MainApp.E1);
                                    myLineRelative2.addView(myRoundImage2, layoutParams4);
                                    AppCompatTextView appCompatTextView7 = new AppCompatTextView(context, null);
                                    appCompatTextView7.setId(i6);
                                    appCompatTextView7.setGravity(16);
                                    appCompatTextView7.setSingleLine(true);
                                    RelativeLayout.LayoutParams h3 = com.google.android.gms.internal.mlkit_vision_text_common.a.h(appCompatTextView7, 1, 16.0f, -1, G4);
                                    h3.addRule(3, i5);
                                    h3.topMargin = MainApp.F1;
                                    h3.setMarginStart(G);
                                    h3.setMarginEnd(MainApp.E1);
                                    myLineRelative2.addView(appCompatTextView7, h3);
                                    AppCompatTextView appCompatTextView8 = new AppCompatTextView(context, null);
                                    appCompatTextView8.setGravity(16);
                                    appCompatTextView8.setSingleLine(true);
                                    RelativeLayout.LayoutParams h4 = com.google.android.gms.internal.mlkit_vision_text_common.a.h(appCompatTextView8, 1, 16.0f, -1, G4);
                                    h4.addRule(3, i6);
                                    h4.setMarginStart(G);
                                    h4.setMarginEnd(MainApp.E1);
                                    myLineRelative2.addView(appCompatTextView8, h4);
                                    FrameLayout frameLayout2 = new FrameLayout(context);
                                    linearLayout.addView(frameLayout2, -1, -2);
                                    MyButtonCheck myButtonCheck = new MyButtonCheck(context);
                                    int i11 = MainApp.g1;
                                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i11, i11);
                                    layoutParams5.gravity = 8388627;
                                    layoutParams5.setMarginStart(MainApp.G1);
                                    frameLayout2.addView(myButtonCheck, layoutParams5);
                                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                                    FrameLayout.LayoutParams d = com.google.android.gms.internal.mlkit_vision_text_common.a.d(j, R.string.apply_url_equal, -1, -2);
                                    d.gravity = 8388627;
                                    d.setMarginStart(MainApp.h1);
                                    d.setMarginEnd(MainApp.E1);
                                    frameLayout2.addView(j, d);
                                    MyCoverView myCoverView = new MyCoverView(context);
                                    int i12 = MainApp.g1;
                                    FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i12, i12);
                                    layoutParams6.gravity = 17;
                                    frameLayout.addView(myCoverView, layoutParams6);
                                    MyLineLinear myLineLinear = new MyLineLinear(context);
                                    myLineLinear.setBaselineAligned(false);
                                    myLineLinear.setOrientation(0);
                                    myLineLinear.setLinePad(MainApp.E1);
                                    myLineLinear.setLineUp(true);
                                    MyLineText s = com.google.android.gms.internal.mlkit_vision_text_common.a.s(q, myLineLinear, -1, MainApp.g1, context);
                                    s.setGravity(17);
                                    s.setTextSize(1, 16.0f);
                                    s.setText(R.string.skip);
                                    s.s(context);
                                    s.setVisibility(8);
                                    LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(0, -1);
                                    layoutParams7.weight = 1.0f;
                                    AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, s, layoutParams7, context, null);
                                    l.setGravity(17);
                                    l.setTextSize(1, 16.0f);
                                    LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(l, R.string.cancel, 0, -1);
                                    e.weight = 1.0f;
                                    myLineLinear.addView(l, e);
                                    dialogWebBookLoad2.d0 = q;
                                    dialogWebBookLoad2.e0 = appCompatTextView;
                                    dialogWebBookLoad2.f0 = linearLayout;
                                    dialogWebBookLoad2.g0 = appCompatTextView2;
                                    dialogWebBookLoad2.h0 = appCompatTextView3;
                                    dialogWebBookLoad2.i0 = myRoundImage;
                                    dialogWebBookLoad2.j0 = appCompatTextView4;
                                    dialogWebBookLoad2.k0 = appCompatTextView5;
                                    dialogWebBookLoad2.l0 = appCompatTextView6;
                                    dialogWebBookLoad2.m0 = myRoundImage2;
                                    dialogWebBookLoad2.n0 = appCompatTextView7;
                                    dialogWebBookLoad2.o0 = appCompatTextView8;
                                    dialogWebBookLoad2.p0 = frameLayout2;
                                    dialogWebBookLoad2.q0 = myButtonCheck;
                                    dialogWebBookLoad2.r0 = j;
                                    dialogWebBookLoad2.s0 = myCoverView;
                                    dialogWebBookLoad2.t0 = s;
                                    dialogWebBookLoad2.u0 = l;
                                    Handler handler2 = dialogWebBookLoad2.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookLoad.2
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            final DialogWebBookLoad dialogWebBookLoad3 = DialogWebBookLoad.this;
                                            if (dialogWebBookLoad3.d0 != null && dialogWebBookLoad3.a0 != null) {
                                                if (MainApp.K1) {
                                                    dialogWebBookLoad3.e0.setTextColor(-328966);
                                                    dialogWebBookLoad3.g0.setBackgroundColor(-12632257);
                                                    dialogWebBookLoad3.g0.setTextColor(-2434342);
                                                    dialogWebBookLoad3.h0.setTextColor(-4079167);
                                                    dialogWebBookLoad3.j0.setTextColor(-328966);
                                                    dialogWebBookLoad3.k0.setTextColor(-328966);
                                                    dialogWebBookLoad3.l0.setTextColor(-4079167);
                                                    dialogWebBookLoad3.n0.setTextColor(-328966);
                                                    dialogWebBookLoad3.o0.setTextColor(-328966);
                                                    dialogWebBookLoad3.p0.setBackgroundResource(R.drawable.selector_normal_dark);
                                                    dialogWebBookLoad3.r0.setTextColor(-328966);
                                                    dialogWebBookLoad3.t0.setBackgroundResource(R.drawable.selector_normal_dark);
                                                    dialogWebBookLoad3.t0.setTextColor(-328966);
                                                    dialogWebBookLoad3.u0.setBackgroundResource(R.drawable.selector_normal_dark);
                                                    dialogWebBookLoad3.u0.setTextColor(-328966);
                                                    dialogWebBookLoad3.q0.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                                                    dialogWebBookLoad3.q0.setBgPreColor(-12632257);
                                                } else {
                                                    dialogWebBookLoad3.e0.setTextColor(-16777216);
                                                    dialogWebBookLoad3.g0.setBackgroundColor(-460552);
                                                    dialogWebBookLoad3.g0.setTextColor(-12303292);
                                                    dialogWebBookLoad3.h0.setTextColor(-10395295);
                                                    dialogWebBookLoad3.j0.setTextColor(-16777216);
                                                    dialogWebBookLoad3.k0.setTextColor(-16777216);
                                                    dialogWebBookLoad3.l0.setTextColor(-10395295);
                                                    dialogWebBookLoad3.n0.setTextColor(-16777216);
                                                    dialogWebBookLoad3.o0.setTextColor(-16777216);
                                                    dialogWebBookLoad3.p0.setBackgroundResource(R.drawable.selector_normal);
                                                    dialogWebBookLoad3.r0.setTextColor(-16777216);
                                                    dialogWebBookLoad3.t0.setBackgroundResource(R.drawable.selector_normal);
                                                    dialogWebBookLoad3.t0.setTextColor(-14784824);
                                                    dialogWebBookLoad3.u0.setBackgroundResource(R.drawable.selector_normal);
                                                    dialogWebBookLoad3.u0.setTextColor(-14784824);
                                                    dialogWebBookLoad3.q0.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                                                    dialogWebBookLoad3.q0.setBgPreColor(-2039584);
                                                }
                                                dialogWebBookLoad3.p0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebBookLoad.3
                                                    @Override // android.view.View.OnClickListener
                                                    public final void onClick(View view) {
                                                        MyButtonCheck myButtonCheck2 = DialogWebBookLoad.this.q0;
                                                        if (myButtonCheck2 == null) {
                                                            return;
                                                        }
                                                        myButtonCheck2.q(!myButtonCheck2.D, true);
                                                    }
                                                });
                                                dialogWebBookLoad3.q0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebBookLoad.4
                                                    @Override // android.view.View.OnClickListener
                                                    public final void onClick(View view) {
                                                        MyButtonCheck myButtonCheck2 = DialogWebBookLoad.this.q0;
                                                        if (myButtonCheck2 == null) {
                                                            return;
                                                        }
                                                        myButtonCheck2.q(!myButtonCheck2.D, true);
                                                    }
                                                });
                                                dialogWebBookLoad3.t0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebBookLoad.5
                                                    @Override // android.view.View.OnClickListener
                                                    public final void onClick(View view) {
                                                        DialogWebBookLoad dialogWebBookLoad4 = DialogWebBookLoad.this;
                                                        MyLineText myLineText = dialogWebBookLoad4.t0;
                                                        if (myLineText == null || dialogWebBookLoad4.E0) {
                                                            return;
                                                        }
                                                        dialogWebBookLoad4.E0 = true;
                                                        myLineText.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookLoad.5.1
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                                                DialogWebBookLoad dialogWebBookLoad5 = DialogWebBookLoad.this;
                                                                DialogWebBookSave.HtmlItem htmlItem = dialogWebBookLoad5.C0;
                                                                if (htmlItem == null) {
                                                                    return;
                                                                }
                                                                if (dialogWebBookLoad5.q0.D) {
                                                                    dialogWebBookLoad5.w0 = 1;
                                                                }
                                                                htmlItem.f15421a = 1;
                                                                dialogWebBookLoad5.C(dialogWebBookLoad5.c0);
                                                                DialogWebBookLoad.this.E0 = false;
                                                            }
                                                        });
                                                    }
                                                });
                                                dialogWebBookLoad3.u0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebBookLoad.6
                                                    @Override // android.view.View.OnClickListener
                                                    public final void onClick(View view) {
                                                        DialogWebBookLoad dialogWebBookLoad4 = DialogWebBookLoad.this;
                                                        AppCompatTextView appCompatTextView9 = dialogWebBookLoad4.u0;
                                                        if (appCompatTextView9 == null || dialogWebBookLoad4.E0) {
                                                            return;
                                                        }
                                                        dialogWebBookLoad4.E0 = true;
                                                        appCompatTextView9.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookLoad.6.1
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                DialogWebBookLoad dialogWebBookLoad5 = DialogWebBookLoad.this;
                                                                if (dialogWebBookLoad5.u0 == null) {
                                                                    return;
                                                                }
                                                                DialogWebBookSave.HtmlItem htmlItem = dialogWebBookLoad5.C0;
                                                                if (htmlItem != null) {
                                                                    if (dialogWebBookLoad5.q0.D) {
                                                                        dialogWebBookLoad5.w0 = 2;
                                                                    }
                                                                    htmlItem.f15421a = 2;
                                                                    dialogWebBookLoad5.C(dialogWebBookLoad5.c0);
                                                                    dialogWebBookLoad5.E0 = false;
                                                                    return;
                                                                }
                                                                if (dialogWebBookLoad5.x0) {
                                                                    dialogWebBookLoad5.x0 = false;
                                                                    dialogWebBookLoad5.C(dialogWebBookLoad5.c0);
                                                                } else {
                                                                    dialogWebBookLoad5.F();
                                                                }
                                                                dialogWebBookLoad5.E0 = false;
                                                            }
                                                        });
                                                    }
                                                });
                                                dialogWebBookLoad3.C(dialogWebBookLoad3.c0);
                                                dialogWebBookLoad3.g(dialogWebBookLoad3.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogWebBookLoad.7
                                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                                    public final void a(View view) {
                                                        DialogWebBookLoad dialogWebBookLoad4 = DialogWebBookLoad.this;
                                                        if (dialogWebBookLoad4.d0 == null) {
                                                            return;
                                                        }
                                                        dialogWebBookLoad4.show();
                                                    }
                                                });
                                            }
                                        }
                                    });
                                }
                            }
                        });
                    }
                    this.N = myDialogBottom;
                    myDialogBottom.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogWebBookList.23
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            int i3 = DialogWebBookList.V;
                            DialogWebBookList dialogWebBookList = DialogWebBookList.this;
                            DialogWebBookLoad dialogWebBookLoad2 = dialogWebBookList.N;
                            if (dialogWebBookLoad2 != null) {
                                dialogWebBookLoad2.dismiss();
                                dialogWebBookList.N = null;
                            }
                        }
                    });
                }
            }
        }
        return true;
    }

    public final void t() {
        DialogWebBookDir dialogWebBookDir = this.M;
        if (dialogWebBookDir != null) {
            dialogWebBookDir.dismiss();
            this.M = null;
        }
    }

    public final boolean u() {
        if (this.L != null || this.M != null || this.N != null || this.O != null) {
            return true;
        }
        return false;
    }

    public final void v(Configuration configuration) {
        int i;
        int i2;
        MainListView2 mainListView2 = this.B;
        if (mainListView2 == null) {
            return;
        }
        if (mainListView2.z(configuration)) {
            MyMainRelative myMainRelative = this.A;
            if (myMainRelative != null) {
                Window window = getWindow();
                if (MainApp.K1) {
                    i2 = -16777216;
                } else {
                    i2 = -460552;
                }
                myMainRelative.b(window, i2);
            }
            MyLineText myLineText = this.D;
            if (myLineText != null) {
                if (MainApp.K1) {
                    myLineText.setBackgroundResource(R.drawable.selector_normal_dark);
                    this.E.setTextColor(-328966);
                    this.E.setBackgroundResource(R.drawable.selector_normal_dark);
                } else {
                    myLineText.setBackgroundResource(R.drawable.selector_normal_gray);
                    this.E.setTextColor(-16777216);
                    this.E.setBackgroundResource(R.drawable.selector_normal_gray);
                }
                if (this.H == 3) {
                    x(this.G);
                } else {
                    MyLineText myLineText2 = this.D;
                    if (MainApp.K1) {
                        i = -328966;
                    } else {
                        i = -14784824;
                    }
                    myLineText2.setTextColor(i);
                }
            }
            MyButtonText myButtonText = this.C;
            if (myButtonText != null) {
                if (MainApp.K1) {
                    myButtonText.setTextColor(-328966);
                    this.C.u(-16777216, -14211289);
                } else {
                    myButtonText.setTextColor(-16777216);
                    this.C.u(-460552, 553648128);
                }
            }
        }
        f();
    }

    public final void w(boolean z) {
        MainListView2 mainListView2 = this.B;
        if (mainListView2 != null) {
            mainListView2.p(z, false);
        }
    }

    public final void x(String str) {
        int i;
        int i2;
        if (this.H != 3 || this.D == null) {
            return;
        }
        String str2 = "/";
        if (!TextUtils.isEmpty(str) && !str.equals("/")) {
            str2 = str.concat("/");
        }
        String str3 = this.F;
        if (!TextUtils.isEmpty(str3) && !str3.equals(str2)) {
            this.D.setEnabled(true);
            MyLineText myLineText = this.D;
            if (MainApp.K1) {
                i2 = -328966;
            } else {
                i2 = -14784824;
            }
            myLineText.setTextColor(i2);
            return;
        }
        this.D.setEnabled(false);
        MyLineText myLineText2 = this.D;
        if (MainApp.K1) {
            i = -8355712;
        } else {
            i = -2434342;
        }
        myLineText2.setTextColor(i);
    }
}
