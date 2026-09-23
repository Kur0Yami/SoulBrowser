package com.google.auth.oauth2;

import com.google.api.client.http.HttpStatusCodes;
import java.util.Arrays;
import java.util.HashSet;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes3.dex */
public class SecureSessionAgent {

    /* loaded from: classes3.dex */
    public static class Builder {
    }

    static {
        new HashSet(Arrays.asList(500, Integer.valueOf(HttpStatusCodes.STATUS_CODE_BAD_GATEWAY), Integer.valueOf(HttpStatusCodes.STATUS_CODE_SERVICE_UNAVAILABLE)));
        LoggerProvider loggerProvider = ComputeEngineCredentials.u;
        int i = DefaultCredentialsProvider.f12115a;
        ComputeEngineCredentials.p();
    }
}
