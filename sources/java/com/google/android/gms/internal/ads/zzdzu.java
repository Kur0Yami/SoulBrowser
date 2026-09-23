package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.util.Base64;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.wrappers.Wrappers;
import java.io.ByteArrayOutputStream;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdzu {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6291a;
    public final ApplicationInfo b;
    public String e = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    /* renamed from: c, reason: collision with root package name */
    public final int f6292c = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ya)).intValue();
    public final int d = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.za)).intValue();

    public zzdzu(Context context) {
        this.f6291a = context;
        this.b = context.getApplicationInfo();
    }

    public final JSONObject a() {
        String str;
        String encodeToString;
        ApplicationInfo applicationInfo = this.b;
        Context context = this.f6291a;
        JSONObject jSONObject = new JSONObject();
        try {
            String str2 = applicationInfo.packageName;
            zzfxl zzfxlVar = com.google.android.gms.ads.internal.util.zzs.zza;
            jSONObject.put("name", Wrappers.packageManager(context).getApplicationLabel(str2));
        } catch (PackageManager.NameNotFoundException unused) {
        }
        jSONObject.put("packageName", applicationInfo.packageName);
        com.google.android.gms.ads.internal.zzt.zzc();
        Drawable drawable = null;
        try {
            str = com.google.android.gms.ads.internal.util.zzs.zzt(context);
        } catch (RemoteException unused2) {
            str = null;
        }
        jSONObject.put("adMobAppId", str);
        boolean isEmpty = this.e.isEmpty();
        int i = this.d;
        int i2 = this.f6292c;
        if (isEmpty) {
            try {
                drawable = (Drawable) Wrappers.packageManager(context).getApplicationLabelAndIcon(applicationInfo.packageName).b;
            } catch (PackageManager.NameNotFoundException unused3) {
            }
            if (drawable == null) {
                encodeToString = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            } else {
                drawable.setBounds(0, 0, i2, i);
                Bitmap createBitmap = Bitmap.createBitmap(i2, i, Bitmap.Config.ARGB_8888);
                drawable.draw(new Canvas(createBitmap));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            }
            this.e = encodeToString;
        }
        if (!this.e.isEmpty()) {
            jSONObject.put("icon", this.e);
            jSONObject.put("iconWidthPx", i2);
            jSONObject.put("iconHeightPx", i);
        }
        return jSONObject;
    }
}
