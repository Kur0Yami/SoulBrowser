package com.google.android.gms.cast;

import com.google.android.gms.common.Feature;

/* loaded from: classes.dex */
public final class zzaq {

    /* renamed from: a, reason: collision with root package name */
    public static final Feature f3640a;
    public static final Feature b;

    /* renamed from: c, reason: collision with root package name */
    public static final Feature f3641c;
    public static final Feature d;
    public static final Feature[] e;

    static {
        Feature feature = new Feature("client_side_logging", 1L, true);
        Feature feature2 = new Feature("cxless_client_minimal", 1L, true);
        f3640a = feature2;
        Feature feature3 = new Feature("cxless_caf_control", 1L, true);
        Feature feature4 = new Feature("module_flag_control", 1L, true);
        b = feature4;
        Feature feature5 = new Feature("discovery_hint_supply", 1L, true);
        Feature feature6 = new Feature("relay_casting_set_active_account", 1L, true);
        Feature feature7 = new Feature("analytics_proto_enum_translation", 1L, true);
        f3641c = feature7;
        Feature feature8 = new Feature("integer_to_integer_map", 1L, true);
        d = feature8;
        e = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6, feature7, feature8, new Feature("relay_casting_set_remote_casting_mode", 1L, true), new Feature("get_relay_access_token", 1L, true), new Feature("get_cast_settings", 1L, true), new Feature("set_bundle_setting", 1L, true), new Feature("get_client_updated_info", 1L, true), new Feature("device_suggestions", 1L, true)};
    }
}
