package com.mycompany.app.pref;

import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;

/**
 * Migrates link long-press menu prefs when Download link (id 13) was added.
 * Old keys mUseLink7 / mLinkOrder6 stay on disk; new builds use mUseLink8 / mLinkOrder7.
 */
public final class LinkMenuPrefs {
    private static final int OLD_DEFAULT_MASK = 8190;
    private static final int NEW_ITEM_BIT = 8192;
    private static final int NEW_DEFAULT_MASK = OLD_DEFAULT_MASK | NEW_ITEM_BIT;
    private static final String KEY_MASK_NEW = "mUseLink8";
    private static final String KEY_MASK_OLD = "mUseLink7";
    private static final String KEY_ORDER_NEW = "mLinkOrder7";
    private static final String KEY_ORDER_OLD = "mLinkOrder6";

    private LinkMenuPrefs() {
    }

    private static boolean has(PrefCore core, String key) {
        JsonObject obj;
        JsonElement el;
        if (core == null || (obj = core.e) == null || (el = obj.r(key)) == null) {
            return false;
        }
        return !(el instanceof JsonNull);
    }

    private static void persistMask(PrefCore core, int value) {
        if (core == null || has(core, KEY_MASK_NEW)) {
            return;
        }
        core.n(value, KEY_MASK_NEW);
        core.a();
    }

    private static void persistOrder(PrefCore core, String order) {
        if (core == null || TextUtils.isEmpty(order) || has(core, KEY_ORDER_NEW)) {
            return;
        }
        core.p(KEY_ORDER_NEW, order);
        core.a();
    }

    /** Bitmask of enabled link-menu items; preserves prior toggles and enables Download link. */
    public static int mask(PrefCore core) {
        if (has(core, KEY_MASK_NEW)) {
            int value = core.f(KEY_MASK_NEW, NEW_DEFAULT_MASK);
            // Upgrade wrote the all-on default after opening settings; recover from mUseLink7 once.
            if (value == NEW_DEFAULT_MASK && has(core, KEY_MASK_OLD)) {
                int migrated = core.f(KEY_MASK_OLD, OLD_DEFAULT_MASK) | NEW_ITEM_BIT;
                if (migrated != value) {
                    core.n(migrated, KEY_MASK_NEW);
                    core.a();
                    return migrated;
                }
            }
            return value;
        }
        if (has(core, KEY_MASK_OLD)) {
            int migrated = core.f(KEY_MASK_OLD, OLD_DEFAULT_MASK) | NEW_ITEM_BIT;
            persistMask(core, migrated);
            return migrated;
        }
        return NEW_DEFAULT_MASK;
    }

    /** Slash-separated item order; inserts id 13 after Share URL (8) when migrating. */
    public static String order(PrefCore core) {
        String orderNew = core.h(KEY_ORDER_NEW, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        if (!TextUtils.isEmpty(orderNew)) {
            String[] parts = orderNew.split("/");
            if (parts.length == 13) {
                return orderNew;
            }
        }
        String orderOld = core.h(KEY_ORDER_OLD, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        if (TextUtils.isEmpty(orderOld)) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        String[] parts = orderOld.split("/");
        if (parts.length != 12) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        StringBuilder sb = new StringBuilder();
        boolean inserted = false;
        for (int i = 0; i < parts.length; i++) {
            if (i > 0) {
                sb.append('/');
            }
            sb.append(parts[i]);
            if (!inserted && "8".equals(parts[i])) {
                sb.append("/13");
                inserted = true;
            }
        }
        if (!inserted) {
            sb.append("/13");
        }
        String migrated = sb.toString();
        persistOrder(core, migrated);
        return migrated;
    }
}
