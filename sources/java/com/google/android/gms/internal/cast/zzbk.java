package com.google.android.gms.internal.cast;

import android.app.Activity;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.RelativeLayout;
import com.google.android.gms.cast.framework.IntroductoryOverlay;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.internal.featurehighlight.HelpTextView;

/* loaded from: classes.dex */
public final class zzbk extends RelativeLayout implements IntroductoryOverlay {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9630c;
    public Activity f;
    public IntroductoryOverlay.OnOverlayDismissedListener g;
    public View h;
    public String i;
    public boolean j;
    public int k;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbk(com.google.android.gms.cast.framework.IntroductoryOverlay.Builder r2) {
        /*
            r1 = this;
            android.app.Activity r0 = r2.f3472a
            r1.<init>(r0)
            r1.f = r0
            boolean r0 = r2.f
            r1.f9630c = r0
            com.google.android.gms.cast.framework.IntroductoryOverlay$OnOverlayDismissedListener r0 = r2.e
            r1.g = r0
            android.view.View r0 = r2.b
            r1.h = r0
            java.lang.String r0 = r2.d
            r1.i = r0
            int r2 = r2.f3473c
            r1.k = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzbk.<init>(com.google.android.gms.cast.framework.IntroductoryOverlay$Builder):void");
    }

    public final void a() {
        Activity activity;
        if (this.j && (activity = this.f) != null) {
            ((ViewGroup) activity.getWindow().getDecorView()).removeView(this);
            c();
        }
    }

    public final void b() {
        View view;
        Activity activity = this.f;
        if (activity != null && (view = this.h) != null && !this.j) {
            AccessibilityManager accessibilityManager = (AccessibilityManager) activity.getSystemService("accessibility");
            if (accessibilityManager == null || !accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled()) {
                if (this.f9630c && PreferenceManager.getDefaultSharedPreferences(activity).getBoolean("googlecast-introOverlayShown", false)) {
                    c();
                    return;
                }
                com.google.android.gms.cast.framework.internal.featurehighlight.zzh zzhVar = new com.google.android.gms.cast.framework.internal.featurehighlight.zzh(activity);
                int i = this.k;
                if (i != 0) {
                    zzhVar.e(i);
                }
                addView(zzhVar);
                HelpTextView helpTextView = (HelpTextView) activity.getLayoutInflater().inflate(R.layout.cast_help_text, (ViewGroup) zzhVar, false);
                helpTextView.setText(this.i, null);
                zzhVar.q = helpTextView;
                zzhVar.addView(helpTextView.asView(), 0);
                zzhVar.a(view, new zzbj(this, activity, zzhVar));
                this.j = true;
                ((ViewGroup) activity.getWindow().getDecorView()).addView(this);
                zzhVar.b();
            }
        }
    }

    public final void c() {
        removeAllViews();
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.k = 0;
        this.j = false;
    }
}
