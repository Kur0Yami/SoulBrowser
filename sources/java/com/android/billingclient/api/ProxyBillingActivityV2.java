package com.android.billingclient.api;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.activity.result.IntentSenderRequest;
import com.google.android.apps.common.proguard.UsedByReflection;

@UsedByReflection("PlatformActivityProxy")
/* loaded from: classes.dex */
public class ProxyBillingActivityV2 extends ComponentActivity {
    public ActivityResultRegistry$register$2 A;
    public ActivityResultRegistry$register$2 B;
    public ResultReceiver C;
    public ResultReceiver D;
    public ResultReceiver E;
    public ResultReceiver F;
    public ActivityResultRegistry$register$2 y;
    public ActivityResultRegistry$register$2 z;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.y = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback() { // from class: com.android.billingclient.api.zzdq
            @Override // androidx.activity.result.ActivityResultCallback
            public final void a(Object obj) {
                Bundle extras;
                ActivityResult activityResult = (ActivityResult) obj;
                ProxyBillingActivityV2 proxyBillingActivityV2 = ProxyBillingActivityV2.this;
                proxyBillingActivityV2.getClass();
                Intent intent = activityResult.f;
                int i = com.google.android.gms.internal.play_billing.zzc.e("ProxyBillingActivityV2", intent).f2001a;
                ResultReceiver resultReceiver = proxyBillingActivityV2.C;
                if (resultReceiver != null) {
                    if (intent == null) {
                        extras = null;
                    } else {
                        extras = intent.getExtras();
                    }
                    resultReceiver.send(i, extras);
                }
                int i2 = activityResult.f53c;
                if (i2 != -1 || i != 0) {
                    com.google.android.gms.internal.play_billing.zzc.i("ProxyBillingActivityV2", "Alternative billing only dialog finished with resultCode " + i2 + " and billing's responseCode: " + i);
                }
                proxyBillingActivityV2.finish();
            }
        });
        this.z = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback() { // from class: com.android.billingclient.api.zzdr
            @Override // androidx.activity.result.ActivityResultCallback
            public final void a(Object obj) {
                Bundle extras;
                ActivityResult activityResult = (ActivityResult) obj;
                ProxyBillingActivityV2 proxyBillingActivityV2 = ProxyBillingActivityV2.this;
                proxyBillingActivityV2.getClass();
                Intent intent = activityResult.f;
                int i = com.google.android.gms.internal.play_billing.zzc.e("ProxyBillingActivityV2", intent).f2001a;
                ResultReceiver resultReceiver = proxyBillingActivityV2.D;
                if (resultReceiver != null) {
                    if (intent == null) {
                        extras = null;
                    } else {
                        extras = intent.getExtras();
                    }
                    resultReceiver.send(i, extras);
                }
                int i2 = activityResult.f53c;
                if (i2 != -1 || i != 0) {
                    com.google.android.gms.internal.play_billing.zzc.i("ProxyBillingActivityV2", "External offer dialog finished with resultCode: " + i2 + " and billing's responseCode: " + i);
                }
                proxyBillingActivityV2.finish();
            }
        });
        this.A = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback() { // from class: com.android.billingclient.api.zzds
            @Override // androidx.activity.result.ActivityResultCallback
            public final void a(Object obj) {
                Bundle extras;
                ActivityResult activityResult = (ActivityResult) obj;
                ProxyBillingActivityV2 proxyBillingActivityV2 = ProxyBillingActivityV2.this;
                proxyBillingActivityV2.getClass();
                Intent intent = activityResult.f;
                int i = activityResult.f53c;
                if (intent == null) {
                    extras = null;
                } else {
                    extras = intent.getExtras();
                }
                if (i != -1) {
                    if (extras == null) {
                        extras = new Bundle();
                    }
                    com.google.android.gms.internal.play_billing.zzc.i("ProxyBillingActivityV2", "External offer flow finished with resultCode: " + i);
                    extras.putInt("INTERNAL_LOG_ERROR_REASON", 134);
                    extras.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", "External offer flow finished with error resultCode: " + i);
                }
                int i2 = com.google.android.gms.internal.play_billing.zzc.e("ProxyBillingActivityV2", intent).f2001a;
                ResultReceiver resultReceiver = proxyBillingActivityV2.E;
                if (resultReceiver != null) {
                    resultReceiver.send(i2, extras);
                } else {
                    com.google.android.gms.internal.play_billing.zzc.i("ProxyBillingActivityV2", "External offer flow result receiver is null");
                }
                if (i2 != 0) {
                    com.google.android.gms.internal.play_billing.zzc.i("ProxyBillingActivityV2", "External offer flow finished with billing responseCode: " + i2);
                }
                proxyBillingActivityV2.finish();
            }
        });
        this.B = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback() { // from class: com.android.billingclient.api.zzdt
            @Override // androidx.activity.result.ActivityResultCallback
            public final void a(Object obj) {
                Bundle extras;
                ActivityResult activityResult = (ActivityResult) obj;
                ProxyBillingActivityV2 proxyBillingActivityV2 = ProxyBillingActivityV2.this;
                proxyBillingActivityV2.getClass();
                Intent intent = activityResult.f;
                int i = activityResult.f53c;
                if (intent == null) {
                    extras = null;
                } else {
                    extras = intent.getExtras();
                }
                if (i != -1) {
                    if (extras == null) {
                        extras = new Bundle();
                    }
                    com.google.android.gms.internal.play_billing.zzc.i("ProxyBillingActivityV2", "Launch external link flow finished with resultCode: " + i);
                    extras.putInt("INTERNAL_LOG_ERROR_REASON", 134);
                    extras.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", "Launch external link flow finished with error resultCode: " + i);
                }
                int i2 = com.google.android.gms.internal.play_billing.zzc.e("ProxyBillingActivityV2", intent).f2001a;
                ResultReceiver resultReceiver = proxyBillingActivityV2.F;
                if (resultReceiver != null) {
                    resultReceiver.send(i2, extras);
                } else {
                    com.google.android.gms.internal.play_billing.zzc.i("ProxyBillingActivityV2", "Launch external link flow result receiver is null");
                }
                if (i2 != 0) {
                    com.google.android.gms.internal.play_billing.zzc.i("ProxyBillingActivityV2", "Launch external link flow finished with billing responseCode: " + i2);
                }
                proxyBillingActivityV2.finish();
            }
        });
        if (bundle == null) {
            com.google.android.gms.internal.play_billing.zzc.h("ProxyBillingActivityV2", "Launching Play Store billing dialog");
            if (getIntent().hasExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT")) {
                PendingIntent pendingIntent = (PendingIntent) getIntent().getParcelableExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT");
                this.C = (ResultReceiver) getIntent().getParcelableExtra("alternative_billing_only_dialog_result_receiver");
                this.y.a(new IntentSenderRequest.Builder(pendingIntent).a());
                return;
            }
            if (getIntent().hasExtra("external_payment_dialog_pending_intent")) {
                PendingIntent pendingIntent2 = (PendingIntent) getIntent().getParcelableExtra("external_payment_dialog_pending_intent");
                this.D = (ResultReceiver) getIntent().getParcelableExtra("external_payment_dialog_result_receiver");
                this.z.a(new IntentSenderRequest.Builder(pendingIntent2).a());
                return;
            } else if (getIntent().hasExtra("external_offer_flow_pending_intent")) {
                PendingIntent pendingIntent3 = (PendingIntent) getIntent().getParcelableExtra("external_offer_flow_pending_intent");
                this.E = (ResultReceiver) getIntent().getParcelableExtra("external_offer_flow_result_receiver");
                this.A.a(new IntentSenderRequest.Builder(pendingIntent3).a());
                return;
            } else {
                if (getIntent().hasExtra("launch_external_link_flow_pending_intent")) {
                    PendingIntent pendingIntent4 = (PendingIntent) getIntent().getParcelableExtra("launch_external_link_flow_pending_intent");
                    this.F = (ResultReceiver) getIntent().getParcelableExtra("launch_external_link_result_receiver");
                    this.B.a(new IntentSenderRequest.Builder(pendingIntent4).a());
                    return;
                }
                return;
            }
        }
        if (bundle.containsKey("alternative_billing_only_dialog_result_receiver")) {
            this.C = (ResultReceiver) bundle.getParcelable("alternative_billing_only_dialog_result_receiver");
        }
        if (bundle.containsKey("external_payment_dialog_result_receiver")) {
            this.D = (ResultReceiver) bundle.getParcelable("external_payment_dialog_result_receiver");
        }
        if (bundle.containsKey("external_offer_flow_result_receiver")) {
            this.E = (ResultReceiver) bundle.getParcelable("external_offer_flow_result_receiver");
        }
        if (bundle.containsKey("launch_external_link_result_receiver")) {
            this.F = (ResultReceiver) bundle.getParcelable("launch_external_link_result_receiver");
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.C;
        if (resultReceiver != null) {
            bundle.putParcelable("alternative_billing_only_dialog_result_receiver", resultReceiver);
        }
        ResultReceiver resultReceiver2 = this.D;
        if (resultReceiver2 != null) {
            bundle.putParcelable("external_payment_dialog_result_receiver", resultReceiver2);
        }
        ResultReceiver resultReceiver3 = this.E;
        if (resultReceiver3 != null) {
            bundle.putParcelable("external_offer_flow_result_receiver", resultReceiver3);
        }
        ResultReceiver resultReceiver4 = this.F;
        if (resultReceiver4 != null) {
            bundle.putParcelable("launch_external_link_result_receiver", resultReceiver4);
        }
    }
}
