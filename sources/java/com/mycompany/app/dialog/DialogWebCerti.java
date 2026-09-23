package com.mycompany.app.dialog;

import android.content.Context;
import android.net.http.SslCertificate;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.web.WebViewActivity;
import java.lang.ref.WeakReference;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/* loaded from: classes3.dex */
public class DialogWebCerti extends MyDialogBottom {
    public Context a0;
    public WebView b0;
    public MyDialogLinear c0;
    public MyRecyclerView d0;
    public MyLineText e0;
    public CertiAdapter f0;
    public LoadTask g0;
    public boolean h0;
    public int i0;
    public int j0;
    public GestureDetector k0;
    public ScaleGestureDetector l0;

    /* loaded from: classes3.dex */
    public class CertiAdapter extends RecyclerView.Adapter<CertiHolder> {
        public List d;
        public int e;

        public CertiAdapter(ArrayList arrayList) {
            this.d = arrayList;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int d() {
            int i = this.e;
            if (i != 0) {
                return i;
            }
            List list = this.d;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final long e(int i) {
            return 0L;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void n(RecyclerView.ViewHolder viewHolder, int i) {
            List list;
            AppCompatTextView appCompatTextView;
            CertiHolder certiHolder = (CertiHolder) viewHolder;
            if (certiHolder.f1589a != null && (list = this.d) != null && i >= 0 && i < list.size() && (appCompatTextView = certiHolder.u) != null) {
                appCompatTextView.setText((CharSequence) this.d.get(i));
                if (MainApp.K1) {
                    appCompatTextView.setTextColor(-328966);
                } else {
                    appCompatTextView.setTextColor(-16777216);
                }
                if (!DialogWebCerti.this.h0) {
                    float f = r3.i0 / 100.0f;
                    if (f > 0.0f) {
                        appCompatTextView.setTextSize(1, f * 14.0f);
                    }
                }
            }
        }

        /* JADX WARN: Type inference failed for: r3v5, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.dialog.DialogWebCerti$CertiHolder] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
            Context context = viewGroup.getContext();
            if (context == null) {
                return null;
            }
            AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
            appCompatTextView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            if (DialogWebCerti.this.h0) {
                appCompatTextView.setTextSize(1, 16.0f);
                appCompatTextView.setGravity(17);
            }
            ?? viewHolder = new RecyclerView.ViewHolder(appCompatTextView);
            viewHolder.u = appCompatTextView;
            return viewHolder;
        }
    }

    /* loaded from: classes3.dex */
    public static class CertiHolder extends RecyclerView.ViewHolder {
        public AppCompatTextView u;
    }

    /* loaded from: classes3.dex */
    public static class LoadTask extends MyAsyncTask {
        public final WeakReference e;
        public String f;
        public ArrayList g;

        public LoadTask(DialogWebCerti dialogWebCerti) {
            WebView webView;
            WeakReference weakReference = new WeakReference(dialogWebCerti);
            this.e = weakReference;
            DialogWebCerti dialogWebCerti2 = (DialogWebCerti) weakReference.get();
            if (dialogWebCerti2 != null && (webView = dialogWebCerti2.b0) != null) {
                try {
                    SslCertificate certificate = webView.getCertificate();
                    if (certificate != null) {
                        if (Build.VERSION.SDK_INT >= 29) {
                            try {
                                X509Certificate x509Certificate = certificate.getX509Certificate();
                                if (x509Certificate != null) {
                                    this.f = x509Certificate.toString();
                                }
                            } catch (Exception unused) {
                            }
                        }
                        if (TextUtils.isEmpty(this.f)) {
                            this.f = certificate.toString();
                        }
                    }
                } catch (Exception unused2) {
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogWebCerti dialogWebCerti;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogWebCerti = (DialogWebCerti) weakReference.get()) != null && !this.f12839c) {
                if (!TextUtils.isEmpty(this.f)) {
                    Scanner scanner = new Scanner(this.f);
                    while (scanner.hasNextLine() && !this.f12839c) {
                        String nextLine = scanner.nextLine();
                        if (!TextUtils.isEmpty(nextLine)) {
                            String trim = nextLine.trim();
                            if (!TextUtils.isEmpty(trim)) {
                                if (this.g == null) {
                                    this.g = new ArrayList();
                                }
                                this.g.add(trim);
                                this.g.add(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                            }
                        }
                    }
                    scanner.close();
                }
                if (this.g == null) {
                    Context context = dialogWebCerti.a0;
                    if (context != null) {
                        this.f = context.getString(R.string.no_info);
                    } else {
                        this.f = "No information";
                    }
                    ArrayList arrayList = new ArrayList();
                    this.g = arrayList;
                    arrayList.add("\n\n" + this.f + "\n\n");
                    dialogWebCerti.h0 = true;
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogWebCerti dialogWebCerti;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogWebCerti = (DialogWebCerti) weakReference.get()) == null) {
                return;
            }
            dialogWebCerti.g0 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final DialogWebCerti dialogWebCerti;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogWebCerti = (DialogWebCerti) weakReference.get()) != null) {
                dialogWebCerti.g0 = null;
                ArrayList arrayList = this.g;
                if (arrayList != null && dialogWebCerti.d0 != null) {
                    if (!dialogWebCerti.h0 && dialogWebCerti.a0 != null) {
                        dialogWebCerti.k0 = new GestureDetector(dialogWebCerti.a0, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.dialog.DialogWebCerti.5
                            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
                            public final boolean onDoubleTap(MotionEvent motionEvent) {
                                DialogWebCerti dialogWebCerti2 = DialogWebCerti.this;
                                if (dialogWebCerti2.f0 == null || dialogWebCerti2.h0) {
                                    return true;
                                }
                                int i = dialogWebCerti2.i0;
                                if (i > 90 && i < 110) {
                                    dialogWebCerti2.i0 = HttpStatusCodes.STATUS_CODE_OK;
                                } else {
                                    dialogWebCerti2.i0 = 100;
                                }
                                dialogWebCerti2.B(dialogWebCerti2.i0);
                                return true;
                            }
                        });
                        dialogWebCerti.l0 = new ScaleGestureDetector(dialogWebCerti.a0, new ScaleGestureDetector.SimpleOnScaleGestureListener() { // from class: com.mycompany.app.dialog.DialogWebCerti.6
                            @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
                            public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                                DialogWebCerti dialogWebCerti2 = DialogWebCerti.this;
                                if (dialogWebCerti2.f0 != null && !dialogWebCerti2.h0) {
                                    if (dialogWebCerti2.i0 == 0) {
                                        dialogWebCerti2.i0 = 100;
                                    }
                                    if (scaleGestureDetector != null) {
                                        int round = Math.round(100.0f / ((1.0f - scaleGestureDetector.getScaleFactor()) + (100.0f / dialogWebCerti2.i0)));
                                        dialogWebCerti2.i0 = round;
                                        dialogWebCerti2.B(round);
                                        return true;
                                    }
                                }
                                return true;
                            }
                        });
                    }
                    CertiAdapter certiAdapter = new CertiAdapter(arrayList);
                    dialogWebCerti.f0 = certiAdapter;
                    dialogWebCerti.d0.setAdapter(certiAdapter);
                }
            }
        }
    }

    public DialogWebCerti(WebViewActivity webViewActivity, WebView webView) {
        super(webViewActivity);
        this.a0 = getContext();
        this.b0 = webView;
        this.i0 = 100;
        this.j0 = 100;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebCerti.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogWebCerti dialogWebCerti = DialogWebCerti.this;
                Context context = dialogWebCerti.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                    q.addView(u, layoutParams);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogWebCerti.c0 = q;
                    dialogWebCerti.d0 = u;
                    dialogWebCerti.e0 = myLineText;
                    Handler handler2 = dialogWebCerti.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogWebCerti.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogWebCerti dialogWebCerti2 = DialogWebCerti.this;
                            if (dialogWebCerti2.c0 != null && dialogWebCerti2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogWebCerti2.e0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogWebCerti2.e0.setTextColor(-328966);
                                } else {
                                    dialogWebCerti2.e0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogWebCerti2.e0.setTextColor(-14784824);
                                }
                                MyRecyclerView myRecyclerView = dialogWebCerti2.d0;
                                int i = MainApp.E1;
                                myRecyclerView.setPadding(i, i, i, 0);
                                com.google.android.gms.internal.mlkit_vision_text_common.a.w(1, dialogWebCerti2.d0);
                                dialogWebCerti2.e0.setText(R.string.close);
                                dialogWebCerti2.e0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogWebCerti.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        DialogWebCerti.this.dismiss();
                                    }
                                });
                                dialogWebCerti2.g(dialogWebCerti2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogWebCerti.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogWebCerti dialogWebCerti3 = DialogWebCerti.this;
                                        if (dialogWebCerti3.c0 == null) {
                                            return;
                                        }
                                        dialogWebCerti3.show();
                                        LoadTask loadTask = dialogWebCerti3.g0;
                                        if (loadTask != null) {
                                            loadTask.f12839c = true;
                                        }
                                        dialogWebCerti3.g0 = null;
                                        LoadTask loadTask2 = new LoadTask(dialogWebCerti3);
                                        dialogWebCerti3.g0 = loadTask2;
                                        loadTask2.b(dialogWebCerti3.a0);
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public final void B(int i) {
        if (!this.h0) {
            this.i0 = i;
            if (i < 100) {
                this.i0 = 100;
            } else if (i > 500) {
                this.i0 = 500;
            }
            int i2 = this.j0;
            int i3 = this.i0;
            if (i2 != i3) {
                this.j0 = i3;
                CertiAdapter certiAdapter = this.f0;
                if (certiAdapter != null) {
                    certiAdapter.g();
                }
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        LoadTask loadTask = this.g0;
        if (loadTask != null) {
            loadTask.f12839c = true;
        }
        this.g0 = null;
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
        }
        MyRecyclerView myRecyclerView = this.d0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.d0 = null;
        }
        MyLineText myLineText = this.e0;
        if (myLineText != null) {
            myLineText.u();
            this.e0 = null;
        }
        CertiAdapter certiAdapter = this.f0;
        if (certiAdapter != null) {
            certiAdapter.e = certiAdapter.d();
            certiAdapter.d = null;
            this.f0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.k0 = null;
        this.l0 = null;
        super.dismiss();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        GestureDetector gestureDetector = this.k0;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
        }
        ScaleGestureDetector scaleGestureDetector = this.l0;
        if (scaleGestureDetector != null) {
            scaleGestureDetector.onTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }
}
