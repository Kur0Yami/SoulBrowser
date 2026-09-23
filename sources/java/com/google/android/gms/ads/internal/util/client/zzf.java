package com.google.android.gms.ads.internal.util.client;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzft;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.preload.PreloadConfiguration;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbit;
import com.google.android.gms.internal.ads.zzftz;
import com.google.android.gms.internal.ads.zzfxl;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzf {

    /* renamed from: a, reason: collision with root package name */
    public float f3075a = -1.0f;
    public static final Handler zza = new zzfxl(Looper.getMainLooper());
    public static final String b = AdView.class.getName();

    /* renamed from: c, reason: collision with root package name */
    public static final String f3074c = InterstitialAd.class.getName();
    public static final String d = AdManagerAdView.class.getName();
    public static final String e = AdManagerInterstitialAd.class.getName();
    public static final String f = zzftz.class.getName();
    public static final String g = AdLoader.class.getName();

    public static String a(String str, String str2) {
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str2);
                messageDigest.update(str.getBytes());
                return String.format(Locale.US, "%032X", new BigInteger(1, messageDigest.digest()));
            } catch (ArithmeticException unused) {
                return null;
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        return null;
    }

    public static final void e(ViewGroup viewGroup, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, int i, int i2) {
        if (viewGroup.getChildCount() != 0) {
            return;
        }
        Context context = viewGroup.getContext();
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setText(str);
        textView.setTextColor(i);
        textView.setBackgroundColor(i2);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(i);
        int zzC = zzC(context, 3);
        int i3 = zzrVar.zzf;
        int i4 = zzrVar.zzc;
        frameLayout.addView(textView, new FrameLayout.LayoutParams(i3 - zzC, i4 - zzC, 17));
        viewGroup.addView(frameLayout, i3, i4);
    }

    public static final int zzA(DisplayMetrics displayMetrics, int i) {
        return Math.round(i / displayMetrics.density);
    }

    public static final void zzB(Context context, @Nullable String str, String str2, Bundle bundle, boolean z, zze zzeVar) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        bundle.putString("os", Build.VERSION.RELEASE);
        bundle.putString("api", String.valueOf(Build.VERSION.SDK_INT));
        bundle.putString("appid", applicationContext.getPackageName());
        if (str == null) {
            int apkVersion = GoogleApiAvailabilityLight.getInstance().getApkVersion(context);
            str = a.g(apkVersion, ".254380000", new StringBuilder(String.valueOf(apkVersion).length() + 10));
        }
        bundle.putString("js", str);
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", "gmob-apps");
        for (String str3 : bundle.keySet()) {
            appendQueryParameter.appendQueryParameter(str3, bundle.getString(str3));
        }
        zzeVar.zza(appendQueryParameter.toString());
    }

    public static final int zzC(Context context, int i) {
        return zzu(context.getResources().getDisplayMetrics(), i);
    }

    @Nullable
    public static final String zzD(Context context) {
        String string;
        zzbgk.a(context);
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            string = null;
        } else {
            string = Settings.Secure.getString(contentResolver, "android_id");
        }
        if (string == null || zzw()) {
            string = "emulator";
        }
        return a(string, "MD5");
    }

    public static Object zzd(Map map, Object obj, Object obj2) {
        if (map.containsKey(obj)) {
            return map.get(obj);
        }
        return obj2;
    }

    @Nullable
    public static ActivityManager.MemoryInfo zze(Context context) {
        ActivityManager activityManager;
        if (context == null || (activityManager = (ActivityManager) context.getSystemService("activity")) == null) {
            return null;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        try {
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo;
        } catch (NullPointerException unused) {
            zzo.zzi("Error retrieving the memory information.");
            return memoryInfo;
        }
    }

    @Nullable
    public static String zzf(String str) {
        return a(str, "MD5");
    }

    @Nullable
    public static String zzg(String str) {
        return a(str, "SHA-256");
    }

    public static String zzi() {
        UUID randomUUID = UUID.randomUUID();
        byte[] byteArray = BigInteger.valueOf(randomUUID.getLeastSignificantBits()).toByteArray();
        byte[] byteArray2 = BigInteger.valueOf(randomUUID.getMostSignificantBits()).toByteArray();
        String bigInteger = new BigInteger(1, byteArray).toString();
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(byteArray);
                messageDigest.update(byteArray2);
                byte[] bArr = new byte[8];
                System.arraycopy(messageDigest.digest(), 0, bArr, 0, 8);
                bigInteger = new BigInteger(1, bArr).toString();
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return bigInteger;
    }

    public static AdSize zzj(Context context, int i, int i2, int i3) {
        int round;
        int zzp = zzp(context, i3);
        if (zzp == -1) {
            return AdSize.INVALID;
        }
        int min = Math.min(90, Math.round(zzp * 0.15f));
        if (i > 655) {
            round = Math.round((i / 728.0f) * 90.0f);
        } else if (i > 632) {
            round = 81;
        } else if (i > 526) {
            round = Math.round((i / 468.0f) * 60.0f);
        } else if (i > 432) {
            round = 68;
        } else {
            round = Math.round((i / 320.0f) * 50.0f);
        }
        return new AdSize(i, Math.max(Math.min(round, min), 50));
    }

    public static boolean zzo(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith((String) zzbit.d.c());
    }

    public static int zzp(Context context, int i) {
        DisplayMetrics displayMetrics;
        Configuration configuration;
        if (context != null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            Resources resources = context.getResources();
            if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null && (configuration = resources.getConfiguration()) != null) {
                int i2 = configuration.orientation;
                if (i == 0) {
                    i = i2;
                }
                if (i == i2) {
                    return Math.round(displayMetrics.heightPixels / displayMetrics.density);
                }
                return Math.round(displayMetrics.widthPixels / displayMetrics.density);
            }
            return -1;
        }
        return -1;
    }

    @Nullable
    public static PreloadConfiguration zzq(zzft zzftVar) {
        PreloadConfiguration zzr = zzr(zzftVar);
        if (zzr == null) {
            return null;
        }
        PreloadConfiguration.Builder builder = new PreloadConfiguration.Builder(zzr.getAdUnitId());
        builder.setAdRequest(zzr.getAdRequest());
        builder.setBufferSize(zzr.getBufferSize());
        return builder.build();
    }

    @Nullable
    public static PreloadConfiguration zzr(@NonNull zzft zzftVar) {
        String str = zzftVar.zza;
        AdFormat adFormat = AdFormat.getAdFormat(zzftVar.zzb);
        if (adFormat == null) {
            return null;
        }
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzftVar.zzc;
        AdRequest.Builder builder = new AdRequest.Builder();
        List list = zzmVar.zze;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                builder.addKeyword((String) it.next());
            }
        }
        builder.zza(zzmVar.zzm);
        Bundle bundle = zzmVar.zzn;
        for (String str2 : bundle.keySet()) {
            builder.addCustomTargeting(str2, bundle.getString(str2));
        }
        builder.setAdString(zzmVar.zzx);
        String str3 = zzmVar.zzl;
        if (str3 != null) {
            builder.setContentUrl(str3);
        }
        builder.setNeighboringContentUrls(zzmVar.zzv);
        builder.setRequestAgent(zzmVar.zzp);
        AdRequest build = builder.build();
        PreloadConfiguration.Builder builder2 = new PreloadConfiguration.Builder(str, adFormat);
        builder2.setAdRequest(build);
        builder2.setBufferSize(zzftVar.zzd);
        return builder2.build();
    }

    public static zzft zzs(Context context, PreloadConfiguration preloadConfiguration, AdFormat adFormat) {
        PreloadConfiguration.Builder builder = new PreloadConfiguration.Builder(preloadConfiguration.getAdUnitId(), adFormat);
        builder.setAdRequest(preloadConfiguration.getAdRequest());
        builder.setBufferSize(preloadConfiguration.getBufferSize());
        return zzt(context, builder.build(), 2);
    }

    public static zzft zzt(Context context, PreloadConfiguration preloadConfiguration, int i) {
        int bufferSize;
        int intValue;
        com.google.android.gms.ads.internal.client.zzm zza2 = com.google.android.gms.ads.internal.client.zzq.zza.zza(context, preloadConfiguration.getAdRequest().zza());
        int i2 = 1;
        if (i == 1) {
            zza2.zzc.putBoolean("is_sdk_preload", true);
        } else {
            zza2.zzc.putBoolean("zenith_v2", true);
        }
        if (preloadConfiguration.getBufferSize() <= 0) {
            int ordinal = preloadConfiguration.getAdFormat().ordinal();
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 5) {
                        bufferSize = 1;
                    } else {
                        bufferSize = ((Integer) zzbd.zzc().a(zzbgk.Z)).intValue();
                    }
                } else {
                    bufferSize = ((Integer) zzbd.zzc().a(zzbgk.b0)).intValue();
                }
            } else {
                bufferSize = ((Integer) zzbd.zzc().a(zzbgk.a0)).intValue();
            }
        } else {
            bufferSize = preloadConfiguration.getBufferSize();
        }
        int ordinal2 = preloadConfiguration.getAdFormat().ordinal();
        if (ordinal2 != 1) {
            if (ordinal2 != 2) {
                if (ordinal2 != 5) {
                    intValue = 1;
                } else {
                    intValue = ((Integer) zzbd.zzc().a(zzbgk.W)).intValue();
                }
            } else {
                intValue = ((Integer) zzbd.zzc().a(zzbgk.Y)).intValue();
            }
        } else {
            intValue = ((Integer) zzbd.zzc().a(zzbgk.X)).intValue();
        }
        int max = Math.max(Math.min(intValue, 15), 1);
        int ordinal3 = preloadConfiguration.getAdFormat().ordinal();
        if (ordinal3 != 1) {
            if (ordinal3 != 2) {
                if (ordinal3 == 5) {
                    i2 = ((Integer) zzbd.zzc().a(zzbgk.c0)).intValue();
                }
            } else {
                i2 = ((Integer) zzbd.zzc().a(zzbgk.e0)).intValue();
            }
        } else {
            i2 = ((Integer) zzbd.zzc().a(zzbgk.d0)).intValue();
        }
        return new zzft(preloadConfiguration.getAdUnitId(), preloadConfiguration.getAdFormat().getValue(), zza2, Math.max(Math.min(bufferSize, max), Math.min(i2, max)));
    }

    public static final int zzu(DisplayMetrics displayMetrics, int i) {
        return (int) TypedValue.applyDimension(1, i, displayMetrics);
    }

    @Nullable
    @VisibleForTesting
    public static final String zzv(StackTraceElement[] stackTraceElementArr, String str) {
        int i;
        String str2;
        int i2 = 0;
        while (true) {
            i = i2 + 1;
            if (i < stackTraceElementArr.length) {
                StackTraceElement stackTraceElement = stackTraceElementArr[i2];
                String className = stackTraceElement.getClassName();
                if (!"loadAd".equalsIgnoreCase(stackTraceElement.getMethodName()) || (!b.equalsIgnoreCase(className) && !f3074c.equalsIgnoreCase(className) && !d.equalsIgnoreCase(className) && !e.equalsIgnoreCase(className) && !f.equalsIgnoreCase(className) && !g.equalsIgnoreCase(className))) {
                    i2 = i;
                }
            } else {
                str2 = null;
                break;
            }
        }
        str2 = stackTraceElementArr[i].getClassName();
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
            StringBuilder sb = new StringBuilder();
            if (stringTokenizer.hasMoreElements()) {
                sb.append(stringTokenizer.nextToken());
                for (int i3 = 2; i3 > 0 && stringTokenizer.hasMoreElements(); i3--) {
                    sb.append(".");
                    sb.append(stringTokenizer.nextToken());
                }
                str = sb.toString();
            }
            if (str2 != null && !str2.contains(str)) {
                return str2;
            }
        }
        return null;
    }

    public static final boolean zzw() {
        boolean booleanValue = ((Boolean) zzbd.zzc().a(zzbgk.Mc)).booleanValue();
        if (Build.VERSION.SDK_INT >= 31) {
            String str = Build.FINGERPRINT;
            if (str.contains("generic") || str.contains("emulator")) {
                return true;
            }
            if (booleanValue && Build.HARDWARE.contains("ranchu")) {
                return true;
            }
            return false;
        }
        return Build.DEVICE.startsWith("generic");
    }

    public static final boolean zzx(Context context, int i) {
        if (GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, i) == 0) {
            return true;
        }
        return false;
    }

    public static final boolean zzy(Context context) {
        int isGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        if (isGooglePlayServicesAvailable != 0 && isGooglePlayServicesAvailable != 2) {
            return false;
        }
        return true;
    }

    public static final boolean zzz() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return true;
        }
        return false;
    }

    public final JSONArray b(Collection collection) {
        JSONArray jSONArray = new JSONArray();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            c(jSONArray, it.next());
        }
        return jSONArray;
    }

    public final void c(JSONArray jSONArray, Object obj) {
        if (obj instanceof Bundle) {
            jSONArray.put(zzm((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONArray.put(zzk((Map) obj));
            return;
        }
        if (obj instanceof Collection) {
            jSONArray.put(b((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONArray.put(f((Object[]) obj));
        } else {
            jSONArray.put(obj);
        }
    }

    public final void d(JSONObject jSONObject, String str, Object obj) {
        if (((Boolean) zzbd.zzc().a(zzbgk.s)).booleanValue()) {
            str = String.valueOf(str);
        }
        if (obj instanceof Bundle) {
            jSONObject.put(str, zzm((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONObject.put(str, zzk((Map) obj));
            return;
        }
        if (obj instanceof Collection) {
            jSONObject.put(String.valueOf(str), b((Collection) obj));
            return;
        }
        if (obj instanceof Object[]) {
            jSONObject.put(str, b(Arrays.asList((Object[]) obj)));
            return;
        }
        int i = 0;
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            int length = iArr.length;
            Integer[] numArr = new Integer[length];
            while (i < length) {
                numArr[i] = Integer.valueOf(iArr[i]);
                i++;
            }
            jSONObject.put(str, f(numArr));
            return;
        }
        if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length2 = dArr.length;
            Double[] dArr2 = new Double[length2];
            while (i < length2) {
                dArr2[i] = Double.valueOf(dArr[i]);
                i++;
            }
            jSONObject.put(str, f(dArr2));
            return;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length3 = jArr.length;
            Long[] lArr = new Long[length3];
            while (i < length3) {
                lArr[i] = Long.valueOf(jArr[i]);
                i++;
            }
            jSONObject.put(str, f(lArr));
            return;
        }
        if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            Boolean[] boolArr = new Boolean[length4];
            while (i < length4) {
                boolArr[i] = Boolean.valueOf(zArr[i]);
                i++;
            }
            jSONObject.put(str, f(boolArr));
            return;
        }
        jSONObject.put(str, obj);
    }

    public final JSONArray f(Object[] objArr) {
        JSONArray jSONArray = new JSONArray();
        for (Object obj : objArr) {
            c(jSONArray, obj);
        }
        return jSONArray;
    }

    public final int zza(Context context, int i) {
        if (this.f3075a < 0.0f) {
            synchronized (this) {
                try {
                    if (this.f3075a < 0.0f) {
                        WindowManager windowManager = (WindowManager) context.getSystemService("window");
                        if (windowManager == null) {
                            return 0;
                        }
                        Display defaultDisplay = windowManager.getDefaultDisplay();
                        DisplayMetrics displayMetrics = new DisplayMetrics();
                        defaultDisplay.getMetrics(displayMetrics);
                        this.f3075a = displayMetrics.density;
                    }
                } finally {
                }
            }
        }
        return Math.round(i / this.f3075a);
    }

    public final void zzb(ViewGroup viewGroup, com.google.android.gms.ads.internal.client.zzr zzrVar, @Nullable String str, @Nullable String str2) {
        if (str2 != null) {
            zzo.zzi(str2);
        }
        e(viewGroup, zzrVar, str, -65536, -16777216);
    }

    public final void zzc(ViewGroup viewGroup, com.google.android.gms.ads.internal.client.zzr zzrVar, @Nullable String str) {
        e(viewGroup, zzrVar, "Ads by Google", -16777216, -1);
    }

    public final void zzh(final Context context, @Nullable String str, String str2, Bundle bundle, boolean z) {
        zzB(context, str, "gmob-apps", bundle, true, new zze() { // from class: com.google.android.gms.ads.internal.util.client.zzd
            @Override // com.google.android.gms.ads.internal.util.client.zze
            public final /* synthetic */ zzt zza(String str3) {
                new zzc(zzf.this, context, str3).start();
                return zzt.zza;
            }
        });
    }

    public final JSONObject zzk(Map map) {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                d(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e2) {
            throw new JSONException("Could not convert map to JSON: ".concat(String.valueOf(e2.getMessage())));
        }
    }

    public final JSONObject zzl(@Nullable Bundle bundle, JSONObject jSONObject) {
        if (bundle != null) {
            try {
                return zzm(bundle);
            } catch (JSONException e2) {
                zzo.zzg("Error converting Bundle to JSON", e2);
            }
        }
        return null;
    }

    public final JSONObject zzm(Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            d(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }
}
