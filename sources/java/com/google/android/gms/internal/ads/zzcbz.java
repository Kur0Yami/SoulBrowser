package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import j$.util.Objects;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class zzcbz implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final String f5033a;
    public final /* synthetic */ zzccc b;

    public zzcbz(zzccc zzcccVar, String str) {
        Objects.requireNonNull(zzcccVar);
        this.b = zzcccVar;
        this.f5033a = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        zzccc zzcccVar = this.b;
        synchronized (zzcccVar) {
            try {
                ArrayList arrayList = zzcccVar.b;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((zzcca) obj).B(this.f5033a, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
