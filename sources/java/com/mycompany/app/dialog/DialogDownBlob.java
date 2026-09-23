package com.mycompany.app.dialog;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.NotificationCompat;
import com.mycompany.app.data.DataUtil;
import com.mycompany.app.db.book.DbBookDown;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainLauncher;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRoundImage;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

/* loaded from: classes3.dex */
public class DialogDownBlob extends MyDialogBottom {
    public static final /* synthetic */ int y0 = 0;
    public Context a0;
    public DialogBlobListener b0;
    public MyDialogLinear c0;
    public MyRoundImage d0;
    public AppCompatTextView e0;
    public MyLineLinear f0;
    public AppCompatTextView g0;
    public AppCompatTextView h0;
    public MyProgressBar i0;
    public MyLineText j0;
    public WebView k0;
    public MainDownSvc.DownItem l0;
    public String m0;
    public String n0;
    public long o0;
    public OutputStream p0;
    public BlobItem[] q0;
    public int r0;
    public int s0;
    public long t0;
    public int u0;
    public int v0;
    public boolean w0;
    public boolean x0;

    /* loaded from: classes3.dex */
    public static class BlobItem {

        /* renamed from: a, reason: collision with root package name */
        public String f13166a;
        public int b;
    }

    /* loaded from: classes3.dex */
    public interface DialogBlobListener {
        void a(long j, String str, String str2);
    }

    public DialogDownBlob(Activity activity, WebView webView, MainDownSvc.DownItem downItem, DialogBlobListener dialogBlobListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = dialogBlobListener;
        this.k0 = webView;
        this.l0 = downItem;
        this.m0 = downItem.l;
        this.n0 = downItem.n.f;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownBlob.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogDownBlob dialogDownBlob = DialogDownBlob.this;
                Context context = dialogDownBlob.a0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    int G = (int) MainUtil.G(context, 72.0f);
                    FrameLayout frameLayout = new FrameLayout(context);
                    q.addView(frameLayout, -1, G);
                    MyRoundImage myRoundImage = new MyRoundImage(context);
                    myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
                    int i = MainApp.f1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
                    layoutParams.gravity = 8388627;
                    layoutParams.setMarginStart(MainApp.E1);
                    frameLayout.addView(myRoundImage, layoutParams);
                    AppCompatTextView i2 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
                    i2.setEllipsize(TextUtils.TruncateAt.END);
                    i2.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams2.gravity = 8388627;
                    layoutParams2.setMarginStart(G);
                    layoutParams2.setMarginEnd(MainApp.E1);
                    frameLayout.addView(i2, layoutParams2);
                    MyLineLinear myLineLinear = new MyLineLinear(context);
                    int i3 = MainApp.E1;
                    myLineLinear.setPadding(i3, i3, i3, MainApp.F1);
                    myLineLinear.setOrientation(1);
                    myLineLinear.setLinePad(MainApp.E1);
                    myLineLinear.setLineUp(true);
                    myLineLinear.setVisibility(8);
                    q.addView(myLineLinear, -1, -2);
                    FrameLayout frameLayout2 = new FrameLayout(context);
                    myLineLinear.addView(frameLayout2, -1, -2);
                    AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    j.setText(R.string.total);
                    frameLayout2.addView(j, -2, -2);
                    AppCompatTextView j2 = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 16.0f);
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams3.gravity = 8388613;
                    frameLayout2.addView(j2, layoutParams3);
                    MyProgressBar myProgressBar = new MyProgressBar(context);
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, (int) MainUtil.G(context, 12.0f));
                    layoutParams4.topMargin = MainApp.F1;
                    myLineLinear.addView(myProgressBar, layoutParams4);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(R.string.delete);
                    myLineText.setLinePad(MainApp.E1);
                    myLineText.setLineUp(true);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogDownBlob.c0 = q;
                    dialogDownBlob.d0 = myRoundImage;
                    dialogDownBlob.e0 = i2;
                    dialogDownBlob.f0 = myLineLinear;
                    dialogDownBlob.g0 = j;
                    dialogDownBlob.h0 = j2;
                    dialogDownBlob.i0 = myProgressBar;
                    dialogDownBlob.j0 = myLineText;
                    Handler handler2 = dialogDownBlob.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownBlob.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogDownBlob dialogDownBlob2 = DialogDownBlob.this;
                            if (dialogDownBlob2.c0 != null && dialogDownBlob2.a0 != null) {
                                if (MainApp.K1) {
                                    dialogDownBlob2.e0.setTextColor(-328966);
                                    dialogDownBlob2.g0.setTextColor(-328966);
                                    dialogDownBlob2.h0.setTextColor(-328966);
                                    dialogDownBlob2.j0.setBackgroundResource(R.drawable.selector_normal_dark);
                                    dialogDownBlob2.j0.setTextColor(-328966);
                                } else {
                                    dialogDownBlob2.e0.setTextColor(-16777216);
                                    dialogDownBlob2.g0.setTextColor(-16777216);
                                    dialogDownBlob2.h0.setTextColor(-16777216);
                                    dialogDownBlob2.j0.setBackgroundResource(R.drawable.selector_normal);
                                    dialogDownBlob2.j0.setTextColor(-16777216);
                                }
                                int Q1 = MainUtil.Q1(dialogDownBlob2.n0);
                                if (Q1 == R.drawable.outline_draft_black_24) {
                                    Q1 = R.drawable.outline_public_black_24;
                                }
                                dialogDownBlob2.e0.setText(dialogDownBlob2.n0);
                                dialogDownBlob2.d0.o(-460552, Q1);
                                dialogDownBlob2.j0.setText(R.string.cancel);
                                dialogDownBlob2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogDownBlob.3
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i4 = DialogDownBlob.y0;
                                        DialogDownBlob.this.C();
                                    }
                                });
                                dialogDownBlob2.g(dialogDownBlob2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogDownBlob.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        final DialogDownBlob dialogDownBlob3 = DialogDownBlob.this;
                                        if (dialogDownBlob3.c0 != null) {
                                            dialogDownBlob3.show();
                                            Handler handler3 = dialogDownBlob3.i;
                                            if (handler3 == null) {
                                                return;
                                            }
                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownBlob.5
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    final DialogDownBlob dialogDownBlob4 = DialogDownBlob.this;
                                                    if (dialogDownBlob4.c0 == null) {
                                                        return;
                                                    }
                                                    dialogDownBlob4.setCanceledOnTouchOutside(false);
                                                    dialogDownBlob4.c0.e(0, 0, true, false);
                                                    dialogDownBlob4.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownBlob.6
                                                        /* JADX WARN: Code restructure failed: missing block: B:23:0x0060, code lost:
                                                        
                                                            if (com.mycompany.app.db.book.DbBookDown.f(r3, r1.e, r4) != false) goto L12;
                                                         */
                                                        @Override // java.lang.Runnable
                                                        /*
                                                            Code decompiled incorrectly, please refer to instructions dump.
                                                            To view partially-correct add '--show-bad-code' argument
                                                        */
                                                        public final void run() {
                                                            /*
                                                                Method dump skipped, instructions count: 267
                                                                To view this dump add '--comments-level debug' option
                                                            */
                                                            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogDownBlob.AnonymousClass6.run():void");
                                                        }
                                                    });
                                                }
                                            });
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

    public static void B(DialogDownBlob dialogDownBlob) {
        if (dialogDownBlob.h0 == null) {
            return;
        }
        int i = dialogDownBlob.v0;
        int i2 = dialogDownBlob.u0;
        if (i > i2) {
            dialogDownBlob.v0 = i2;
        }
        long j = dialogDownBlob.v0 * dialogDownBlob.s0;
        long j2 = dialogDownBlob.t0;
        if (j > j2) {
            j = j2;
        }
        StringBuilder sb = new StringBuilder();
        MainDownSvc.n(sb, j);
        sb.append(" / ");
        MainDownSvc.n(sb, dialogDownBlob.t0);
        dialogDownBlob.h0.setText(sb.toString());
        dialogDownBlob.i0.setProgress(dialogDownBlob.v0);
    }

    public final void C() {
        int i;
        if (!this.x0) {
            this.x0 = true;
            MainUtil.I(this.k0, "var sbblb=document.getElementById('sb_down_blob');if(sbblb){document.body.removeChild(sbblb);}if(xhr){xhr.abort();xhr=null;}", true);
        }
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null && this.w0) {
            myDialogLinear.e(0, 0, true, false);
            this.j0.setEnabled(false);
            this.j0.setText(R.string.canceling);
            MyLineText myLineText = this.j0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            myLineText.setTextColor(i);
            return;
        }
        dismiss();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void D(int i, int i2, int i3, String str) {
        if (this.c0 != null) {
            this.r0++;
            if (this.q0 == null) {
                int i4 = 2097152;
                if (2097152 > i2) {
                    i4 = i2;
                }
                int i5 = i2 / i4;
                if (i2 % i4 != 0) {
                    i5++;
                }
                this.s0 = i4;
                this.t0 = i2;
                this.u0 = i5;
                this.q0 = new BlobItem[i5];
                for (int i6 = 0; i6 < i5; i6++) {
                    this.q0[i6] = new Object();
                }
                this.i.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownBlob.7
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogDownBlob dialogDownBlob = DialogDownBlob.this;
                        if (dialogDownBlob.c0 == null) {
                            return;
                        }
                        dialogDownBlob.c0.e(0, 0, false, false);
                        dialogDownBlob.h0.setText("0 / " + dialogDownBlob.t0);
                        dialogDownBlob.i0.setMax(dialogDownBlob.u0);
                        dialogDownBlob.f0.setVisibility(0);
                    }
                });
            }
            BlobItem blobItem = this.q0[i3];
            blobItem.f13166a = str;
            blobItem.b = i;
            if (this.w0) {
                return;
            }
            s(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownBlob.8
                @Override // java.lang.Runnable
                public final void run() {
                    int d;
                    BlobItem[] blobItemArr;
                    byte[] bArr;
                    final DialogDownBlob dialogDownBlob = DialogDownBlob.this;
                    if (dialogDownBlob.w0) {
                        return;
                    }
                    dialogDownBlob.w0 = true;
                    while (dialogDownBlob.v0 < dialogDownBlob.r0) {
                        if (!dialogDownBlob.x0 && (blobItemArr = dialogDownBlob.q0) != null) {
                            for (BlobItem blobItem2 : blobItemArr) {
                                if (blobItem2 != null && blobItem2.b != -1) {
                                    String str2 = blobItem2.f13166a;
                                    if (TextUtils.isEmpty(str2)) {
                                        break;
                                    }
                                    try {
                                        bArr = str2.getBytes("windows-1252");
                                    } catch (UnsupportedEncodingException | Exception unused) {
                                        bArr = null;
                                    }
                                    if (bArr == null) {
                                        break;
                                    }
                                    int i7 = blobItem2.b;
                                    blobItem2.b = -1;
                                    blobItem2.f13166a = null;
                                    try {
                                        dialogDownBlob.p0.write(bArr, 0, i7);
                                        dialogDownBlob.v0++;
                                    } catch (Exception unused2) {
                                    }
                                    Handler handler = dialogDownBlob.i;
                                    if (handler == null) {
                                        break;
                                    } else {
                                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownBlob.9
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                DialogDownBlob.B(DialogDownBlob.this);
                                            }
                                        });
                                    }
                                }
                            }
                        }
                        if (dialogDownBlob.x0) {
                            break;
                        }
                    }
                    if (dialogDownBlob.x0) {
                        OutputStream outputStream = dialogDownBlob.p0;
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception unused3) {
                            }
                            dialogDownBlob.p0 = null;
                        }
                        MainDownSvc.DownItem downItem = dialogDownBlob.l0;
                        dialogDownBlob.l0 = null;
                        if (downItem != null) {
                            MainUtil.A(dialogDownBlob.a0, dialogDownBlob.m0);
                            Handler handler2 = dialogDownBlob.i;
                            if (handler2 != null) {
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownBlob.10
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogDownBlob dialogDownBlob2 = DialogDownBlob.this;
                                        if (dialogDownBlob2.c0 == null) {
                                            return;
                                        }
                                        MainUtil.e8(dialogDownBlob2.a0, R.string.cancelled);
                                        dialogDownBlob2.dismiss();
                                    }
                                });
                            }
                        }
                    } else if (dialogDownBlob.v0 >= dialogDownBlob.u0) {
                        OutputStream outputStream2 = dialogDownBlob.p0;
                        if (outputStream2 != null) {
                            try {
                                outputStream2.close();
                            } catch (Exception unused4) {
                            }
                            dialogDownBlob.p0 = null;
                        }
                        MainDownSvc.DownItem downItem2 = dialogDownBlob.l0;
                        dialogDownBlob.l0 = null;
                        if (downItem2 != null) {
                            MainUri.UriItem L0 = MainUtil.L0(dialogDownBlob.a0, downItem2);
                            if (L0 != null) {
                                downItem2.n = L0;
                                String str3 = L0.e;
                                downItem2.l = str3;
                                dialogDownBlob.m0 = str3;
                                dialogDownBlob.n0 = L0.f;
                            }
                            downItem2.f16518c = 3;
                            int P0 = MainUtil.P0(dialogDownBlob.n0);
                            downItem2.e = P0;
                            long j = dialogDownBlob.t0;
                            downItem2.p = j;
                            downItem2.o = j;
                            dialogDownBlob.o0 = DbBookDown.u(dialogDownBlob.a0, downItem2.f16518c, P0, downItem2.f, downItem2.g, downItem2.n, j, j, false, PrefSync.k, PrefSecret.m, false);
                            int i8 = downItem2.e;
                            if (i8 != 4 && i8 != 5 && i8 != 6 && ((d = DataUtil.d(dialogDownBlob.n0)) == 1 || d == 2 || d == 3)) {
                                DataUtil.a(dialogDownBlob.a0, d, downItem2.n);
                            }
                            final String u2 = MainUtil.u2(dialogDownBlob.n0);
                            Context context = dialogDownBlob.a0;
                            if (context != null) {
                                StringBuilder sb = new StringBuilder();
                                MainDownSvc.n(sb, dialogDownBlob.t0);
                                sb.append("  ");
                                sb.append(dialogDownBlob.n0);
                                String sb2 = sb.toString();
                                Intent intent = new Intent(context, (Class<?>) MainLauncher.class);
                                intent.putExtra("EXTRA_NOTI", dialogDownBlob.m0);
                                if (!TextUtils.isEmpty(u2)) {
                                    intent.putExtra("EXTRA_TYPE", u2);
                                }
                                intent.addFlags(536870912);
                                PendingIntent activity = PendingIntent.getActivity(context, MainDownSvc.u(), intent, 201326592);
                                NotificationCompat.Builder builder = new NotificationCompat.Builder(context, "Download");
                                builder.u.icon = R.drawable.outline_download_done_white_24;
                                builder.e = NotificationCompat.Builder.c(sb2);
                                builder.f = NotificationCompat.Builder.c(context.getString(R.string.down_complete));
                                builder.f(0, 0, false);
                                builder.g = activity;
                                builder.i = 1;
                                builder.o = "com.mycompany.app.soulbrowser.NOTI_GROUP_DOWN";
                                Bitmap B3 = MainUtil.B3(context, R.drawable.baseline_offline_pin_gray_20);
                                if (MainUtil.f6(B3)) {
                                    builder.e(B3);
                                }
                                int i9 = ((int) (dialogDownBlob.o0 % 2147483635)) + 1;
                                Notification b = builder.b();
                                b.flags = (b.flags & (-33)) | 16;
                                NotificationManager q = MainApp.q(context);
                                if (q != null) {
                                    q.notify(i9, b);
                                }
                            }
                            Handler handler3 = dialogDownBlob.i;
                            if (handler3 != null) {
                                handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogDownBlob.11
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        DialogDownBlob dialogDownBlob2 = DialogDownBlob.this;
                                        if (dialogDownBlob2.b0 == null) {
                                            return;
                                        }
                                        DialogDownBlob.B(dialogDownBlob2);
                                        dialogDownBlob2.b0.a(dialogDownBlob2.o0, dialogDownBlob2.m0, u2);
                                        dialogDownBlob2.dismiss();
                                    }
                                });
                            }
                        }
                    }
                    dialogDownBlob.w0 = false;
                }
            });
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        C();
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        OutputStream outputStream = this.p0;
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (Exception unused) {
            }
            this.p0 = null;
        }
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
        }
        MyRoundImage myRoundImage = this.d0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.d0 = null;
        }
        MyLineLinear myLineLinear = this.f0;
        if (myLineLinear != null) {
            myLineLinear.a();
            this.f0 = null;
        }
        MyProgressBar myProgressBar = this.i0;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.i0 = null;
        }
        MyLineText myLineText = this.j0;
        if (myLineText != null) {
            myLineText.u();
            this.j0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.e0 = null;
        this.g0 = null;
        this.h0 = null;
        this.k0 = null;
        this.l0 = null;
        this.m0 = null;
        this.n0 = null;
        this.q0 = null;
        super.dismiss();
    }
}
