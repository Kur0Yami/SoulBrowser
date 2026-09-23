package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.os.BundleCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequencesKt;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Landroidx/activity/result/ActivityResultRegistry;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "CallbackAndContract", "Companion", "LifecycleContainer", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nActivityResultRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/result/ActivityResultRegistry\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,447:1\n123#2,2:448\n*S KotlinDebug\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/result/ActivityResultRegistry\n*L\n401#1:448,2\n*E\n"})
/* loaded from: classes.dex */
public abstract class ActivityResultRegistry {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f54a = new LinkedHashMap();
    public final LinkedHashMap b = new LinkedHashMap();

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f55c = new LinkedHashMap();
    public final ArrayList d = new ArrayList();
    public final transient LinkedHashMap e = new LinkedHashMap();
    public final LinkedHashMap f = new LinkedHashMap();
    public final Bundle g = new Bundle();

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;", "O", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class CallbackAndContract<O> {

        /* renamed from: a, reason: collision with root package name */
        public final ActivityResultCallback f56a;
        public final ActivityResultContract b;

        public CallbackAndContract(ActivityResultContract contract, ActivityResultCallback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            Intrinsics.checkNotNullParameter(contract, "contract");
            this.f56a = callback;
            this.b = contract;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0007¨\u0006\f"}, d2 = {"Landroidx/activity/result/ActivityResultRegistry$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "INITIAL_REQUEST_CODE_VALUE", "I", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", "Ljava/lang/String;", "KEY_COMPONENT_ACTIVITY_PENDING_RESULTS", "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", "LOG_TAG", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nActivityResultRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/result/ActivityResultRegistry$LifecycleContainer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,447:1\n1855#2,2:448\n*S KotlinDebug\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/result/ActivityResultRegistry$LifecycleContainer\n*L\n425#1:448,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class LifecycleContainer {

        /* renamed from: a, reason: collision with root package name */
        public final Lifecycle f57a;
        public final ArrayList b;

        public LifecycleContainer(Lifecycle lifecycle) {
            Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
            this.f57a = lifecycle;
            this.b = new ArrayList();
        }
    }

    public final void a(int i, Object obj) {
        ActivityResultCallback activityResultCallback;
        String str = (String) this.f54a.get(Integer.valueOf(i));
        if (str == null) {
            return;
        }
        CallbackAndContract callbackAndContract = (CallbackAndContract) this.e.get(str);
        if (callbackAndContract != null) {
            activityResultCallback = callbackAndContract.f56a;
        } else {
            activityResultCallback = null;
        }
        if (activityResultCallback == null) {
            this.g.remove(str);
            this.f.put(str, obj);
            return;
        }
        ActivityResultCallback activityResultCallback2 = callbackAndContract.f56a;
        Intrinsics.checkNotNull(activityResultCallback2, "null cannot be cast to non-null type androidx.activity.result.ActivityResultCallback<O of androidx.activity.result.ActivityResultRegistry.dispatchResult>");
        if (this.d.remove(str)) {
            activityResultCallback2.a(obj);
        }
    }

    public final boolean b(int i, int i2, Intent intent) {
        ActivityResultCallback activityResultCallback;
        String str = (String) this.f54a.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        CallbackAndContract callbackAndContract = (CallbackAndContract) this.e.get(str);
        if (callbackAndContract != null) {
            activityResultCallback = callbackAndContract.f56a;
        } else {
            activityResultCallback = null;
        }
        if (activityResultCallback != null) {
            ArrayList arrayList = this.d;
            if (arrayList.contains(str)) {
                callbackAndContract.f56a.a(callbackAndContract.b.c(intent, i2));
                arrayList.remove(str);
                return true;
            }
        }
        this.f.remove(str);
        this.g.putParcelable(str, new ActivityResult(intent, i2));
        return true;
    }

    public abstract void c(int i, ActivityResultContract activityResultContract, Object obj);

    public final ActivityResultRegistry$register$2 d(final String key, LifecycleOwner lifecycleOwner, final ActivityResultContract contract, final ActivityResultCallback callback) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(contract, "contract");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (!lifecycle.getF1201c().a(Lifecycle.State.h)) {
            f(key);
            LinkedHashMap linkedHashMap = this.f55c;
            LifecycleContainer lifecycleContainer = (LifecycleContainer) linkedHashMap.get(key);
            if (lifecycleContainer == null) {
                lifecycleContainer = new LifecycleContainer(lifecycle);
            }
            LifecycleEventObserver observer = new LifecycleEventObserver() { // from class: androidx.activity.result.a
                @Override // androidx.lifecycle.LifecycleEventObserver
                public final void b(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                    ActivityResultRegistry this$0 = ActivityResultRegistry.this;
                    Intrinsics.checkNotNullParameter(this$0, "this$0");
                    String key2 = key;
                    Intrinsics.checkNotNullParameter(key2, "$key");
                    ActivityResultCallback callback2 = callback;
                    Intrinsics.checkNotNullParameter(callback2, "$callback");
                    ActivityResultContract contract2 = contract;
                    Intrinsics.checkNotNullParameter(contract2, "$contract");
                    Intrinsics.checkNotNullParameter(lifecycleOwner2, "<anonymous parameter 0>");
                    Intrinsics.checkNotNullParameter(event, "event");
                    if (Lifecycle.Event.ON_START == event) {
                        LinkedHashMap linkedHashMap2 = this$0.e;
                        Bundle bundle = this$0.g;
                        LinkedHashMap linkedHashMap3 = this$0.f;
                        linkedHashMap2.put(key2, new ActivityResultRegistry.CallbackAndContract(contract2, callback2));
                        if (linkedHashMap3.containsKey(key2)) {
                            Object obj = linkedHashMap3.get(key2);
                            linkedHashMap3.remove(key2);
                            callback2.a(obj);
                        }
                        ActivityResult activityResult = (ActivityResult) BundleCompat.a(key2, bundle);
                        if (activityResult != null) {
                            bundle.remove(key2);
                            callback2.a(contract2.c(activityResult.f, activityResult.f53c));
                            return;
                        }
                        return;
                    }
                    if (Lifecycle.Event.ON_STOP == event) {
                        this$0.e.remove(key2);
                    } else if (Lifecycle.Event.ON_DESTROY == event) {
                        this$0.g(key2);
                    }
                }
            };
            Intrinsics.checkNotNullParameter(observer, "observer");
            lifecycleContainer.f57a.a(observer);
            lifecycleContainer.b.add(observer);
            linkedHashMap.put(key, lifecycleContainer);
            return new ActivityResultRegistry$register$2(this, key, contract);
        }
        throw new IllegalStateException(("LifecycleOwner " + lifecycleOwner + " is attempting to register while current state is " + lifecycle.getF1201c() + ". LifecycleOwners must call register before they are STARTED.").toString());
    }

    public final ActivityResultRegistry$register$3 e(String key, ActivityResultContract contract, ActivityResultCallback callback) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(contract, "contract");
        Intrinsics.checkNotNullParameter(callback, "callback");
        f(key);
        this.e.put(key, new CallbackAndContract(contract, callback));
        LinkedHashMap linkedHashMap = this.f;
        if (linkedHashMap.containsKey(key)) {
            Object obj = linkedHashMap.get(key);
            linkedHashMap.remove(key);
            callback.a(obj);
        }
        Bundle bundle = this.g;
        ActivityResult activityResult = (ActivityResult) BundleCompat.a(key, bundle);
        if (activityResult != null) {
            bundle.remove(key);
            callback.a(contract.c(activityResult.f, activityResult.f53c));
        }
        return new ActivityResultRegistry$register$3(this, key, contract);
    }

    public final void f(String str) {
        LinkedHashMap linkedHashMap = this.b;
        if (((Integer) linkedHashMap.get(str)) != null) {
            return;
        }
        for (Number number : SequencesKt.generateSequence(ActivityResultRegistry$generateRandomNumber$1.f58c)) {
            Integer valueOf = Integer.valueOf(number.intValue());
            LinkedHashMap linkedHashMap2 = this.f54a;
            if (!linkedHashMap2.containsKey(valueOf)) {
                int intValue = number.intValue();
                linkedHashMap2.put(Integer.valueOf(intValue), str);
                linkedHashMap.put(str, Integer.valueOf(intValue));
                return;
            }
        }
        throw new NoSuchElementException("Sequence contains no element matching the predicate.");
    }

    public final void g(String key) {
        Integer num;
        Intrinsics.checkNotNullParameter(key, "key");
        if (!this.d.contains(key) && (num = (Integer) this.b.remove(key)) != null) {
            this.f54a.remove(num);
        }
        this.e.remove(key);
        LinkedHashMap linkedHashMap = this.f;
        if (linkedHashMap.containsKey(key)) {
            StringBuilder w = android.support.v4.media.a.w("Dropping pending result for request ", key, ": ");
            w.append(linkedHashMap.get(key));
            Log.w("ActivityResultRegistry", w.toString());
            linkedHashMap.remove(key);
        }
        Bundle bundle = this.g;
        if (bundle.containsKey(key)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + key + ": " + ((ActivityResult) BundleCompat.a(key, bundle)));
            bundle.remove(key);
        }
        LinkedHashMap linkedHashMap2 = this.f55c;
        LifecycleContainer lifecycleContainer = (LifecycleContainer) linkedHashMap2.get(key);
        if (lifecycleContainer != null) {
            ArrayList arrayList = lifecycleContainer.b;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                lifecycleContainer.f57a.c((LifecycleEventObserver) obj);
            }
            arrayList.clear();
            linkedHashMap2.remove(key);
        }
    }
}
