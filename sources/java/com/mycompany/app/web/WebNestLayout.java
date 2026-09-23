package com.mycompany.app.web;

import android.widget.FrameLayout;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class WebNestLayout extends FrameLayout {
    public final void a(WebNestFrame webNestFrame, int i) {
        if (webNestFrame != null) {
            try {
                MainUtil.V6(webNestFrame);
                if (i < 0) {
                    i = 0;
                } else if (i > getChildCount()) {
                    i = getChildCount();
                }
                addViewInLayout(webNestFrame, i, new FrameLayout.LayoutParams(-1, -1), true);
            } catch (Exception unused) {
            }
        }
    }
}
