package com.nostra13.universalimageloader.core.imageaware;

import android.graphics.Bitmap;
import android.view.View;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;

/* loaded from: classes3.dex */
public interface ImageAware {
    View a();

    boolean b();

    ViewScaleType c();

    boolean d(Bitmap bitmap);

    int getHeight();

    int getId();

    int getWidth();
}
