package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.android.billingclient.api.BillingResult;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.internal.play_billing.zzje;
import com.google.android.gms.internal.play_billing.zzjl;

@zzw
@UsedByReflection("PlatformActivityProxy")
/* loaded from: classes.dex */
public class ProxyBillingActivity extends Activity {

    /* renamed from: c, reason: collision with root package name */
    public ResultReceiver f2010c;
    public boolean f;
    public boolean g;
    public int h;
    public long i;
    public boolean j;

    public static zzje a(Intent intent, int i) {
        if (intent == null) {
            if (i != -1) {
                if (i != 0) {
                    if (i != 3) {
                        if (i != 4) {
                            return zzje.NULL_DATA_WITH_OTHER_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT;
                        }
                        return zzje.NULL_DATA_WITH_PLAY_CANCELED_WITHOUT_COMPLETE_ACTION_RESULT_CODE;
                    }
                    return zzje.NULL_DATA_WITH_PLAY_CANCELED_RESULT_CODE;
                }
                return zzje.NULL_DATA_WITH_CANCELLED_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT;
            }
            return zzje.NULL_DATA_WITH_OK_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT;
        }
        if (intent.getExtras() == null) {
            return zzje.NULL_BUNDLE_IN_ACTIVITY_RESULT;
        }
        if (i == 5) {
            return zzje.PLAY_STORE_ON_CREATE_RUNTIME_EXCEPTION;
        }
        return zzje.REASON_UNSPECIFIED;
    }

    public final Intent b(zzje zzjeVar, long j) {
        Intent c2 = c();
        c2.putExtra("RESPONSE_CODE", 6);
        c2.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
        BillingResult.Builder a2 = BillingResult.a();
        a2.f2003a = 6;
        a2.f2004c = "An internal error occurred.";
        BillingResult a3 = a2.a();
        int i = zzcx.f2062a;
        c2.putExtra("FAILURE_LOGGING_PAYLOAD", zzcx.b(zzjeVar, 2, a3, null, zzjl.BROADCAST_ACTION_UNSPECIFIED).b());
        c2.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
        c2.putExtra("billingClientTransactionId", j);
        c2.putExtra("wasServiceAutoReconnected", this.j);
        return c2;
    }

    public final Intent c() {
        Intent intent = new Intent("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0013, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x005f, code lost:
    
        if (r11 == null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000f, code lost:
    
        if (r11 == null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x003a  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onActivityResult(int r9, int r10, android.content.Intent r11) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.ProxyBillingActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        PendingIntent pendingIntent;
        super.onCreate(bundle);
        if (bundle == null) {
            com.google.android.gms.internal.play_billing.zzc.h("ProxyBillingActivity", "Launching Play Store billing flow");
            this.h = 100;
            if (getIntent().hasExtra("BUY_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
                if (getIntent().hasExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT") && getIntent().getBooleanExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false)) {
                    this.g = true;
                    this.h = 110;
                }
            } else if (getIntent().hasExtra("IN_APP_MESSAGE_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("IN_APP_MESSAGE_INTENT");
                this.f2010c = (ResultReceiver) getIntent().getParcelableExtra("in_app_message_result_receiver");
                this.h = 101;
            } else {
                pendingIntent = null;
            }
            if (getIntent().hasExtra("billingClientTransactionId")) {
                this.i = getIntent().getLongExtra("billingClientTransactionId", 0L);
            }
            if (getIntent().hasExtra("wasServiceAutoReconnected")) {
                this.j = getIntent().getBooleanExtra("wasServiceAutoReconnected", false);
            }
            try {
                this.f = true;
                startIntentSenderForResult(pendingIntent.getIntentSender(), this.h, new Intent(), 0, 0, 0);
                return;
            } catch (IntentSender.SendIntentException e) {
                com.google.android.gms.internal.play_billing.zzc.j("ProxyBillingActivity", "Got exception while trying to start a purchase flow.", e);
                ResultReceiver resultReceiver = this.f2010c;
                if (resultReceiver != null) {
                    resultReceiver.send(0, null);
                } else {
                    Intent b = b(zzje.INTENT_SENDER_EXCEPTION, this.i);
                    if (this.g) {
                        b.putExtra("IS_FIRST_PARTY_PURCHASE", true);
                    }
                    sendBroadcast(b);
                }
                this.f = false;
                finish();
                return;
            }
        }
        com.google.android.gms.internal.play_billing.zzc.h("ProxyBillingActivity", "Launching Play Store billing flow from savedInstanceState");
        this.f = bundle.getBoolean("send_cancelled_broadcast_if_finished", false);
        if (bundle.containsKey("in_app_message_result_receiver")) {
            this.f2010c = (ResultReceiver) bundle.getParcelable("in_app_message_result_receiver");
        }
        this.g = bundle.getBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false);
        this.h = bundle.getInt("activity_code", 100);
        if (bundle.containsKey("billingClientTransactionId")) {
            this.i = bundle.getLong("billingClientTransactionId");
        }
        if (bundle.containsKey("wasServiceAutoReconnected")) {
            this.j = bundle.getBoolean("wasServiceAutoReconnected");
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        if (isFinishing() && this.f) {
            Intent c2 = c();
            c2.putExtra("RESPONSE_CODE", 1);
            c2.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            if (this.g) {
                c2.putExtra("IS_FIRST_PARTY_PURCHASE", true);
            }
            int i = this.h;
            if (i == 110 || i == 100) {
                c2.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                c2.putExtra("billingClientTransactionId", this.i);
            }
            sendBroadcast(c2);
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.f2010c;
        if (resultReceiver != null) {
            bundle.putParcelable("in_app_message_result_receiver", resultReceiver);
        }
        bundle.putBoolean("send_cancelled_broadcast_if_finished", this.f);
        bundle.putBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", this.g);
        bundle.putInt("activity_code", this.h);
        bundle.putLong("billingClientTransactionId", this.i);
        bundle.putBoolean("wasServiceAutoReconnected", this.j);
    }
}
