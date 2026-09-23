package com.mycompany.app.view;

import android.view.ActionMode;
import android.view.ViewStructure;
import android.webkit.WebView;
import com.mycompany.app.web.TextSelectMenu;

/* loaded from: classes3.dex */
public class MyWebView extends WebView {
    @Override // android.webkit.WebView, android.view.View
    public final void onProvideAutofillVirtualStructure(ViewStructure viewStructure, int i) {
        if (viewStructure == null) {
            return;
        }
        try {
            super.onProvideAutofillVirtualStructure(viewStructure, i);
        } catch (Throwable unused) {
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onProvideVirtualStructure(ViewStructure viewStructure) {
        if (viewStructure == null) {
            return;
        }
        try {
            super.onProvideVirtualStructure(viewStructure);
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public ActionMode startActionMode(ActionMode.Callback callback) {
        return super.startActionMode(TextSelectMenu.wrap(this, callback));
    }

    @Override // android.view.View
    public ActionMode startActionMode(ActionMode.Callback callback, int type) {
        return super.startActionMode(TextSelectMenu.wrap(this, callback), type);
    }
}
