package com.google.android.gms.internal.play_billing;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import org.json.JSONException;

/* loaded from: classes3.dex */
public final class zzc {

    /* renamed from: a, reason: collision with root package name */
    public static final int f11463a = Runtime.getRuntime().availableProcessors();

    public static int a(String str, Bundle bundle) {
        if (bundle == null) {
            i(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            h(str, "getResponseCodeFromBundle() got null response code, assuming OK");
            return 0;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        i(str, "Unexpected type for bundle response code: ".concat(obj.getClass().getName()));
        return 6;
    }

    public static void b(long j, String str, String str2, Bundle bundle) {
        bundle.putString("playBillingLibraryVersion", str);
        if (str2 != null) {
            bundle.putString("playBillingLibraryWrapperVersion", str2);
        }
        bundle.putLong("billingClientSessionId", j);
    }

    public static Bundle c(BillingResult billingResult, zzje zzjeVar) {
        Bundle bundle = new Bundle();
        bundle.putInt("RESPONSE_CODE", billingResult.f2001a);
        bundle.putString("DEBUG_MESSAGE", billingResult.f2002c);
        bundle.putInt("LOG_REASON", zzjeVar.f11549c);
        return bundle;
    }

    public static Bundle d(String str, String str2, ArrayList arrayList, zza zzaVar, long j) {
        Bundle bundle = new Bundle();
        b(j, str, str2, bundle);
        bundle.putBoolean("enablePendingPurchases", true);
        bundle.putString("SKU_DETAILS_RESPONSE_FORMAT", "PRODUCT_DETAILS");
        zzcl zzclVar = zzbw.f;
        Object[] objArr = {"subs", "inapp"};
        zzcc.a(2, objArr);
        bundle.putStringArrayList("PRODUCT_TYPES_TO_RETURN_MULTIPLE_OFFERS", new ArrayList<>(zzbw.r(2, objArr)));
        Object[] objArr2 = {"inapp"};
        zzcc.a(1, objArr2);
        bundle.putStringArrayList("PRODUCT_TYPES_TO_RETURN_PREORDER_OFFERS", new ArrayList<>(zzbw.r(1, objArr2)));
        Object[] objArr3 = {"inapp"};
        zzcc.a(1, objArr3);
        bundle.putStringArrayList("PRODUCT_TYPES_TO_RETURN_RENT_OFFERS", new ArrayList<>(zzbw.r(1, objArr3)));
        bundle.putBoolean("SHOULD_RETURN_UNFETCHED_PRODUCTS", true);
        if (zzaVar.f11443a) {
            bundle.putBoolean("enablePendingPurchaseForSubscriptions", true);
        }
        ArrayList<String> arrayList2 = new ArrayList<>();
        ArrayList<String> arrayList3 = new ArrayList<>();
        ArrayList<String> arrayList4 = new ArrayList<>();
        int size = arrayList.size();
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            QueryProductDetailsParams.Product product = (QueryProductDetailsParams.Product) arrayList.get(i);
            arrayList2.add(null);
            z |= !TextUtils.isEmpty(null);
            arrayList4.add(null);
            z2 |= !TextUtils.isEmpty(null);
            if (product.b.equals("first_party")) {
                throw new NullPointerException("Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products.");
            }
        }
        if (z) {
            bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);
        }
        if (!arrayList3.isEmpty()) {
            bundle.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList3);
        }
        if (!TextUtils.isEmpty(null)) {
            bundle.putString("accountName", null);
        }
        if (z2) {
            bundle.putStringArrayList("SKU_DYNAMIC_PRODUCT_TOKEN_LIST", arrayList4);
        }
        return bundle;
    }

    public static BillingResult e(String str, Intent intent) {
        if (intent == null) {
            i("BillingHelper", "Got null intent!");
            BillingResult.Builder a2 = BillingResult.a();
            a2.f2003a = 6;
            a2.f2004c = "An internal error occurred.";
            return a2.a();
        }
        BillingResult.Builder a3 = BillingResult.a();
        a3.f2003a = a(str, intent.getExtras());
        a3.f2004c = f(str, intent.getExtras());
        return a3.a();
    }

    public static String f(String str, Bundle bundle) {
        if (bundle == null) {
            i(str, "Unexpected null bundle received!");
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            h(str, "getDebugMessageFromBundle() got null response code, assuming OK");
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        i(str, "Unexpected type for debug message: ".concat(obj.getClass().getName()));
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public static String g(int i) {
        zzb zzbVar;
        zzbz zzbzVar = zzb.g;
        Integer valueOf = Integer.valueOf(i);
        if (!zzbzVar.containsKey(valueOf)) {
            zzbVar = zzb.RESPONSE_CODE_UNSPECIFIED;
        } else {
            zzbVar = (zzb) zzbzVar.get(valueOf);
        }
        return zzbVar.toString();
    }

    public static void h(String str, String str2) {
        if (Log.isLoggable(str, 2)) {
            if (!str2.isEmpty()) {
                int i = 40000;
                while (!str2.isEmpty() && i > 0) {
                    int min = Math.min(str2.length(), Math.min(4000, i));
                    Log.v(str, str2.substring(0, min));
                    str2 = str2.substring(min);
                    i -= min;
                }
                return;
            }
            Log.v(str, str2);
        }
    }

    public static void i(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2);
        }
    }

    public static void j(String str, String str2, Throwable th) {
        try {
            if (Log.isLoggable(str, 5)) {
                if (th == null) {
                    Log.w(str, str2);
                } else {
                    Log.w(str, str2, th);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static Purchase k(String str, String str2) {
        if (str != null && str2 != null) {
            try {
                return new Purchase(str, str2);
            } catch (JSONException e) {
                i("BillingHelper", "Got JSONException while parsing purchase data: ".concat(e.toString()));
                return null;
            }
        }
        h("BillingHelper", "Received a null purchase data.");
        return null;
    }
}
