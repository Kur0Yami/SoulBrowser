package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.room.IMultiInstanceInvalidationService;
import java.util.HashMap;

@RestrictTo
/* loaded from: classes.dex */
public class MultiInstanceInvalidationService extends Service {

    /* renamed from: c, reason: collision with root package name */
    public int f1621c = 0;
    public final HashMap f = new HashMap();
    public final RemoteCallbackList g = new RemoteCallbackList<IMultiInstanceInvalidationCallback>() { // from class: androidx.room.MultiInstanceInvalidationService.1
        @Override // android.os.RemoteCallbackList
        public final void onCallbackDied(IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, Object obj) {
            HashMap hashMap = MultiInstanceInvalidationService.this.f;
            Integer num = (Integer) obj;
            num.intValue();
            hashMap.remove(num);
        }
    };
    public final IMultiInstanceInvalidationService.Stub h = new AnonymousClass2();

    /* renamed from: androidx.room.MultiInstanceInvalidationService$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends IMultiInstanceInvalidationService.Stub {
        public AnonymousClass2() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationService");
        }

        public final void I1(String[] strArr, int i) {
            synchronized (MultiInstanceInvalidationService.this.g) {
                try {
                    String str = (String) MultiInstanceInvalidationService.this.f.get(Integer.valueOf(i));
                    if (str == null) {
                        Log.w("ROOM", "Remote invalidation client ID not registered");
                        return;
                    }
                    int beginBroadcast = MultiInstanceInvalidationService.this.g.beginBroadcast();
                    for (int i2 = 0; i2 < beginBroadcast; i2++) {
                        try {
                            Integer num = (Integer) MultiInstanceInvalidationService.this.g.getBroadcastCookie(i2);
                            int intValue = num.intValue();
                            String str2 = (String) MultiInstanceInvalidationService.this.f.get(num);
                            if (i != intValue && str.equals(str2)) {
                                try {
                                    ((IMultiInstanceInvalidationCallback) MultiInstanceInvalidationService.this.g.getBroadcastItem(i2)).A0(strArr);
                                } catch (RemoteException e) {
                                    Log.w("ROOM", "Error invoking a remote callback", e);
                                }
                            }
                        } finally {
                            MultiInstanceInvalidationService.this.g.finishBroadcast();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.room.IMultiInstanceInvalidationService
        public final int e1(IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, String str) {
            if (str == null) {
                return 0;
            }
            synchronized (MultiInstanceInvalidationService.this.g) {
                try {
                    MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                    int i = multiInstanceInvalidationService.f1621c + 1;
                    multiInstanceInvalidationService.f1621c = i;
                    if (multiInstanceInvalidationService.g.register(iMultiInstanceInvalidationCallback, Integer.valueOf(i))) {
                        MultiInstanceInvalidationService.this.f.put(Integer.valueOf(i), str);
                        return i;
                    }
                    MultiInstanceInvalidationService multiInstanceInvalidationService2 = MultiInstanceInvalidationService.this;
                    multiInstanceInvalidationService2.f1621c--;
                    return 0;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.h;
    }
}
