package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import j$.util.Objects;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzd {

    /* renamed from: a, reason: collision with root package name */
    public SharedPreferences f3273a;
    public SharedPreferences.Editor b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f3274c;
    public final Object d = new Object();

    public zzd(Context context) {
        this.f3274c = context;
    }

    public final void a() {
        synchronized (this.d) {
            try {
                if (this.f3273a != null) {
                    return;
                }
                SharedPreferences sharedPreferences = this.f3274c.getSharedPreferences("query_info_shared_prefs", 0);
                this.f3273a = sharedPreferences;
                this.b = sharedPreferences.edit();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zza(String str, String str2) {
        a();
        synchronized (this.d) {
            this.b.putString(str, str2).commit();
        }
    }

    @Nullable
    public final String zzb(String str) {
        String string;
        a();
        synchronized (this.d) {
            string = this.f3273a.getString(str, null);
            this.b.remove(str).commit();
        }
        return string;
    }

    public final boolean zzc(String str) {
        boolean contains;
        a();
        synchronized (this.d) {
            contains = this.f3273a.contains(str);
        }
        return contains;
    }

    public final void zzd(String str, int i, String str2, int i2) {
        a();
        synchronized (this.d) {
            this.b.putString("pn", str).putInt("vc", i).putString("dm", str2).putInt("aav", i2).commit();
        }
    }

    @Nullable
    public final String zze() {
        String string;
        a();
        synchronized (this.d) {
            string = this.f3273a.getString("pn", null);
        }
        return string;
    }

    public final int zzf() {
        int i;
        a();
        synchronized (this.d) {
            i = this.f3273a.getInt("vc", -1);
        }
        return i;
    }

    @Nullable
    public final String zzg() {
        String string;
        a();
        synchronized (this.d) {
            string = this.f3273a.getString("dm", null);
        }
        return string;
    }

    public final int zzh() {
        int i;
        a();
        synchronized (this.d) {
            i = this.f3273a.getInt("aav", -1);
        }
        return i;
    }

    public final void zzi() {
        a();
        synchronized (this.d) {
            this.b.clear().commit();
        }
    }

    public final Map zzj() {
        HashMap hashMap;
        a();
        synchronized (this.d) {
            try {
                Map<String, ?> all = this.f3273a.getAll();
                hashMap = new HashMap();
                for (Map.Entry<String, ?> entry : all.entrySet()) {
                    if ((entry.getValue() instanceof String) && !Objects.equals(entry.getKey(), "pn") && !Objects.equals(entry.getKey(), "vc") && !Objects.equals(entry.getKey(), "dm") && !Objects.equals(entry.getKey(), "aav")) {
                        hashMap.put(entry.getKey(), (String) entry.getValue());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return hashMap;
    }
}
