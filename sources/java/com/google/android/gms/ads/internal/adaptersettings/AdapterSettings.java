package com.google.android.gms.ads.internal.adaptersettings;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzbft;

/* loaded from: classes.dex */
class AdapterSettings {

    @Nullable
    private static volatile AdapterSettings instance;
    private final zzbft adapterSettingsInternal = zzbd.zzd();

    @KeepForSdk
    private boolean getBoolean(String str, boolean z) {
        zzbft zzbftVar = this.adapterSettingsInternal;
        zzbftVar.getClass();
        if (!str.startsWith("adapter:")) {
            return z;
        }
        return zzbftVar.f4644c.optBoolean(str, z);
    }

    @KeepForSdk
    private float getFloat(String str, float f) {
        zzbft zzbftVar = this.adapterSettingsInternal;
        zzbftVar.getClass();
        if (!str.startsWith("adapter:")) {
            return f;
        }
        return (float) zzbftVar.f4644c.optDouble(str, f);
    }

    public static AdapterSettings getInstance() {
        if (instance == null) {
            synchronized (AdapterSettings.class) {
                try {
                    if (instance == null) {
                        instance = new AdapterSettings();
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    @KeepForSdk
    private int getInt(String str, int i) {
        zzbft zzbftVar = this.adapterSettingsInternal;
        zzbftVar.getClass();
        if (!str.startsWith("adapter:")) {
            return i;
        }
        return zzbftVar.f4644c.optInt(str, i);
    }

    @KeepForSdk
    private long getLong(String str, long j) {
        zzbft zzbftVar = this.adapterSettingsInternal;
        zzbftVar.getClass();
        if (!str.startsWith("adapter:")) {
            return j;
        }
        return zzbftVar.f4644c.optLong(str, j);
    }

    @KeepForSdk
    private String getString(String str, String str2) {
        zzbft zzbftVar = this.adapterSettingsInternal;
        zzbftVar.getClass();
        if (!str.startsWith("adapter:")) {
            return str2;
        }
        return zzbftVar.f4644c.optString(str, str2);
    }
}
