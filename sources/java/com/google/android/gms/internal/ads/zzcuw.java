package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzcuw extends FrameLayout implements ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: c, reason: collision with root package name */
    public final Context f5491c;
    public View f;

    public zzcuw(Context context) {
        super(context);
        this.f5491c = context;
    }

    public static zzcuw a(Context context, View view, zzfhr zzfhrVar) {
        ViewTreeObserver viewTreeObserver;
        Resources resources;
        DisplayMetrics displayMetrics;
        zzcuw zzcuwVar = new zzcuw(context);
        List list = zzfhrVar.u;
        boolean isEmpty = list.isEmpty();
        Context context2 = zzcuwVar.f5491c;
        if (!isEmpty && (resources = context2.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            float f = ((zzfhs) list.get(0)).f7369a;
            float f2 = displayMetrics.density;
            zzcuwVar.setLayoutParams(new FrameLayout.LayoutParams((int) (f * f2), (int) (r5.b * f2)));
        }
        zzcuwVar.f = view;
        zzcuwVar.addView(view);
        com.google.android.gms.ads.internal.zzt.zzC();
        zzced zzcedVar = new zzced(zzcuwVar, zzcuwVar);
        View view2 = (View) zzcedVar.f5077c.get();
        ViewTreeObserver viewTreeObserver2 = null;
        if (view2 != null && (viewTreeObserver = view2.getViewTreeObserver()) != null && viewTreeObserver.isAlive()) {
            viewTreeObserver2 = viewTreeObserver;
        }
        if (viewTreeObserver2 != null) {
            zzcedVar.a(viewTreeObserver2);
        }
        com.google.android.gms.ads.internal.zzt.zzC();
        zzceb.a(zzcuwVar, zzcuwVar);
        JSONObject jSONObject = zzfhrVar.h0;
        RelativeLayout relativeLayout = new RelativeLayout(context2);
        JSONObject optJSONObject = jSONObject.optJSONObject("header");
        if (optJSONObject != null) {
            zzcuwVar.b(optJSONObject, relativeLayout, 10);
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("footer");
        if (optJSONObject2 != null) {
            zzcuwVar.b(optJSONObject2, relativeLayout, 12);
        }
        zzcuwVar.addView(relativeLayout);
        return zzcuwVar;
    }

    public final void b(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        Context context = this.f5491c;
        TextView textView = new TextView(context);
        textView.setTextColor(-1);
        textView.setBackgroundColor(-16777216);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        double optDouble = jSONObject.optDouble("padding", 0.0d);
        com.google.android.gms.ads.internal.client.zzbb.zza();
        int zzC = com.google.android.gms.ads.internal.util.client.zzf.zzC(context, (int) optDouble);
        textView.setPadding(0, zzC, 0, zzC);
        double optDouble2 = jSONObject.optDouble("height", 15.0d);
        com.google.android.gms.ads.internal.client.zzbb.zza();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, com.google.android.gms.ads.internal.util.client.zzf.zzC(context, (int) optDouble2));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        getLocationInWindow(new int[2]);
        this.f.setY(-r0[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        getLocationInWindow(new int[2]);
        this.f.setY(-r0[1]);
    }
}
