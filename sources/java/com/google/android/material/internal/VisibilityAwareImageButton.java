package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.widget.ImageButton;
import androidx.annotation.RestrictTo;

@SuppressLint({"AppCompatCustomView"})
@RestrictTo
/* loaded from: classes3.dex */
public class VisibilityAwareImageButton extends ImageButton {

    /* renamed from: c, reason: collision with root package name */
    public int f11825c;

    public final int getUserSetVisibility() {
        return this.f11825c;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        this.f11825c = i;
    }
}
