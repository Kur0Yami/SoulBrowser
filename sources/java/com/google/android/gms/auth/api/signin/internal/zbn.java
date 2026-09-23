package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class zbn {
    public static zbn b;

    /* renamed from: a, reason: collision with root package name */
    public final Storage f3394a;

    public zbn(Context context) {
        String e;
        Storage a2 = Storage.a(context);
        this.f3394a = a2;
        a2.b();
        String e2 = a2.e("defaultGoogleSignInAccount");
        if (!TextUtils.isEmpty(e2) && (e = a2.e(Storage.g("googleSignInOptions", e2))) != null) {
            try {
                GoogleSignInOptions.F(e);
            } catch (JSONException unused) {
            }
        }
    }

    public static synchronized zbn a(Context context) {
        zbn c2;
        synchronized (zbn.class) {
            c2 = c(context.getApplicationContext());
        }
        return c2;
    }

    public static synchronized zbn c(Context context) {
        synchronized (zbn.class) {
            zbn zbnVar = b;
            if (zbnVar != null) {
                return zbnVar;
            }
            zbn zbnVar2 = new zbn(context);
            b = zbnVar2;
            return zbnVar2;
        }
    }

    public final synchronized void b() {
        Storage storage = this.f3394a;
        ReentrantLock reentrantLock = storage.f3387a;
        reentrantLock.lock();
        try {
            storage.b.edit().clear().apply();
        } finally {
            reentrantLock.unlock();
        }
    }
}
