package androidx.webkit.internal;

import android.os.Build;
import android.webkit.WebView;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* loaded from: classes.dex */
public class WebViewGlueCommunicator {

    /* loaded from: classes.dex */
    public static class LAZY_COMPAT_CONVERTER_HOLDER {

        /* renamed from: a, reason: collision with root package name */
        public static final WebkitToCompatConverter f1813a = new WebkitToCompatConverter(LAZY_FACTORY_HOLDER.f1814a.getWebkitToCompatConverter());
    }

    /* loaded from: classes.dex */
    public static class LAZY_FACTORY_HOLDER {

        /* renamed from: a, reason: collision with root package name */
        public static final WebViewProviderFactory f1814a;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v2, types: [androidx.webkit.internal.WebViewProviderFactory] */
        /* JADX WARN: Type inference failed for: r1v4 */
        /* JADX WARN: Type inference failed for: r1v5 */
        static {
            ?? r1;
            try {
                r1 = new WebViewProviderFactoryAdapter((WebViewProviderFactoryBoundaryInterface) BoundaryInterfaceReflectionUtil.a(WebViewProviderFactoryBoundaryInterface.class, WebViewGlueCommunicator.a()));
            } catch (ClassNotFoundException unused) {
                r1 = new Object();
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                throw new RuntimeException(e);
            }
            f1814a = r1;
        }
    }

    public static InvocationHandler a() {
        ClassLoader classLoader;
        if (Build.VERSION.SDK_INT >= 28) {
            classLoader = ApiHelperForP.b();
        } else {
            try {
                Method declaredMethod = WebView.class.getDeclaredMethod("getFactory", null);
                declaredMethod.setAccessible(true);
                classLoader = declaredMethod.invoke(null, null).getClass().getClassLoader();
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                throw new RuntimeException(e);
            }
        }
        return (InvocationHandler) Class.forName("org.chromium.support_lib_glue.SupportLibReflectionUtil", false, classLoader).getDeclaredMethod("createWebViewProviderFactory", null).invoke(null, null);
    }

    public static WebkitToCompatConverter b() {
        return LAZY_COMPAT_CONVERTER_HOLDER.f1813a;
    }

    public static WebViewProviderFactory c() {
        return LAZY_FACTORY_HOLDER.f1814a;
    }
}
