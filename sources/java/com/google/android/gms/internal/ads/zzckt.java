package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;

/* loaded from: classes.dex */
public final class zzckt extends MutableContextWrapper {

    /* renamed from: a, reason: collision with root package name */
    public Activity f5223a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public Context f5224c;

    public final void a(Intent intent) {
        if (this.f5223a != null) {
            String valueOf = String.valueOf(intent.getData());
            StringBuilder sb = new StringBuilder(valueOf.length() + 63);
            sb.append("Starting activity for result with intent: ");
            sb.append(valueOf);
            sb.append(" and requestCode: 236");
            com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
            this.f5223a.startActivityForResult(intent, 236);
            return;
        }
        intent.setFlags(268435456);
        this.b.startActivity(intent);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return this.f5224c.getSystemService(str);
    }

    @Override // android.content.MutableContextWrapper
    public final void setBaseContext(Context context) {
        Activity activity;
        Context applicationContext = context.getApplicationContext();
        this.b = applicationContext;
        if (context instanceof Activity) {
            activity = (Activity) context;
        } else {
            activity = null;
        }
        this.f5223a = activity;
        this.f5224c = context;
        super.setBaseContext(applicationContext);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        Activity activity = this.f5223a;
        if (activity != null) {
            activity.startActivity(intent);
        } else {
            intent.setFlags(268435456);
            this.b.startActivity(intent);
        }
    }
}
