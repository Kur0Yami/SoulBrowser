package com.mycompany.app.web;

import android.text.TextUtils;
import com.mycompany.app.db.book.DbBookTab;
import com.mycompany.app.dialog.DialogConfirm;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.web.WebTabAdapter.WebTabItem;

/** Per-tab homepage (Zen-style) helpers kept in a secondary DEX. */
public final class TabHomepage {
    private TabHomepage() {
    }

    public static void a(WebViewActivity webViewActivity, int i, boolean z) {
        WebTabItem E;
        if (webViewActivity == null || webViewActivity.b3 == null || (E = webViewActivity.b3.E(i)) == null) {
            return;
        }
        String str = E.r;
        if (!z && !TextUtils.isEmpty(str)) {
            webViewActivity.U4();
            if (i != webViewActivity.P2) {
                webViewActivity.c7(i, true);
            }
            webViewActivity.S5(str, null);
            return;
        }
        final String s3;
        if (i == webViewActivity.P2) {
            s3 = webViewActivity.s3(true);
        } else {
            s3 = E.j;
            if (TextUtils.isEmpty(s3)) {
                MainUtil.e8(webViewActivity, R.string.empty);
                return;
            }
        }
        if (TextUtils.isEmpty(s3)) {
            return;
        }
        webViewActivity.U4();
        final TabHomepage$1 listener = new TabHomepage$1(webViewActivity, E, s3);
        String message = webViewActivity.getString(R.string.set_homepage_confirm) + "\n\n" + s3;
        DialogConfirm dialogConfirm = new DialogConfirm(webViewActivity, message, listener);
        listener.d = dialogConfirm;
    }

    /* synthetic */ static final class TabHomepage$1 implements DialogConfirm.DialogConfListener {
        final WebViewActivity a;
        final WebTabItem b;
        final String c;
        DialogConfirm d;

        TabHomepage$1(WebViewActivity webViewActivity, WebTabItem webTabItem, String str) {
            this.a = webViewActivity;
            this.b = webTabItem;
            this.c = str;
        }

        @Override
        public void a(boolean z) {
            DialogConfirm dialogConfirm = this.d;
            if (dialogConfirm != null) {
                dialogConfirm.dismiss();
            }
            WebTabItem webTabItem = this.b;
            String str = this.c;
            if (webTabItem == null || str == null) {
                return;
            }
            webTabItem.r = str;
            DbBookTab.B(this.a.i1, webTabItem.f19520c, str);
            MainUtil.e8(this.a, R.string.tab_homepage_set);
        }
    }
}
