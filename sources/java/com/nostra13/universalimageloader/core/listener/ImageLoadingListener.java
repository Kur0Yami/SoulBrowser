package com.nostra13.universalimageloader.core.listener;

import android.graphics.Bitmap;
import android.view.View;
import com.mycompany.app.main.MainItem;
import com.nostra13.universalimageloader.core.assist.FailReason;

/* loaded from: classes3.dex */
public interface ImageLoadingListener {
    void a(MainItem.ViewItem viewItem, View view, FailReason failReason);

    void b(View view);

    void c(MainItem.ViewItem viewItem, View view, Bitmap bitmap);
}
