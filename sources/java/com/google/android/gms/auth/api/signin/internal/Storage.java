package com.google.android.gms.auth.api.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.media.a;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@KeepForSdk
/* loaded from: classes.dex */
public class Storage {

    /* renamed from: c, reason: collision with root package name */
    public static final ReentrantLock f3386c = new ReentrantLock();
    public static Storage d;

    /* renamed from: a, reason: collision with root package name */
    public final ReentrantLock f3387a = new ReentrantLock();
    public final SharedPreferences b;

    public Storage(Context context) {
        this.b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static Storage a(Context context) {
        Preconditions.checkNotNull(context);
        ReentrantLock reentrantLock = f3386c;
        reentrantLock.lock();
        try {
            if (d == null) {
                d = new Storage(context.getApplicationContext());
            }
            Storage storage = d;
            reentrantLock.unlock();
            return storage;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public static final String g(String str, String str2) {
        return a.q(new StringBuilder(str.length() + 1 + String.valueOf(str2).length()), str, ":", str2);
    }

    public final GoogleSignInAccount b() {
        String e;
        String e2 = e("defaultGoogleSignInAccount");
        if (!TextUtils.isEmpty(e2) && (e = e(g("googleSignInAccount", e2))) != null) {
            try {
                return GoogleSignInAccount.G(e);
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    public final void c(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        Preconditions.checkNotNull(googleSignInAccount);
        Preconditions.checkNotNull(googleSignInOptions);
        d("defaultGoogleSignInAccount", googleSignInAccount.l);
        Preconditions.checkNotNull(googleSignInAccount);
        Preconditions.checkNotNull(googleSignInOptions);
        String str = googleSignInAccount.l;
        d(g("googleSignInAccount", str), googleSignInAccount.X());
        String g = g("googleSignInOptions", str);
        String str2 = googleSignInOptions.l;
        String str3 = googleSignInOptions.k;
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            ArrayList arrayList = googleSignInOptions.f;
            Collections.sort(arrayList, GoogleSignInOptions.s);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                jSONArray.put(((Scope) obj).getScopeUri());
            }
            jSONObject.put("scopes", jSONArray);
            Account account = googleSignInOptions.g;
            if (account != null) {
                jSONObject.put("accountName", account.name);
            }
            jSONObject.put("idTokenRequested", googleSignInOptions.h);
            jSONObject.put("forceCodeForRefreshToken", googleSignInOptions.j);
            jSONObject.put("serverAuthRequested", googleSignInOptions.i);
            if (!TextUtils.isEmpty(str3)) {
                jSONObject.put("serverClientId", str3);
            }
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("hostedDomain", str2);
            }
            d(g, jSONObject.toString());
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    public final void d(String str, String str2) {
        ReentrantLock reentrantLock = this.f3387a;
        reentrantLock.lock();
        try {
            this.b.edit().putString(str, str2).apply();
        } finally {
            reentrantLock.unlock();
        }
    }

    public final String e(String str) {
        ReentrantLock reentrantLock = this.f3387a;
        reentrantLock.lock();
        try {
            return this.b.getString(str, null);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void f(String str) {
        ReentrantLock reentrantLock = this.f3387a;
        reentrantLock.lock();
        try {
            this.b.edit().remove(str).apply();
        } finally {
            reentrantLock.unlock();
        }
    }
}
