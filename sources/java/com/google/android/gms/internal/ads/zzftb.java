package com.google.android.gms.internal.ads;

import android.content.res.Resources;
import android.graphics.Point;
import android.view.WindowManager;
import com.google.android.gms.ads.RequestConfiguration;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzftb {

    /* renamed from: a, reason: collision with root package name */
    public static WindowManager f7640a;
    public static final String[] b = {"x", "y", "width", "height"};

    /* renamed from: c, reason: collision with root package name */
    public static float f7641c = Resources.getSystem().getDisplayMetrics().density;

    public static JSONObject a(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", i / f7641c);
            jSONObject.put("y", i2 / f7641c);
            jSONObject.put("width", i3 / f7641c);
            jSONObject.put("height", i4 / f7641c);
            return jSONObject;
        } catch (JSONException e) {
            zzftc.a(e, "Error with creating viewStateObject");
            return jSONObject;
        }
    }

    public static void b(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (NullPointerException | JSONException e) {
            StringBuilder sb = new StringBuilder(str.length() + 47);
            sb.append("JSONException during JSONObject.put for name [");
            sb.append(str);
            sb.append("]");
            zzftc.a(e, sb.toString());
        }
    }

    public static void c(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
            if (optJSONArray == null) {
                optJSONArray = new JSONArray();
                jSONObject.put("childViews", optJSONArray);
            }
            optJSONArray.put(jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static void d(JSONObject jSONObject) {
        float f;
        float f2;
        if (f7640a != null) {
            Point point = new Point(0, 0);
            f7640a.getDefaultDisplay().getRealSize(point);
            float f3 = point.x;
            float f4 = f7641c;
            f = f3 / f4;
            f2 = point.y / f4;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        try {
            jSONObject.put("width", f);
            jSONObject.put("height", f2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static boolean e(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject != null || jSONObject2 != null) {
            if (jSONObject != null && jSONObject2 != null) {
                int i = 0;
                while (true) {
                    if (i < 4) {
                        String str = b[i];
                        if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                            break;
                        }
                        i++;
                    } else if (jSONObject.optString("adSessionId", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).equals(jSONObject2.optString("adSessionId", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) && Boolean.valueOf(jSONObject.optBoolean("noOutputDevice")).equals(Boolean.valueOf(jSONObject2.optBoolean("noOutputDevice"))) && Boolean.valueOf(jSONObject.optBoolean("hasWindowFocus")).equals(Boolean.valueOf(jSONObject2.optBoolean("hasWindowFocus")))) {
                        JSONArray optJSONArray = jSONObject.optJSONArray("isFriendlyObstructionFor");
                        JSONArray optJSONArray2 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
                        if (optJSONArray != null || optJSONArray2 != null) {
                            if ((optJSONArray == null && optJSONArray2 == null) || (optJSONArray != null && optJSONArray2 != null && optJSONArray.length() == optJSONArray2.length())) {
                                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                    if (!optJSONArray.optString(i2, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).equals(optJSONArray2.optString(i2, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED))) {
                                        break;
                                    }
                                }
                            }
                        }
                        JSONArray optJSONArray3 = jSONObject.optJSONArray("childViews");
                        JSONArray optJSONArray4 = jSONObject2.optJSONArray("childViews");
                        if (optJSONArray3 != null || optJSONArray4 != null) {
                            if ((optJSONArray3 == null && optJSONArray4 == null) || (optJSONArray3 != null && optJSONArray4 != null && optJSONArray3.length() == optJSONArray4.length())) {
                                for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
                                    if (e(optJSONArray3.optJSONObject(i3), optJSONArray4.optJSONObject(i3))) {
                                    }
                                }
                                return true;
                            }
                        } else {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }
}
