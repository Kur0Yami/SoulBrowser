package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.view.MotionEvent;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogUrlLink;
import com.mycompany.app.fragment.FragmentDragView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainDragAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.web.WebViewActivity;
import java.util.ArrayList;
import kotlin.io.ConstantsKt;
import kotlin.uuid.Uuid;

/* loaded from: classes3.dex */
public class DialogSetPopup extends MyDialogBottom {
    public static final int[] o0 = {0, 2, 4, 8, 16, 32, 64, Uuid.SIZE_BITS, 256, 512, 1024, 2048, ConstantsKt.DEFAULT_BLOCK_SIZE, ConstantsKt.DEFAULT_BUFFER_SIZE};
    public static final int[] p0 = {0, 2, 4, 8, 16, 32, 64, Uuid.SIZE_BITS, 256, 512, 1024, 2048, ConstantsKt.DEFAULT_BLOCK_SIZE};
    /** Tab-bar long-press / Tab menu item labels, indexed by item id (0-12). */
    public static final int[] q0 = {R.string.group_other_tab, R.string.delete_other_tab, R.string.delete_all_tab, R.string.new_url, R.string.group_url, R.string.back_url, R.string.copy_url, R.string.share_url, R.string.open_with, R.string.delete_tab, R.string.tab_homepage, R.string.new_url_current, R.string.mem_limit};
    /** Tab-bar long-press / Tab menu light icons, indexed by item id (0-12). */
    public static final int[] r0 = {R.drawable.outline_library_add_black_24, R.drawable.outline_cancel_black_24, R.drawable.outline_close_black_24, R.drawable.outline_add_box_black_24, R.drawable.outline_library_add_black_24, R.drawable.outline_flip_to_back_black_24, R.drawable.outline_link_black_24, R.drawable.outline_share_black_24, R.drawable.outline_open_with_black_24, R.drawable.outline_close_black_24, R.drawable.outline_home_black_24, R.drawable.outline_tab_new_right_black_24, R.drawable.outline_energy_savings_leaf_black_24};
    /** Tab-bar long-press / Tab menu dark icons, indexed by item id (0-12). */
    public static final int[] s0 = {R.drawable.outline_library_add_dark_24, R.drawable.outline_cancel_dark_24, R.drawable.outline_close_dark_24, R.drawable.outline_add_box_dark_24, R.drawable.outline_library_add_dark_24, R.drawable.outline_flip_to_back_dark_24, R.drawable.outline_link_dark_24, R.drawable.outline_share_dark_24, R.drawable.outline_open_with_dark_24, R.drawable.outline_close_dark_24, R.drawable.outline_home_dark_24, R.drawable.outline_tab_new_right_dark_24, R.drawable.outline_energy_savings_leaf_dark_24};
    /** URL-bar long-press menu item labels, indexed by item id (0-7). */
    public static final int[] t0 = {R.string.copy_url, R.string.share_url, R.string.paste_url, R.string.open_copied_url, R.string.open_new_tab, R.string.open_with, R.string.delete_cookie, R.string.view_certi};
    /** URL-bar long-press menu light icons, indexed by item id (0-7). */
    public static final int[] u0 = {R.drawable.outline_link_black_24, R.drawable.outline_share_black_24, R.drawable.outline_content_paste_black_24, R.drawable.outline_open_in_new_black_24, R.drawable.outline_add_box_black_24, R.drawable.outline_open_with_black_24, R.drawable.outline_vpn_key_black_24, R.drawable.outline_security_black_24};
    /** URL-bar long-press menu dark icons, indexed by item id (0-7). */
    public static final int[] v0 = {R.drawable.outline_link_dark_24, R.drawable.outline_share_dark_24, R.drawable.outline_content_paste_dark_24, R.drawable.outline_open_in_new_dark_24, R.drawable.outline_add_box_dark_24, R.drawable.outline_open_with_dark_24, R.drawable.outline_vpn_key_dark_24, R.drawable.outline_security_dark_24};
    /** Text-selection ActionMode item labels, indexed by item id (0-6). */
    public static final int[] w0 = {R.string.copy_text, R.string.share, R.string.select_all, R.string.search_url, R.string.google_trans, R.string.search_in_preview, R.string.find_word};
    /** Text-selection ActionMode light icons, indexed by item id (0-6). */
    public static final int[] x0 = {R.drawable.outline_content_copy_black_24, R.drawable.outline_share_black_24, R.drawable.outline_remove_selection_black_24, R.drawable.outline_search_black_24, R.drawable.outline_g_translate_black_24, R.drawable.outline_visibility_black_24, R.drawable.outline_find_in_page_black_24};
    /** Text-selection ActionMode dark icons, indexed by item id (0-6). */
    public static final int[] y0 = {R.drawable.outline_content_copy_dark_24, R.drawable.outline_share_dark_24, R.drawable.outline_remove_selection_dark_24, R.drawable.outline_search_dark_24, R.drawable.outline_g_translate_dark_24, R.drawable.outline_visibility_dark_24, R.drawable.outline_find_in_page_dark_24};
    public WebViewActivity a0;
    public Context b0;
    public DialogSetFull.DialogApplyListener c0;
    public int d0;
    public MyDialogLinear e0;
    public MyLineText f0;
    public FragmentDragView g0;
    public AppCompatTextView h0;
    public MyLineText i0;
    public MainDragAdapter j0;
    public DialogSetMsg k0;
    public int l0;
    public String m0;
    public ArrayList n0;

    public static void B(DialogSetPopup dialogSetPopup, int i, boolean z) {
        int i2;
        if (dialogSetPopup.d0 == 0) {
            i2 = o0[i];
        } else if (dialogSetPopup.d0 >= 2) {
            i2 = 1 << i;
        } else {
            i2 = p0[i];
        }
        if (z) {
            dialogSetPopup.l0 = i2 | dialogSetPopup.l0;
        } else {
            dialogSetPopup.l0 = (~i2) & dialogSetPopup.l0;
        }
        dialogSetPopup.F();
    }

    public final ArrayList C(boolean z) {
        boolean z2;
        int i;
        boolean z3;
        int i2;
        int i3;
        int i4 = this.d0;
        int[] g3 = MainUtil.g3(i4, z);
        ArrayList arrayList = new ArrayList();
        if (i4 == 0) {
            for (int i5 = 0; i5 < 13; i5++) {
                int i6 = g3[i5];
                int i7 = this.l0;
                int i8 = o0[i6];
                if ((i7 & i8) == i8) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (PrefSync.k && i6 == 6) {
                    if (MainApp.K1) {
                        i3 = R.drawable.outline_mood_dark_24;
                    } else {
                        i3 = R.drawable.outline_mood_black_24;
                    }
                    arrayList.add(new MainDragAdapter.MainDragItem(i6, i3, R.string.normal_tab, z3));
                } else {
                    if (MainApp.K1) {
                        i2 = MainConst.j[i6];
                    } else {
                        i2 = MainConst.i[i6];
                    }
                    arrayList.add(new MainDragAdapter.MainDragItem(i6, i2, MainConst.h[i6], z3));
                }
            }
        } else if (i4 == 2) {
            for (int i9 = 0; i9 < 13; i9++) {
                int i10 = g3[i9];
                boolean z4 = (this.l0 & (1 << i10)) != 0;
                arrayList.add(new MainDragAdapter.MainDragItem(i10, MainApp.K1 ? s0[i10] : r0[i10], q0[i10], z4));
            }
        } else if (i4 == 3) {
            for (int i9 = 0; i9 < 8; i9++) {
                int i10 = g3[i9];
                boolean z4 = (this.l0 & (1 << i10)) != 0;
                arrayList.add(new MainDragAdapter.MainDragItem(i10, MainApp.K1 ? v0[i10] : u0[i10], t0[i10], z4));
            }
        } else if (i4 == 4) {
            for (int i9 = 0; i9 < 7; i9++) {
                int i10 = g3[i9];
                boolean z4 = (this.l0 & (1 << i10)) != 0;
                arrayList.add(new MainDragAdapter.MainDragItem(i10, MainApp.K1 ? y0[i10] : x0[i10], w0[i10], z4));
            }
        } else {
            for (int i9 = 0; i9 < 12; i9++) {
                int i10 = g3[i9];
                int i11 = this.l0;
                int i12 = p0[i10];
                if ((i11 & i12) == i12) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (MainApp.K1) {
                    i = MainConst.n[i10];
                } else {
                    i = MainConst.m[i10];
                }
                arrayList.add(new MainDragAdapter.MainDragItem(i10, i, MainConst.l[i10], z2));
            }
        }
        return arrayList;
    }

    public final void D() {
        DialogSetMsg dialogSetMsg = this.k0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.k0 = null;
        }
    }

    public final void E(boolean z) {
        if (this.d0 == 0) {
            if (PrefZone.e0 != this.l0 || !MainUtil.q5(PrefZone.g0, this.m0)) {
                PrefZone.e0 = this.l0;
                String str = this.m0;
                PrefZone.g0 = str;
                if (str == null) {
                    PrefZone.g0 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                PrefZone r = PrefZone.r(this.b0, false);
                if (z) {
                    r.n(PrefZone.e0, "mUseLink8");
                    r.p("mLinkOrder7", PrefZone.g0);
                } else {
                    r.q("mUseLink8");
                    r.q("mLinkOrder7");
                }
                r.a();
                DialogSetFull.DialogApplyListener dialogApplyListener = this.c0;
                if (dialogApplyListener != null) {
                    dialogApplyListener.a();
                }
            }
        } else if (this.d0 == 2) {
            if (PrefWeb.a0 != this.l0 || !MainUtil.q5(PrefWeb.e0, this.m0)) {
                PrefWeb.a0 = this.l0;
                String str3 = this.m0;
                PrefWeb.e0 = str3;
                if (str3 == null) {
                    PrefWeb.e0 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                PrefWeb r3 = PrefWeb.r(this.b0, false);
                if (z) {
                    r3.n(PrefWeb.a0, "mTabBarMenu");
                    r3.p("mTabBarOrder", PrefWeb.e0);
                } else {
                    r3.q("mTabBarMenu");
                    r3.q("mTabBarOrder");
                }
                r3.a();
                DialogSetFull.DialogApplyListener dialogApplyListener3 = this.c0;
                if (dialogApplyListener3 != null) {
                    dialogApplyListener3.a();
                }
            }
        } else if (this.d0 == 3) {
            if (PrefWeb.f0 != this.l0 || !MainUtil.q5(PrefWeb.g0, this.m0)) {
                PrefWeb.f0 = this.l0;
                String str4 = this.m0;
                PrefWeb.g0 = str4;
                if (str4 == null) {
                    PrefWeb.g0 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                PrefWeb r4 = PrefWeb.r(this.b0, false);
                if (z) {
                    r4.n(PrefWeb.f0, "mUrlBarMenu");
                    r4.p("mUrlBarOrder", PrefWeb.g0);
                } else {
                    r4.q("mUrlBarMenu");
                    r4.q("mUrlBarOrder");
                }
                r4.a();
                DialogSetFull.DialogApplyListener dialogApplyListener4 = this.c0;
                if (dialogApplyListener4 != null) {
                    dialogApplyListener4.a();
                }
            }
        } else if (this.d0 == 4) {
            if (PrefWeb.h0 != this.l0 || !MainUtil.q5(PrefWeb.i0, this.m0)) {
                PrefWeb.h0 = this.l0;
                String str5 = this.m0;
                PrefWeb.i0 = str5;
                if (str5 == null) {
                    PrefWeb.i0 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                PrefWeb r5 = PrefWeb.r(this.b0, false);
                if (z) {
                    r5.n(PrefWeb.h0, "mTextSelectMenu");
                    r5.p("mTextSelectOrder", PrefWeb.i0);
                } else {
                    r5.q("mTextSelectMenu");
                    r5.q("mTextSelectOrder");
                }
                r5.a();
                DialogSetFull.DialogApplyListener dialogApplyListener5 = this.c0;
                if (dialogApplyListener5 != null) {
                    dialogApplyListener5.a();
                }
            }
        } else if (PrefZone.f0 != this.l0 || !MainUtil.q5(PrefZone.h0, this.m0)) {
            PrefZone.f0 = this.l0;
            String str2 = this.m0;
            PrefZone.h0 = str2;
            if (str2 == null) {
                PrefZone.h0 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            PrefZone r2 = PrefZone.r(this.b0, false);
            if (z) {
                r2.n(PrefZone.f0, "mUseImg5");
                r2.p("mImgOrder4", PrefZone.h0);
            } else {
                r2.q("mUseImg5");
                r2.q("mImgOrder4");
            }
            r2.a();
            DialogSetFull.DialogApplyListener dialogApplyListener2 = this.c0;
            if (dialogApplyListener2 != null) {
                dialogApplyListener2.a();
            }
        }
        if (z) {
            dismiss();
        }
    }

    public final void F() {
        int i;
        int i2;
        AppCompatTextView appCompatTextView = this.h0;
        if (appCompatTextView == null) {
            return;
        }
        if (this.l0 == 0) {
            if (MainApp.K1) {
                i2 = -8355712;
            } else {
                i2 = -2434342;
            }
            appCompatTextView.setTextColor(i2);
            this.h0.setEnabled(false);
            return;
        }
        if (MainApp.K1) {
            i = -328966;
        } else {
            i = -14784824;
        }
        appCompatTextView.setTextColor(i);
        this.h0.setEnabled(true);
    }

    /** Posts the shared UI-builder runnable (package-private $1) so other packages can open this dialog. */
    public final void G() {
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetPopup.1
            @Override // java.lang.Runnable
            public final void run() {
                /* implemented in DialogSetPopup$1.smali */
            }
        });
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        D();
        MyDialogLinear myDialogLinear = this.e0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.e0 = null;
        }
        FragmentDragView fragmentDragView = this.g0;
        if (fragmentDragView != null) {
            if (fragmentDragView.f15598c) {
                fragmentDragView.f15598c = false;
                fragmentDragView.stopNestedScroll();
                MotionEvent motionEvent = fragmentDragView.W;
                if (motionEvent != null) {
                    motionEvent.recycle();
                    fragmentDragView.W = null;
                }
            }
            fragmentDragView.n0 = null;
            this.g0 = null;
        }
        MyLineText myLineText = this.i0;
        if (myLineText != null) {
            myLineText.u();
            this.i0 = null;
        }
        MainDragAdapter mainDragAdapter = this.j0;
        if (mainDragAdapter != null) {
            mainDragAdapter.i = mainDragAdapter.getCount();
            mainDragAdapter.f16533c = null;
            mainDragAdapter.f = null;
            mainDragAdapter.g = null;
            mainDragAdapter.h = null;
            this.j0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.f0 = null;
        this.h0 = null;
        this.n0 = null;
        this.m0 = null;
        super.dismiss();
    }
}
