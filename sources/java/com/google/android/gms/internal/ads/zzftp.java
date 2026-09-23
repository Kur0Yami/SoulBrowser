package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.WeakHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzftp implements zzfsq {
    public static final zzftp g = new zzftp();
    public static final Handler h = new Handler(Looper.getMainLooper());
    public static Handler i = null;
    public static final Runnable j = new Object();
    public static final Runnable k = new Object();
    public long f;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f7648a = new ArrayList();
    public final ArrayList b = new ArrayList();
    public final zzfti d = new zzfti();

    /* renamed from: c, reason: collision with root package name */
    public final zzfss f7649c = new zzfss();
    public final zzftj e = new zzftj(new zzfts());

    public static void b() {
        if (i == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            i = handler;
            handler.post(j);
            i.postDelayed(k, 200L);
        }
    }

    public final void a(View view, zzfsu zzfsuVar, JSONObject jSONObject, boolean z) {
        char c2;
        Object obj;
        boolean z2;
        boolean z3;
        int i2;
        if (zzftg.a(view) == null) {
            zzfti zzftiVar = this.d;
            boolean z4 = true;
            if (zzftiVar.d.contains(view)) {
                c2 = 1;
            } else if (zzftiVar.j) {
                c2 = 2;
            } else {
                c2 = 3;
            }
            if (c2 != 3) {
                JSONObject a2 = zzfsuVar.a(view);
                zzftb.c(jSONObject, a2);
                HashMap hashMap = zzftiVar.f7644a;
                if (hashMap.size() == 0) {
                    obj = null;
                } else {
                    Object obj2 = (String) hashMap.get(view);
                    if (obj2 != null) {
                        hashMap.remove(view);
                    }
                    obj = obj2;
                }
                boolean z5 = false;
                if (obj != null) {
                    try {
                        a2.put("adSessionId", obj);
                    } catch (JSONException e) {
                        zzftc.a(e, "Error with setting ad session id");
                    }
                    WeakHashMap weakHashMap = zzftiVar.i;
                    if (weakHashMap.containsKey(view)) {
                        weakHashMap.put(view, Boolean.TRUE);
                    } else {
                        z5 = true;
                    }
                    try {
                        a2.put("hasWindowFocus", Boolean.valueOf(z5));
                    } catch (JSONException e2) {
                        zzftc.a(e2, "Error with setting has window focus");
                    }
                    boolean contains = zzftiVar.h.contains(obj);
                    Object valueOf = Boolean.valueOf(contains);
                    if (contains) {
                        try {
                            a2.put("isPipActive", valueOf);
                        } catch (JSONException e3) {
                            zzftc.a(e3, "Error with setting is picture-in-picture active");
                        }
                    }
                    zzftiVar.j = true;
                    return;
                }
                HashMap hashMap2 = zzftiVar.b;
                zzfth zzfthVar = (zzfth) hashMap2.get(view);
                if (zzfthVar != null) {
                    hashMap2.remove(view);
                }
                if (zzfthVar != null) {
                    zzfsi zzfsiVar = zzfthVar.f7643a;
                    JSONArray jSONArray = new JSONArray();
                    ArrayList arrayList = zzfthVar.b;
                    int size = arrayList.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        jSONArray.put((String) arrayList.get(i3));
                    }
                    try {
                        a2.put("isFriendlyObstructionFor", jSONArray);
                        a2.put("friendlyObstructionClass", zzfsiVar.b);
                        a2.put("friendlyObstructionPurpose", zzfsiVar.f7621c);
                        a2.put("friendlyObstructionReason", zzfsiVar.d);
                    } catch (JSONException e4) {
                        zzftc.a(e4, "Error with setting friendly obstruction");
                    }
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z || z2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (c2 != 1) {
                    z4 = false;
                }
                zzfsuVar.getClass();
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    if (z4) {
                        HashMap hashMap3 = new HashMap();
                        for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                            View childAt = viewGroup.getChildAt(i4);
                            ArrayList arrayList2 = (ArrayList) hashMap3.get(Float.valueOf(childAt.getZ()));
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                                hashMap3.put(Float.valueOf(childAt.getZ()), arrayList2);
                            }
                            arrayList2.add(childAt);
                        }
                        ArrayList arrayList3 = new ArrayList(hashMap3.keySet());
                        Collections.sort(arrayList3);
                        int size2 = arrayList3.size();
                        int i5 = 0;
                        while (i5 < size2) {
                            ArrayList arrayList4 = (ArrayList) hashMap3.get((Float) arrayList3.get(i5));
                            int size3 = arrayList4.size();
                            int i6 = 0;
                            while (true) {
                                i2 = i5 + 1;
                                if (i6 < size3) {
                                    a((View) arrayList4.get(i6), zzfsuVar, a2, z3);
                                    i6++;
                                }
                            }
                            i5 = i2;
                        }
                        return;
                    }
                    for (int i7 = 0; i7 < viewGroup.getChildCount(); i7++) {
                        a(viewGroup.getChildAt(i7), zzfsuVar, a2, z3);
                    }
                }
            }
        }
    }
}
