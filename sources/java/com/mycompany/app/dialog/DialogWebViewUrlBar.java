package com.mycompany.app.dialog;

import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyEditPure;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRoundView;
import com.mycompany.app.view.MyScrollNavi;

/**
 * Applies Settings → Display "Preview URL bar" placement to {@link DialogWebView}.
 * 0 = top (default), 1 = bottom above buttons, 2 = same line as icon buttons.
 */
public final class DialogWebViewUrlBar {
    private DialogWebViewUrlBar() {
    }

    public static void a(DialogWebView d) {
        int mode = PrefWeb.d0;
        if (mode == 0 || d == null || d.C0 == null || d.F0 == null || d.I0 == null || d.P0 == null) {
            return;
        }
        FrameLayout content = d.C0;
        FrameLayout web = d.I0;
        MyEditPure url = d.F0;
        if (mode == 1) {
            applyBottom(d, content, web, url);
        } else if (mode == 2) {
            applyInline(d, content, web, url);
        }
    }

    private static void applyBottom(DialogWebView d, FrameLayout content, FrameLayout web, MyEditPure url) {
        FrameLayout.LayoutParams wlp = (FrameLayout.LayoutParams) web.getLayoutParams();
        if (wlp != null) {
            wlp.topMargin = 0;
            wlp.bottomMargin = MainApp.b1;
            web.setLayoutParams(wlp);
        }
        setBottomGravity(url);
        setBottomGravity(d.E0);
        setBottomGravity(d.G0);
        setBottomGravity(d.H0);
        setBottomGravity(d.v1);
        setBottomGravity(d.w1);
        MyProgressBar bar = d.K0;
        if (bar != null) {
            FrameLayout.LayoutParams plp = (FrameLayout.LayoutParams) bar.getLayoutParams();
            if (plp != null) {
                plp.gravity = Gravity.BOTTOM;
                plp.topMargin = 0;
                plp.bottomMargin = MainApp.b1;
                bar.setLayoutParams(plp);
            }
        }
        View shadow = d.D0;
        if (shadow != null) {
            shadow.setVisibility(View.GONE);
        }
        setScrollNaviBottom(d.N0, true);
        setScrollNaviBottom(d.O0, false);
    }

    private static void applyInline(DialogWebView d, FrameLayout content, FrameLayout web, MyEditPure url) {
        FrameLayout.LayoutParams wlp = (FrameLayout.LayoutParams) web.getLayoutParams();
        if (wlp != null) {
            wlp.topMargin = 0;
            web.setLayoutParams(wlp);
        }
        ViewGroup.LayoutParams clp = content.getLayoutParams();
        if (clp instanceof RelativeLayout.LayoutParams) {
            clp.height = -1;
            ((RelativeLayout.LayoutParams) clp).bottomMargin = MainApp.b1;
            content.setLayoutParams(clp);
        }
        View shadow = d.D0;
        if (shadow != null) {
            shadow.setVisibility(View.GONE);
        }
        MyProgressBar bar = d.K0;
        if (bar != null) {
            FrameLayout.LayoutParams plp = (FrameLayout.LayoutParams) bar.getLayoutParams();
            if (plp != null) {
                plp.topMargin = 0;
                bar.setLayoutParams(plp);
            }
        }
        if (d.N0 != null) {
            d.N0.setVisibility(View.GONE);
        }
        if (d.O0 != null) {
            d.O0.setVisibility(View.GONE);
        }

        ViewGroup buttonRow = (ViewGroup) d.P0.getParent();
        if (buttonRow == null) {
            return;
        }
        ViewGroup bottomBar = (ViewGroup) buttonRow.getParent();
        if (bottomBar != null) {
            ViewGroup.LayoutParams blp = bottomBar.getLayoutParams();
            if (blp != null) {
                blp.height = MainApp.b1;
                bottomBar.setLayoutParams(blp);
            }
            if (MainApp.K1) {
                bottomBar.setBackgroundColor(-16777216);
            } else {
                bottomBar.setBackgroundColor(-460552);
            }
        }

        // Match top/bottom URL chrome: rounded field + edit + refresh/stop.
        FrameLayout urlChrome = new FrameLayout(url.getContext());
        MyRoundView bg = d.E0;
        if (bg != null) {
            content.removeView(bg);
            bg.setVisibility(View.VISIBLE);
        } else {
            bg = new MyRoundView(url.getContext());
            if (MainApp.K1) {
                bg.setBackColor(-14606047);
            } else {
                bg.setBackColor(-1);
            }
            d.E0 = bg;
        }
        urlChrome.addView(bg, new FrameLayout.LayoutParams(-1, -1));

        content.removeView(url);
        FrameLayout.LayoutParams urlLp = new FrameLayout.LayoutParams(-1, -1);
        urlLp.setMarginStart(MainApp.E1);
        urlLp.setMarginEnd(MainApp.g1);
        urlChrome.addView(url, urlLp);

        MyButtonImage refresh = d.G0;
        if (refresh != null) {
            content.removeView(refresh);
            FrameLayout.LayoutParams rlp = new FrameLayout.LayoutParams(MainApp.g1, -1);
            rlp.gravity = Gravity.END;
            urlChrome.addView(refresh, rlp);
        }
        MyButtonImage stop = d.H0;
        if (stop != null) {
            content.removeView(stop);
            FrameLayout.LayoutParams slp = new FrameLayout.LayoutParams(MainApp.g1, -1);
            slp.gravity = Gravity.END;
            urlChrome.addView(stop, slp);
        }
        if (d.v1 != null) {
            d.v1.setVisibility(View.GONE);
        }
        if (d.w1 != null) {
            d.w1.setVisibility(View.GONE);
        }

        // Keep Close / New tab / menu in one row with equal cell widths (menu was
        // previously overlaid with marginEnd, which looked like extra gap).
        ViewGroup.LayoutParams rowLp = buttonRow.getLayoutParams();
        if (rowLp instanceof FrameLayout.LayoutParams) {
            FrameLayout.LayoutParams flp = (FrameLayout.LayoutParams) rowLp;
            flp.width = -1;
            flp.height = -1;
            flp.setMarginEnd(0);
            buttonRow.setLayoutParams(flp);
        }

        // [Close] [URL chrome] [New tab] [menu]
        iconify(d.P0, MainApp.K1 ? R.drawable.outline_close_dark_24 : R.drawable.outline_close_black_24);
        LinearLayout.LayoutParams chromeLp = new LinearLayout.LayoutParams(0, -1, 1.0f);
        buttonRow.addView(urlChrome, 1, chromeLp);
        if (d.Q0 != null) {
            iconify(d.Q0, MainApp.K1 ? R.drawable.outline_tab_new_right_dark_24 : R.drawable.outline_tab_new_right_black_24);
        }
        MyButtonImage menu = d.R0;
        if (menu != null && bottomBar != null) {
            bottomBar.removeView(menu);
            LinearLayout.LayoutParams mlp = new LinearLayout.LayoutParams(MainApp.g1, -1);
            buttonRow.addView(menu, mlp);
        }
    }

    private static void iconify(MyLineText btn, int icon) {
        btn.setText("");
        btn.setDrawLine(false);
        btn.setGravity(Gravity.CENTER);
        android.graphics.drawable.Drawable drawable = btn.getContext().getDrawable(icon);
        int pad = 0;
        if (drawable != null) {
            pad = Math.max(0, (MainApp.g1 - drawable.getIntrinsicWidth()) / 2);
        }
        btn.setPadding(pad, 0, pad, 0);
        btn.setCompoundDrawablesWithIntrinsicBounds(icon, 0, 0, 0);
        LinearLayout.LayoutParams lp = (LinearLayout.LayoutParams) btn.getLayoutParams();
        if (lp != null) {
            lp.width = MainApp.g1;
            lp.height = -1;
            lp.weight = 0.0f;
            btn.setLayoutParams(lp);
        }
    }

    private static void setBottomGravity(View view) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams lp = view.getLayoutParams();
        if (lp instanceof FrameLayout.LayoutParams) {
            FrameLayout.LayoutParams flp = (FrameLayout.LayoutParams) lp;
            int g = flp.gravity;
            if (g == -1 || g == 0) {
                flp.gravity = Gravity.BOTTOM;
            } else {
                flp.gravity = (g & ~Gravity.VERTICAL_GRAVITY_MASK) | Gravity.BOTTOM;
            }
            view.setLayoutParams(flp);
        }
    }

    private static void setScrollNaviBottom(MyScrollNavi navi, boolean start) {
        if (navi == null) {
            return;
        }
        FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) navi.getLayoutParams();
        if (lp == null) {
            return;
        }
        lp.gravity = start ? (Gravity.START | Gravity.BOTTOM) : (Gravity.END | Gravity.BOTTOM);
        navi.setLayoutParams(lp);
    }
}
