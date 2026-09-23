package com.google.android.gms.ads.identifier;

import android.net.Uri;
import java.util.HashMap;

/* loaded from: classes.dex */
final class zza extends Thread {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HashMap f2973c;

    public zza(HashMap hashMap) {
        this.f2973c = hashMap;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Uri.Builder buildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
        HashMap hashMap = this.f2973c;
        for (String str : hashMap.keySet()) {
            buildUpon.appendQueryParameter(str, (String) hashMap.get(str));
        }
        zzc.zza(buildUpon.build().toString());
    }
}
