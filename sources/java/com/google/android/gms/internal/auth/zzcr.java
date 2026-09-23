package com.google.android.gms.internal.auth;

import android.net.Uri;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;

/* loaded from: classes.dex */
public final class zzcr {

    /* renamed from: a, reason: collision with root package name */
    public static final ArrayMap f9515a = new SimpleArrayMap(0);

    public static synchronized Uri a() {
        synchronized (zzcr.class) {
            ArrayMap arrayMap = f9515a;
            Uri uri = (Uri) arrayMap.get("com.google.android.gms.auth_account");
            if (uri == null) {
                Uri parse = Uri.parse("content://com.google.android.gms.phenotype/".concat(String.valueOf(Uri.encode("com.google.android.gms.auth_account"))));
                arrayMap.put("com.google.android.gms.auth_account", parse);
                return parse;
            }
            return uri;
        }
    }
}
