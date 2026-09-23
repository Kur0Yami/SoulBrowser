package com.google.auth.oauth2;

import com.google.api.client.http.HttpStatusCodes;
import java.util.Arrays;
import java.util.HashSet;

/* loaded from: classes3.dex */
class IamUtils {
    static {
        new HashSet(Arrays.asList(500, Integer.valueOf(HttpStatusCodes.STATUS_CODE_BAD_GATEWAY), Integer.valueOf(HttpStatusCodes.STATUS_CODE_SERVICE_UNAVAILABLE), 504));
    }
}
