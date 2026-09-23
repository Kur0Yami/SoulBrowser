package com.google.android.gms.ads.internal.util;

import android.content.SharedPreferences;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class zzbw implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final String f3135a;
    public final /* synthetic */ zzbz b;

    public zzbw(zzbz zzbzVar, String str) {
        this.b = zzbzVar;
        this.f3135a = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        zzbz zzbzVar = this.b;
        synchronized (zzbzVar) {
            try {
                ArrayList arrayList = zzbzVar.b;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((zzbx) obj).zza(sharedPreferences, this.f3135a, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
