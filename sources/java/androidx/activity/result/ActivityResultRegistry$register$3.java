package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContract;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"androidx/activity/result/ActivityResultRegistry$register$3", "Landroidx/activity/result/ActivityResultLauncher;", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ActivityResultRegistry$register$3 extends ActivityResultLauncher<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityResultRegistry f61a;
    public final /* synthetic */ String b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityResultContract f62c;

    public ActivityResultRegistry$register$3(ActivityResultRegistry activityResultRegistry, String str, ActivityResultContract activityResultContract) {
        this.f61a = activityResultRegistry;
        this.b = str;
        this.f62c = activityResultContract;
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public final void a(Object obj) {
        ActivityResultRegistry activityResultRegistry = this.f61a;
        ArrayList arrayList = activityResultRegistry.d;
        LinkedHashMap linkedHashMap = activityResultRegistry.b;
        String str = this.b;
        Object obj2 = linkedHashMap.get(str);
        ActivityResultContract activityResultContract = this.f62c;
        if (obj2 != null) {
            int intValue = ((Number) obj2).intValue();
            arrayList.add(str);
            try {
                activityResultRegistry.c(intValue, activityResultContract, obj);
                return;
            } catch (Exception e) {
                arrayList.remove(str);
                throw e;
            }
        }
        throw new IllegalStateException(("Attempting to launch an unregistered ActivityResultLauncher with contract " + activityResultContract + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().").toString());
    }

    public final void b() {
        this.f61a.g(this.b);
    }
}
