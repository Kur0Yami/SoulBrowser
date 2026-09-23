package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzboh implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final Context f4802a;

    public zzboh(Context context) {
        this.f4802a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        if (map.containsKey("text") && !TextUtils.isEmpty((CharSequence) map.get("text"))) {
            com.google.android.gms.ads.internal.util.zze.zza("Opening Share Sheet with text: ".concat(String.valueOf((String) map.get("text"))));
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.TEXT", (String) map.get("text"));
            if (map.containsKey("title")) {
                intent.putExtra("android.intent.extra.TITLE", (String) map.get("title"));
            }
            try {
                com.google.android.gms.ads.internal.zzt.zzc();
                com.google.android.gms.ads.internal.util.zzs.zzaa(this.f4802a, intent);
            } catch (RuntimeException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to open Share Sheet", e);
                com.google.android.gms.ads.internal.zzt.zzh().f("ShareSheetGmsgHandler.onGmsg", e);
            }
        }
    }
}
