package com.mycompany.app.dialog;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.mediarouter.app.MediaRouteButton;
import com.google.android.gms.cast.framework.CastButtonFactory;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogNormal;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.wview.WebCastView;

/* loaded from: classes3.dex */
public class DialogCast extends MyDialogNormal {
    public FrameLayout A;
    public WebCastView B;
    public MediaRouteButton C;
    public FrameLayout D;
    public View E;
    public MyButtonImage F;
    public Context w;
    public MyMainRelative x;
    public FrameLayout y;
    public FrameLayout z;

    public DialogCast(MainActivity mainActivity, int i) {
        super(mainActivity, i);
        if (mainActivity != null) {
            this.w = mainActivity.getApplicationContext();
        } else {
            this.w = getContext().getApplicationContext();
        }
    }

    @Override // com.mycompany.app.view.MyDialogNormal, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.f18667c = false;
        if (this.w == null) {
            return;
        }
        q();
        this.w = null;
        this.x = null;
        this.y = null;
        this.z = null;
        this.F = null;
        super.dismiss();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.f18667c) {
            return false;
        }
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Exception unused) {
            return false;
        }
    }

    public final void o(WebCastView webCastView, MediaRouteButton mediaRouteButton, View view) {
        int i;
        if (PrefMain.s && !PrefSync.j) {
            if (this.y != null && this.z != null) {
                if (webCastView != null && mediaRouteButton != null && view != null && this.B == null && this.x != null) {
                    this.B = webCastView;
                    this.C = mediaRouteButton;
                    this.E = view;
                    try {
                        MainUtil.W6(webCastView);
                        this.B.setMovable(false);
                        FrameLayout frameLayout = this.y;
                        this.A = frameLayout;
                        int i2 = -1;
                        frameLayout.addView(this.B, MainApp.g1, -1);
                        this.A.setVisibility(0);
                        MainUtil.W6(this.E);
                        FrameLayout frameLayout2 = this.z;
                        this.D = frameLayout2;
                        frameLayout2.addView(this.E, -1, -2);
                        this.D.setVisibility(0);
                        MyButtonImage myButtonImage = this.F;
                        if (myButtonImage != null) {
                            myButtonImage.setVisibility(0);
                        }
                        FrameLayout frameLayout3 = this.A;
                        if (frameLayout3 != null && this.C != null) {
                            MyButtonImage myButtonImage2 = this.F;
                            int i3 = -16777216;
                            if (myButtonImage2 != null) {
                                if (MainApp.K1) {
                                    i2 = -16777216;
                                }
                                myButtonImage2.setBgNorColor(i2);
                            } else {
                                if (MainApp.K1) {
                                    i = -16777216;
                                } else {
                                    i = -460552;
                                }
                                frameLayout3.setBackgroundColor(i);
                            }
                            Context context = this.w;
                            MediaRouteButton mediaRouteButton2 = this.C;
                            if (MainApp.K1) {
                                i3 = -328966;
                            }
                            MainUtil.h7(i3, context, mediaRouteButton2);
                        }
                        MediaRouteButton mediaRouteButton3 = this.C;
                        if (mediaRouteButton3 != null) {
                            try {
                                CastButtonFactory.a(this.w, mediaRouteButton3);
                            } catch (Exception unused) {
                            }
                            this.C.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogCast.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    int i4;
                                    DialogCast dialogCast = DialogCast.this;
                                    Context context2 = dialogCast.w;
                                    MediaRouteButton mediaRouteButton4 = dialogCast.C;
                                    if (MainApp.K1) {
                                        i4 = -328966;
                                    } else {
                                        i4 = -16777216;
                                    }
                                    MainUtil.h7(i4, context2, mediaRouteButton4);
                                }
                            });
                            return;
                        }
                        return;
                    } catch (Exception unused2) {
                        q();
                        return;
                    }
                }
                return;
            }
            q();
            return;
        }
        q();
    }

    public final void p(MyMainRelative myMainRelative, FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.x = myMainRelative;
        this.y = frameLayout;
        this.z = frameLayout2;
    }

    public final void q() {
        FrameLayout frameLayout = this.A;
        if (frameLayout != null) {
            try {
                frameLayout.removeAllViewsInLayout();
            } catch (Exception unused) {
            }
            this.A.setVisibility(4);
            this.A.requestLayout();
            this.A = null;
        }
        FrameLayout frameLayout2 = this.D;
        if (frameLayout2 != null) {
            try {
                frameLayout2.removeAllViewsInLayout();
            } catch (Exception unused2) {
            }
            this.D.setVisibility(8);
            this.D = null;
        }
        MyButtonImage myButtonImage = this.F;
        if (myButtonImage != null) {
            myButtonImage.setVisibility(8);
        }
        this.B = null;
        this.C = null;
        this.E = null;
    }
}
