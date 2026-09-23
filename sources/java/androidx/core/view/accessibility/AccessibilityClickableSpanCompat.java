package androidx.core.view.accessibility;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* loaded from: classes.dex */
public final class AccessibilityClickableSpanCompat extends ClickableSpan {

    /* renamed from: c, reason: collision with root package name */
    public final int f832c;
    public final AccessibilityNodeInfoCompat f;
    public final int g;

    public AccessibilityClickableSpanCompat(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, int i2) {
        this.f832c = i;
        this.f = accessibilityNodeInfoCompat;
        this.g = i2;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f832c);
        this.f.f834a.performAction(this.g, bundle);
    }
}
