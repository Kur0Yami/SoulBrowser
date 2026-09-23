package com.google.android.gms.internal.consent_sdk;

import android.R;
import android.app.Application;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.view.Window;
import androidx.annotation.UiThread;
import androidx.core.view.WindowCompat;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.ump.ConsentForm;
import com.google.android.ump.UserMessagingPlatform;
import com.mycompany.app.web.WebViewActivity;
import j$.util.Objects;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

@UiThread
/* loaded from: classes.dex */
public final class zzbe implements ConsentForm {

    /* renamed from: a, reason: collision with root package name */
    public final Application f9946a;
    public final zzbz b;

    /* renamed from: c, reason: collision with root package name */
    public final zzaq f9947c;
    public final zzbs d;
    public final zzby e;
    public final zzcr f;
    public Dialog g;
    public zzbx h;
    public final AtomicBoolean i = new AtomicBoolean();
    public final AtomicReference j = new AtomicReference();
    public final AtomicReference k = new AtomicReference();
    public final AtomicReference l = new AtomicReference();
    public boolean m = false;
    public boolean n = false;

    public zzbe(Application application, zzbz zzbzVar, zzaq zzaqVar, zzbs zzbsVar, zzby zzbyVar, zzcr zzcrVar) {
        this.f9946a = application;
        this.b = zzbzVar;
        this.f9947c = zzaqVar;
        this.d = zzbsVar;
        this.e = zzbyVar;
        this.f = zzcrVar;
    }

    @Override // com.google.android.ump.ConsentForm
    public final void a(WebViewActivity webViewActivity, ConsentForm.OnConsentFormDismissedListener onConsentFormDismissedListener) {
        String str;
        zzcz.a();
        ((Queue) this.f.h.get()).add(Long.valueOf(System.currentTimeMillis()));
        if (!this.i.compareAndSet(false, true)) {
            if (true != this.m) {
                str = "ConsentForm#show can only be invoked once.";
            } else {
                str = "Privacy options form is being loading. Please try again later.";
            }
            zzg zzgVar = new zzg(3, str);
            d(zzgVar);
            zzgVar.a();
            onConsentFormDismissedListener.a();
            return;
        }
        zzbx zzbxVar = this.h;
        final zzcd zzcdVar = zzbxVar.f;
        Objects.requireNonNull(zzcdVar);
        zzbxVar.f9961c.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbu
            @Override // java.lang.Runnable
            public final void run() {
                zzcd zzcdVar2 = zzcd.this;
                zzcdVar2.getClass();
                zzcdVar2.d.execute(new zzcc(zzcdVar2));
            }
        });
        zzbb zzbbVar = new zzbb(this, webViewActivity);
        this.f9946a.registerActivityLifecycleCallbacks(zzbbVar);
        this.l.set(zzbbVar);
        this.b.f9963a = webViewActivity;
        Dialog dialog = new Dialog(webViewActivity, R.style.Theme.Translucent.NoTitleBar);
        dialog.setContentView(this.h);
        dialog.setCancelable(false);
        Window window = dialog.getWindow();
        if (window == null) {
            zzg zzgVar2 = new zzg(3, "Activity with null windows is passed in.");
            d(zzgVar2);
            zzgVar2.a();
            onConsentFormDismissedListener.a();
            return;
        }
        window.setLayout(-1, -1);
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setFlags(16777216, 16777216);
        WindowCompat.a(window, false);
        this.k.set(onConsentFormDismissedListener);
        dialog.show();
        this.g = dialog;
        this.h.a("UMP_messagePresented", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        d(null);
    }

    public final void b(UserMessagingPlatform.OnConsentFormLoadSuccessListener onConsentFormLoadSuccessListener, UserMessagingPlatform.OnConsentFormLoadFailureListener onConsentFormLoadFailureListener) {
        zzby zzbyVar = this.e;
        zzbz zzbzVar = (zzbz) zzbyVar.f9962a.zzb();
        Handler handler = zzcz.f10001a;
        zztj.a(handler);
        this.h = new zzbx(zzbzVar, handler, zzbyVar.b.zzb());
        boolean z = this.m;
        zzcr zzcrVar = this.f;
        if (!z) {
            ((Queue) zzcrVar.j.get()).add(Long.valueOf(System.currentTimeMillis()));
        }
        zzbx zzbxVar = this.h;
        zzbxVar.setBackgroundColor(0);
        zzbxVar.getSettings().setJavaScriptEnabled(true);
        zzbxVar.getSettings().setAllowFileAccess(false);
        zzbxVar.getSettings().setAllowContentAccess(false);
        zzbxVar.setWebViewClient(new zzbv(zzbxVar));
        if (!this.m) {
            zzcrVar.a((Queue) zzcrVar.j.get(), 3, 2, null);
        }
        this.j.set(new zzbc(onConsentFormLoadSuccessListener, onConsentFormLoadFailureListener));
        zzbx zzbxVar2 = this.h;
        zzbs zzbsVar = this.d;
        zzbxVar2.loadDataWithBaseURL(zzbsVar.f9957a, zzbsVar.b, "text/html", "UTF-8", null);
        handler.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzba
            @Override // java.lang.Runnable
            public final void run() {
                zzbe.this.c(new zzg(4, "Web view timed out."));
            }
        }, 10000L);
    }

    public final void c(zzg zzgVar) {
        zzbc zzbcVar = (zzbc) this.j.getAndSet(null);
        if (zzbcVar == null) {
            return;
        }
        if (!this.m) {
            String message = zzgVar.getMessage();
            boolean z = this.n;
            zzcr zzcrVar = this.f;
            if (z) {
                zzcrVar.a((Queue) zzcrVar.i.get(), 10, 11, message);
            } else {
                zzcrVar.a((Queue) zzcrVar.g.get(), 4, 5, message);
            }
        }
        zzbcVar.a(zzgVar.a());
    }

    public final void d(zzg zzgVar) {
        String message;
        if (this.m) {
            return;
        }
        if (zzgVar == null) {
            message = null;
        } else {
            message = zzgVar.getMessage();
        }
        boolean z = this.n;
        zzcr zzcrVar = this.f;
        if (z) {
            zzcrVar.a((Queue) zzcrVar.i.get(), 10, 11, message);
        } else {
            zzcrVar.a((Queue) zzcrVar.h.get(), 6, 7, message);
        }
    }
}
