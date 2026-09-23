package androidx.work.impl.model;

import android.os.Build;
import android.support.v4.media.a;
import androidx.work.BackoffPolicy;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;

/* loaded from: classes.dex */
public class WorkTypeConverters {

    /* renamed from: androidx.work.impl.model.WorkTypeConverters$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1943a;
        public static final /* synthetic */ int[] b;

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f1944c;
        public static final /* synthetic */ int[] d;

        static {
            int[] iArr = new int[OutOfQuotaPolicy.values().length];
            d = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                d[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[NetworkType.values().length];
            f1944c = iArr2;
            try {
                iArr2[0] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1944c[1] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1944c[2] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1944c[3] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1944c[4] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[BackoffPolicy.values().length];
            b = iArr3;
            try {
                iArr3[0] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                b[1] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr4 = new int[WorkInfo.State.values().length];
            f1943a = iArr4;
            try {
                iArr4[0] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f1943a[1] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f1943a[2] = 3;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f1943a[3] = 4;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f1943a[4] = 5;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f1943a[5] = 6;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    /* loaded from: classes.dex */
    public interface BackoffPolicyIds {
    }

    /* loaded from: classes.dex */
    public interface NetworkTypeIds {
    }

    /* loaded from: classes.dex */
    public interface OutOfPolicyIds {
    }

    /* loaded from: classes.dex */
    public interface StateIds {
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
    
        if (r2 == null) goto L48;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0058 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.work.ContentUriTriggers a(byte[] r7) {
        /*
            androidx.work.ContentUriTriggers r0 = new androidx.work.ContentUriTriggers
            r0.<init>()
            if (r7 != 0) goto L8
            goto L55
        L8:
            java.io.ByteArrayInputStream r1 = new java.io.ByteArrayInputStream
            r1.<init>(r7)
            r7 = 0
            java.io.ObjectInputStream r2 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L4b
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L4b
            int r7 = r2.readInt()     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
        L17:
            if (r7 <= 0) goto L36
            java.lang.String r3 = r2.readUTF()     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            android.net.Uri r3 = android.net.Uri.parse(r3)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            boolean r4 = r2.readBoolean()     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            androidx.work.ContentUriTriggers$Trigger r5 = new androidx.work.ContentUriTriggers$Trigger     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            r5.<init>(r4, r3)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            java.util.HashSet r3 = r0.f1831a     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            r3.add(r5)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            int r7 = r7 + (-1)
            goto L17
        L32:
            r7 = move-exception
            goto L56
        L34:
            r7 = move-exception
            goto L4f
        L36:
            r2.close()     // Catch: java.io.IOException -> L3a
            goto L3e
        L3a:
            r7 = move-exception
            r7.printStackTrace()
        L3e:
            r1.close()     // Catch: java.io.IOException -> L42
            goto L55
        L42:
            r7 = move-exception
            r7.printStackTrace()
            goto L55
        L47:
            r0 = move-exception
            r2 = r7
            r7 = r0
            goto L56
        L4b:
            r2 = move-exception
            r6 = r2
            r2 = r7
            r7 = r6
        L4f:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L32
            if (r2 == 0) goto L3e
            goto L36
        L55:
            return r0
        L56:
            if (r2 == 0) goto L60
            r2.close()     // Catch: java.io.IOException -> L5c
            goto L60
        L5c:
            r0 = move-exception
            r0.printStackTrace()
        L60:
            r1.close()     // Catch: java.io.IOException -> L64
            goto L68
        L64:
            r0 = move-exception
            r0.printStackTrace()
        L68:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.WorkTypeConverters.a(byte[]):androidx.work.ContentUriTriggers");
    }

    public static BackoffPolicy b(int i) {
        if (i != 0) {
            if (i == 1) {
                return BackoffPolicy.f;
            }
            throw new IllegalArgumentException(a.f(i, "Could not convert ", " to BackoffPolicy"));
        }
        return BackoffPolicy.f1824c;
    }

    public static NetworkType c(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (Build.VERSION.SDK_INT >= 30 && i == 5) {
                                return NetworkType.j;
                            }
                            throw new IllegalArgumentException(a.f(i, "Could not convert ", " to NetworkType"));
                        }
                        return NetworkType.i;
                    }
                    return NetworkType.h;
                }
                return NetworkType.g;
            }
            return NetworkType.f;
        }
        return NetworkType.f1845c;
    }

    public static OutOfQuotaPolicy d(int i) {
        if (i != 0) {
            if (i == 1) {
                return OutOfQuotaPolicy.f;
            }
            throw new IllegalArgumentException(a.f(i, "Could not convert ", " to OutOfQuotaPolicy"));
        }
        return OutOfQuotaPolicy.f1848c;
    }

    public static WorkInfo.State e(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i == 5) {
                                return WorkInfo.State.j;
                            }
                            throw new IllegalArgumentException(a.f(i, "Could not convert ", " to State"));
                        }
                        return WorkInfo.State.i;
                    }
                    return WorkInfo.State.h;
                }
                return WorkInfo.State.g;
            }
            return WorkInfo.State.f;
        }
        return WorkInfo.State.f1849c;
    }

    public static int f(WorkInfo.State state) {
        int ordinal = state.ordinal();
        if (ordinal != 0) {
            int i = 1;
            if (ordinal != 1) {
                i = 2;
                if (ordinal != 2) {
                    i = 3;
                    if (ordinal != 3) {
                        i = 4;
                        if (ordinal != 4) {
                            if (ordinal == 5) {
                                return 5;
                            }
                            throw new IllegalArgumentException("Could not convert " + state + " to int");
                        }
                    }
                }
            }
            return i;
        }
        return 0;
    }
}
