package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.ViewCompat;
import java.util.WeakHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class ViewOffsetHelper {

    /* renamed from: a, reason: collision with root package name */
    public final View f11650a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f11651c;
    public int d;

    public ViewOffsetHelper(View view) {
        this.f11650a = view;
    }

    public final void a() {
        int i = this.d;
        View view = this.f11650a;
        int top = i - (view.getTop() - this.b);
        WeakHashMap weakHashMap = ViewCompat.f792a;
        view.offsetTopAndBottom(top);
        view.offsetLeftAndRight(0 - (view.getLeft() - this.f11651c));
    }

    public final boolean b(int i) {
        if (this.d != i) {
            this.d = i;
            a();
            return true;
        }
        return false;
    }
}
