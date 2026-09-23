package com.mycompany.app.view;

import android.widget.Scroller;
import com.google.api.client.http.HttpStatusCodes;

/* loaded from: classes3.dex */
public class MyViewScroller extends Scroller {
    @Override // android.widget.Scroller
    public final void startScroll(int i, int i2, int i3, int i4, int i5) {
        super.startScroll(i, i2, i3, i4, HttpStatusCodes.STATUS_CODE_OK);
    }

    @Override // android.widget.Scroller
    public final void startScroll(int i, int i2, int i3, int i4) {
        super.startScroll(i, i2, i3, i4, HttpStatusCodes.STATUS_CODE_OK);
    }
}
