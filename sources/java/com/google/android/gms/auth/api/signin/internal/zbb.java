package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes.dex */
public final class zbb implements Runnable {
    public static final Logger g = new Logger("RevokeAccessOperation", new String[0]);

    /* renamed from: c, reason: collision with root package name */
    public final String f3388c;
    public final StatusPendingResult f = new StatusPendingResult((GoogleApiClient) null);

    public zbb(String str) {
        this.f3388c = Preconditions.checkNotEmpty(str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Logger logger = g;
        Status status = Status.RESULT_INTERNAL_ERROR;
        try {
            String str = this.f3388c;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 50);
            sb.append("https://accounts.google.com/o/oauth2/revoke?token=");
            sb.append(str);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(sb.toString()).openConnection();
            httpURLConnection.setRequestProperty(HttpConnection.CONTENT_TYPE, "application/x-www-form-urlencoded");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.RESULT_SUCCESS;
            } else {
                logger.e("Unable to revoke access!", new Object[0]);
            }
            StringBuilder sb2 = new StringBuilder(String.valueOf(responseCode).length() + 15);
            sb2.append("Response Code: ");
            sb2.append(responseCode);
            logger.d(sb2.toString(), new Object[0]);
        } catch (IOException e) {
            logger.e("IOException when revoking access: ".concat(String.valueOf(e.toString())), new Object[0]);
        } catch (Exception e2) {
            logger.e("Exception when revoking access: ".concat(String.valueOf(e2.toString())), new Object[0]);
        }
        this.f.setResult(status);
    }
}
