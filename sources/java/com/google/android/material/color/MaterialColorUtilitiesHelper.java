package com.google.android.material.color;

import androidx.annotation.RestrictTo;
import com.google.android.material.R;
import com.google.android.material.color.utilities.ContrastCurve;
import com.google.android.material.color.utilities.DynamicColor;
import com.google.android.material.color.utilities.MaterialDynamicColors;
import com.google.android.material.color.utilities.a;
import com.google.android.material.color.utilities.b;
import com.google.android.material.color.utilities.c;
import com.google.android.material.color.utilities.d;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;

@RestrictTo
/* loaded from: classes3.dex */
public final class MaterialColorUtilitiesHelper {

    /* renamed from: a, reason: collision with root package name */
    public static final Map f11734a;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.color.utilities.MaterialDynamicColors, java.lang.Object] */
    static {
        ?? obj = new Object();
        HashMap hashMap = new HashMap();
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_primary), obj.d());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_primary), new DynamicColor("on_primary", new c(2), new c(3), false, new b(obj, 4), new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_primary_inverse), new DynamicColor("inverse_primary", new c(5), new c(6), false, new c(obj, 7), new ContrastCurve(3.0d, 4.5d, 7.0d, 7.0d), null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_primary_container), obj.e());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_primary_container), new DynamicColor("on_primary_container", new c(12), new c(obj, 14), false, new b(obj, 6), new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_secondary), obj.f());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_secondary), new DynamicColor("on_secondary", new c(24), new c(25), false, new b(obj, 8), new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_secondary_container), obj.g());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_secondary_container), new DynamicColor("on_secondary_container", new d(7), new d(obj, 8), false, new b(obj, 12), new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_tertiary), obj.h());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_tertiary), new DynamicColor("on_tertiary", new c(13), new c(23), false, new b(obj, 10), new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_tertiary_container), obj.i());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_tertiary_container), new DynamicColor("on_tertiary_container", new d(5), new d(obj, 6), false, new b(obj, 11), new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_background), new DynamicColor("background", new a(20), new a(21), true, null, null, null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_background), new DynamicColor("on_background", new a(25), new a(26), false, new a(obj, 27), new ContrastCurve(3.0d, 3.0d, 4.5d, 7.0d), null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface), new DynamicColor("surface", new a(0), new a(14), true, null, null, null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_surface), new DynamicColor("on_surface", new d(9), new d(19), false, new d(obj, 28), new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_variant), new DynamicColor("surface_variant", new c(15), new c(16), true, null, null, null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_surface_variant), new DynamicColor("on_surface_variant", new d(16), new d(17), false, new d(obj, 28), new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_inverse), MaterialDynamicColors.c());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_surface_inverse), new DynamicColor("inverse_on_surface", new d(2), new d(3), false, new d(obj, 4), new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_bright), new DynamicColor("surface_bright", new c(0), new c(1), true, null, null, null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_dim), new DynamicColor("surface_dim", new a(4), new a(5), true, null, null, null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_container), new DynamicColor("surface_container", new d(14), new d(15), true, null, null, null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_container_low), new DynamicColor("surface_container_low", new a(10), new a(11), true, null, null, null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_container_high), new DynamicColor("surface_container_high", new a(22), new a(24), true, null, null, null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_container_lowest), new DynamicColor("surface_container_lowest", new c(28), new c(29), true, null, null, null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_container_highest), new DynamicColor("surface_container_highest", new c(19), new c(20), true, null, null, null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_outline), new DynamicColor("outline", new d(0), new d(1), false, new d(obj, 28), new ContrastCurve(1.5d, 3.0d, 4.5d, 7.0d), null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_outline_variant), new DynamicColor("outline_variant", new a(28), new a(29), false, new d(obj, 28), new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_error), obj.a());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_error), new DynamicColor("on_error", new c(8), new c(9), false, new b(obj, 5), new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_error_container), obj.b());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_error_container), new DynamicColor("on_error_container", new d(21), new d(22), false, new b(obj, 14), new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_control_activated), DynamicColor.a("control_activated", new a(8), new a(9)));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_control_normal), DynamicColor.a("control_normal", new a(6), new a(7)));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_control_highlight), new DynamicColor(new a(15), new a(16), new a(17)));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_text_primary_inverse), DynamicColor.a("text_primary_inverse", new d(12), new d(13)));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_text_secondary_and_tertiary_inverse), DynamicColor.a("text_secondary_and_tertiary_inverse", new d(23), new d(24)));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_text_secondary_and_tertiary_inverse_disabled), DynamicColor.a("text_secondary_and_tertiary_inverse_disabled", new a(23), new c(4)));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_text_primary_inverse_disable_only), DynamicColor.a("text_primary_inverse_disable_only", new c(10), new c(11)));
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_text_hint_foreground_inverse), DynamicColor.a("text_hint_inverse", new c(17), new c(18)));
        f11734a = DesugarCollections.unmodifiableMap(hashMap);
    }
}
