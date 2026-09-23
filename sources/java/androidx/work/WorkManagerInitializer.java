package androidx.work;

import android.content.Context;
import androidx.startup.Initializer;
import androidx.work.impl.WorkManagerImpl;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class WorkManagerInitializer implements Initializer<WorkManager> {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1850a = Logger.e("WrkMgrInitializer");

    @Override // androidx.startup.Initializer
    public final List a() {
        return Collections.EMPTY_LIST;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.work.Configuration$Builder, java.lang.Object] */
    @Override // androidx.startup.Initializer
    public final Object b(Context context) {
        Logger.c().a(f1850a, "Initializing WorkManager with default configuration.", new Throwable[0]);
        WorkManagerImpl.d(context, new Configuration(new Object()));
        return WorkManagerImpl.c(context);
    }
}
