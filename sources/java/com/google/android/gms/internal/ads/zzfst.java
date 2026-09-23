package com.google.android.gms.internal.ads;

import android.app.UiModeManager;
import android.view.View;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzfst implements zzfsr {

    /* renamed from: a, reason: collision with root package name */
    public final zzfsu f7632a;

    public zzfst(zzfsu zzfsuVar) {
        this.f7632a = zzfsuVar;
    }

    public final JSONObject a(View view) {
        int i;
        boolean z = false;
        JSONObject a2 = zzftb.a(0, 0, 0, 0);
        UiModeManager uiModeManager = zzfta.f7639a;
        zzfrn zzfrnVar = zzfrn.CTV;
        zzfrn zzfrnVar2 = zzfrn.OTHER;
        if (uiModeManager != null) {
            int currentModeType = uiModeManager.getCurrentModeType();
            if (currentModeType != 1) {
                if (currentModeType == 4) {
                    zzfrnVar2 = zzfrnVar;
                }
            } else {
                zzfrnVar2 = zzfrn.MOBILE;
            }
        }
        if (zzfrnVar2 != zzfrnVar) {
            i = 2;
        } else {
            i = zzfte.f7642a;
        }
        int i2 = i - 1;
        if (i != 0) {
            if (i2 == 0) {
                z = true;
            }
            try {
                a2.put("noOutputDevice", z);
                return a2;
            } catch (JSONException e) {
                zzftc.a(e, "Error with setting output device status");
                return a2;
            }
        }
        throw null;
    }
}
