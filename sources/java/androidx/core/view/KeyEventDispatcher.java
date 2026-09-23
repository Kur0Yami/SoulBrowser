package androidx.core.view;

import android.os.Build;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.core.R;
import androidx.core.view.ViewCompat;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.WeakHashMap;

@RestrictTo
/* loaded from: classes.dex */
public class KeyEventDispatcher {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f776a = false;
    public static Method b = null;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f777c = false;
    public static Field d;

    /* loaded from: classes.dex */
    public interface Component {
        boolean C(KeyEvent keyEvent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [androidx.core.view.ViewCompat$UnhandledKeyEventManager, java.lang.Object] */
    public static boolean a(View view, KeyEvent keyEvent) {
        int indexOfKey;
        WeakHashMap weakHashMap = ViewCompat.f792a;
        if (Build.VERSION.SDK_INT < 28) {
            ArrayList arrayList = ViewCompat.UnhandledKeyEventManager.d;
            ViewCompat.UnhandledKeyEventManager unhandledKeyEventManager = (ViewCompat.UnhandledKeyEventManager) view.getTag(R.id.tag_unhandled_key_event_manager);
            WeakReference weakReference = null;
            ViewCompat.UnhandledKeyEventManager unhandledKeyEventManager2 = unhandledKeyEventManager;
            if (unhandledKeyEventManager == null) {
                ?? obj = new Object();
                obj.f799a = null;
                obj.b = null;
                obj.f800c = null;
                view.setTag(R.id.tag_unhandled_key_event_manager, obj);
                unhandledKeyEventManager2 = obj;
            }
            WeakReference weakReference2 = unhandledKeyEventManager2.f800c;
            if (weakReference2 == null || weakReference2.get() != keyEvent) {
                unhandledKeyEventManager2.f800c = new WeakReference(keyEvent);
                if (unhandledKeyEventManager2.b == null) {
                    unhandledKeyEventManager2.b = new SparseArray();
                }
                SparseArray sparseArray = unhandledKeyEventManager2.b;
                if (keyEvent.getAction() == 1 && (indexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                    weakReference = (WeakReference) sparseArray.valueAt(indexOfKey);
                    sparseArray.removeAt(indexOfKey);
                }
                if (weakReference == null) {
                    weakReference = (WeakReference) sparseArray.get(keyEvent.getKeyCode());
                }
                if (weakReference != null) {
                    View view2 = (View) weakReference.get();
                    if (view2 != null && view2.isAttachedToWindow()) {
                        ViewCompat.UnhandledKeyEventManager.b(view2, keyEvent);
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(androidx.core.view.KeyEventDispatcher.Component r7, android.view.View r8, android.view.Window.Callback r9, android.view.KeyEvent r10) {
        /*
            r0 = 0
            if (r7 != 0) goto L5
            goto Le4
        L5:
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 28
            if (r1 < r2) goto L10
            boolean r7 = r7.C(r10)
            return r7
        L10:
            boolean r1 = r9 instanceof android.app.Activity
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L82
            android.app.Activity r9 = (android.app.Activity) r9
            r9.onUserInteraction()
            android.view.Window r7 = r9.getWindow()
            r8 = 8
            boolean r8 = r7.hasFeature(r8)
            if (r8 == 0) goto L65
            android.app.ActionBar r8 = r9.getActionBar()
            int r1 = r10.getKeyCode()
            r4 = 82
            if (r1 != r4) goto L65
            if (r8 == 0) goto L65
            boolean r1 = androidx.core.view.KeyEventDispatcher.f776a
            if (r1 != 0) goto L4d
            java.lang.Class r1 = r8.getClass()     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.String r4 = "onMenuKeyEvent"
            java.lang.Class[] r5 = new java.lang.Class[r3]     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.Class<android.view.KeyEvent> r6 = android.view.KeyEvent.class
            r5[r0] = r6     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.reflect.Method r1 = r1.getMethod(r4, r5)     // Catch: java.lang.NoSuchMethodException -> L4b
            androidx.core.view.KeyEventDispatcher.b = r1     // Catch: java.lang.NoSuchMethodException -> L4b
        L4b:
            androidx.core.view.KeyEventDispatcher.f776a = r3
        L4d:
            java.lang.reflect.Method r1 = androidx.core.view.KeyEventDispatcher.b
            if (r1 == 0) goto L62
            java.lang.Object[] r4 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L62
            r4[r0] = r10     // Catch: java.lang.Throwable -> L62
            java.lang.Object r8 = r1.invoke(r8, r4)     // Catch: java.lang.Throwable -> L62
            if (r8 != 0) goto L5c
            goto L62
        L5c:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L62
            boolean r0 = r8.booleanValue()     // Catch: java.lang.Throwable -> L62
        L62:
            if (r0 == 0) goto L65
            goto L81
        L65:
            boolean r8 = r7.superDispatchKeyEvent(r10)
            if (r8 == 0) goto L6c
            goto L81
        L6c:
            android.view.View r7 = r7.getDecorView()
            boolean r8 = androidx.core.view.ViewCompat.d(r7, r10)
            if (r8 == 0) goto L77
            goto L81
        L77:
            if (r7 == 0) goto L7d
            android.view.KeyEvent$DispatcherState r2 = r7.getKeyDispatcherState()
        L7d:
            boolean r3 = r10.dispatch(r9, r2, r9)
        L81:
            return r3
        L82:
            boolean r1 = r9 instanceof android.app.Dialog
            if (r1 == 0) goto Ld5
            android.app.Dialog r9 = (android.app.Dialog) r9
            boolean r7 = androidx.core.view.KeyEventDispatcher.f777c
            if (r7 != 0) goto L9b
            java.lang.Class<android.app.Dialog> r7 = android.app.Dialog.class
            java.lang.String r8 = "mOnKeyListener"
            java.lang.reflect.Field r7 = r7.getDeclaredField(r8)     // Catch: java.lang.NoSuchFieldException -> L99
            androidx.core.view.KeyEventDispatcher.d = r7     // Catch: java.lang.NoSuchFieldException -> L99
            r7.setAccessible(r3)     // Catch: java.lang.NoSuchFieldException -> L99
        L99:
            androidx.core.view.KeyEventDispatcher.f777c = r3
        L9b:
            java.lang.reflect.Field r7 = androidx.core.view.KeyEventDispatcher.d
            if (r7 == 0) goto La6
            java.lang.Object r7 = r7.get(r9)     // Catch: java.lang.IllegalAccessException -> La6
            android.content.DialogInterface$OnKeyListener r7 = (android.content.DialogInterface.OnKeyListener) r7     // Catch: java.lang.IllegalAccessException -> La6
            goto La7
        La6:
            r7 = r2
        La7:
            if (r7 == 0) goto Lb4
            int r8 = r10.getKeyCode()
            boolean r7 = r7.onKey(r9, r8, r10)
            if (r7 == 0) goto Lb4
            goto Ld4
        Lb4:
            android.view.Window r7 = r9.getWindow()
            boolean r8 = r7.superDispatchKeyEvent(r10)
            if (r8 == 0) goto Lbf
            goto Ld4
        Lbf:
            android.view.View r7 = r7.getDecorView()
            boolean r8 = androidx.core.view.ViewCompat.d(r7, r10)
            if (r8 == 0) goto Lca
            goto Ld4
        Lca:
            if (r7 == 0) goto Ld0
            android.view.KeyEvent$DispatcherState r2 = r7.getKeyDispatcherState()
        Ld0:
            boolean r3 = r10.dispatch(r9, r2, r9)
        Ld4:
            return r3
        Ld5:
            if (r8 == 0) goto Ldd
            boolean r8 = androidx.core.view.ViewCompat.d(r8, r10)
            if (r8 != 0) goto Le3
        Ldd:
            boolean r7 = r7.C(r10)
            if (r7 == 0) goto Le4
        Le3:
            return r3
        Le4:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.KeyEventDispatcher.b(androidx.core.view.KeyEventDispatcher$Component, android.view.View, android.view.Window$Callback, android.view.KeyEvent):boolean");
    }
}
