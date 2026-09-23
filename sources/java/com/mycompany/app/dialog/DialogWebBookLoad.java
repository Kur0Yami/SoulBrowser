package com.mycompany.app.dialog;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogWebBookList;
import com.mycompany.app.dialog.DialogWebBookSave;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRoundImage;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes3.dex */
public class DialogWebBookLoad extends MyDialogBottom {
    public ArrayList A0;
    public DialogWebBookSave.HtmlItem B0;
    public DialogWebBookSave.HtmlItem C0;
    public MainListLoader D0;
    public boolean E0;
    public boolean F0;
    public Context a0;
    public DialogSetFull.DialogApplyListener b0;
    public String c0;
    public MyDialogLinear d0;
    public AppCompatTextView e0;
    public LinearLayout f0;
    public AppCompatTextView g0;
    public AppCompatTextView h0;
    public MyRoundImage i0;
    public AppCompatTextView j0;
    public AppCompatTextView k0;
    public AppCompatTextView l0;
    public MyRoundImage m0;
    public AppCompatTextView n0;
    public AppCompatTextView o0;
    public FrameLayout p0;
    public MyButtonCheck q0;
    public AppCompatTextView r0;
    public MyCoverView s0;
    public MyLineText t0;
    public AppCompatTextView u0;
    public DialogTask v0;
    public int w0;
    public boolean x0;
    public boolean y0;
    public ArrayList z0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public boolean g;
        public boolean h;

        public DialogTask(DialogWebBookLoad dialogWebBookLoad, String str) {
            WeakReference weakReference = new WeakReference(dialogWebBookLoad);
            this.e = weakReference;
            DialogWebBookLoad dialogWebBookLoad2 = (DialogWebBookLoad) weakReference.get();
            if (dialogWebBookLoad2 == null) {
                return;
            }
            this.f = str;
            if (dialogWebBookLoad2.z0 == null) {
                dialogWebBookLoad2.z0 = new ArrayList();
            }
            if (dialogWebBookLoad2.A0 == null) {
                dialogWebBookLoad2.A0 = new ArrayList();
            }
            dialogWebBookLoad2.B0 = null;
            dialogWebBookLoad2.C0 = null;
            dialogWebBookLoad2.F0 = false;
            dialogWebBookLoad2.x0 = false;
            dialogWebBookLoad2.y0 = false;
            dialogWebBookLoad2.s0.m(true);
            dialogWebBookLoad2.e0.setText(R.string.loading);
            dialogWebBookLoad2.e0.setVisibility(0);
            dialogWebBookLoad2.f0.setVisibility(8);
            dialogWebBookLoad2.t0.setVisibility(8);
            dialogWebBookLoad2.u0.setEnabled(true);
            dialogWebBookLoad2.u0.setText(R.string.cancel);
            dialogWebBookLoad2.setCanceledOnTouchOutside(false);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:120:0x0190  */
        /* JADX WARN: Type inference failed for: r5v6 */
        /* JADX WARN: Type inference failed for: r5v8, types: [com.mycompany.app.dialog.DialogWebBookSave$HtmlItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v9 */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 502
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogWebBookLoad.DialogTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogWebBookLoad dialogWebBookLoad;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogWebBookLoad = (DialogWebBookLoad) weakReference.get()) == null) {
                return;
            }
            dialogWebBookLoad.v0 = null;
            dialogWebBookLoad.B0 = null;
            dialogWebBookLoad.C0 = null;
            MainUtil.e8(dialogWebBookLoad.a0, R.string.cancelled);
            dialogWebBookLoad.dismiss();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v17, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final DialogWebBookLoad dialogWebBookLoad;
            int i;
            DialogSetFull.DialogApplyListener dialogApplyListener;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogWebBookLoad = (DialogWebBookLoad) weakReference.get()) != null) {
                dialogWebBookLoad.v0 = null;
                if (this.h && (dialogApplyListener = dialogWebBookLoad.b0) != null) {
                    ((DialogWebBookList.AnonymousClass22) dialogApplyListener).a();
                }
                if (dialogWebBookLoad.E()) {
                    MainUtil.e8(dialogWebBookLoad.a0, R.string.cancelled);
                    dialogWebBookLoad.dismiss();
                    return;
                }
                if (!this.h) {
                    dialogWebBookLoad.x0 = true;
                    dialogWebBookLoad.y0 = false;
                    dialogWebBookLoad.w0 = 0;
                    dialogWebBookLoad.z0 = null;
                    dialogWebBookLoad.A0 = null;
                    dialogWebBookLoad.B0 = null;
                    dialogWebBookLoad.C0 = null;
                    dialogWebBookLoad.s0.f(false);
                    AppCompatTextView appCompatTextView = dialogWebBookLoad.e0;
                    if (this.g) {
                        i = R.string.import_no_html;
                    } else {
                        i = R.string.invalid_file;
                    }
                    appCompatTextView.setText(i);
                    dialogWebBookLoad.u0.setEnabled(true);
                    dialogWebBookLoad.u0.setText(R.string.retry);
                    dialogWebBookLoad.setCanceledOnTouchOutside(true);
                    return;
                }
                if (dialogWebBookLoad.B0 != null && dialogWebBookLoad.C0 != null) {
                    if (dialogWebBookLoad.e0 == null) {
                        return;
                    }
                    dialogWebBookLoad.s0.f(false);
                    dialogWebBookLoad.e0.setVisibility(8);
                    dialogWebBookLoad.f0.setVisibility(0);
                    dialogWebBookLoad.j0.setText(MainUtil.b1(null, dialogWebBookLoad.B0.f15422c));
                    dialogWebBookLoad.k0.setText(dialogWebBookLoad.B0.e);
                    dialogWebBookLoad.n0.setText(MainUtil.b1(null, dialogWebBookLoad.C0.f15422c));
                    dialogWebBookLoad.o0.setText(dialogWebBookLoad.C0.e);
                    MyRoundImage myRoundImage = dialogWebBookLoad.i0;
                    if (myRoundImage != null) {
                        DialogWebBookSave.HtmlItem htmlItem = dialogWebBookLoad.B0;
                        if (htmlItem == null) {
                            myRoundImage.o(-460552, R.drawable.outline_public_black_24);
                        } else {
                            myRoundImage.p(-460552, R.drawable.outline_public_black_24, htmlItem.e, null);
                            ?? obj = new Object();
                            obj.f16550a = 17;
                            obj.f16551c = 11;
                            DialogWebBookSave.HtmlItem htmlItem2 = dialogWebBookLoad.B0;
                            String str = htmlItem2.f;
                            obj.g = str;
                            obj.z = str;
                            obj.y = htmlItem2.g;
                            Bitmap b = MainListLoader.b(obj);
                            if (MainUtil.f6(b)) {
                                dialogWebBookLoad.i0.setImageBitmap(b);
                            } else {
                                if (dialogWebBookLoad.D0 == null) {
                                    dialogWebBookLoad.D0 = new MainListLoader(dialogWebBookLoad.a0, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.dialog.DialogWebBookLoad.8
                                        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                        public final void a(MainItem.ChildItem childItem, View view) {
                                        }

                                        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                        public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
                                            MyRoundImage myRoundImage2 = DialogWebBookLoad.this.i0;
                                            if (myRoundImage2 != null) {
                                                myRoundImage2.setImageBitmap(bitmap);
                                            }
                                        }
                                    });
                                }
                                dialogWebBookLoad.i0.setTag(0);
                                dialogWebBookLoad.D0.e(obj, dialogWebBookLoad.i0);
                            }
                        }
                    }
                    MyRoundImage myRoundImage2 = dialogWebBookLoad.m0;
                    if (myRoundImage2 != null) {
                        DialogWebBookSave.HtmlItem htmlItem3 = dialogWebBookLoad.C0;
                        if (htmlItem3 == null) {
                            myRoundImage2.o(-460552, R.drawable.outline_public_black_24);
                        } else {
                            myRoundImage2.p(-460552, R.drawable.outline_public_black_24, htmlItem3.e, null);
                            dialogWebBookLoad.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookLoad.9
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DialogWebBookLoad dialogWebBookLoad2 = DialogWebBookLoad.this;
                                    DialogWebBookSave.HtmlItem htmlItem4 = dialogWebBookLoad2.C0;
                                    if (htmlItem4 != null) {
                                        String O1 = MainUtil.O1(htmlItem4.d);
                                        final Bitmap n4 = MainUtil.n4(O1);
                                        if (!MainUtil.f6(n4)) {
                                            n4 = MainUtil.d0(dialogWebBookLoad2.a0, dialogWebBookLoad2.C0.f);
                                            if (MainUtil.f6(n4)) {
                                                MainUtil.V7(O1, n4);
                                            } else {
                                                return;
                                            }
                                        }
                                        MyRoundImage myRoundImage3 = dialogWebBookLoad2.m0;
                                        if (myRoundImage3 == null) {
                                            return;
                                        }
                                        myRoundImage3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebBookLoad.9.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                MyRoundImage myRoundImage4 = DialogWebBookLoad.this.m0;
                                                if (myRoundImage4 != null) {
                                                    myRoundImage4.setImageBitmap(n4);
                                                }
                                            }
                                        });
                                    }
                                }
                            });
                        }
                    }
                    dialogWebBookLoad.t0.setVisibility(0);
                    dialogWebBookLoad.u0.setEnabled(true);
                    dialogWebBookLoad.u0.setText(R.string.overwrite);
                    dialogWebBookLoad.setCanceledOnTouchOutside(true);
                    return;
                }
                MainUtil.e8(dialogWebBookLoad.a0, R.string.success);
                dialogWebBookLoad.dismiss();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean B(DialogWebBookLoad dialogWebBookLoad, String str) {
        InputStream inputStream = null;
        try {
            inputStream = dialogWebBookLoad.a0.getContentResolver().openInputStream(Uri.parse(str));
            Elements children = Jsoup.parse(inputStream, "UTF-8", str).children();
            int size = children.size();
            int i = 0;
            while (i < size) {
                T t = children.get(i);
                i++;
                Element element = (Element) t;
                if (dialogWebBookLoad.E()) {
                    return false;
                }
                dialogWebBookLoad.D(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, element);
            }
        } catch (Exception | LinkageError unused) {
        } catch (OutOfMemoryError unused2) {
            dialogWebBookLoad.y0 = true;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception unused3) {
            }
        }
        return true;
    }

    public final void C(String str) {
        DialogTask dialogTask = this.v0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.v0 = null;
        DialogTask dialogTask2 = new DialogTask(this, str);
        this.v0 = dialogTask2;
        dialogTask2.b(this.a0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.mycompany.app.dialog.DialogWebBookSave$HtmlItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v6, types: [com.mycompany.app.dialog.DialogWebBookSave$HtmlItem, java.lang.Object] */
    public final void D(String str, Element element) {
        ArrayList arrayList;
        int lastIndexOf;
        int i;
        if (element != null) {
            Elements children = element.children();
            int i2 = 0;
            if (children != null && !children.isEmpty()) {
                int size = children.size();
                while (i2 < size) {
                    T t = children.get(i2);
                    i2++;
                    Element element2 = (Element) t;
                    if (!E()) {
                        String node = element2.toString();
                        if (!TextUtils.isEmpty(node) && node.startsWith("<h3")) {
                            String text = element2.text();
                            if (!TextUtils.isEmpty(text)) {
                                if (TextUtils.isEmpty(str)) {
                                    str = android.support.v4.media.a.C("/", text);
                                } else if (str.endsWith("/")) {
                                    str = android.support.v4.media.a.k(str, text);
                                } else {
                                    str = android.support.v4.media.a.D(str, "/", text);
                                }
                            }
                        }
                        D(str, element2);
                    } else {
                        return;
                    }
                }
                return;
            }
            String node2 = element.toString();
            if (!TextUtils.isEmpty(node2)) {
                if (node2.startsWith("<h3")) {
                    if (!TextUtils.isEmpty(str) && (lastIndexOf = str.lastIndexOf(47)) >= 0 && (i = lastIndexOf + 1) < str.length()) {
                        String substring = str.substring(0, i);
                        if (!TextUtils.isEmpty(substring)) {
                            String substring2 = str.substring(i);
                            if (!TextUtils.isEmpty(substring2)) {
                                ?? obj = new Object();
                                obj.b = true;
                                obj.f15422c = substring;
                                obj.e = substring2;
                                ArrayList arrayList2 = this.z0;
                                if (arrayList2 != null) {
                                    arrayList2.add(obj);
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (node2.startsWith("<a")) {
                    if (TextUtils.isEmpty(str)) {
                        str = "/";
                    }
                    String attr = element.attr("href");
                    if (!TextUtils.isEmpty(attr) && (arrayList = this.A0) != null && !arrayList.contains(attr)) {
                        this.A0.add(attr);
                        ?? obj2 = new Object();
                        obj2.b = false;
                        obj2.f15422c = str;
                        obj2.e = element.text();
                        obj2.d = attr;
                        obj2.f = element.attr("icon");
                        if (TextUtils.isEmpty(obj2.e)) {
                            obj2.e = MainUtil.H1(obj2.d, false);
                        }
                        ArrayList arrayList3 = this.z0;
                        if (arrayList3 != null) {
                            arrayList3.add(obj2);
                        }
                    }
                }
            }
        }
    }

    public final boolean E() {
        if (!this.F0) {
            DialogTask dialogTask = this.v0;
            if (dialogTask != null && dialogTask.f12839c) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final void F() {
        int i;
        AppCompatTextView appCompatTextView = this.u0;
        if (appCompatTextView != null && this.v0 != null) {
            appCompatTextView.setEnabled(false);
            this.u0.setText(R.string.canceling);
            AppCompatTextView appCompatTextView2 = this.u0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            appCompatTextView2.setTextColor(i);
            this.F0 = true;
            DialogTask dialogTask = this.v0;
            if (dialogTask != null) {
                dialogTask.f12839c = true;
            }
            this.v0 = null;
            return;
        }
        dismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        F();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        DialogTask dialogTask = this.v0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.v0 = null;
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MainListLoader mainListLoader = this.D0;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.D0 = null;
        }
        MyRoundImage myRoundImage = this.i0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.i0 = null;
        }
        MyRoundImage myRoundImage2 = this.m0;
        if (myRoundImage2 != null) {
            myRoundImage2.k();
            this.m0 = null;
        }
        MyButtonCheck myButtonCheck = this.q0;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.q0 = null;
        }
        MyCoverView myCoverView = this.s0;
        if (myCoverView != null) {
            myCoverView.i();
            this.s0 = null;
        }
        MyLineText myLineText = this.t0;
        if (myLineText != null) {
            myLineText.u();
            this.t0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.e0 = null;
        this.f0 = null;
        this.g0 = null;
        this.h0 = null;
        this.j0 = null;
        this.k0 = null;
        this.l0 = null;
        this.n0 = null;
        this.o0 = null;
        this.p0 = null;
        this.r0 = null;
        this.u0 = null;
        this.z0 = null;
        this.A0 = null;
        this.B0 = null;
        this.C0 = null;
        super.dismiss();
    }
}
