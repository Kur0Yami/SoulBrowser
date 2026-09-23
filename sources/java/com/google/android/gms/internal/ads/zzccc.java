package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzccc {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f5035a = new HashMap();
    public final ArrayList b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final Context f5036c;
    public final zzcbp d;

    public zzccc(Context context, zzcbp zzcbpVar) {
        this.f5036c = context;
        this.d = zzcbpVar;
    }

    public final synchronized void a(zzcca zzccaVar) {
        this.b.add(zzccaVar);
    }

    public final synchronized void b(String str) {
        SharedPreferences sharedPreferences;
        try {
            HashMap hashMap = this.f5035a;
            if (hashMap.containsKey(str)) {
                return;
            }
            if (Objects.equals(str, "__default__")) {
                sharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f5036c);
            } else {
                sharedPreferences = this.f5036c.getSharedPreferences(str, 0);
            }
            zzcbz zzcbzVar = new zzcbz(this, str);
            hashMap.put(str, zzcbzVar);
            sharedPreferences.registerOnSharedPreferenceChangeListener(zzcbzVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}
