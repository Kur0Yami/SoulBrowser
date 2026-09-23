package com.mycompany.app.dialog;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.image.MainImageCropper;
import com.mycompany.app.main.list.MainListAlbum;
import com.mycompany.app.main.list.MainListCast;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyLineView;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.web.WebShortcut;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogEditShort extends MyDialogBottom {
    public static final /* synthetic */ int u0 = 0;
    public MainActivity a0;
    public Context b0;
    public EditShortListener c0;
    public String d0;
    public String e0;
    public final int f0;
    public MyDialogLinear g0;
    public MyRoundImage h0;
    public MyLineView i0;
    public View j0;
    public MyEditText k0;
    public AppCompatTextView l0;
    public MyEditText m0;
    public MyLineText n0;
    public boolean o0;
    public boolean p0;
    public MyPopupMenu q0;
    public Uri r0;
    public String s0;
    public boolean t0;

    /* loaded from: classes3.dex */
    public interface EditShortListener {
        void a();

        Bitmap getIcon();
    }

    public DialogEditShort(MainActivity mainActivity, String str, String str2, int i, EditShortListener editShortListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = editShortListener;
        this.d0 = str;
        this.e0 = str2;
        this.f0 = i;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditShort.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogEditShort.C(DialogEditShort.this);
            }
        });
    }

    public static void B(DialogEditShort dialogEditShort, String str, String str2) {
        Intent intent;
        int i;
        Icon icon;
        if (dialogEditShort.b0 != null) {
            int i2 = dialogEditShort.f0;
            if (i2 == 1) {
                intent = new Intent(dialogEditShort.b0, (Class<?>) MainListAlbum.class);
                intent.putExtra("EXTRA_SHORT", true);
            } else if (i2 == 2) {
                intent = new Intent(dialogEditShort.b0, (Class<?>) MainListCast.class);
                intent.putExtra("EXTRA_SHORT", true);
            } else {
                Intent intent2 = new Intent(dialogEditShort.b0, (Class<?>) WebShortcut.class);
                intent2.setData(Uri.parse(str));
                intent = intent2;
            }
            intent.setAction("android.intent.action.VIEW");
            if (Build.VERSION.SDK_INT >= 26) {
                ShortcutManager shortcutManager = (ShortcutManager) dialogEditShort.b0.getSystemService(ShortcutManager.class);
                if (shortcutManager != null && shortcutManager.isRequestPinShortcutSupported()) {
                    Bitmap j4 = MainUtil.j4(dialogEditShort.h0, 1.0f);
                    if (MainUtil.f6(j4)) {
                        icon = Icon.createWithBitmap(j4);
                    } else {
                        icon = null;
                    }
                    if (icon == null) {
                        icon = Icon.createWithResource(dialogEditShort.b0, R.mipmap.ic_launcher);
                    }
                    shortcutManager.requestPinShortcut(new ShortcutInfo.Builder(dialogEditShort.b0, Long.toString(System.currentTimeMillis())).setIntent(intent).setShortLabel(str2).setIcon(icon).build(), null);
                    Handler handler = dialogEditShort.i;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditShort.13
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogEditShort dialogEditShort2 = DialogEditShort.this;
                                EditShortListener editShortListener = dialogEditShort2.c0;
                                if (editShortListener != null) {
                                    editShortListener.a();
                                }
                                dialogEditShort2.dismiss();
                            }
                        });
                        return;
                    }
                    return;
                }
                Handler handler2 = dialogEditShort.i;
                if (handler2 != null) {
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditShort.12
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainUtil.e8(DialogEditShort.this.b0, R.string.not_supported);
                        }
                    });
                    return;
                }
                return;
            }
            Intent intent3 = new Intent();
            intent3.putExtra("android.intent.extra.shortcut.INTENT", intent);
            intent3.putExtra("android.intent.extra.shortcut.NAME", str2);
            intent3.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
            Bitmap j42 = MainUtil.j4(dialogEditShort.h0, 1.0f);
            if (MainUtil.f6(j42)) {
                Context context = dialogEditShort.b0;
                int i3 = 96;
                if (context != null) {
                    Drawable S = MainUtil.S(context, R.mipmap.ic_launcher);
                    if (S != null) {
                        i = S.getIntrinsicWidth();
                    } else {
                        i = 0;
                    }
                    if (i > 0 || (i = ((ActivityManager) dialogEditShort.b0.getSystemService("activity")).getLauncherLargeIconSize()) > 0) {
                        i3 = i;
                    }
                }
                Bitmap k3 = MainUtil.k3(i3, i3, j42);
                if (MainUtil.f6(k3)) {
                    j42 = k3;
                }
            }
            if (MainUtil.f6(j42)) {
                intent3.putExtra("android.intent.extra.shortcut.ICON", j42);
            } else {
                intent3.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(dialogEditShort.b0, R.mipmap.ic_launcher));
            }
            dialogEditShort.b0.sendBroadcast(intent3);
            Handler handler3 = dialogEditShort.i;
            if (handler3 == null) {
                return;
            }
            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditShort.14
                @Override // java.lang.Runnable
                public final void run() {
                    DialogEditShort.this.dismiss();
                }
            });
        }
    }

    public static void C(DialogEditShort dialogEditShort) {
        View view;
        MyEditText myEditText;
        Context context = dialogEditShort.b0;
        if (context != null) {
            MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
            int G = (int) MainUtil.G(context, 72.0f);
            MyLineFrame myLineFrame = new MyLineFrame(context);
            myLineFrame.a(MainApp.E1);
            q.addView(myLineFrame, -1, G);
            MyRoundImage myRoundImage = new MyRoundImage(context);
            myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myRoundImage.setCircleRadius(MainApp.f1 / 2.0f);
            int i = MainApp.f1;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
            layoutParams.gravity = 8388627;
            layoutParams.setMarginStart(MainApp.E1);
            myLineFrame.addView(myRoundImage, layoutParams);
            MyLineView myLineView = new MyLineView(context);
            myLineView.a(MainUtil.G(context, 2.0f));
            int i2 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i2);
            layoutParams2.gravity = 8388627;
            layoutParams2.setMarginStart(MainApp.F1 + MainApp.G1);
            myLineFrame.addView(myLineView, layoutParams2);
            AppCompatTextView appCompatTextView = null;
            if (PrefZone.A) {
                view = new View(context);
                view.setBackgroundResource(R.drawable.noti_dot_red);
                int i3 = MainApp.F1;
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i3, i3);
                int G2 = (int) MainUtil.G(context, 9.0f);
                layoutParams3.topMargin = G2;
                layoutParams3.setMarginStart(G2);
                myLineFrame.addView(view, layoutParams3);
            } else {
                view = null;
            }
            MyEditText myEditText2 = new MyEditText(context);
            myEditText2.setGravity(16);
            myEditText2.setSingleLine(true);
            myEditText2.setTextDirection(3);
            myEditText2.setTextSize(1, 16.0f);
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 29) {
                myEditText2.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditText2.setHint(R.string.name);
            myEditText2.setHintTextColor(-8289919);
            myEditText2.setImeOptions(268435456);
            myEditText2.setBackground(null);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams4.gravity = 8388627;
            layoutParams4.setMarginStart(G);
            layoutParams4.setMarginEnd(MainApp.E1);
            myLineFrame.addView(myEditText2, layoutParams4);
            if (dialogEditShort.f0 == 0) {
                int G3 = (int) MainUtil.G(context, 88.0f);
                int G4 = (int) MainUtil.G(context, 12.0f);
                FrameLayout frameLayout = new FrameLayout(context);
                int i5 = MainApp.E1;
                frameLayout.setPadding(i5, G4, i5, G4);
                frameLayout.setVisibility(8);
                q.addView(frameLayout, -1, G3);
                AppCompatTextView j = com.google.android.gms.internal.mlkit_vision_text_common.a.j(context, null, 1, 14.0f);
                frameLayout.addView(j, -2, -2);
                myEditText = new MyEditText(context);
                com.google.android.gms.internal.mlkit_vision_text_common.a.z(myEditText, 16, true, 3);
                myEditText.setTextSize(1, 16.0f);
                if (i4 >= 29) {
                    myEditText.setTextCursorDrawable(R.drawable.edit_cursor);
                }
                myEditText.setHintTextColor(-8289919);
                myEditText.setInputType(16);
                myEditText.setImeOptions(268435456);
                myEditText.setBackground(null);
                FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, MainApp.g1);
                layoutParams5.gravity = 8388691;
                frameLayout.addView(myEditText, layoutParams5);
                appCompatTextView = j;
            } else {
                myEditText = null;
            }
            MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context, 17, 1, 16.0f);
            r.setText(R.string.apply);
            r.t(MainApp.E1);
            q.addView(r, -1, MainApp.g1);
            dialogEditShort.g0 = q;
            dialogEditShort.h0 = myRoundImage;
            dialogEditShort.i0 = myLineView;
            dialogEditShort.j0 = view;
            dialogEditShort.k0 = myEditText2;
            dialogEditShort.l0 = appCompatTextView;
            dialogEditShort.m0 = myEditText;
            dialogEditShort.n0 = r;
            Handler handler = dialogEditShort.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditShort.2
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogEditShort dialogEditShort2 = DialogEditShort.this;
                    if (dialogEditShort2.g0 != null && dialogEditShort2.b0 != null) {
                        if (MainApp.K1) {
                            dialogEditShort2.i0.c(MainApp.n1, -328966);
                            dialogEditShort2.i0.setBackgroundResource(R.drawable.selector_overlay_dark);
                            dialogEditShort2.k0.setTextColor(-328966);
                            dialogEditShort2.n0.setBackgroundResource(R.drawable.selector_normal_dark);
                            dialogEditShort2.n0.setTextColor(-328966);
                        } else {
                            dialogEditShort2.i0.setLineColor(-14784824);
                            dialogEditShort2.i0.setBackgroundResource(R.drawable.selector_overlay);
                            dialogEditShort2.k0.setTextColor(-16777216);
                            dialogEditShort2.n0.setBackgroundResource(R.drawable.selector_normal);
                            dialogEditShort2.n0.setTextColor(-14784824);
                        }
                        dialogEditShort2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditShort.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                final DialogEditShort dialogEditShort3 = DialogEditShort.this;
                                MyPopupMenu myPopupMenu = dialogEditShort3.q0;
                                if (myPopupMenu == null) {
                                    if (myPopupMenu != null) {
                                        dialogEditShort3.Y = null;
                                        myPopupMenu.a();
                                        dialogEditShort3.q0 = null;
                                    }
                                    if (dialogEditShort3.a0 != null && view2 != null) {
                                        if (PrefZone.A) {
                                            PrefZone.A = false;
                                            PrefSet.d(15, dialogEditShort3.b0, "mNotiShort", false);
                                            View view3 = dialogEditShort3.j0;
                                            if (view3 != null) {
                                                view3.setVisibility(8);
                                                dialogEditShort3.j0 = null;
                                            }
                                        }
                                        dialogEditShort3.r0 = null;
                                        dialogEditShort3.s0 = null;
                                        ArrayList arrayList = new ArrayList();
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.default_image));
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.image));
                                        arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.camera));
                                        MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogEditShort3.a0, dialogEditShort3.g0, view2, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogEditShort.15
                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                            public final void a() {
                                                int i6 = DialogEditShort.u0;
                                                DialogEditShort dialogEditShort4 = DialogEditShort.this;
                                                MyPopupMenu myPopupMenu3 = dialogEditShort4.q0;
                                                if (myPopupMenu3 != null) {
                                                    dialogEditShort4.Y = null;
                                                    myPopupMenu3.a();
                                                    dialogEditShort4.q0 = null;
                                                }
                                            }

                                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                            public final boolean b(View view4, int i6) {
                                                DialogEditShort dialogEditShort4 = DialogEditShort.this;
                                                if (i6 == 1) {
                                                    MainUtil.O4(dialogEditShort4.a0, 9);
                                                    return true;
                                                }
                                                if (i6 == 2) {
                                                    if (MainUtil.D4(dialogEditShort4.a0, 30)) {
                                                        return true;
                                                    }
                                                    dialogEditShort4.r0 = MainUtil.C4(9, dialogEditShort4.a0, false);
                                                    return true;
                                                }
                                                int i7 = DialogEditShort.u0;
                                                dialogEditShort4.F(null, true);
                                                return true;
                                            }
                                        });
                                        dialogEditShort3.q0 = myPopupMenu2;
                                        dialogEditShort3.Y = myPopupMenu2;
                                    }
                                }
                            }
                        });
                        dialogEditShort2.k0.setText(dialogEditShort2.e0);
                        dialogEditShort2.k0.setElineColor(-14784824);
                        dialogEditShort2.k0.setSelectAllOnFocus(true);
                        dialogEditShort2.F(null, true);
                        dialogEditShort2.k0.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.dialog.DialogEditShort.4
                            @Override // android.view.View.OnFocusChangeListener
                            public final void onFocusChange(View view2, boolean z) {
                                DialogEditShort dialogEditShort3;
                                MyEditText myEditText3;
                                if (z && (myEditText3 = (dialogEditShort3 = DialogEditShort.this).k0) != null) {
                                    myEditText3.setElineColor(-14784824);
                                    MyEditText myEditText4 = dialogEditShort3.m0;
                                    if (myEditText4 != null) {
                                        myEditText4.setElineColor(-2434342);
                                    }
                                }
                            }
                        });
                        dialogEditShort2.k0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.dialog.DialogEditShort.5
                            @Override // android.text.TextWatcher
                            public final void afterTextChanged(Editable editable) {
                                DialogEditShort dialogEditShort3 = DialogEditShort.this;
                                if (dialogEditShort3.t0 && dialogEditShort3.h0 != null && !TextUtils.isEmpty(editable)) {
                                    dialogEditShort3.h0.y(R.mipmap.ic_launcher, editable.toString());
                                }
                            }

                            @Override // android.text.TextWatcher
                            public final void beforeTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
                            }

                            @Override // android.text.TextWatcher
                            public final void onTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
                            }
                        });
                        if (dialogEditShort2.f0 == 0) {
                            AppCompatTextView appCompatTextView2 = dialogEditShort2.l0;
                            if (appCompatTextView2 != null) {
                                if (MainApp.K1) {
                                    appCompatTextView2.setTextColor(-4079167);
                                    dialogEditShort2.m0.setTextColor(-328966);
                                } else {
                                    appCompatTextView2.setTextColor(-10395295);
                                    dialogEditShort2.m0.setTextColor(-16777216);
                                }
                                dialogEditShort2.l0.setText(R.string.url);
                                dialogEditShort2.m0.setHint("https://...");
                                dialogEditShort2.m0.setText(dialogEditShort2.d0);
                                dialogEditShort2.m0.setElineColor(-2434342);
                                dialogEditShort2.m0.setSelectAllOnFocus(true);
                                dialogEditShort2.m0.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.dialog.DialogEditShort.6
                                    @Override // android.view.View.OnFocusChangeListener
                                    public final void onFocusChange(View view2, boolean z) {
                                        DialogEditShort dialogEditShort3;
                                        MyEditText myEditText3;
                                        if (!z || (myEditText3 = (dialogEditShort3 = DialogEditShort.this).k0) == null) {
                                            return;
                                        }
                                        myEditText3.setElineColor(-2434342);
                                        dialogEditShort3.m0.setElineColor(-14784824);
                                    }
                                });
                                dialogEditShort2.m0.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.dialog.DialogEditShort.7
                                    @Override // android.widget.TextView.OnEditorActionListener
                                    public final boolean onEditorAction(TextView textView, int i6, KeyEvent keyEvent) {
                                        DialogEditShort dialogEditShort3 = DialogEditShort.this;
                                        MyEditText myEditText3 = dialogEditShort3.m0;
                                        if (myEditText3 == null || dialogEditShort3.o0) {
                                            return true;
                                        }
                                        dialogEditShort3.o0 = true;
                                        myEditText3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditShort.7.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                                                DialogEditShort.D(DialogEditShort.this);
                                                DialogEditShort.this.o0 = false;
                                            }
                                        });
                                        return true;
                                    }
                                });
                            } else {
                                return;
                            }
                        }
                        dialogEditShort2.n0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogEditShort.8
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                DialogEditShort dialogEditShort3 = DialogEditShort.this;
                                MyLineText myLineText = dialogEditShort3.n0;
                                if (myLineText == null || dialogEditShort3.o0) {
                                    return;
                                }
                                dialogEditShort3.o0 = true;
                                myLineText.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditShort.8.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                                        DialogEditShort.D(DialogEditShort.this);
                                        DialogEditShort.this.o0 = false;
                                    }
                                });
                            }
                        });
                        dialogEditShort2.g(dialogEditShort2.g0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogEditShort.9
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view2) {
                                DialogEditShort dialogEditShort3 = DialogEditShort.this;
                                if (dialogEditShort3.g0 == null) {
                                    return;
                                }
                                dialogEditShort3.show();
                            }
                        });
                    }
                }
            });
        }
    }

    public static void D(DialogEditShort dialogEditShort) {
        final String str;
        MyEditText myEditText = dialogEditShort.k0;
        if (myEditText == null) {
            return;
        }
        final String Q0 = MainUtil.Q0(myEditText, true);
        if (TextUtils.isEmpty(Q0)) {
            MainUtil.b7(dialogEditShort.k0);
            MainUtil.e8(dialogEditShort.b0, R.string.input_name);
            return;
        }
        MyEditText myEditText2 = dialogEditShort.m0;
        if (myEditText2 != null) {
            str = MainUtil.Q0(myEditText2, true);
            if (TextUtils.isEmpty(str)) {
                MainUtil.b7(dialogEditShort.m0);
                MainUtil.e8(dialogEditShort.b0, R.string.input_url);
                return;
            }
        } else {
            str = null;
        }
        dialogEditShort.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditShort.11
            @Override // java.lang.Runnable
            public final void run() {
                DialogEditShort.B(DialogEditShort.this, str, Q0);
            }
        });
    }

    public final boolean E(int i, int i2, Intent intent) {
        Uri uri = null;
        if (i == 9) {
            Uri uri2 = this.r0;
            this.r0 = null;
            if (i2 == -1) {
                if (intent != null) {
                    uri = intent.getData();
                }
                if (uri != null) {
                    uri2 = uri;
                }
                MainUtil.z7(this.b0, uri2);
                if (this.a0 != null) {
                    if (uri2 == null) {
                        MainUtil.e8(this.b0, R.string.invalid_path);
                        return true;
                    }
                    String m0 = MainUtil.m0(this.b0);
                    this.s0 = m0;
                    if (TextUtils.isEmpty(m0)) {
                        MainUtil.e8(this.b0, R.string.invalid_path);
                        return true;
                    }
                    Intent intent2 = new Intent(this.b0, (Class<?>) MainImageCropper.class);
                    intent2.setData(uri2);
                    intent2.putExtra("EXTRA_DST", this.s0);
                    intent2.putExtra("EXTRA_ICON", true);
                    this.a0.t0(intent2, 12);
                    return true;
                }
            }
        } else {
            if (i != 12) {
                return false;
            }
            String str = this.s0;
            this.s0 = null;
            if (i2 == -1) {
                if (!TextUtils.isEmpty(str) && new File(str).exists()) {
                    F(str, false);
                    return true;
                }
                MainUtil.e8(this.b0, R.string.invalid_path);
                return true;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    public final void F(String str, boolean z) {
        Bitmap bitmap;
        if (this.h0 == null) {
            return;
        }
        this.p0 = z;
        if (!z && !TextUtils.isEmpty(str)) {
            ?? obj = new Object();
            obj.f16554a = 1;
            obj.q = str;
            obj.t = 2;
            obj.u = true;
            DisplayImageOptions.Builder builder = new DisplayImageOptions.Builder();
            builder.f20960a = true;
            builder.b = true;
            Bitmap.Config config = Bitmap.Config.RGB_565;
            builder.a();
            builder.f = new Object();
            ImageLoader.f().c(obj, this.h0, new DisplayImageOptions(builder), new SimpleImageLoadingListener() { // from class: com.mycompany.app.dialog.DialogEditShort.10
                @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                public final void a(MainItem.ViewItem viewItem, View view, FailReason failReason) {
                    DialogEditShort dialogEditShort = DialogEditShort.this;
                    MyRoundImage myRoundImage = dialogEditShort.h0;
                    if (myRoundImage == null) {
                        return;
                    }
                    if (dialogEditShort.f0 == 0) {
                        dialogEditShort.t0 = true;
                        dialogEditShort.h0.y(R.mipmap.ic_launcher, MainUtil.Q0(dialogEditShort.k0, true));
                    } else {
                        dialogEditShort.t0 = false;
                        myRoundImage.setImageResource(R.mipmap.ic_launcher);
                    }
                }

                @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                public final void c(MainItem.ViewItem viewItem, View view, Bitmap bitmap2) {
                    DialogEditShort dialogEditShort = DialogEditShort.this;
                    MyRoundImage myRoundImage = dialogEditShort.h0;
                    if (myRoundImage == null) {
                        return;
                    }
                    dialogEditShort.t0 = false;
                    myRoundImage.setImageBitmap(bitmap2);
                }
            });
            return;
        }
        if (this.f0 == 0) {
            EditShortListener editShortListener = this.c0;
            if (editShortListener != null) {
                bitmap = editShortListener.getIcon();
            } else {
                bitmap = null;
            }
            if (!MainUtil.f6(bitmap)) {
                bitmap = MainUtil.n4(MainUtil.O1(this.d0));
            }
            if (MainUtil.f6(bitmap)) {
                this.t0 = false;
                this.h0.setImageBitmap(bitmap);
                return;
            } else {
                this.t0 = true;
                this.h0.y(R.mipmap.ic_launcher, MainUtil.Q0(this.k0, true));
                return;
            }
        }
        this.t0 = false;
        this.h0.setImageResource(R.mipmap.ic_launcher);
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        MyPopupMenu myPopupMenu = this.q0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.q0 = null;
        }
        MyDialogLinear myDialogLinear = this.g0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.g0 = null;
        }
        MyRoundImage myRoundImage = this.h0;
        if (myRoundImage != null) {
            myRoundImage.k();
            this.h0 = null;
        }
        MyLineView myLineView = this.i0;
        if (myLineView != null) {
            myLineView.b();
            this.i0 = null;
        }
        MyEditText myEditText = this.k0;
        if (myEditText != null) {
            myEditText.c();
            this.k0 = null;
        }
        MyEditText myEditText2 = this.m0;
        if (myEditText2 != null) {
            myEditText2.c();
            this.m0 = null;
        }
        MyLineText myLineText = this.n0;
        if (myLineText != null) {
            myLineText.u();
            this.n0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.j0 = null;
        this.l0 = null;
        this.r0 = null;
        this.s0 = null;
        super.dismiss();
    }
}
