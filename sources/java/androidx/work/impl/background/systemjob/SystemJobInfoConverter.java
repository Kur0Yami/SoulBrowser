package androidx.work.impl.background.systemjob;

import android.content.ComponentName;
import android.content.Context;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.NetworkType;

@RequiresApi
@RestrictTo
/* loaded from: classes.dex */
class SystemJobInfoConverter {
    public static final String b = Logger.e("SystemJobInfoConverter");

    /* renamed from: a, reason: collision with root package name */
    public final ComponentName f1900a;

    /* renamed from: androidx.work.impl.background.systemjob.SystemJobInfoConverter$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1901a;

        static {
            int[] iArr = new int[NetworkType.values().length];
            f1901a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1901a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1901a[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1901a[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1901a[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public SystemJobInfoConverter(Context context) {
        this.f1900a = new ComponentName(context.getApplicationContext(), (Class<?>) SystemJobService.class);
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0065, code lost:
    
        if (r2 < 26) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0068, code lost:
    
        if (r2 >= 24) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.app.job.JobInfo a(androidx.work.impl.model.WorkSpec r13, int r14) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.background.systemjob.SystemJobInfoConverter.a(androidx.work.impl.model.WorkSpec, int):android.app.job.JobInfo");
    }
}
