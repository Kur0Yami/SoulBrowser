package com.google.android.gms.ads.internal.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.app.LocaleManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.widget.AbsListView;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.core.view.ScrollingView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.SharedPreferencesUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbgb;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbit;
import com.google.android.gms.internal.ads.zzbzk;
import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzcii;
import com.google.android.gms.internal.ads.zzcjy;
import com.google.android.gms.internal.ads.zzckt;
import com.google.android.gms.internal.ads.zzdud;
import com.google.android.gms.internal.ads.zzdxd;
import com.google.android.gms.internal.ads.zzdxe;
import com.google.android.gms.internal.ads.zzfhr;
import com.google.android.gms.internal.ads.zzfhu;
import com.google.android.gms.internal.ads.zzfxl;
import com.google.android.gms.internal.ads.zzgpo;
import com.google.android.gms.internal.ads.zzgqp;
import com.google.android.gms.internal.ads.zzgym;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import kotlin.uuid.Uuid;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzs {
    public static final zzfxl zza = new zzf(Looper.getMainLooper());
    public String g;
    public volatile String h;

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f3163a = new AtomicReference(null);
    public final AtomicReference b = new AtomicReference(null);

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReference f3164c = new AtomicReference(new Bundle());
    public final AtomicBoolean d = new AtomicBoolean();
    public boolean e = true;
    public final Object f = new Object();
    public boolean i = false;
    public boolean j = false;
    public final ExecutorService k = Executors.newSingleThreadExecutor();

    public static boolean a(String str, AtomicReference atomicReference, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Pattern pattern = (Pattern) atomicReference.get();
            if (pattern == null || !str2.equals(pattern.pattern())) {
                pattern = Pattern.compile(str2);
                atomicReference.set(pattern);
            }
            return pattern.matcher(str).matches();
        } catch (PatternSyntaxException unused) {
            return false;
        }
    }

    public static String b(Bundle bundle) {
        if (bundle != null) {
            String string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
            if (!TextUtils.isEmpty(string)) {
                if (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) {
                    return string;
                }
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public static Bundle c(Context context) {
        try {
            return Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), Uuid.SIZE_BITS).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            zze.zzb("Error getting metadata", e);
            return null;
        }
    }

    public static final void d(CustomTabsIntent.Builder builder, Bundle bundle) {
        Intent intent = builder.f422a;
        if (!bundle.isEmpty()) {
            int i = bundle.getInt("h", -1);
            if (i >= 0) {
                if (i > 0) {
                    intent.putExtra("androidx.browser.customtabs.extra.INITIAL_ACTIVITY_HEIGHT_PX", i);
                    intent.putExtra("androidx.browser.customtabs.extra.ACTIVITY_HEIGHT_RESIZE_BEHAVIOR", 0);
                } else {
                    throw new IllegalArgumentException("Invalid value for the initialHeightPx argument");
                }
            }
            int i2 = bundle.getInt("cbp", -1);
            if (i2 >= 0 && i2 <= 2) {
                if (i2 >= 0 && i2 <= 2) {
                    intent.putExtra("androidx.browser.customtabs.extra.CLOSE_BUTTON_POSITION", i2);
                    return;
                }
                throw new IllegalArgumentException("Invalid value for the position argument");
            }
        }
    }

    public static final String e(final Context context, String str) {
        String str2;
        String str3;
        if (str != null) {
            try {
                zzce zza2 = zzce.zza();
                if (TextUtils.isEmpty(zza2.f3142a)) {
                    if (ClientLibraryUtils.isPackageSide()) {
                        str3 = (String) zzcb.zza(context, new Callable() { // from class: com.google.android.gms.ads.internal.util.zzcc
                            @Override // java.util.concurrent.Callable
                            public final /* synthetic */ Object call() {
                                Context context2 = context;
                                SharedPreferences sharedPreferences = context2.getSharedPreferences("admob_user_agent", 0);
                                String string = sharedPreferences.getString("user_agent", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                if (TextUtils.isEmpty(string)) {
                                    zze.zza("User agent is not initialized on Google Play Services. Initializing.");
                                    String defaultUserAgent = WebSettings.getDefaultUserAgent(context2);
                                    SharedPreferencesUtils.publishWorldReadableSharedPreferences(context2, sharedPreferences.edit().putString("user_agent", defaultUserAgent), "admob_user_agent");
                                    return defaultUserAgent;
                                }
                                zze.zza("User agent is already initialized on Google Play Services.");
                                return string;
                            }
                        });
                    } else {
                        final Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
                        str3 = (String) zzcb.zza(context, new Callable() { // from class: com.google.android.gms.ads.internal.util.zzcd
                            @Override // java.util.concurrent.Callable
                            public final /* synthetic */ Object call() {
                                SharedPreferences sharedPreferences;
                                boolean z = false;
                                Context context2 = remoteContext;
                                Context context3 = context;
                                if (context2 != null) {
                                    zze.zza("Attempting to read user agent from Google Play Services.");
                                    sharedPreferences = context2.getSharedPreferences("admob_user_agent", 0);
                                } else {
                                    zze.zza("Attempting to read user agent from local cache.");
                                    sharedPreferences = context3.getSharedPreferences("admob_user_agent", 0);
                                    z = true;
                                }
                                String string = sharedPreferences.getString("user_agent", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                if (TextUtils.isEmpty(string)) {
                                    zze.zza("Reading user agent from WebSettings");
                                    string = WebSettings.getDefaultUserAgent(context3);
                                    if (z) {
                                        sharedPreferences.edit().putString("user_agent", string).apply();
                                        zze.zza("Persisting user agent.");
                                    }
                                }
                                return string;
                            }
                        });
                    }
                    zza2.f3142a = str3;
                }
                str2 = zza2.f3142a;
            } catch (Exception unused) {
                str2 = null;
            }
            if (TextUtils.isEmpty(str2)) {
                str2 = WebSettings.getDefaultUserAgent(context);
            }
            if (TextUtils.isEmpty(str2)) {
                str2 = f();
            }
            String q = a.q(new StringBuilder(androidx.work.impl.workers.a.e(10, str2) + str.length()), str2, " (Mobile; ", str);
            try {
                if (Wrappers.packageManager(context).isCallerInstantApp()) {
                    StringBuilder sb = new StringBuilder(q.length() + 4);
                    sb.append(q);
                    sb.append(";aia");
                    q = sb.toString();
                }
            } catch (Exception e) {
                com.google.android.gms.ads.internal.zzt.zzh().f("AdUtil.getUserAgent", e);
            }
            return q.concat(")");
        }
        return f();
    }

    public static final String f() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        String str = Build.VERSION.RELEASE;
        if (str != null) {
            sb.append(" ");
            sb.append(str);
        }
        sb.append("; ");
        sb.append(Locale.getDefault());
        String str2 = Build.DEVICE;
        if (str2 != null) {
            sb.append("; ");
            sb.append(str2);
            String str3 = Build.DISPLAY;
            if (str3 != null) {
                sb.append(" Build/");
                sb.append(str3);
            }
        }
        sb.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v6, types: [android.view.ViewParent] */
    public static final long zzA(View view) {
        float f;
        float f2 = Float.MAX_VALUE;
        do {
            f = 0.0f;
            if (!(view instanceof View)) {
                break;
            }
            View view2 = (View) view;
            f2 = Math.min(f2, view2.getAlpha());
            view = view2.getParent();
        } while (f2 > 0.0f);
        if (f2 >= 0.0f) {
            f = f2;
        }
        return Math.round(f * 100.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final WebResourceResponse zzB(Context context, String str, String str2) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("User-Agent", com.google.android.gms.ads.internal.zzt.zzc().zze(context, str));
            hashMap.put("Cache-Control", "max-stale=3600");
            String str3 = (String) new zzbl(context).zzb(0, str2, hashMap, null).get(60L, TimeUnit.SECONDS);
            if (str3 == null) {
                return null;
            }
            return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not fetch MRAID JS.", e);
            return null;
        }
    }

    public static final int zzC(@Nullable View view) {
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof ScrollView) {
                return 1;
            }
            if (parent instanceof AbsListView) {
                return 2;
            }
            if (parent instanceof HorizontalScrollView) {
                return 3;
            }
            if (parent instanceof ScrollingView) {
                return 4;
            }
        }
        return 0;
    }

    public static final String zzD() {
        Resources e = com.google.android.gms.ads.internal.zzt.zzh().e();
        if (e != null) {
            return e.getString(R.string.s7);
        }
        return "Test Ad";
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.ads.zzbcb, com.google.android.gms.ads.internal.util.zzbo] */
    @Nullable
    public static final zzbo zzE(Context context) {
        try {
            Object newInstance = context.getClassLoader().loadClass("com.google.android.gms.ads.internal.util.WorkManagerUtil").getDeclaredConstructor(null).newInstance(null);
            if (!(newInstance instanceof IBinder)) {
                int i = zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzf("Instantiated WorkManagerUtil not instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
            if (queryLocalInterface instanceof zzbo) {
                return (zzbo) queryLocalInterface;
            }
            return new zzbcb(iBinder, "com.google.android.gms.ads.internal.util.IWorkManagerUtil");
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzt.zzh().f("Failed to instantiate WorkManagerUtil", e);
            return null;
        }
    }

    public static final boolean zzF(Context context, String str) {
        Context a2 = zzbzk.a(context);
        if (Wrappers.packageManager(a2).checkPermission(str, a2.getPackageName()) == 0) {
            return true;
        }
        return false;
    }

    public static final boolean zzG(Context context) {
        try {
            return DeviceProperties.isBstar(context);
        } catch (NoSuchMethodError unused) {
            return false;
        }
    }

    public static final boolean zzH(String str) {
        if (!com.google.android.gms.ads.internal.util.client.zzl.zzj()) {
            return false;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.a6)).booleanValue()) {
            return false;
        }
        String str2 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.c6);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.b6);
        if (str4.isEmpty()) {
            return true;
        }
        for (String str5 : str4.split(";")) {
            if (str5.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean zzI(Context context) {
        KeyguardManager keyguardManager;
        if (context != null) {
            Object systemService = context.getSystemService("keyguard");
            if (systemService != null && (systemService instanceof KeyguardManager)) {
                keyguardManager = (KeyguardManager) systemService;
            } else {
                keyguardManager = null;
            }
            if (keyguardManager != null && keyguardManager.isKeyguardLocked()) {
                return true;
            }
            return false;
        }
        return false;
    }

    public static final boolean zzJ(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        } catch (Throwable th) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error loading class.", th);
            com.google.android.gms.ads.internal.zzt.zzh().f("AdUtil.isLiteSdk", th);
            return false;
        }
    }

    public static final boolean zzK() {
        int myUid = Process.myUid();
        if (myUid != 0 && myUid != 1000) {
            return false;
        }
        return true;
    }

    public static final boolean zzL(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        PowerManager powerManager;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance == 100 && !keyguardManager.inKeyguardRestrictedInputMode() && (powerManager = (PowerManager) context.getSystemService("power")) != null) {
                        if (powerManager.isScreenOn()) {
                            return false;
                        }
                        return true;
                    }
                    return true;
                }
            }
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    public static final boolean zzM(Context context) {
        try {
            Bundle c2 = c(context);
            String string = c2.getString("com.google.android.gms.ads.INTEGRATION_MANAGER");
            if (TextUtils.isEmpty(b(c2))) {
                if (!TextUtils.isEmpty(string)) {
                    return true;
                }
            }
        } catch (RemoteException unused) {
        }
        return false;
    }

    public static final boolean zzN(Context context) {
        Window window;
        if ((context instanceof Activity) && (window = ((Activity) context).getWindow()) != null && window.getDecorView() != null) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            window.getDecorView().getGlobalVisibleRect(rect, null);
            window.getDecorView().getWindowVisibleDisplayFrame(rect2);
            if (rect.bottom != 0 && rect2.bottom != 0 && rect.top == rect2.top) {
                return true;
            }
        }
        return false;
    }

    public static final void zzO(View view, int i, MotionEvent motionEvent) {
        String str;
        int i2;
        int i3;
        int i4;
        String str2;
        String str3;
        String str4;
        zzfhr zzC;
        zzfhu d;
        View view2 = view;
        int[] iArr = new int[2];
        Rect rect = new Rect();
        try {
            String packageName = view2.getContext().getPackageName();
            if (view2 instanceof zzdud) {
                view2 = ((zzdud) view2).getChildAt(0);
            }
            if (!(view2 instanceof com.google.android.gms.ads.formats.zzh) && !(view2 instanceof NativeAdView)) {
                str = "UNKNOWN";
                i2 = 0;
            } else {
                str = "NATIVE";
                i2 = 1;
            }
            if (view2.getLocalVisibleRect(rect)) {
                i4 = rect.width();
                i3 = rect.height();
            } else {
                i3 = 0;
                i4 = 0;
            }
            com.google.android.gms.ads.internal.zzt.zzc();
            long zzA = zzA(view2);
            view2.getLocationOnScreen(iArr);
            int i5 = iArr[0];
            int i6 = iArr[1];
            String str5 = "none";
            if ((view2 instanceof zzcjy) && (d = ((zzcjy) view2).d()) != null) {
                str3 = d.b;
                int hashCode = view2.hashCode();
                str2 = str;
                StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 1 + String.valueOf(hashCode).length());
                sb.append(str3);
                sb.append(":");
                sb.append(hashCode);
                view2.setContentDescription(sb.toString());
            } else {
                str2 = str;
                str3 = "none";
            }
            if ((view2 instanceof zzcii) && (zzC = ((zzcii) view2).zzC()) != null) {
                str4 = zzfhr.a(zzC.b);
                i2 = zzC.e;
                str5 = zzC.E;
            } else {
                str4 = str2;
            }
            Locale locale = Locale.US;
            String str6 = "<Ad hashCode=" + view2.hashCode() + ", package=" + packageName + ", adNetCls=" + str5 + ", gwsQueryId=" + str3 + ", format=" + str4 + ", impType=" + i2 + ", class=" + view2.getClass().getName() + ", x=" + i5 + ", y=" + i6 + ", width=" + view2.getWidth() + ", height=" + view2.getHeight() + ", vWidth=" + i4 + ", vHeight=" + i3 + ", alpha=" + zzA + ", state=" + Integer.toString(i, 2) + ">";
            int i7 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh(str6);
        } catch (Exception e) {
            int i8 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Failure getting view location.", e);
        }
    }

    public static final AlertDialog.Builder zzP(Context context) {
        com.google.android.gms.ads.internal.zzt.zzf();
        return new AlertDialog.Builder(context, android.R.style.Theme.Material.Dialog.Alert);
    }

    public static final void zzQ(Context context, String str, String str2) {
        new zzbt(context, str, str2, null, null).zzb();
    }

    public static final void zzR(Context context, Throwable th) {
        if (context != null) {
            try {
                if (((Boolean) zzbit.b.c()).booleanValue()) {
                    CrashUtils.addDynamiteErrorToDropBox(context, th);
                }
            } catch (IllegalStateException unused) {
            }
        }
    }

    public static final void zzS(Context context, zzfhr zzfhrVar, zzdxe zzdxeVar) {
        String str;
        zzdxd a2 = zzdxeVar.a();
        a2.b("action", "can_show");
        com.google.android.gms.ads.internal.zzt.zzc();
        String str2 = "0";
        if (true == zzL(context)) {
            str = "0";
        } else {
            str = "1";
        }
        a2.b("foreground", str);
        if (true == com.google.android.gms.ads.internal.zzt.zzg().f()) {
            str2 = "1";
        }
        a2.b("fg_al", str2);
        if (zzfhrVar != null) {
            List list = zzfhrVar.t;
            if (!list.isEmpty()) {
                a2.b("ancn", (String) list.get(0));
            }
            a2.b("ad_format", zzfhr.a(zzfhrVar.b));
        }
        a2.c();
    }

    public static final boolean zzT(@Nullable zzfhr zzfhrVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Se)).booleanValue() && zzfhrVar != null && zzfhrVar.e == 4) {
            return true;
        }
        return false;
    }

    public static final int zzU(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            String concat = "Could not parse value:".concat(e.toString());
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(concat);
            return 0;
        }
    }

    @Nullable
    public static final Map zzV(Uri uri) {
        String encodedQuery;
        String decode;
        if (uri == null) {
            return null;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t)).booleanValue()) {
            HashMap hashMap = new HashMap();
            if (!uri.isOpaque() && (encodedQuery = uri.getEncodedQuery()) != null) {
                int i = 0;
                while (true) {
                    int indexOf = encodedQuery.indexOf(38, i);
                    int length = encodedQuery.length();
                    if (indexOf != -1) {
                        length = indexOf;
                    }
                    int indexOf2 = encodedQuery.indexOf(61, i);
                    if (indexOf2 > length || indexOf2 == -1) {
                        indexOf2 = length;
                    }
                    String decode2 = Uri.decode(encodedQuery.substring(i, indexOf2));
                    if (indexOf2 == length) {
                        decode = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    } else {
                        decode = Uri.decode(encodedQuery.substring(indexOf2 + 1, length));
                    }
                    hashMap.put(decode2, decode);
                    if (indexOf == -1) {
                        break;
                    }
                    i = indexOf + 1;
                }
            }
            return hashMap;
        }
        HashMap hashMap2 = new HashMap();
        for (String str : uri.getQueryParameterNames()) {
            if (!TextUtils.isEmpty(str)) {
                hashMap2.put(str, uri.getQueryParameter(str));
            }
        }
        return hashMap2;
    }

    public static final int[] zzX(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        if (window != null && (findViewById = window.findViewById(android.R.id.content)) != null) {
            return new int[]{findViewById.getWidth(), findViewById.getHeight()};
        }
        return new int[]{0, 0};
    }

    public static final int[] zzY(Activity activity) {
        int[] iArr;
        View findViewById;
        Window window = activity.getWindow();
        if (window != null && (findViewById = window.findViewById(android.R.id.content)) != null) {
            iArr = new int[]{findViewById.getTop(), findViewById.getBottom()};
        } else {
            iArr = new int[]{0, 0};
        }
        return new int[]{com.google.android.gms.ads.internal.client.zzbb.zza().zza(activity, iArr[0]), com.google.android.gms.ads.internal.client.zzbb.zza().zza(activity, iArr[1])};
    }

    public static final boolean zzZ(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z;
        if (com.google.android.gms.ads.internal.zzt.zzc().e || keyguardManager == null || !keyguardManager.inKeyguardRestrictedInputMode() || zzq(view)) {
            z = true;
        } else {
            z = false;
        }
        long zzA = zzA(view);
        if (view.getVisibility() == 0 && view.isShown() && ((powerManager == null || powerManager.isScreenOn()) && z)) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Q1)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect())) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Vb)).booleanValue()) {
                    if (zzA < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Xb)).intValue()) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static int zza(int i) {
        if (i >= 5000) {
            return i;
        }
        if (i > 0) {
            String t = androidx.work.impl.workers.a.t(new StringBuilder(String.valueOf(i).length() + 86), "HTTP timeout too low: ", i, " milliseconds. Reverting to default timeout: 60000 milliseconds.");
            int i2 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(t);
            return 60000;
        }
        return 60000;
    }

    public static final void zzaa(Context context, Intent intent) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.sc)).booleanValue()) {
            try {
                try {
                    context.startActivity(intent);
                    return;
                } catch (Throwable unused) {
                    intent.addFlags(268435456);
                    context.startActivity(intent);
                    return;
                }
            } catch (SecurityException e) {
                int i = zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
                com.google.android.gms.ads.internal.zzt.zzh().f("AdUtil.startActivityWithUnknownContext", e);
                return;
            }
        }
        try {
            context.startActivity(intent);
        } catch (Throwable unused2) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    public static final void zzab(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            zzs(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String uri2 = uri.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(uri2).length() + 26);
            sb.append("Opening ");
            sb.append(uri2);
            sb.append(" in a new browser.");
            String sb2 = sb.toString();
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd(sb2);
        } catch (ActivityNotFoundException e) {
            int i2 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("No browser is found.", e);
        }
    }

    public static final int[] zzac(Activity activity) {
        int[] zzX = zzX(activity);
        return new int[]{com.google.android.gms.ads.internal.client.zzbb.zza().zza(activity, zzX[0]), com.google.android.gms.ads.internal.client.zzbb.zza().zza(activity, zzX[1])};
    }

    public static final boolean zzad(View view, Context context) {
        PowerManager powerManager;
        Context applicationContext = context.getApplicationContext();
        KeyguardManager keyguardManager = null;
        if (applicationContext != null) {
            powerManager = (PowerManager) applicationContext.getSystemService("power");
        } else {
            powerManager = null;
        }
        Object systemService = context.getSystemService("keyguard");
        if (systemService != null && (systemService instanceof KeyguardManager)) {
            keyguardManager = (KeyguardManager) systemService;
        }
        return zzZ(view, powerManager, keyguardManager);
    }

    public static final void zzae(Context context, Intent intent, @Nullable zzdxe zzdxeVar, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.xe)).booleanValue() && (context instanceof zzckt)) {
            try {
                Uri data = intent.getData();
                if (data != null && data.toString() != null) {
                    if (data.toString().matches((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ze))) {
                        ((zzckt) context).a(intent);
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ye)).booleanValue() && zzdxeVar != null) {
                            zzdxd a2 = zzdxeVar.a();
                            a2.b("action", "hila");
                            if (str == null) {
                                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                            }
                            a2.b("gqi", str);
                            a2.e();
                            return;
                        }
                        return;
                    }
                }
                zzaa(context, intent);
                return;
            } catch (ActivityNotFoundException e) {
                e = e;
                int i = zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Error occurred while starting activity for result", e);
                com.google.android.gms.ads.internal.zzt.zzh().f("AdUtil.startActivityForResult", e);
                zzaa(context, intent);
                return;
            } catch (SecurityException e2) {
                e = e2;
                int i2 = zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Error occurred while starting activity for result", e);
                com.google.android.gms.ads.internal.zzt.zzh().f("AdUtil.startActivityForResult", e);
                zzaa(context, intent);
                return;
            } catch (Exception e3) {
                int i3 = zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Error occurred while starting activity for result", e3);
                com.google.android.gms.ads.internal.zzt.zzh().f("AdUtil.startActivityForResult", e3);
                zzaa(context, intent);
                return;
            }
        }
        zzaa(context, intent);
    }

    public static void zzh(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            zzcdo.f5068a.execute(runnable);
        }
    }

    public static List zzk() {
        zzbgb zzbgbVar = zzbgk.f4658a;
        ArrayList b = com.google.android.gms.ads.internal.client.zzbd.zzb().b();
        ArrayList arrayList = new ArrayList();
        int size = b.size();
        int i = 0;
        while (i < size) {
            Object obj = b.get(i);
            i++;
            Iterator it = zzgqp.a(zzgpo.b(',')).c((String) obj).iterator();
            while (it.hasNext()) {
                try {
                    arrayList.add(Long.valueOf((String) it.next()));
                } catch (NumberFormatException unused) {
                    zze.zza("Experiment ID is not a number");
                }
            }
        }
        return arrayList;
    }

    public static String zzl(String str, String str2) {
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            charArray[i] = (char) (charArray[i] ^ str2.charAt(i % str2.length()));
        }
        return new String(charArray);
    }

    public static zzq zzm(Context context) {
        zzq zzqVar = new zzq(Locale.getDefault().getLanguage(), Locale.getDefault().getCountry());
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            LocaleManager localeManager = (LocaleManager) context.getSystemService(LocaleManager.class);
            if (localeManager != null && !localeManager.getSystemLocales().isEmpty()) {
                Locale locale = localeManager.getSystemLocales().get(0);
                return new zzq(locale.getLanguage(), locale.getCountry());
            }
            return zzqVar;
        }
        if (i >= 24) {
            Locale locale2 = context.getResources().getConfiguration().getLocales().get(0);
            return new zzq(locale2.getLanguage(), locale2.getCountry());
        }
        Locale locale3 = context.getResources().getConfiguration().locale;
        return new zzq(locale3.getLanguage(), locale3.getCountry());
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0016 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean zzq(android.view.View r2) {
        /*
            android.view.View r2 = r2.getRootView()
            r0 = 0
            if (r2 != 0) goto L9
        L7:
            r2 = r0
            goto L13
        L9:
            android.content.Context r2 = r2.getContext()
            boolean r1 = r2 instanceof android.app.Activity
            if (r1 == 0) goto L7
            android.app.Activity r2 = (android.app.Activity) r2
        L13:
            r1 = 0
            if (r2 != 0) goto L17
            return r1
        L17:
            android.view.Window r2 = r2.getWindow()
            if (r2 != 0) goto L1e
            goto L22
        L1e:
            android.view.WindowManager$LayoutParams r0 = r2.getAttributes()
        L22:
            if (r0 == 0) goto L2d
            int r2 = r0.flags
            r0 = 524288(0x80000, float:7.34684E-40)
            r2 = r2 & r0
            if (r2 == 0) goto L2d
            r2 = 1
            return r2
        L2d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzs.zzq(android.view.View):boolean");
    }

    public static final boolean zzr(final Context context, final WebSettings webSettings) {
        zzcb.zza(context, new Callable() { // from class: com.google.android.gms.ads.internal.util.zzn
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                zzfxl zzfxlVar = zzs.zza;
                String absolutePath = context.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath();
                WebSettings webSettings2 = webSettings;
                webSettings2.setDatabasePath(absolutePath);
                webSettings2.setDatabaseEnabled(true);
                webSettings2.setDomStorageEnabled(true);
                webSettings2.setDisplayZoomControls(false);
                webSettings2.setBuiltInZoomControls(true);
                webSettings2.setSupportZoom(true);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.p1)).booleanValue()) {
                    webSettings2.setTextZoom(100);
                }
                webSettings2.setAllowContentAccess(false);
                return Boolean.TRUE;
            }
        });
        webSettings.setAllowFileAccessFromFileURLs(false);
        webSettings.setAllowUniversalAccessFromFileURLs(false);
        webSettings.setMediaPlaybackRequiresUserGesture(false);
        return true;
    }

    public static final void zzs(Context context, Intent intent) {
        Bundle bundle;
        if (intent == null) {
            return;
        }
        if (intent.getExtras() != null) {
            bundle = intent.getExtras();
        } else {
            bundle = new Bundle();
        }
        bundle.putBinder("android.support.customtabs.extra.SESSION", null);
        bundle.putString("com.android.browser.application_id", context.getPackageName());
        intent.putExtras(bundle);
    }

    public static final String zzt(Context context) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        return b(c(context));
    }

    public static final String zzv() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return str2;
        }
        return a.q(new StringBuilder(androidx.work.impl.workers.a.e(1, str) + str2.length()), str, " ", str2);
    }

    @Nullable
    public static final Integer zzw(Context context) {
        Object systemService = context.getSystemService("display");
        if (systemService instanceof DisplayManager) {
            return Integer.valueOf(((DisplayManager) systemService).getDisplays().length);
        }
        return null;
    }

    public static final DisplayMetrics zzx(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static final Map zzz(String str) {
        HashMap hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                HashSet hashSet = new HashSet();
                JSONArray optJSONArray = jSONObject.optJSONArray(next);
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        String optString = optJSONArray.optString(i);
                        if (optString != null) {
                            hashSet.add(optString);
                        }
                    }
                    hashMap.put(next, hashSet);
                }
            }
            return hashMap;
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.zzt.zzh().f("AdUtil.getMapOfFileNamesToKeysFromJsonString", e);
            return hashMap;
        }
    }

    public final void zzb(Context context, String str, boolean z, HttpURLConnection httpURLConnection, boolean z2, int i) {
        int zza2 = zza(i);
        String t = androidx.work.impl.workers.a.t(new StringBuilder(String.valueOf(zza2).length() + 28), "HTTP timeout: ", zza2, " milliseconds.");
        int i2 = zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh(t);
        httpURLConnection.setConnectTimeout(zza2);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(zza2);
        if (TextUtils.isEmpty(httpURLConnection.getRequestProperty("User-Agent"))) {
            httpURLConnection.setRequestProperty("User-Agent", zze(context, str));
        }
        httpURLConnection.setUseCaches(false);
    }

    @SuppressLint({"UnprotectedReceiver"})
    public final boolean zzc(Context context) {
        if (this.i) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        zzbgk.a(context);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.rc)).booleanValue() && Build.VERSION.SDK_INT >= 33) {
            context.getApplicationContext().registerReceiver(new zzr(this), intentFilter, 4);
        } else {
            context.getApplicationContext().registerReceiver(new zzr(this), intentFilter);
        }
        this.i = true;
        return true;
    }

    @SuppressLint({"UnprotectedReceiver"})
    public final boolean zzd(Context context) {
        if (this.j) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        zzbgk.a(context);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.rc)).booleanValue() && Build.VERSION.SDK_INT >= 33) {
            context.getApplicationContext().registerReceiver(new BroadcastReceiver(), intentFilter, 4);
        } else {
            context.getApplicationContext().registerReceiver(new BroadcastReceiver(), intentFilter);
        }
        this.j = true;
        return true;
    }

    public final String zze(Context context, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ec)).booleanValue()) {
            if (this.h != null) {
                return this.h;
            }
            this.h = e(context, str);
            return this.h;
        }
        synchronized (this.f) {
            try {
                String str2 = this.g;
                if (str2 != null) {
                    return str2;
                }
                String e = e(context, str);
                this.g = e;
                return e;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final ListenableFuture zzf(final Uri uri) {
        return zzgym.c(new Callable() { // from class: com.google.android.gms.ads.internal.util.zzo
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                zzfxl zzfxlVar = zzs.zza;
                com.google.android.gms.ads.internal.zzt.zzc();
                return zzs.zzV(uri);
            }
        }, this.k);
    }

    public final void zzg(final Context context, @Nullable final String str, String str2, Bundle bundle, boolean z) {
        com.google.android.gms.ads.internal.zzt.zzc();
        bundle.putString("device", zzv());
        zzbgb zzbgbVar = zzbgk.f4658a;
        bundle.putString("eids", TextUtils.join(",", com.google.android.gms.ads.internal.client.zzbd.zzb().a()));
        if (bundle.isEmpty()) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Empty or null bundle.");
        } else {
            final String str3 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Tb);
            boolean andSet = this.d.getAndSet(true);
            AtomicReference atomicReference = this.f3164c;
            if (!andSet) {
                atomicReference.set(zzac.zzc(context, str3, new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.ads.internal.util.zzm
                    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                    public final /* synthetic */ void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str4) {
                        zzs.this.f3164c.set(zzac.zzb(context, str3));
                    }
                }));
            }
            bundle.putAll((Bundle) atomicReference.get());
        }
        com.google.android.gms.ads.internal.client.zzbb.zza();
        com.google.android.gms.ads.internal.util.client.zzf.zzB(context, str, "gmob-apps", bundle, true, new com.google.android.gms.ads.internal.util.client.zze() { // from class: com.google.android.gms.ads.internal.util.zzl
            @Override // com.google.android.gms.ads.internal.util.client.zze
            public final /* synthetic */ com.google.android.gms.ads.internal.util.client.zzt zza(String str4) {
                zzfxl zzfxlVar = zzs.zza;
                com.google.android.gms.ads.internal.zzt.zzc();
                zzs.zzQ(context, str, str4);
                return com.google.android.gms.ads.internal.util.client.zzt.zza;
            }
        });
    }

    public final boolean zzi(String str) {
        return a(str, this.f3163a, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.K0));
    }

    public final boolean zzj(String str) {
        return a(str, this.b, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.L0));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0063, code lost:
    
        if (com.google.android.gms.ads.internal.util.client.zzf.zzw() != false) goto L26;
     */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.google.android.gms.internal.ads.zzbhl, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzp(android.content.Context r11, android.net.Uri r12, android.os.Bundle r13) {
        /*
            r10 = this;
            if (r11 != 0) goto L9
            java.lang.String r11 = "Trying to open chrome custom tab on a null context"
            com.google.android.gms.ads.internal.util.zze.zza(r11)
            r11 = 3
            return r11
        L9:
            boolean r0 = r11 instanceof android.app.Activity
            r1 = 268435456(0x10000000, float:2.524355E-29)
            java.lang.String r2 = "android.intent.action.VIEW"
            if (r0 != 0) goto L21
            android.content.Intent r13 = new android.content.Intent
            r13.<init>(r2)
            r13.setData(r12)
            r13.addFlags(r1)
            r11.startActivity(r13)
            r11 = 2
            return r11
        L21:
            com.google.android.gms.internal.ads.zzbgb r0 = com.google.android.gms.internal.ads.zzbgk.x5
            com.google.android.gms.internal.ads.zzbgi r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r3.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r3 = 5
            if (r0 == 0) goto L76
            androidx.browser.customtabs.CustomTabsIntent$Builder r0 = new androidx.browser.customtabs.CustomTabsIntent$Builder
            com.google.android.gms.internal.ads.zzbhj r1 = com.google.android.gms.ads.internal.zzt.zzn()
            androidx.browser.customtabs.CustomTabsSession r1 = r1.b()
            r0.<init>(r1)
            d(r0, r13)
            androidx.browser.customtabs.CustomTabsIntent r13 = r0.a()
            android.content.Intent r0 = r13.f421a
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.K5
            com.google.android.gms.internal.ads.zzbgi r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.a(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L66
            com.google.android.gms.ads.internal.client.zzbb.zza()
            boolean r1 = com.google.android.gms.ads.internal.util.client.zzf.zzw()
            if (r1 == 0) goto L66
            goto Lb0
        L66:
            java.lang.String r1 = com.google.android.gms.internal.ads.zzijw.a(r11)
            r0.setPackage(r1)
            r0.setData(r12)
            android.os.Bundle r12 = r13.b
            r11.startActivity(r0, r12)
            return r3
        L76:
            com.google.android.gms.internal.ads.zzbgb r0 = com.google.android.gms.internal.ads.zzbgk.v5
            com.google.android.gms.internal.ads.zzbgi r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r4.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto Lb1
            com.google.android.gms.internal.ads.zzbhl r6 = new com.google.android.gms.internal.ads.zzbhl
            r6.<init>()
            com.google.android.gms.ads.internal.util.zzk r4 = new com.google.android.gms.ads.internal.util.zzk
            r5 = r10
            r8 = r11
            r9 = r12
            r7 = r13
            r4.<init>(r5, r6, r7, r8, r9)
            r6.d = r4
            r11 = r8
            android.app.Activity r11 = (android.app.Activity) r11
            androidx.browser.customtabs.CustomTabsClient r12 = r6.b
            if (r12 == 0) goto La0
            goto Lb0
        La0:
            java.lang.String r12 = com.google.android.gms.internal.ads.zzijw.a(r11)
            if (r12 == 0) goto Lb0
            com.google.android.gms.internal.ads.zzijx r13 = new com.google.android.gms.internal.ads.zzijx
            r13.<init>(r6)
            r6.f4678c = r13
            androidx.browser.customtabs.CustomTabsClient.a(r11, r12, r13)
        Lb0:
            return r3
        Lb1:
            r8 = r11
            r9 = r12
            android.content.Intent r11 = new android.content.Intent
            r11.<init>(r2)
            r11.setData(r9)
            r11.addFlags(r1)
            r8.startActivity(r11)
            r11 = 9
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzs.zzp(android.content.Context, android.net.Uri, android.os.Bundle):int");
    }
}
