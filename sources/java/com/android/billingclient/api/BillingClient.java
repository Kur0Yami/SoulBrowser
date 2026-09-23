package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.AnyThread;
import com.mycompany.app.help.PayHelper;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public abstract class BillingClient {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface BillingProgram {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface BillingResponseCode {
    }

    @AnyThread
    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public volatile PendingPurchasesParams f1991a;
        public final Context b;

        /* renamed from: c, reason: collision with root package name */
        public volatile PayHelper f1992c;

        public /* synthetic */ Builder(Context context) {
            this.b = context;
        }

        public final BillingClient a() {
            Context context = this.b;
            if (context != null) {
                if (this.f1992c != null) {
                    if (this.f1991a != null) {
                        this.f1991a.getClass();
                        if (this.f1992c != null) {
                            PendingPurchasesParams pendingPurchasesParams = this.f1991a;
                            PayHelper payHelper = this.f1992c;
                            if (b()) {
                                return new zzcv(pendingPurchasesParams, context, payHelper, this);
                            }
                            return new BillingClientImpl(pendingPurchasesParams, context, payHelper, this);
                        }
                        PendingPurchasesParams pendingPurchasesParams2 = this.f1991a;
                        if (b()) {
                            return new zzcv(pendingPurchasesParams2, context, this);
                        }
                        return new BillingClientImpl(pendingPurchasesParams2, context, this);
                    }
                    throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
                }
                throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }

        public final boolean b() {
            try {
                Context context = this.b;
                return context.getPackageManager().getApplicationInfo(context.getPackageName(), Uuid.SIZE_BITS).metaData.getBoolean("com.google.android.play.billingclient.enableBillingOverridesTesting", false);
            } catch (Exception e) {
                com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Unable to retrieve metadata value for enableBillingOverridesTesting.", e);
                return false;
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ConnectionState {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface FeatureType {
    }

    @Retention(RetentionPolicy.SOURCE)
    @zzp
    /* loaded from: classes.dex */
    public @interface OnPurchasesUpdatedSubResponseCode {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ProductType {
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes.dex */
    public @interface SkuType {
    }

    public abstract void a(AcknowledgePurchaseParams acknowledgePurchaseParams, AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener);

    public abstract void b(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener);

    public abstract void c();

    public abstract boolean d();

    public abstract BillingResult e(Activity activity, BillingFlowParams billingFlowParams);

    public abstract void f(QueryProductDetailsParams queryProductDetailsParams, ProductDetailsResponseListener productDetailsResponseListener);

    public abstract void g(QueryPurchasesParams queryPurchasesParams, PurchasesResponseListener purchasesResponseListener);

    public abstract void h(PayHelper payHelper);
}
