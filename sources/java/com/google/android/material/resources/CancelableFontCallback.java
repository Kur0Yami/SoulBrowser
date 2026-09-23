package com.google.android.material.resources;

import android.graphics.Typeface;
import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes3.dex */
public final class CancelableFontCallback extends TextAppearanceFontCallback {

    /* renamed from: a, reason: collision with root package name */
    public final Typeface f11859a;
    public final ApplyFont b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11860c;

    /* loaded from: classes3.dex */
    public interface ApplyFont {
        void a(Typeface typeface);
    }

    public CancelableFontCallback(ApplyFont applyFont, Typeface typeface) {
        this.f11859a = typeface;
        this.b = applyFont;
    }

    @Override // com.google.android.material.resources.TextAppearanceFontCallback
    public final void a(int i) {
        if (!this.f11860c) {
            this.b.a(this.f11859a);
        }
    }

    @Override // com.google.android.material.resources.TextAppearanceFontCallback
    public final void b(Typeface typeface, boolean z) {
        if (!this.f11860c) {
            this.b.a(typeface);
        }
    }
}
