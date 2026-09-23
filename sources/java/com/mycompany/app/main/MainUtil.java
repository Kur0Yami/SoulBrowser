package com.mycompany.app.main;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ImageDecoder;
import android.graphics.Insets;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PictureDrawable;
import android.media.AudioManager;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.provider.Settings;
import android.support.v4.media.a;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.Editable;
import android.text.Html;
import android.text.Layout;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.text.style.ForegroundColorSpan;
import android.text.style.ReplacementSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Rational;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.webkit.CookieManager;
import android.webkit.MimeTypeMap;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.URLUtil;
import android.webkit.ValueCallback;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.webkit.WebViewDatabase;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.biometric.BiometricManager;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.collection.IndexBasedArrayIterator;
import androidx.collection.LruCache;
import androidx.core.app.ActivityCompat;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.provider.b;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.media.app.NotificationCompat;
import androidx.mediarouter.app.MediaRouteButton;
import androidx.webkit.WebSettingsCompat;
import androidx.webkit.WebViewFeature;
import androidx.webkit.internal.WebStorageAdapter;
import androidx.webkit.internal.WebViewFeatureInternal;
import androidx.webkit.internal.WebViewGlueCommunicator;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.LazyHeaders;
import com.caverock.androidsvg.SVG;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpMethods;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.compress.CompressCache;
import com.mycompany.app.data.DataTrans;
import com.mycompany.app.data.DataUrl;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookIcon;
import com.mycompany.app.db.book.DbBookPage;
import com.mycompany.app.dialog.DialogSetPopup;
import com.mycompany.app.image.ImageViewActivity;
import com.mycompany.app.lock.FingerActivity;
import com.mycompany.app.lock.PassActivity;
import com.mycompany.app.lock.PatternActivity;
import com.mycompany.app.lock.PinActivity;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.pref.PrefVideo;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.vpn.VpnAdapter;
import com.mycompany.app.vpn.VpnSvc;
import com.mycompany.app.web.WebNestFrame;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.web.WebViewActivity;
import com.mycompany.app.widget.WidgetBookProviderDark;
import com.mycompany.app.widget.WidgetBookProviderLight;
import com.nostra13.universalimageloader.cache.memory.impl.LruMemoryCache;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ContentLengthInputStream;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import kotlin.KotlinVersion;
import kotlin.io.ConstantsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.Uuid;
import okhttp3.Headers;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.ResponseBody;
import okhttp3.internal.connection.RealCall;
import org.apache.commons.text.StringEscapeUtils;
import org.chromium.support_lib_boundary.WebStorageBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.UniversalDetector;
import org.mozilla.universalchardet.prober.CharsetProber;

/* loaded from: classes3.dex */
public class MainUtil {

    /* renamed from: a, reason: collision with root package name */
    public static String f16990a;
    public static String b;

    /* renamed from: com.mycompany.app.main.MainUtil$12, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass12 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), MainApp.v1);
            }
        }
    }

    /* renamed from: com.mycompany.app.main.MainUtil$13, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass13 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), MainApp.m1);
            }
        }
    }

    /* renamed from: com.mycompany.app.main.MainUtil$14, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass14 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                int width = view.getWidth();
                int height = view.getHeight();
                int i = MainApp.m1;
                outline.setRoundRect(0, 0, width, height + i, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.MainUtil$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass7 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Context f17011c;
        public final /* synthetic */ View f;

        public AnonymousClass7(Context context, View view) {
            this.f17011c = context;
            this.f = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                MainApp.o(this.f17011c).showSoftInput(this.f, 1);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.MainUtil$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass9 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Context f17013c;
        public final /* synthetic */ View f;

        public AnonymousClass9(Context context, View view) {
            this.f17013c = context;
            this.f = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                MainApp.o(this.f17013c).hideSoftInputFromWindow(this.f.getWindowToken(), 2);
            } catch (Exception unused) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class BackgroundHeightSpan extends ReplacementSpan {

        /* renamed from: c, reason: collision with root package name */
        public final int f17014c;
        public final int f;
        public final float g;

        public BackgroundHeightSpan(int i, int i2) {
            this.f17014c = i;
            int i3 = MainApp.G1;
            this.f = i2 + i3;
            this.g = i3;
        }

        @Override // android.text.style.ReplacementSpan
        public final void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            int color = paint.getColor();
            RectF rectF = new RectF(f, i3, paint.measureText(charSequence, i, i2) + f, i3 + this.f);
            paint.setColor(this.f17014c);
            float f2 = this.g;
            canvas.drawRoundRect(rectF, f2, f2, paint);
            paint.setColor(color);
            canvas.drawText(charSequence, i, i2, f, i4, paint);
        }

        @Override // android.text.style.ReplacementSpan
        public final int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            return Math.round(paint.measureText(charSequence, i, i2));
        }
    }

    /* loaded from: classes3.dex */
    public interface LoopCancelListener {
        boolean isCancelled();
    }

    /* loaded from: classes3.dex */
    public static class PuzzleOrder {
    }

    /* loaded from: classes3.dex */
    public static class SizeItem {

        /* renamed from: a, reason: collision with root package name */
        public int f17015a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f17016c;

        public SizeItem(int i, int i2) {
            this.f17015a = i;
            this.b = i2;
        }
    }

    /* loaded from: classes3.dex */
    public static class SortChildData implements Comparator<MainItem.ChildItem> {

        /* renamed from: c, reason: collision with root package name */
        public final int f17017c;
        public final boolean f;

        public SortChildData(int i, boolean z) {
            this.f17017c = i;
            this.f = z;
        }

        @Override // java.util.Comparator
        public final int compare(MainItem.ChildItem childItem, MainItem.ChildItem childItem2) {
            int i;
            int n;
            MainItem.ChildItem childItem3 = childItem;
            MainItem.ChildItem childItem4 = childItem2;
            if (childItem3 == null && childItem4 == null) {
                return 0;
            }
            if (childItem3 != null) {
                if (childItem4 != null) {
                    boolean z = childItem3.k;
                    boolean z2 = this.f;
                    if ((z || childItem4.k) && PrefList.G) {
                        if (childItem4.k) {
                            if (z) {
                                int m = MainUtil.m(childItem3.n, childItem4.n, z2);
                                if (m != 0) {
                                    return m;
                                }
                                int n2 = MainUtil.n(childItem3.g, childItem4.g, z2);
                                if (n2 != 0) {
                                    return n2;
                                }
                                return MainUtil.o(childItem3.A, childItem4.A, z2);
                            }
                        } else {
                            return -1;
                        }
                    } else {
                        int i2 = childItem3.d;
                        if (i2 != 1 && (i = childItem4.d) != 1) {
                            if (i2 != 2 && i != 2) {
                                if (i2 != 4 && i != 4) {
                                    int i3 = this.f17017c;
                                    if (i3 != 0) {
                                        int m2 = MainUtil.m(childItem3.m, childItem4.m, z2);
                                        if (m2 != 0) {
                                            return m2;
                                        }
                                        if ((i3 == 1 || i3 == 2) && (n = MainUtil.n(childItem3.l, childItem4.l, z2)) != 0) {
                                            return n;
                                        }
                                    }
                                    int o = MainUtil.o(childItem3.f16550a, childItem4.f16550a, z2);
                                    if (o != 0) {
                                        return o;
                                    }
                                    int n3 = MainUtil.n(childItem3.o, childItem4.o, z2);
                                    if (n3 != 0) {
                                        return n3;
                                    }
                                    int m3 = MainUtil.m(childItem3.n, childItem4.n, z2);
                                    if (m3 != 0) {
                                        return m3;
                                    }
                                    int n4 = MainUtil.n(childItem3.g, childItem4.g, z2);
                                    if (n4 != 0) {
                                        return n4;
                                    }
                                    return MainUtil.o(childItem3.A, childItem4.A, z2);
                                }
                                if (i == 4) {
                                    if (i2 == 4) {
                                        int m4 = MainUtil.m(childItem3.n, childItem4.n, z2);
                                        if (m4 != 0) {
                                            return m4;
                                        }
                                        return MainUtil.o(childItem3.A, childItem4.A, z2);
                                    }
                                } else {
                                    return -1;
                                }
                            } else if (i == 2) {
                                if (i2 == 2) {
                                    int m5 = MainUtil.m(childItem3.n, childItem4.n, z2);
                                    if (m5 != 0) {
                                        return m5;
                                    }
                                    return MainUtil.o(childItem3.A, childItem4.A, z2);
                                }
                            } else {
                                return -1;
                            }
                        } else {
                            if (childItem4.d != 1) {
                                return -1;
                            }
                            if (i2 == 1) {
                                int m6 = MainUtil.m(childItem3.n, childItem4.n, z2);
                                if (m6 != 0) {
                                    return m6;
                                }
                                return MainUtil.o(childItem3.A, childItem4.A, z2);
                            }
                        }
                    }
                } else {
                    return -1;
                }
            }
            return 1;
        }
    }

    /* loaded from: classes3.dex */
    public static class SortChildExt implements Comparator<MainItem.ChildItem> {

        /* renamed from: c, reason: collision with root package name */
        public final int f17018c;
        public final boolean f;

        public SortChildExt(int i, boolean z) {
            this.f17018c = i;
            this.f = z;
        }

        @Override // java.util.Comparator
        public final int compare(MainItem.ChildItem childItem, MainItem.ChildItem childItem2) {
            int i;
            int n;
            MainItem.ChildItem childItem3 = childItem;
            MainItem.ChildItem childItem4 = childItem2;
            if (childItem3 == null && childItem4 == null) {
                return 0;
            }
            if (childItem3 != null) {
                if (childItem4 != null) {
                    boolean z = childItem3.k;
                    boolean z2 = this.f;
                    if ((z || childItem4.k) && PrefList.G) {
                        if (childItem4.k) {
                            if (z) {
                                int m = MainUtil.m(childItem3.n, childItem4.n, z2);
                                if (m != 0) {
                                    return m;
                                }
                                int n2 = MainUtil.n(childItem3.g, childItem4.g, z2);
                                if (n2 != 0) {
                                    return n2;
                                }
                                return MainUtil.o(childItem3.A, childItem4.A, z2);
                            }
                        } else {
                            return -1;
                        }
                    } else {
                        int i2 = childItem3.d;
                        if (i2 != 1 && (i = childItem4.d) != 1) {
                            if (i2 != 2 && i != 2) {
                                if (i2 != 4 && i != 4) {
                                    int i3 = this.f17018c;
                                    if (i3 != 0) {
                                        int m2 = MainUtil.m(childItem3.m, childItem4.m, z2);
                                        if (m2 != 0) {
                                            return m2;
                                        }
                                        if ((i3 == 1 || i3 == 2) && (n = MainUtil.n(childItem3.l, childItem4.l, z2)) != 0) {
                                            return n;
                                        }
                                    }
                                    int n3 = MainUtil.n(childItem3.o, childItem4.o, z2);
                                    if (n3 != 0) {
                                        return n3;
                                    }
                                    int m3 = MainUtil.m(childItem3.n, childItem4.n, z2);
                                    if (m3 != 0) {
                                        return m3;
                                    }
                                    int n4 = MainUtil.n(childItem3.g, childItem4.g, z2);
                                    if (n4 != 0) {
                                        return n4;
                                    }
                                    return MainUtil.o(childItem3.A, childItem4.A, z2);
                                }
                                if (i == 4) {
                                    if (i2 == 4) {
                                        int m4 = MainUtil.m(childItem3.n, childItem4.n, z2);
                                        if (m4 != 0) {
                                            return m4;
                                        }
                                        return MainUtil.o(childItem3.A, childItem4.A, z2);
                                    }
                                } else {
                                    return -1;
                                }
                            } else if (i == 2) {
                                if (i2 == 2) {
                                    int m5 = MainUtil.m(childItem3.n, childItem4.n, z2);
                                    if (m5 != 0) {
                                        return m5;
                                    }
                                    return MainUtil.o(childItem3.A, childItem4.A, z2);
                                }
                            } else {
                                return -1;
                            }
                        } else {
                            if (childItem4.d != 1) {
                                return -1;
                            }
                            if (i2 == 1) {
                                int m6 = MainUtil.m(childItem3.n, childItem4.n, z2);
                                if (m6 != 0) {
                                    return m6;
                                }
                                return MainUtil.o(childItem3.A, childItem4.A, z2);
                            }
                        }
                    }
                } else {
                    return -1;
                }
            }
            return 1;
        }
    }

    /* loaded from: classes3.dex */
    public static class SortChildName implements Comparator<MainItem.ChildItem> {

        /* renamed from: c, reason: collision with root package name */
        public final int f17019c;
        public final boolean f;

        public SortChildName(int i, boolean z) {
            this.f17019c = i;
            this.f = z;
        }

        @Override // java.util.Comparator
        public final int compare(MainItem.ChildItem childItem, MainItem.ChildItem childItem2) {
            int i;
            int n;
            MainItem.ChildItem childItem3 = childItem;
            MainItem.ChildItem childItem4 = childItem2;
            if (childItem3 == null && childItem4 == null) {
                return 0;
            }
            if (childItem3 != null) {
                if (childItem4 != null) {
                    boolean z = childItem3.k;
                    boolean z2 = this.f;
                    if ((z || childItem4.k) && PrefList.G) {
                        if (childItem4.k) {
                            if (z) {
                                int m = MainUtil.m(childItem3.n, childItem4.n, z2);
                                if (m != 0) {
                                    return m;
                                }
                                int n2 = MainUtil.n(childItem3.g, childItem4.g, z2);
                                if (n2 != 0) {
                                    return n2;
                                }
                                return MainUtil.o(childItem3.A, childItem4.A, z2);
                            }
                        } else {
                            return -1;
                        }
                    } else {
                        int i2 = childItem3.d;
                        if (i2 != 1 && (i = childItem4.d) != 1) {
                            if (i2 != 2 && i != 2) {
                                if (i2 != 4 && i != 4) {
                                    int i3 = this.f17019c;
                                    if (i3 != 0) {
                                        int m2 = MainUtil.m(childItem3.m, childItem4.m, z2);
                                        if (m2 != 0) {
                                            return m2;
                                        }
                                        if ((i3 == 1 || i3 == 2) && (n = MainUtil.n(childItem3.l, childItem4.l, z2)) != 0) {
                                            return n;
                                        }
                                    }
                                    int m3 = MainUtil.m(childItem3.n, childItem4.n, z2);
                                    if (m3 != 0) {
                                        return m3;
                                    }
                                    int n3 = MainUtil.n(childItem3.o, childItem4.o, z2);
                                    if (n3 != 0) {
                                        return n3;
                                    }
                                    int n4 = MainUtil.n(childItem3.g, childItem4.g, z2);
                                    if (n4 != 0) {
                                        return n4;
                                    }
                                    int o = MainUtil.o(childItem3.p, childItem4.p, z2);
                                    if (o != 0) {
                                        return o;
                                    }
                                    return MainUtil.o(childItem3.A, childItem4.A, z2);
                                }
                                if (i == 4) {
                                    if (i2 == 4) {
                                        int m4 = MainUtil.m(childItem3.n, childItem4.n, z2);
                                        if (m4 != 0) {
                                            return m4;
                                        }
                                        return MainUtil.o(childItem3.A, childItem4.A, z2);
                                    }
                                } else {
                                    return -1;
                                }
                            } else if (i == 2) {
                                if (i2 == 2) {
                                    int m5 = MainUtil.m(childItem3.n, childItem4.n, z2);
                                    if (m5 != 0) {
                                        return m5;
                                    }
                                    return MainUtil.o(childItem3.A, childItem4.A, z2);
                                }
                            } else {
                                return -1;
                            }
                        } else {
                            if (childItem4.d != 1) {
                                return -1;
                            }
                            if (i2 == 1) {
                                int m6 = MainUtil.m(childItem3.n, childItem4.n, z2);
                                if (m6 != 0) {
                                    return m6;
                                }
                                return MainUtil.o(childItem3.A, childItem4.A, z2);
                            }
                        }
                    }
                } else {
                    return -1;
                }
            }
            return 1;
        }
    }

    /* loaded from: classes3.dex */
    public static class SortChildSize implements Comparator<MainItem.ChildItem> {

        /* renamed from: c, reason: collision with root package name */
        public final int f17020c;
        public final boolean f;

        public SortChildSize(int i, boolean z) {
            this.f17020c = i;
            this.f = z;
        }

        @Override // java.util.Comparator
        public final int compare(MainItem.ChildItem childItem, MainItem.ChildItem childItem2) {
            int i;
            int n;
            MainItem.ChildItem childItem3 = childItem;
            MainItem.ChildItem childItem4 = childItem2;
            if (childItem3 == null && childItem4 == null) {
                return 0;
            }
            if (childItem3 != null) {
                if (childItem4 != null) {
                    boolean z = childItem3.k;
                    boolean z2 = this.f;
                    if ((z || childItem4.k) && PrefList.G) {
                        if (childItem4.k) {
                            if (z) {
                                int m = MainUtil.m(childItem3.n, childItem4.n, z2);
                                if (m != 0) {
                                    return m;
                                }
                                int n2 = MainUtil.n(childItem3.g, childItem4.g, z2);
                                if (n2 != 0) {
                                    return n2;
                                }
                                return MainUtil.o(childItem3.A, childItem4.A, z2);
                            }
                        } else {
                            return -1;
                        }
                    } else {
                        int i2 = childItem3.d;
                        if (i2 != 1 && (i = childItem4.d) != 1) {
                            if (i2 != 2 && i != 2) {
                                if (i2 != 4 && i != 4) {
                                    int i3 = this.f17020c;
                                    if (i3 != 0) {
                                        int m2 = MainUtil.m(childItem3.m, childItem4.m, z2);
                                        if (m2 != 0) {
                                            return m2;
                                        }
                                        if ((i3 == 1 || i3 == 2) && (n = MainUtil.n(childItem3.l, childItem4.l, z2)) != 0) {
                                            return n;
                                        }
                                    }
                                    int o = MainUtil.o(childItem3.B, childItem4.B, z2);
                                    if (o != 0) {
                                        return o;
                                    }
                                    int m3 = MainUtil.m(childItem3.n, childItem4.n, z2);
                                    if (m3 != 0) {
                                        return m3;
                                    }
                                    int n3 = MainUtil.n(childItem3.o, childItem4.o, z2);
                                    if (n3 != 0) {
                                        return n3;
                                    }
                                    int n4 = MainUtil.n(childItem3.g, childItem4.g, z2);
                                    if (n4 != 0) {
                                        return n4;
                                    }
                                    return MainUtil.o(childItem3.A, childItem4.A, z2);
                                }
                                if (i == 4) {
                                    if (i2 == 4) {
                                        int o2 = MainUtil.o(childItem3.B, childItem4.B, z2);
                                        if (o2 != 0) {
                                            return o2;
                                        }
                                        int m4 = MainUtil.m(childItem3.n, childItem4.n, z2);
                                        if (m4 != 0) {
                                            return m4;
                                        }
                                        return MainUtil.o(childItem3.A, childItem4.A, z2);
                                    }
                                } else {
                                    return -1;
                                }
                            } else if (i == 2) {
                                if (i2 == 2) {
                                    int o3 = MainUtil.o(childItem3.B, childItem4.B, z2);
                                    if (o3 != 0) {
                                        return o3;
                                    }
                                    int m5 = MainUtil.m(childItem3.n, childItem4.n, z2);
                                    if (m5 != 0) {
                                        return m5;
                                    }
                                    return MainUtil.o(childItem3.A, childItem4.A, z2);
                                }
                            } else {
                                return -1;
                            }
                        } else {
                            if (childItem4.d != 1) {
                                return -1;
                            }
                            if (i2 == 1) {
                                int o4 = MainUtil.o(childItem3.B, childItem4.B, z2);
                                if (o4 != 0) {
                                    return o4;
                                }
                                int m6 = MainUtil.m(childItem3.n, childItem4.n, z2);
                                if (m6 != 0) {
                                    return m6;
                                }
                                return MainUtil.o(childItem3.A, childItem4.A, z2);
                            }
                        }
                    }
                } else {
                    return -1;
                }
            }
            return 1;
        }
    }

    /* loaded from: classes3.dex */
    public static class SortChildTime implements Comparator<MainItem.ChildItem> {

        /* renamed from: c, reason: collision with root package name */
        public final int f17021c;
        public final boolean f;

        public SortChildTime(int i, boolean z) {
            this.f17021c = i;
            this.f = z;
        }

        @Override // java.util.Comparator
        public final int compare(MainItem.ChildItem childItem, MainItem.ChildItem childItem2) {
            int i;
            int n;
            MainItem.ChildItem childItem3 = childItem;
            MainItem.ChildItem childItem4 = childItem2;
            if (childItem3 == null && childItem4 == null) {
                return 0;
            }
            if (childItem3 != null) {
                if (childItem4 != null) {
                    boolean z = childItem3.k;
                    boolean z2 = this.f;
                    if ((z || childItem4.k) && PrefList.G) {
                        if (childItem4.k) {
                            if (z) {
                                int o = MainUtil.o(childItem3.A, childItem4.A, z2);
                                if (o != 0) {
                                    return o;
                                }
                                int m = MainUtil.m(childItem3.n, childItem4.n, z2);
                                if (m != 0) {
                                    return m;
                                }
                                return MainUtil.n(childItem3.g, childItem4.g, z2);
                            }
                        } else {
                            return -1;
                        }
                    } else {
                        int i2 = childItem3.d;
                        if (i2 != 1 && (i = childItem4.d) != 1) {
                            if (i2 != 2 && i != 2) {
                                if (i2 != 4 && i != 4) {
                                    int i3 = this.f17021c;
                                    if (i3 != 0) {
                                        int m2 = MainUtil.m(childItem3.m, childItem4.m, z2);
                                        if (m2 != 0) {
                                            return m2;
                                        }
                                        if ((i3 == 1 || i3 == 2) && (n = MainUtil.n(childItem3.l, childItem4.l, z2)) != 0) {
                                            return n;
                                        }
                                    }
                                    int o2 = MainUtil.o(childItem3.A, childItem4.A, z2);
                                    if (o2 != 0) {
                                        return o2;
                                    }
                                    int m3 = MainUtil.m(childItem3.n, childItem4.n, z2);
                                    if (m3 != 0) {
                                        return m3;
                                    }
                                    int n2 = MainUtil.n(childItem3.o, childItem4.o, z2);
                                    if (n2 != 0) {
                                        return n2;
                                    }
                                    return MainUtil.n(childItem3.g, childItem4.g, z2);
                                }
                                if (i == 4) {
                                    if (i2 == 4) {
                                        int o3 = MainUtil.o(childItem3.A, childItem4.A, z2);
                                        if (o3 != 0) {
                                            return o3;
                                        }
                                        return MainUtil.m(childItem3.n, childItem4.n, z2);
                                    }
                                } else {
                                    return -1;
                                }
                            } else if (i == 2) {
                                if (i2 == 2) {
                                    int o4 = MainUtil.o(childItem3.A, childItem4.A, z2);
                                    if (o4 != 0) {
                                        return o4;
                                    }
                                    return MainUtil.m(childItem3.n, childItem4.n, z2);
                                }
                            } else {
                                return -1;
                            }
                        } else {
                            if (childItem4.d != 1) {
                                return -1;
                            }
                            if (i2 == 1) {
                                int o5 = MainUtil.o(childItem3.A, childItem4.A, z2);
                                if (o5 != 0) {
                                    return o5;
                                }
                                return MainUtil.m(childItem3.n, childItem4.n, z2);
                            }
                        }
                    }
                } else {
                    return -1;
                }
            }
            return 1;
        }
    }

    /* loaded from: classes3.dex */
    public static class SortChildUser implements Comparator<MainItem.ChildItem> {
        @Override // java.util.Comparator
        public final int compare(MainItem.ChildItem childItem, MainItem.ChildItem childItem2) {
            MainItem.ChildItem childItem3 = childItem;
            MainItem.ChildItem childItem4 = childItem2;
            if (childItem3 == null && childItem4 == null) {
                return 0;
            }
            if (childItem3 == null) {
                return 1;
            }
            if (childItem4 == null) {
                return -1;
            }
            int o = MainUtil.o(childItem3.p, childItem4.p, false);
            if (o != 0) {
                return o;
            }
            int o2 = MainUtil.o(childItem3.A, childItem4.A, false);
            if (o2 != 0) {
                return o2;
            }
            int m = MainUtil.m(childItem3.h, childItem4.h, false);
            if (m != 0) {
                return m;
            }
            return MainUtil.n(childItem3.g, childItem4.g, false);
        }
    }

    /* loaded from: classes3.dex */
    public static class SortPuzzle implements Comparator<PuzzleOrder> {
        @Override // java.util.Comparator
        public final int compare(PuzzleOrder puzzleOrder, PuzzleOrder puzzleOrder2) {
            PuzzleOrder puzzleOrder3 = puzzleOrder;
            PuzzleOrder puzzleOrder4 = puzzleOrder2;
            if (puzzleOrder3 != null || puzzleOrder4 != null) {
                if (puzzleOrder3 != null) {
                    if (puzzleOrder4 != null) {
                        if (0.0d != 0.0d) {
                            if (0.0d < 0.0d) {
                                return -1;
                            }
                            return 1;
                        }
                        return 0;
                    }
                    return -1;
                }
                return 1;
            }
            return 0;
        }
    }

    public static boolean A(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (MainUri.q(str)) {
            try {
                if (MainUri.p(str)) {
                    if (!TextUtils.isEmpty(str) && context.getContentResolver().delete(Uri.parse(str), null, null) > 0) {
                        return true;
                    }
                } else if (!TextUtils.isEmpty(str)) {
                    return DocumentsContract.deleteDocument(context.getContentResolver(), Uri.parse(str));
                }
            } catch (Exception unused) {
            }
            return false;
        }
        return new File(str).delete();
    }

    public static String A0(String str, String str2, boolean z, boolean z2) {
        if (j5()) {
            if ((z || z2) && !TextUtils.isEmpty(str)) {
                if (c6(str)) {
                    return z0(str, z, z2);
                }
                if (!str.endsWith(".mp4") && !str.endsWith(".webm") && !str.endsWith(".m3u8") && !str.endsWith(".mov") && !str.endsWith(".flv") && !str.endsWith(".aac") && !str.endsWith(".mp3")) {
                    if (!TextUtils.isEmpty(str2) && !str2.endsWith("giphy.com") && !str2.endsWith("pornhub.com") && !str2.endsWith("imdb.com") && !str2.endsWith("wowhead.com")) {
                        if (z) {
                            if (k6(str2)) {
                                if (y6(str)) {
                                    return a.g(PrefWeb.N, "%);}';document.head.appendChild(ele);}}", new StringBuilder("if(document.head){if(!document.getElementById('sb_dark_style')){var ele=document.createElement('style');ele.id='sb_dark_style';ele.innerText='html,body{background:black !important;color:white !important;}div[class*=\"metadata\"],div[class*=\"comment\"],*[class=\"section\"]{color:white;}div[class*=\"text\"],div[class*=\"cbox\"],span[class*=\"title\"],button[class*=\"comment\"],button[class*=\"button\"]{color:#aaa;}ytm-badge,div[class*=\"comment-simplebox-input\"]{-webkit-filter:invert(1)hue-rotate(180deg);}img{-webkit-filter:brightness("));
                                }
                                return "if(document.head){if(!document.getElementById('sb_dark_style')){var ele=document.createElement('style');ele.id='sb_dark_style';ele.innerText='html,body{background:black !important;color:white !important;}div[class*=\"metadata\"],div[class*=\"comment\"],*[class=\"section\"]{color:white;}div[class*=\"text\"],div[class*=\"cbox\"],span[class*=\"title\"],button[class*=\"comment\"],button[class*=\"button\"]{color:#aaa;}ytm-badge,div[class*=\"comment-simplebox-input\"]{-webkit-filter:invert(1)hue-rotate(180deg);}';document.head.appendChild(ele);}}";
                            }
                            if (y6(str)) {
                                return a.g(PrefWeb.N, "%);}';document.head.appendChild(ele);}}", new StringBuilder("if(document.head){if(!document.getElementById('sb_dark_style')){var ele=document.createElement('style');ele.id='sb_dark_style';ele.innerText='html,img,video,iframe,canvas,*[style*=\"url(\"]{-webkit-filter:invert(1)hue-rotate(180deg);}img{-webkit-filter:brightness("));
                            }
                            return "if(document.head){if(!document.getElementById('sb_dark_style')){var ele=document.createElement('style');ele.id='sb_dark_style';ele.innerText='html,img,video,iframe,canvas,*[style*=\"url(\"]{-webkit-filter:invert(1)hue-rotate(180deg);}';document.head.appendChild(ele);}}";
                        }
                        return "var edk=document.getElementById('sb_dark_style');if(edk){document.head.removeChild(edk);}";
                    }
                    return z0(str, z, z2);
                }
                return z0(str, z, z2);
            }
            return null;
        }
        if (!TextUtils.isEmpty(str2)) {
            if (!TextUtils.isEmpty(str) && str.startsWith("https://www.amazon.")) {
                if (z) {
                    if (y6(str)) {
                        return a.g(PrefWeb.N, "%);}';document.head.appendChild(ele);}}", new StringBuilder("if(document.head){if(!document.getElementById('sb_dark_style')){var ele=document.createElement('style');ele.id='sb_dark_style';ele.innerText='span[class=\"a-button-inner\"]{background:black !important;color:white !important;}img{-webkit-filter:brightness("));
                    }
                    return "if(document.head){if(!document.getElementById('sb_dark_style')){var ele=document.createElement('style');ele.id='sb_dark_style';ele.innerText='span[class=\"a-button-inner\"]{background:black !important;color:white !important;}';document.head.appendChild(ele);}}";
                }
                if (z2) {
                    return "var edk=document.getElementById('sb_dark_style');if(edk){document.head.removeChild(edk);}";
                }
                return null;
            }
            if (str2.endsWith("fandom.com")) {
                if (z) {
                    if (y6(str)) {
                        return a.g(PrefWeb.N, "%);}';document.head.appendChild(ele);}}", new StringBuilder("if(document.head){if(!document.getElementById('sb_dark_style')){var ele=document.createElement('style');ele.id='sb_dark_style';ele.innerText='body{background:black !important;color:white !important;}p{color:white !important;}img{-webkit-filter:brightness("));
                    }
                    return "if(document.head){if(!document.getElementById('sb_dark_style')){var ele=document.createElement('style');ele.id='sb_dark_style';ele.innerText='body{background:black !important;color:white !important;}p{color:white !important;}';document.head.appendChild(ele);}}";
                }
                if (z2) {
                    return "var edk=document.getElementById('sb_dark_style');if(edk){document.head.removeChild(edk);}";
                }
                return null;
            }
            if (str2.endsWith("www.elektra.com.mx")) {
                if (z) {
                    if (y6(str)) {
                        return a.g(PrefWeb.N, "%);}';document.head.appendChild(ele);}}", new StringBuilder("if(document.head){if(!document.getElementById('sb_dark_style')){var ele=document.createElement('style');ele.id='sb_dark_style';ele.innerText='div[class*=\"imageContainer\"]{-webkit-filter:invert(1)hue-rotate(180deg);}img{-webkit-filter:brightness("));
                    }
                    return "if(document.head){if(!document.getElementById('sb_dark_style')){var ele=document.createElement('style');ele.id='sb_dark_style';ele.innerText='div[class*=\"imageContainer\"]{-webkit-filter:invert(1)hue-rotate(180deg);}';document.head.appendChild(ele);}}";
                }
                if (z2) {
                    return "var edk=document.getElementById('sb_dark_style');if(edk){document.head.removeChild(edk);}";
                }
                return null;
            }
            return z0(str, z, z2);
        }
        return null;
    }

    public static GlideUrl A1(Context context, String str, String str2) {
        String str3;
        String str4 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (v5(str2)) {
            str3 = null;
        } else {
            if (t5(str)) {
                str2 = str;
            }
            String u0 = u0(context, str2);
            if (TextUtils.isEmpty(str2)) {
                str2 = str;
            }
            str3 = u0;
            str4 = str2;
        }
        LazyHeaders.Builder builder = new LazyHeaders.Builder();
        builder.a("Accept", t0(str));
        builder.a("Accept-Encoding", "identity");
        builder.a("User-Agent", J0());
        if (!TextUtils.isEmpty(str4)) {
            builder.a("Referer", str4);
        }
        if (!TextUtils.isEmpty(str3)) {
            builder.a("Cookie", str3);
        }
        builder.f2294a = true;
        return new GlideUrl(str, new LazyHeaders(builder.b));
    }

    public static String A2(boolean z) {
        String str;
        if (MainApp.R1) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < 92; i++) {
                if (i == 90) {
                    if (PrefRead.O) {
                        str = "true;";
                    } else {
                        str = "false;";
                    }
                    sb.append(str);
                    if (!z) {
                        continue;
                    }
                }
                String areaJs = getAreaJs(i);
                if (TextUtils.isEmpty(areaJs)) {
                    return null;
                }
                sb.append(areaJs);
            }
            return sb.toString();
        }
        return null;
    }

    public static String A3(Context context, InputStream inputStream, boolean z) {
        BufferedReader bufferedReader;
        String str = null;
        if (inputStream != null && !TextUtils.isEmpty("UTF-8")) {
            try {
                if (z) {
                    bufferedReader = new BufferedReader(new InputStreamReader(new GZIPInputStream(inputStream), "UTF-8"));
                } else {
                    bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
                }
                StringBuilder sb = null;
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        if (!TextUtils.isEmpty(readLine)) {
                            if (sb == null) {
                                sb = new StringBuilder();
                            } else {
                                sb.append("\n");
                            }
                            sb.append(readLine);
                        }
                    } catch (Exception unused) {
                    } catch (OutOfMemoryError unused2) {
                        D6(context);
                    }
                }
                if (sb != null) {
                    str = sb.toString();
                }
            } catch (Exception unused3) {
                bufferedReader = null;
            } catch (OutOfMemoryError unused4) {
                bufferedReader = null;
            }
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (Exception unused5) {
                }
            }
            try {
                inputStream.close();
            } catch (Exception unused6) {
            }
        }
        return str;
    }

    public static boolean A4(Activity activity, String str) {
        if (activity != null && !TextUtils.isEmpty(str)) {
            try {
                Intent parseUri = Intent.parseUri(str, 1);
                if (parseUri == null) {
                    return false;
                }
                try {
                    parseUri.addCategory("android.intent.category.BROWSABLE");
                    parseUri.setComponent(null);
                    parseUri.setSelector(null);
                    parseUri.addFlags(268435456);
                    B4(activity, parseUri);
                    return true;
                } catch (Exception unused) {
                    String str2 = parseUri.getPackage();
                    if (!TextUtils.isEmpty(str2)) {
                        return Q4(activity, str2);
                    }
                }
            } catch (Exception unused2) {
            }
        }
        return false;
    }

    public static boolean A5(String str, String str2) {
        int length;
        if (str2 == null || (length = str2.length()) == 0 || !str2.endsWith("hitomi.la")) {
            return false;
        }
        return str.startsWith("/reader/", length);
    }

    public static boolean A6(int i) {
        if ((PrefZtwo.C & i) == i) {
            return true;
        }
        return false;
    }

    public static void A7(WebNestView webNestView, String str, String str2) {
        int lastIndexOf;
        int lastIndexOf2;
        int i;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && str.startsWith("http")) {
            if (str2.endsWith("pornhub.com")) {
                int length = str.length();
                String str3 = null;
                if (length != 0) {
                    int lastIndexOf3 = str.lastIndexOf(".mp4");
                    if (lastIndexOf3 == -1) {
                        lastIndexOf3 = str.lastIndexOf(".webm");
                    }
                    if (lastIndexOf3 > 0 && lastIndexOf3 <= length && (lastIndexOf = str.lastIndexOf(47, lastIndexOf3 - 1)) > 0 && lastIndexOf < lastIndexOf3 && (lastIndexOf2 = str.lastIndexOf(47, lastIndexOf - 1)) >= 0 && (i = lastIndexOf2 + 1) < lastIndexOf) {
                        str3 = str.substring(i, lastIndexOf);
                    }
                }
                if (!TextUtils.isEmpty(str3)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("var ele=document.querySelector(\"img[src*='");
                    sb.append(str3);
                    sb.append("'],img[data-src*='");
                    sb.append(str3);
                    sb.append("']\");if(ele){var par=ele.parentNode;if(par){android.onPhPstDet('");
                    a.z(sb, str3, "',ele.src,par.innerHTML);}else{android.onPstDet('", str3, "',ele.src,null);}}");
                    sb.insert(0, "(function(){");
                    sb.append("})();");
                    I(webNestView, sb.toString(), true);
                    return;
                }
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("var ele=document.querySelector(\"video[src*='");
            sb2.append(str);
            sb2.append("']\");if(!ele){ele=document.querySelector(\"source[src*='");
            sb2.append(str);
            sb2.append("']\");if(ele){ele=ele.parentNode;}}if(ele){android.onPstDet('");
            sb2.append(str);
            sb2.append("',ele.poster,null);}");
            sb2.insert(0, "(function(){");
            sb2.append("})();");
            I(webNestView, sb2.toString(), true);
        }
    }

    public static void B(Handler handler, Runnable runnable) {
        boolean z;
        try {
            z = WebViewFeature.a("DELETE_BROWSING_DATA");
        } catch (RuntimeException | Exception unused) {
            z = false;
        }
        if (!z) {
            if (handler != null) {
                handler.post(runnable);
                return;
            }
            return;
        }
        try {
            ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
            WebStorage webStorage = WebStorage.getInstance();
            if (WebViewFeatureInternal.o.d()) {
                new WebStorageAdapter((WebStorageBoundaryInterface) BoundaryInterfaceReflectionUtil.a(WebStorageBoundaryInterface.class, WebViewGlueCommunicator.b().f1820a.convertWebStorage(webStorage))).deleteBrowsingData(newCachedThreadPool, runnable);
                return;
            }
            throw WebViewFeatureInternal.a();
        } catch (Exception unused2) {
            if (handler != null) {
                handler.post(runnable);
            }
        } catch (NoSuchMethodError unused3) {
            if (handler != null) {
                handler.post(runnable);
            }
        }
    }

    public static JSONObject B0(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new JSONObject(str);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String B1(String str) {
        int indexOf;
        String substring;
        if (str == null) {
            return str;
        }
        int length = str.length();
        if (length != 0 && str.startsWith("https://www.google.com/") && (indexOf = str.indexOf("&url=http", 23)) >= 23 && indexOf + 9 < length) {
            int i = indexOf + 5;
            int i2 = indexOf + 9;
            int indexOf2 = str.indexOf(38, i2);
            if (indexOf2 > i2 && indexOf2 < length) {
                substring = str.substring(i, indexOf2);
            } else {
                substring = str.substring(i);
            }
            try {
                return URLDecoder.decode(substring, "UTF-8");
            } catch (Exception unused) {
                return substring;
            }
        }
        return str;
    }

    public static String B2(int i) {
        if (!MainApp.R1) {
            return null;
        }
        return getAreaMultiJs(i);
    }

    public static Bitmap B3(Context context, int i) {
        try {
            String num = Integer.toString(i);
            Bitmap n4 = n4(num);
            if (f6(n4)) {
                return n4;
            }
            Bitmap d = BitmapUtil.d(context.getResources(), i);
            V7(num, d);
            return d;
        } catch (Exception unused) {
            return null;
        }
    }

    public static void B4(Activity activity, Intent intent) {
        if (activity == null) {
            return;
        }
        intent.putExtra("EXTRA_SOUL", true);
        if (activity instanceof WebViewActivity) {
            WebViewActivity webViewActivity = (WebViewActivity) activity;
            webViewActivity.A9 = true;
            webViewActivity.startActivity(intent);
            webViewActivity.A9 = false;
            return;
        }
        activity.startActivity(intent);
    }

    public static boolean B5(RectF rectF, int i, int i2) {
        if (rectF != null) {
            float f = i;
            if (f >= rectF.left && f < rectF.right) {
                float f2 = i2;
                if (f2 >= rectF.top && f2 < rectF.bottom) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public static boolean B6(String str) {
        int length;
        if (str == null || (length = str.length()) < 8) {
            return false;
        }
        if (str.endsWith(".com")) {
            if (str.startsWith("m.vk", length - 8)) {
                return true;
            }
            if (length > 9 && str.startsWith("openai", length - 10)) {
                return true;
            }
        } else if (length >= 23 && str.endsWith("biharbhumi.bihar.gov.in")) {
            return true;
        }
        return false;
    }

    public static void B7(Activity activity, int i) {
        if (activity != null) {
            try {
                activity.setRequestedOrientation(i);
            } catch (IllegalStateException | Exception unused) {
            }
        }
    }

    public static void C(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        ViewParent parent;
        if (webView == null) {
            return;
        }
        try {
            if ((webView instanceof WebNestView) && (parent = webView.getParent()) != null && (parent instanceof WebNestFrame)) {
                WebNestFrame webNestFrame = (WebNestFrame) parent;
                WebNestView webNestView = (WebNestView) webView;
                boolean z = false;
                if (Build.VERSION.SDK_INT >= 26 && renderProcessGoneDetail != null) {
                    try {
                        z = renderProcessGoneDetail.didCrash();
                    } catch (Exception unused) {
                    }
                }
                webNestFrame.P(webNestView, !z);
                return;
            }
        } catch (Exception unused2) {
        }
        D(webView, renderProcessGoneDetail);
    }

    public static String C0(String str) {
        try {
            return DateFormat.getBestDateTimePattern(MainApp.j(), str);
        } catch (Exception unused) {
            return null;
        }
    }

    public static int C1(String str) {
        int length;
        int lastIndexOf;
        int i;
        String substring;
        int length2;
        if (!z5(str) || str == null || (length = str.length()) == 0 || (lastIndexOf = str.lastIndexOf(35)) < 0 || (i = lastIndexOf + 1) >= length || (substring = str.substring(i)) == null || (length2 = substring.length()) == 0) {
            return -1;
        }
        int indexOf = substring.indexOf(45);
        if (indexOf > 0 && indexOf + 1 <= length2) {
            substring = substring.substring(0, indexOf);
        }
        int G6 = G6(substring) - 1;
        if (G6 < 0) {
            return -1;
        }
        return G6;
    }

    public static String C2() {
        if (!MainApp.R1) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 2; i++) {
            String areaUpJs = getAreaUpJs(i);
            if (TextUtils.isEmpty(areaUpJs)) {
                return null;
            }
            sb.append(areaUpJs);
        }
        return sb.toString();
    }

    public static Bitmap C3(InputStream inputStream) {
        try {
            return H(new PictureDrawable(SVG.b(inputStream).d()), 0);
        } catch (Exception | OutOfMemoryError unused) {
            return null;
        }
    }

    public static Uri C4(int i, MainActivity mainActivity, boolean z) {
        String str;
        String str2;
        if (mainActivity != null) {
            try {
                String m0 = m0(mainActivity);
                if (!TextUtils.isEmpty(m0)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(m0);
                    if (z) {
                        str = ".mp4";
                    } else {
                        str = ".jpg";
                    }
                    sb.append(str);
                    Uri R3 = R3(mainActivity, sb.toString());
                    if (z) {
                        str2 = "android.media.action.VIDEO_CAPTURE";
                    } else {
                        str2 = "android.media.action.IMAGE_CAPTURE";
                    }
                    Intent intent = new Intent(str2);
                    intent.putExtra("output", R3);
                    intent.addFlags(3);
                    mainActivity.t0(intent, i);
                    return R3;
                }
            } catch (Exception unused) {
                e8(mainActivity, R.string.not_supported);
                return null;
            }
        }
        return null;
    }

    public static boolean C5(boolean z) {
        if (z && U4()) {
            return true;
        }
        return false;
    }

    public static boolean C6() {
        if (!MainConst.e) {
            return false;
        }
        return !PrefWeb.t;
    }

    public static void C7(AppCompatActivity appCompatActivity) {
        if (!V5(appCompatActivity) && X5(appCompatActivity)) {
            v7(appCompatActivity, 1);
        } else {
            u7(appCompatActivity);
        }
    }

    public static void D(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        if (webView != null) {
            final Context context = webView.getContext();
            boolean z = false;
            F(webView, false);
            MainApp p = MainApp.p(context);
            if (p != null) {
                p.e(1);
                p.e(0);
            }
            if (Build.VERSION.SDK_INT >= 26 && renderProcessGoneDetail != null) {
                try {
                    z = renderProcessGoneDetail.didCrash();
                } catch (Exception unused) {
                }
            }
            if (!z && context != null) {
                if (!isUiForeground(context)) {
                    quietKillProcess();
                    return;
                }
                MainApp.J(context, new Runnable() { // from class: com.mycompany.app.main.MainUtil.19
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainUtil.c7(context, null, false);
                    }
                });
            }
        }
    }

    public static String D0(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (Exception unused) {
            return null;
        }
    }

    public static String D1(String str, boolean z) {
        int i;
        if (z && TextUtils.isEmpty(str)) {
            return null;
        }
        int indexOf = str.indexOf("://");
        if (indexOf == -1) {
            int indexOf2 = str.indexOf(47);
            if (indexOf2 != -1) {
                if (indexOf2 > 0) {
                    return str.substring(0, indexOf2);
                }
                i = indexOf2 + 1;
            }
            return str;
        }
        i = indexOf + 3;
        if (i < str.length()) {
            int indexOf3 = str.indexOf(47, i);
            if (indexOf3 == -1) {
                return str.substring(i);
            }
            if (indexOf3 == i) {
                i++;
                if (i < str.length()) {
                    indexOf3 = str.indexOf(47, i);
                    if (indexOf3 == -1) {
                        return str.substring(i);
                    }
                }
            }
            if (indexOf3 <= i) {
                return str.substring(i);
            }
            return str.substring(i, indexOf3);
        }
        return str;
    }

    public static String D2(int i) {
        String str;
        boolean z = MainApp.R1;
        if (z) {
            if (!z) {
                str = null;
            } else {
                if (TextUtils.isEmpty(MainNative.f16825a)) {
                    MainNative.f16825a = getBackupTag();
                }
                str = MainNative.f16825a;
            }
            if (i == 0) {
                return str;
            }
            if (!TextUtils.isEmpty(str)) {
                return str + i;
            }
        }
        return null;
    }

    public static int D3(Context context) {
        int i;
        if (context == null) {
            return 90;
        }
        try {
            i = Settings.System.getInt(context.getContentResolver(), "screen_brightness", -1);
        } catch (ClassCastException | Exception unused) {
            i = -1;
        }
        if (i == -1) {
            return 90;
        }
        return Math.round((i / 255.0f) * 100.0f);
    }

    public static boolean D4(Activity activity, int i) {
        if (activity != null && ContextCompat.a(activity, "android.permission.CAMERA") != 0) {
            ActivityCompat.h(activity, new String[]{"android.permission.CAMERA"}, i);
            return true;
        }
        return false;
    }

    public static boolean D5(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("http://");
    }

    public static void D6(final Context context) {
        if (context != null) {
            try {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.mycompany.app.main.MainUtil.24
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainUtil.e8(context, R.string.out_of_memory);
                        MainApp.T1 = null;
                    }
                });
            } catch (Exception unused) {
            }
        }
    }

    public static void D7(Window window, int i) {
        if (Build.VERSION.SDK_INT >= 35 || window == null) {
            return;
        }
        window.setStatusBarColor(i);
    }

    public static void E(WebView webView) {
        if (webView != null) {
            try {
                if (webView instanceof WebNestView) {
                    ((WebNestView) webView).setDetached(true);
                }
            } catch (Exception unused) {
            }
            V6(webView);
            try {
                webView.setWebViewClient(null);
                webView.setWebChromeClient(null);
                webView.setDownloadListener(null);
            } catch (Exception unused2) {
            }
        }
    }

    public static SizeItem E0(Activity activity) {
        int i;
        int i2;
        int i3;
        int i4;
        if (activity == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT < 30) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            return new SizeItem(displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        int statusBars = WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars();
        WindowMetrics currentWindowMetrics = activity.getWindowManager().getCurrentWindowMetrics();
        Insets insetsIgnoringVisibility = currentWindowMetrics.getWindowInsets().getInsetsIgnoringVisibility(statusBars);
        Rect bounds = currentWindowMetrics.getBounds();
        int width = bounds.width();
        i = insetsIgnoringVisibility.left;
        int i5 = width - i;
        i2 = insetsIgnoringVisibility.right;
        int i6 = i5 - i2;
        int height = bounds.height();
        i3 = insetsIgnoringVisibility.top;
        i4 = insetsIgnoringVisibility.bottom;
        return new SizeItem(i6, (height - i3) - i4);
    }

    public static String E1(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            String Y6 = Y6(str);
            if (!TextUtils.isEmpty(Y6)) {
                String X3 = X3(Y6);
                if (TextUtils.isEmpty(X3) || Y6.equals(X3) || !Compress.D(W3(Y6, false))) {
                    return null;
                }
                if (str.startsWith("//")) {
                    if (str2.startsWith("https://")) {
                        return "https:".concat(str);
                    }
                    return "http:".concat(str);
                }
                return a.D(str2, "/", Y6);
            }
            return null;
        }
        return null;
    }

    public static String E2() {
        if (!MainApp.R1) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 34; i++) {
            String dcIdJs = getDcIdJs(i);
            if (TextUtils.isEmpty(dcIdJs)) {
                return null;
            }
            sb.append(dcIdJs);
        }
        return sb.toString();
    }

    public static int E3(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            return Settings.System.getInt(context.getContentResolver(), "screen_off_timeout", 0);
        } catch (ClassCastException | Exception unused) {
            return 0;
        }
    }

    public static boolean E4(Activity activity, String str, String str2) {
        int i;
        try {
            if (TextUtils.isEmpty(str)) {
                str = "com.android.chrome";
            }
            CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder();
            Intent intent = builder.f422a;
            builder.f423c = ActivityOptions.makeCustomAnimation(activity, R.anim.trans_in, R.anim.no_anim);
            intent.putExtra("android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE", ActivityOptionsCompat.a(activity, R.anim.no_anim, R.anim.trans_out).b());
            if (MainApp.L1) {
                i = 2;
            } else {
                i = 1;
            }
            intent.putExtra("androidx.browser.customtabs.extra.COLOR_SCHEME", i);
            builder.d = 2;
            intent.putExtra("android.support.customtabs.extra.SHARE_MENU_ITEM", false);
            intent.putExtra("android.support.customtabs.extra.ENABLE_URLBAR_HIDING", true);
            CustomTabsIntent a2 = builder.a();
            Intent intent2 = a2.f421a;
            intent2.setPackage(str);
            intent2.setData(Uri.parse(str2));
            activity.startActivity(intent2, a2.b);
            return true;
        } catch (ActivityNotFoundException unused) {
            e8(activity, R.string.apps_none);
            return false;
        } catch (Exception unused2) {
            e8(activity, R.string.not_supported);
            return false;
        }
    }

    public static boolean E5(MainActivity mainActivity) {
        if (mainActivity != null) {
            mainActivity.h0();
        }
        return PrefImage.v;
    }

    public static float E6(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0.0f;
        }
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException | Exception unused) {
            return 0.0f;
        }
    }

    public static void E7(Window window, View view, WindowInsetsControllerCompat windowInsetsControllerCompat, boolean z, boolean z2) {
        int i;
        int i2 = Build.VERSION.SDK_INT;
        if (window != null) {
            if (i2 < 30) {
                if (view != null || (view = window.getDecorView()) != null) {
                    int systemUiVisibility = view.getSystemUiVisibility();
                    if (z) {
                        i = systemUiVisibility & (-8193);
                    } else {
                        i = systemUiVisibility | 8192;
                    }
                    if (i2 >= 26) {
                        if (z2) {
                            i &= -17;
                        } else {
                            i |= 16;
                        }
                    }
                    view.setSystemUiVisibility(i);
                    return;
                }
                return;
            }
            boolean z3 = !z;
            boolean z4 = !z2;
            if (windowInsetsControllerCompat != null || (windowInsetsControllerCompat = r4(window, view)) != null) {
                if (windowInsetsControllerCompat.c() != z3) {
                    windowInsetsControllerCompat.e(z3);
                }
                if (windowInsetsControllerCompat.b() != z4) {
                    windowInsetsControllerCompat.d(z4);
                }
            }
        }
    }

    public static void F(final WebView webView, boolean z) {
        if (webView == null) {
            return;
        }
        E(webView);
        MainWebDestroy w = MainApp.w(webView.getContext());
        if (w != null) {
            w.b(webView);
        } else if (!z) {
            try {
                webView.destroy();
            } catch (Exception unused) {
            }
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.mycompany.app.main.MainUtil.20
                @Override // java.lang.Runnable
                public final void run() {
                    WebView webView2 = webView;
                    if (webView2 == null) {
                        return;
                    }
                    try {
                        webView2.destroy();
                    } catch (Exception unused2) {
                    }
                }
            });
        }
    }

    public static String F0(Context context) {
        int length;
        int indexOf;
        int i;
        int indexOf2;
        String str = MainApp.c2;
        if (TextUtils.isEmpty(str)) {
            d5(context);
            String str2 = MainApp.b2;
            str = null;
            if (str2 != null && (length = str2.length()) != 0 && (indexOf = str2.indexOf("Chrome/")) >= 0 && (i = indexOf + 7) < length && (indexOf2 = str2.indexOf(32, i)) > i && indexOf2 <= length) {
                str = str2.substring(i, indexOf2);
            }
            if (TextUtils.isEmpty(str)) {
                return "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36";
            }
            MainApp.c2 = str;
        }
        return a.l("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/", str, " Safari/537.36");
    }

    public static String F1(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (str.startsWith("//")) {
                if (str2.startsWith("https://")) {
                    return "https:".concat(str);
                }
                return "http:".concat(str);
            }
            String Y6 = Y6(str);
            if (!TextUtils.isEmpty(Y6)) {
                return a.D(str2, "/", Y6);
            }
            return null;
        }
        return null;
    }

    public static String F2() {
        if (!MainApp.R1) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 40; i++) {
            String dcJs = getDcJs(i);
            if (TextUtils.isEmpty(dcJs)) {
                return null;
            }
            sb.append(dcJs);
        }
        return sb.toString();
    }

    public static String F3(String str, String str2) {
        long currentTimeMillis = System.currentTimeMillis();
        String y1 = y1(currentTimeMillis, str, "yyyyMMdd");
        String y12 = y1(currentTimeMillis, str2, "kkmmss");
        Pattern compile = Pattern.compile("\\p{Punct}");
        return compile.matcher(y1).replaceAll(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).replace(" ", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED) + "_" + compile.matcher(y12).replaceAll(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).replace(" ", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED) + "_" + String.format(Locale.US, "%03d", Long.valueOf(currentTimeMillis % 1000));
    }

    public static boolean F4(MainActivity mainActivity, String str) {
        if (mainActivity != null) {
            try {
                Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
                if (Build.VERSION.SDK_INT >= 26 && !TextUtils.isEmpty(str)) {
                    intent.putExtra("android.provider.extra.INITIAL_URI", Uri.parse(str));
                }
                mainActivity.t0(intent, 19);
                return true;
            } catch (ActivityNotFoundException unused) {
                e8(mainActivity, R.string.apps_none);
                return false;
            } catch (Exception unused2) {
                e8(mainActivity, R.string.not_supported);
                return false;
            }
        }
        return false;
    }

    public static boolean F5(boolean z) {
        if (z) {
            return PrefImage.w;
        }
        return PrefImage.v;
    }

    public static float F6(String str, float f) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Float.parseFloat(str);
            } catch (NumberFormatException | Exception unused) {
                return f;
            }
        }
        return f;
    }

    public static void F7(Window window, boolean z, boolean z2) {
        WindowManager.LayoutParams attributes;
        int i;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 35 && i2 >= 28 && window != null && (attributes = window.getAttributes()) != null) {
            int i3 = 0;
            if (i2 >= 28) {
                if (!MainConst.d) {
                    if (!z && z2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                }
                if (z2) {
                    i3 = 1;
                }
            }
            i = attributes.layoutInDisplayCutoutMode;
            if (i != i3) {
                attributes.layoutInDisplayCutoutMode = i3;
                window.setAttributes(attributes);
            }
        }
    }

    public static float G(Context context, float f) {
        if (context == null) {
            return 0.0f;
        }
        return f * context.getResources().getDisplayMetrics().density;
    }

    public static String G0(Context context, String str) {
        if (context != null) {
            File file = new File(context.getFilesDir(), str);
            if (!file.isDirectory() && !file.mkdir()) {
                return null;
            }
            return file.getPath();
        }
        return null;
    }

    public static String G1(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return null;
        }
        if (length > 4 && str.startsWith("www.")) {
            return str.substring(4);
        }
        if (length > 2 && str.startsWith(".", 1)) {
            return str.substring(2);
        }
        if (length > 7 && str.startsWith("mobile.")) {
            return str.substring(7);
        }
        return str;
    }

    public static String G2(int i) {
        if (!MainApp.R1) {
            return null;
        }
        return getGoogleLens(i);
    }

    public static int G3() {
        if (TextUtils.isEmpty(PrefMain.D)) {
            return 0;
        }
        return PrefPdf.A;
    }

    public static boolean G4(MainActivity mainActivity, String str, String str2, String str3, String str4, String str5, String str6) {
        if (!TextUtils.isEmpty(str) && str.startsWith("isCustomTab:")) {
            return E4(mainActivity, str.substring(12), str3);
        }
        if (TextUtils.isEmpty(str6)) {
            str6 = "*/*";
        }
        if (H4(mainActivity, str, str2, str3, str4, str5, str6)) {
            return true;
        }
        return H4(mainActivity, str, str2, str3, str4, str5, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0068 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean G5(android.content.Context r5, java.lang.String r6) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 28
            if (r0 < r2) goto L3a
            boolean r0 = com.mycompany.app.main.MainUri.q(r6)     // Catch: java.lang.Exception -> L39
            if (r0 == 0) goto L21
            android.content.ContentResolver r5 = r5.getContentResolver()     // Catch: java.lang.Exception -> L39
            android.net.Uri r6 = android.net.Uri.parse(r6)     // Catch: java.lang.Exception -> L39
            android.graphics.ImageDecoder$Source r5 = android.graphics.ImageDecoder.createSource(r5, r6)     // Catch: java.lang.Exception -> L39
            goto L2a
        L21:
            java.io.File r5 = new java.io.File     // Catch: java.lang.Exception -> L39
            r5.<init>(r6)     // Catch: java.lang.Exception -> L39
            android.graphics.ImageDecoder$Source r5 = android.graphics.ImageDecoder.createSource(r5)     // Catch: java.lang.Exception -> L39
        L2a:
            if (r5 != 0) goto L2d
            return r1
        L2d:
            android.graphics.drawable.Drawable r5 = android.graphics.ImageDecoder.decodeDrawable(r5)     // Catch: java.lang.Exception -> L39
            if (r5 != 0) goto L34
            return r1
        L34:
            boolean r5 = com.google.common.net.a.h(r5)     // Catch: java.lang.Exception -> L39
            return r5
        L39:
            return r1
        L3a:
            r5 = 0
            java.io.InputStream r6 = a1(r6)     // Catch: java.lang.Exception -> L64
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Exception -> L62
            r0.<init>()     // Catch: java.lang.Exception -> L62
            r5 = 8192(0x2000, float:1.148E-41)
            byte[] r2 = new byte[r5]     // Catch: java.lang.Exception -> L53
        L48:
            int r3 = r6.read(r2, r1, r5)     // Catch: java.lang.Exception -> L53
            r4 = -1
            if (r3 == r4) goto L55
            r0.write(r2, r1, r3)     // Catch: java.lang.Exception -> L53
            goto L48
        L53:
            r5 = r6
            goto L65
        L55:
            byte[] r5 = r0.toByteArray()     // Catch: java.lang.Exception -> L53
            int r2 = r5.length     // Catch: java.lang.Exception -> L53
            android.graphics.Movie r5 = android.graphics.Movie.decodeByteArray(r5, r1, r2)     // Catch: java.lang.Exception -> L53
            if (r5 == 0) goto L66
            r1 = 1
            goto L66
        L62:
            r0 = r5
            goto L53
        L64:
            r0 = r5
        L65:
            r6 = r5
        L66:
            if (r0 == 0) goto L6b
            r0.close()     // Catch: java.lang.Exception -> L6b
        L6b:
            if (r6 == 0) goto L70
            r6.close()     // Catch: java.lang.Exception -> L70
        L70:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.G5(android.content.Context, java.lang.String):boolean");
    }

    public static int G6(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException | Exception unused) {
            return 0;
        }
    }

    public static void G7(Window window, View view, boolean z, boolean z2, boolean z3, boolean z4) {
        WindowManager.LayoutParams attributes;
        int i;
        int i2;
        int i3;
        if (window != null) {
            if ((view == null && (view = window.getDecorView()) == null) || (attributes = window.getAttributes()) == null) {
                return;
            }
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 28) {
                int i5 = 0;
                if (i4 >= 28) {
                    if (!MainConst.d) {
                        if (!z && z4) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                    }
                    if (z4) {
                        i5 = 1;
                    }
                }
                attributes.layoutInDisplayCutoutMode = i5;
            }
            int systemUiVisibility = view.getSystemUiVisibility();
            if (z) {
                int i6 = attributes.flags;
                int i7 = i6 & (-1025);
                attributes.flags = i7;
                i = systemUiVisibility & (-5);
                if (z3) {
                    attributes.flags = 67108864 | i7;
                } else {
                    attributes.flags = i6 & (-67109889);
                }
            } else {
                i = systemUiVisibility | 4;
                attributes.flags |= 67109888;
            }
            if (z2) {
                int i8 = attributes.flags;
                attributes.flags = i8;
                i2 = i & (-4099);
                if (z3) {
                    attributes.flags = 134217728 | i8;
                } else {
                    attributes.flags = (-134217729) & i8;
                }
            } else {
                i2 = i | 4098;
                attributes.flags = 134217728 | attributes.flags;
            }
            if (z3) {
                i3 = i2 | 1;
            } else {
                i3 = i2 & (-2);
            }
            window.setAttributes(attributes);
            view.setSystemUiVisibility(i3);
        }
    }

    public static Bitmap H(Drawable drawable, int i) {
        if (drawable == null) {
            return null;
        }
        try {
            int i2 = 1;
            if (drawable instanceof BitmapDrawable) {
                Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                if (f6(bitmap)) {
                    if (i > 0) {
                        int width = bitmap.getWidth();
                        int height = bitmap.getHeight();
                        if (width > i || height > i) {
                            float min = Math.min(width, height) / i;
                            int round = Math.round(width / min);
                            int round2 = Math.round(height / min);
                            if (round == 0) {
                                round = 1;
                            }
                            if (round2 != 0) {
                                i2 = round2;
                            }
                            Bitmap k3 = k3(round, i2, bitmap);
                            if (f6(k3)) {
                                return k3;
                            }
                        }
                    }
                    return bitmap;
                }
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                if (i > 0 && (intrinsicWidth > i || intrinsicHeight > i)) {
                    float min2 = Math.min(intrinsicWidth, intrinsicHeight) / i;
                    int round3 = Math.round(intrinsicWidth / min2);
                    int round4 = Math.round(intrinsicHeight / min2);
                    if (round3 == 0) {
                        round3 = 1;
                    }
                    if (round4 != 0) {
                        i2 = round4;
                    }
                    intrinsicWidth = round3;
                } else {
                    i2 = intrinsicHeight;
                }
                Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, i2, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                drawable.setBounds(0, 0, intrinsicWidth, i2);
                drawable.draw(canvas);
                return createBitmap;
            }
        } catch (Exception | OutOfMemoryError unused) {
        }
        return null;
    }

    public static String H0(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        if (str != null && !"file:///android_asset/shortcut.html".equals(str)) {
            sb.append(str);
            sb.append("\n\n");
        }
        sb.append("-- App ");
        sb.append(c4(context));
        sb.append(", Android ");
        sb.append(Build.VERSION.RELEASE);
        int i = MainApp.M1;
        if (i == 1) {
            sb.append(". --\n\n");
        } else if (i == 2) {
            sb.append(" --\n\n");
        } else {
            sb.append(".. --\n\n");
        }
        return sb.toString();
    }

    public static String H1(String str, boolean z) {
        String G1 = G1(I1(str, z));
        if (TextUtils.isEmpty(G1)) {
            return str;
        }
        return G1;
    }

    public static String H2(int i, String str) {
        if (!MainApp.R1 || TextUtils.isEmpty(str)) {
            return null;
        }
        String searchImage = getSearchImage(i);
        if (TextUtils.isEmpty(searchImage)) {
            return null;
        }
        try {
            String encode = URLEncoder.encode(str, "UTF-8");
            if (!TextUtils.isEmpty(encode)) {
                str = encode;
            }
        } catch (Exception unused) {
        }
        return a.k(searchImage, str);
    }

    public static int H3() {
        int i = 0;
        if (PrefPdf.z) {
            int i2 = PrefWeb.x;
            if (i2 != 1 && i2 != 2) {
                return 0;
            }
            return PrefPdf.F;
        }
        int G3 = G3();
        int i3 = PrefWeb.x;
        if (i3 == 1 || i3 == 2) {
            i = PrefPdf.F;
        }
        return i + G3;
    }

    public static boolean H4(MainActivity mainActivity, String str, String str2, String str3, String str4, String str5, String str6) {
        String str7;
        String str8;
        if (mainActivity != null && !TextUtils.isEmpty(str3)) {
            try {
                Intent intent = new Intent();
                intent.setComponent(new ComponentName(str, str2));
                if (!TextUtils.isEmpty(str6)) {
                    intent.setDataAndType(Uri.parse(str3), str6);
                } else {
                    intent.setData(Uri.parse(str3));
                }
                if (str.startsWith("idm")) {
                    if (v5(str4)) {
                        str8 = null;
                        str7 = null;
                    } else {
                        if (t5(str3)) {
                            str4 = str3;
                        }
                        String u0 = u0(mainActivity, str4);
                        if (!TextUtils.isEmpty(str4)) {
                            str3 = str4;
                        }
                        str7 = u0;
                        str8 = str3;
                    }
                    if (!TextUtils.isEmpty(str5)) {
                        intent.putExtra("extra_filename", str5);
                    }
                    intent.putExtra("extra_useragent", J0());
                    if (!TextUtils.isEmpty(str8)) {
                        intent.putExtra("extra_referer", str8);
                    }
                    if (!TextUtils.isEmpty(str7)) {
                        intent.putExtra("extra_cookies", str7);
                    }
                }
                mainActivity.startActivity(intent);
                return true;
            } catch (ActivityNotFoundException unused) {
                if (TextUtils.isEmpty(str6)) {
                    e8(mainActivity, R.string.apps_none);
                    return false;
                }
                return false;
            } catch (Exception unused2) {
                if (TextUtils.isEmpty(str6)) {
                    e8(mainActivity, R.string.not_supported);
                    return false;
                }
                return false;
            }
        }
        return false;
    }

    public static boolean H5(MainActivity mainActivity) {
        if (mainActivity != null) {
            mainActivity.h0();
        }
        return PrefImage.x;
    }

    public static int H6(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException | Exception unused) {
                return -1;
            }
        }
        return -1;
    }

    public static void H7(Window window) {
        int i = Build.VERSION.SDK_INT;
        if (i < 35 && i >= 30 && window != null) {
            if (x3(window) != 1862270976) {
                D7(window, 1862270976);
            }
            if (O2(window) != 1862270976) {
                t7(window, 1862270976);
            }
        }
    }

    public static void I(WebView webView, String str, boolean z) {
        if (!PrefWeb.H) {
            return;
        }
        J(webView, str, z);
    }

    public static float I0(float f, float f2, float f3, float f4) {
        float f5 = f - f2;
        float f6 = f3 - f4;
        return (float) Math.sqrt((f6 * f6) + (f5 * f5));
    }

    public static String I1(String str, boolean z) {
        if (!z || !TextUtils.isEmpty(str)) {
            int i = 8;
            if (!str.startsWith("https://")) {
                if (!str.startsWith("http://")) {
                    if (!str.startsWith("file:///")) {
                        if (!str.startsWith("file://")) {
                            if (str.startsWith("data:")) {
                                return null;
                            }
                            return Uri.parse(str).getHost();
                        }
                    }
                }
                i = 7;
            }
            if (i < str.length()) {
                int indexOf = str.indexOf(47, i);
                if (indexOf <= i) {
                    return str.substring(i);
                }
                return str.substring(i, indexOf);
            }
            return null;
        }
        return null;
    }

    public static String I2(int i) {
        if (!MainApp.R1) {
            return null;
        }
        return getSnsJs1(i);
    }

    public static File I3(File file) {
        if (!file.isDirectory()) {
            return file;
        }
        File[] listFiles = file.listFiles();
        File file2 = null;
        if (listFiles != null && listFiles.length != 0) {
            long j = 0;
            for (File file3 : listFiles) {
                if (file3.isDirectory()) {
                    file3 = I3(file3);
                }
                if (file3 != null) {
                    long length = file3.length();
                    if (length > j) {
                        file2 = file3;
                        j = length;
                    }
                }
            }
        }
        return file2;
    }

    public static boolean I4(Activity activity, String str) {
        ResolveInfo resolveInfo;
        List<ResolveInfo> queryIntentActivities;
        if (activity == null) {
            return false;
        }
        String B1 = B1(str);
        if (TextUtils.isEmpty(B1)) {
            return false;
        }
        int i = Build.VERSION.SDK_INT;
        if (i < 30) {
            if (!TextUtils.isEmpty(B1)) {
                try {
                    Intent parseUri = Intent.parseUri(B1, 1);
                    PackageManager packageManager = activity.getPackageManager();
                    if (packageManager != null) {
                        List<ResolveInfo> list = null;
                        try {
                            if (i >= 33) {
                                resolveInfo = packageManager.resolveActivity(parseUri, PackageManager.ResolveInfoFlags.of(0L));
                            } else {
                                resolveInfo = packageManager.resolveActivity(parseUri, 0);
                            }
                        } catch (Exception unused) {
                            resolveInfo = null;
                        }
                        if (resolveInfo == null) {
                            return false;
                        }
                        String str2 = resolveInfo.activityInfo.packageName;
                        if (TextUtils.isEmpty(str2) || (!str2.equals("android") && !str2.equals("com.mycompany.app.soulbrowser") && !str2.contains("chrome"))) {
                            parseUri.addCategory("android.intent.category.BROWSABLE");
                            parseUri.setComponent(null);
                            parseUri.setSelector(null);
                            try {
                                if (Build.VERSION.SDK_INT >= 33) {
                                    queryIntentActivities = packageManager.queryIntentActivities(parseUri, PackageManager.ResolveInfoFlags.of(64L));
                                } else {
                                    queryIntentActivities = packageManager.queryIntentActivities(parseUri, 64);
                                }
                                list = queryIntentActivities;
                            } catch (Exception unused2) {
                            }
                            if (list != null && !list.isEmpty()) {
                                Iterator<ResolveInfo> it = list.iterator();
                                while (it.hasNext()) {
                                    IntentFilter intentFilter = it.next().filter;
                                    if (intentFilter != null && (intentFilter.countDataAuthorities() != 0 || intentFilter.countDataPaths() != 0)) {
                                        return activity.startActivityIfNeeded(parseUri, -1);
                                    }
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                } catch (Exception unused3) {
                    return false;
                }
            }
            return false;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(B1));
            intent.addCategory("android.intent.category.BROWSABLE");
            intent.setFlags(268436992);
            B4(activity, intent);
            return true;
        } catch (Exception unused4) {
            return false;
        }
    }

    public static boolean I5(boolean z) {
        if (z) {
            return PrefImage.y;
        }
        return PrefImage.x;
    }

    public static long I6(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException | Exception unused) {
            return 0L;
        }
    }

    public static void I7(Window window, View view, WindowInsetsControllerCompat windowInsetsControllerCompat, boolean z, boolean z2) {
        if (Build.VERSION.SDK_INT >= 30 && window != null) {
            if (windowInsetsControllerCompat == null && (windowInsetsControllerCompat = r4(window, view)) == null) {
                return;
            }
            if (z) {
                windowInsetsControllerCompat.g(1);
            } else {
                windowInsetsControllerCompat.a(1);
            }
            if (z2) {
                windowInsetsControllerCompat.g(2);
            } else {
                windowInsetsControllerCompat.a(2);
            }
        }
    }

    public static void J(final WebView webView, final String str, boolean z) {
        MainWebDestroy mainWebDestroy;
        if (webView != null && str != null) {
            if (!z) {
                webView.evaluateJavascript(str, null);
                return;
            }
            if ((webView instanceof WebNestView) && (mainWebDestroy = ((WebNestView) webView).u1) != null) {
                mainWebDestroy.h = true;
            }
            webView.post(new Runnable() { // from class: com.mycompany.app.main.MainUtil.21
                @Override // java.lang.Runnable
                public final void run() {
                    webView.evaluateJavascript(str, null);
                }
            });
        }
    }

    public static String J0() {
        String str = PrefZtwo.n;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        return "Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Soul/4.0 Chrome/131.0.0.0 Mobile Safari/537.36";
    }

    public static String J1(String str, boolean z) {
        if (!z || !TextUtils.isEmpty(str)) {
            int i = 8;
            if (!str.startsWith("https://")) {
                if (!str.startsWith("http://")) {
                    if (!str.startsWith("file:///")) {
                        if (!str.startsWith("file://")) {
                            i = 0;
                        }
                    }
                }
                i = 7;
            }
            if (i != 0 && i < str.length()) {
                int indexOf = str.indexOf(47, i);
                if (indexOf == -1) {
                    return str;
                }
                if (indexOf > i) {
                    return str.substring(0, indexOf);
                }
                return null;
            }
            return null;
        }
        return null;
    }

    public static String J2(int i) {
        if (!MainApp.R1) {
            return null;
        }
        return getSnsJs2(i);
    }

    public static StringBuilder J3(String str) {
        if (MainApp.R1 && !TextUtils.isEmpty(str)) {
            String c2 = MainNative.c();
            if (!TextUtils.isEmpty(c2)) {
                String d = MainNative.d();
                if (TextUtils.isEmpty(d)) {
                    return null;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("var gtb=document.querySelector('");
                sb.append(c2);
                sb.append("');if(gtb){var gte=");
                sb.append(d);
                sb.append(".querySelector(\"[id*='");
                sb.append(str);
                sb.append("']\");if(gte){gte.click();}}");
                return sb;
            }
            return null;
        }
        return null;
    }

    public static boolean J4(MainActivity mainActivity, int i, boolean z, int i2) {
        String str;
        if (mainActivity != null) {
            if (i == 4) {
                str = "image/*";
            } else if (i == 5) {
                str = "video/*";
            } else if (i == 6) {
                str = "audio/*";
            } else if (i == 7) {
                str = "text/*";
            } else {
                str = null;
            }
            if (TextUtils.isEmpty(str)) {
                str = "*/*";
            }
            try {
                Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                intent.addCategory("android.intent.category.OPENABLE");
                intent.setType(str);
                intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", z);
                intent.addFlags(65);
                mainActivity.t0(intent, i2);
                return true;
            } catch (ActivityNotFoundException | Exception unused) {
                return false;
            }
        }
        return false;
    }

    public static boolean J5(int i, int i2, int i3, View view) {
        if (view != null) {
            if (MainApp.d2 == null) {
                MainApp.d2 = new int[2];
            }
            int[] iArr = MainApp.d2;
            view.getLocationOnScreen(iArr);
            int i4 = iArr[0];
            int i5 = iArr[1];
            int width = view.getWidth() + i4;
            int height = view.getHeight() + i5;
            if (i3 != 0) {
                i4 -= i3;
                width += i3;
                i5 -= i3;
                height += i3;
            }
            if (i4 < width && i5 < height && i >= i4 && i < width && i2 >= i5 && i2 < height) {
                return true;
            }
        }
        return false;
    }

    public static int J6(String str) {
        int length;
        if (str != null && (length = str.length()) != 0) {
            if (length == 3 && "btc".equals(str)) {
                if (!MainApp.K1) {
                    return -16777216;
                }
            } else {
                try {
                    if (str.charAt(0) == '#') {
                        int indexOf = str.indexOf(44);
                        if (indexOf == 4 || indexOf == 7) {
                            String substring = str.substring(0, indexOf);
                            if (!TextUtils.isEmpty(substring)) {
                                length = substring.length();
                                str = substring;
                            }
                        }
                        if (length == 4) {
                            String substring2 = str.substring(1, 2);
                            String substring3 = str.substring(2, 3);
                            String substring4 = str.substring(3, 4);
                            str = "#" + substring2 + substring2 + substring3 + substring3 + substring4 + substring4;
                        }
                    } else if (str.startsWith("rgb")) {
                        if (str.startsWith("a(", 3)) {
                            String[] split2 = str.substring(5, length - 1).split(",");
                            if (split2 != null && split2.length == 4) {
                                int rgb = Color.rgb(G6(split2[0].trim()), G6(split2[1].trim()), G6(split2[2].trim()));
                                if ((!MainApp.K1 || rgb != -16777216) && !P5(rgb)) {
                                    return rgb;
                                }
                            }
                        } else if (str.startsWith("(", 3)) {
                            String[] split3 = str.substring(4, length - 1).split(",");
                            if (split3 != null && split3.length == 3) {
                                int rgb2 = Color.rgb(G6(split3[0].trim()), G6(split3[1].trim()), G6(split3[2].trim()));
                                if ((!MainApp.K1 || rgb2 != -16777216) && !P5(rgb2)) {
                                    return rgb2;
                                }
                            }
                        }
                    } else if (str.startsWith("hsl(")) {
                        String[] split4 = str.substring(4, length - 1).split(",");
                        if (split4 != null && split4.length == 3) {
                            String trim = split4[1].trim();
                            if (trim.endsWith("%")) {
                                trim = trim.substring(0, trim.length() - 1);
                            }
                            String trim2 = split4[2].trim();
                            if (trim2.endsWith("%")) {
                                trim2 = trim2.substring(0, trim2.length() - 1);
                            }
                            int a2 = ColorUtils.a(new float[]{G6(split4[0].trim()), E6(trim), E6(trim2)});
                            if ((!MainApp.K1 || a2 != -16777216) && !P5(a2)) {
                                return a2;
                            }
                        }
                    }
                    int parseColor = Color.parseColor(str);
                    if ((!MainApp.K1 || parseColor != -16777216) && !P5(parseColor)) {
                        return parseColor;
                    }
                } catch (Exception unused) {
                }
            }
        }
        return 0;
    }

    public static void J7(Window window, View view, WindowInsetsControllerCompat windowInsetsControllerCompat, boolean z, boolean z2) {
        if (Build.VERSION.SDK_INT >= 30 && window != null) {
            if (windowInsetsControllerCompat != null || (windowInsetsControllerCompat = r4(window, view)) != null) {
                if (z && z2) {
                    return;
                }
                windowInsetsControllerCompat.f();
            }
        }
    }

    public static void K(Context context, boolean z, boolean z2) {
        MainApp p;
        try {
            NotificationManager q = MainApp.q(context);
            if (q != null) {
                if (z) {
                    q.cancel(2147483642);
                }
                q.cancel(2147483641);
                q.cancel(2147483639);
            }
            if (PrefTts.s) {
                PrefTts.s = false;
                PrefSet.g(12, context, "mCheckBack", false);
            }
            if (z2 && PrefTts.y && (p = MainApp.p(context)) != null) {
                VpnSvc vpnSvc = p.I;
                if (vpnSvc != null) {
                    VpnAdapter vpnAdapter = vpnSvc.g;
                    if (vpnAdapter != null) {
                        vpnSvc.h = 0;
                        vpnAdapter.a();
                        vpnSvc.g = null;
                        if (vpnSvc.i) {
                            vpnSvc.i = false;
                            Context applicationContext = vpnSvc.getApplicationContext();
                            if (applicationContext != null) {
                                NotificationManager q2 = MainApp.q(applicationContext);
                                if (q2 != null) {
                                    q2.cancel(2147483640);
                                }
                                vpnSvc.setUnderlyingNetworks(null);
                            }
                        }
                        vpnSvc.stopSelf();
                    }
                    p.I = null;
                }
                p.J = false;
            }
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator, java.lang.Object] */
    public static String K0(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            return G0(context, ".down") + "/" + new Object().a(str);
        }
        return null;
    }

    public static String K1(String str, boolean z) {
        int length;
        String H1 = H1(str, z);
        if (H1 == null || (length = H1.length()) == 0) {
            return str;
        }
        int lastIndexOf = H1.lastIndexOf(46);
        if (lastIndexOf > 0 && lastIndexOf < length && length - lastIndexOf < 5) {
            int lastIndexOf2 = H1.lastIndexOf(46, lastIndexOf - 1);
            if (lastIndexOf2 > 0 && lastIndexOf2 < lastIndexOf && lastIndexOf - lastIndexOf2 < 4) {
                lastIndexOf = lastIndexOf2;
            }
            String substring = H1.substring(0, lastIndexOf);
            if (!TextUtils.isEmpty(substring)) {
                H1 = substring;
            }
        }
        String r1 = r1(H1);
        if (!TextUtils.isEmpty(r1)) {
            return r1;
        }
        return H1;
    }

    public static String K2(int i) {
        if (!MainApp.R1) {
            return null;
        }
        return getSnsUrl(i);
    }

    public static String K3(String str) {
        int length;
        int indexOf;
        int i;
        if (str == null || (length = str.length()) < 5 || (indexOf = str.indexOf(45)) <= 0 || (i = indexOf + 1) >= length) {
            return "-";
        }
        String substring = str.substring(0, i);
        if (TextUtils.isEmpty(substring)) {
            return "-";
        }
        return substring;
    }

    public static boolean K4(int i, MainActivity mainActivity, boolean z) {
        if (mainActivity != null) {
            try {
                Intent intent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
                intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", z);
                intent.addFlags(65);
                mainActivity.t0(intent, i);
                return true;
            } catch (ActivityNotFoundException | Exception unused) {
                return false;
            }
        }
        return false;
    }

    public static boolean K5(String str) {
        int length;
        int indexOf;
        String J1 = J1(str, true);
        if (J1 == null || (length = J1.length()) == 0) {
            return false;
        }
        int i = length + 1;
        int length2 = str.length();
        if (i >= length2 || (indexOf = str.indexOf(47, i)) == -1 || indexOf + 1 == length2) {
            return true;
        }
        return false;
    }

    public static float K6(Context context, float f) {
        if (context == null) {
            return 0.0f;
        }
        float f2 = context.getResources().getDisplayMetrics().density;
        if (Float.compare(f2, 0.0f) == 0) {
            return f;
        }
        return f / f2;
    }

    public static void K7(Activity activity, boolean z) {
        Resources resources;
        boolean z2 = true;
        if (z) {
            MainApp.K1 = true;
            return;
        }
        if (!PrefWeb.J ? PrefWeb.K != 1 : activity == null || (resources = activity.getResources()) == null || (resources.getConfiguration().uiMode & 48) != 32) {
            z2 = false;
        }
        MainApp.K1 = z2;
    }

    public static AnimatorSet L(View view, View view2) {
        if (view != null && view2 != null) {
            view.setVisibility(0);
            view2.setScaleX(0.0f);
            view2.setVisibility(0);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.0f);
            ofFloat.setInterpolator(new AccelerateInterpolator());
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view2, "scaleX", 0.0f, 1.0f);
            ofFloat2.setInterpolator(new DecelerateInterpolator());
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(200L);
            animatorSet.playSequentially(ofFloat, ofFloat2);
            animatorSet.start();
            return animatorSet;
        }
        return null;
    }

    public static MainUri.UriItem L0(Context context, MainDownSvc.DownItem downItem) {
        MainUri.UriItem uriItem;
        if (downItem != null && (uriItem = downItem.n) != null) {
            try {
                String str = uriItem.f;
                if ("jpg".equals(W0(str)) && !"jpg".equals(W0(V3(downItem.f, null, null, true))) && G5(context, downItem.l)) {
                    MainUri.UriItem c2 = MainUri.c(context, PrefPath.t(context), null, k1(str) + ".gif");
                    if (c2 != null) {
                        if (w6(context, downItem.l, c2.e)) {
                            return c2;
                        }
                        A(context, c2.e);
                    }
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String L1(String str) {
        return "https://" + I1(str, true) + "/" + g2();
    }

    public static String L2() {
        boolean z = MainApp.R1;
        if (!z || !z) {
            return null;
        }
        if (TextUtils.isEmpty(MainNative.n)) {
            MainNative.n = getTransCsp();
        }
        return MainNative.n;
    }

    public static String L3(String str) {
        int length;
        int indexOf;
        int i;
        int i2;
        if (str == null || (length = str.length()) == 0 || (indexOf = str.indexOf("googtrans")) == -1 || (i = indexOf + 10) >= length) {
            return null;
        }
        int indexOf2 = str.indexOf(59, i);
        if (indexOf2 == -1) {
            if (str.endsWith("\"")) {
                length--;
            }
        } else {
            length = indexOf2;
        }
        int lastIndexOf = str.lastIndexOf(47, length);
        if (lastIndexOf == -1 || (i2 = lastIndexOf + 1) >= length) {
            return null;
        }
        if (!TextUtils.isEmpty(PrefAlbum.z) && PrefAlbum.z.length() == length - i2 && str.startsWith(PrefAlbum.z, i2)) {
            return null;
        }
        return str.substring(i2, length);
    }

    public static boolean L4(MainActivity mainActivity, int i, boolean z, int i2) {
        String str;
        if (mainActivity != null) {
            if (i == 4) {
                str = "image/*";
            } else if (i == 5) {
                str = "video/*";
            } else if (i == 6) {
                str = "audio/*";
            } else if (i == 7) {
                str = "text/*";
            } else {
                str = null;
            }
            try {
                Intent intent = new Intent("android.provider.action.PICK_IMAGES");
                if (!TextUtils.isEmpty(str)) {
                    intent.setType(str);
                }
                if (z) {
                    intent.putExtra("android.provider.extra.PICK_IMAGES_MAX", 100);
                }
                intent.addFlags(65);
                mainActivity.t0(intent, i2);
                return true;
            } catch (ActivityNotFoundException | Exception unused) {
                return false;
            }
        }
        return false;
    }

    public static boolean L5(String str) {
        if (TextUtils.isEmpty(str) || !str.contains("filmizle")) {
            return false;
        }
        if (!str.contains("4k") && !str.contains("sene")) {
            return false;
        }
        return true;
    }

    public static int L6(int i, int i2) {
        return (new Random().nextInt(i2 - i) + i) % (i2 + 1);
    }

    public static void L7(WebView webView, String str) {
        StringBuilder J3 = J3(str);
        if (J3 == null) {
            return;
        }
        J3.insert(0, "(function(){");
        J3.append("})();");
        I(webView, J3.toString(), false);
    }

    public static Spanned M(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            return Html.fromHtml(str, 0);
        }
        return Html.fromHtml(str);
    }

    public static String M0(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int indexOf = str.indexOf("http");
        if (indexOf > 0 && indexOf < str.length()) {
            String substring = str.substring(indexOf);
            if (!TextUtils.isEmpty(substring)) {
                return substring;
            }
        }
        return str;
    }

    public static String M1(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = g2();
        }
        return a.l("https://", str, str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String M2(java.lang.String r8) {
        /*
            boolean r0 = com.mycompany.app.main.MainApp.R1
            r1 = 0
            if (r0 != 0) goto L7
            goto L70
        L7:
            r2 = 0
            r3 = 30
            if (r0 != 0) goto Le
        Lc:
            r0 = r1
            goto L34
        Le:
            java.util.ArrayList r0 = com.mycompany.app.main.MainNative.d
            boolean r0 = com.mycompany.app.main.MainNative.a(r3, r0)
            if (r0 == 0) goto L19
            java.util.ArrayList r0 = com.mycompany.app.main.MainNative.d
            goto L34
        L19:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r4 = r2
        L1f:
            if (r4 >= r3) goto L32
            java.lang.String r5 = getTransTag(r4)
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto L2c
            goto Lc
        L2c:
            r0.add(r5)
            int r4 = r4 + 1
            goto L1f
        L32:
            com.mycompany.app.main.MainNative.d = r0
        L34:
            if (r0 == 0) goto L70
            int r4 = r0.size()
            if (r4 == r3) goto L3d
            goto L70
        L3d:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
        L42:
            if (r2 >= r3) goto L6b
            java.lang.Object r5 = r0.get(r2)
            java.lang.String r5 = (java.lang.String) r5
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto L51
            goto L70
        L51:
            r6 = 20
            if (r2 != r6) goto L65
            if (r8 == 0) goto L65
            int r6 = r8.length()
            r7 = 2
            if (r6 <= r7) goto L65
            java.lang.String r6 = "div[class*=\""
            java.lang.String r7 = "\"],"
            android.support.v4.media.a.y(r4, r6, r8, r7)
        L65:
            r4.append(r5)
            int r2 = r2 + 1
            goto L42
        L6b:
            java.lang.String r8 = r4.toString()
            return r8
        L70:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.M2(java.lang.String):java.lang.String");
    }

    public static void M3(WebView webView) {
        String str;
        if (webView != null && MainApp.R1) {
            String d = MainNative.d();
            if (!TextUtils.isEmpty(d)) {
                if (!MainApp.R1) {
                    str = null;
                } else {
                    if (TextUtils.isEmpty(MainNative.m)) {
                        MainNative.m = getTransLang();
                    }
                    str = MainNative.m;
                }
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                I(webView, a.n("(function(){var tag='onTransList';var val=null;if(setLangId(document,window)){var gtb=document.querySelector(\"", str, "\");if(gtb){val=", d, ".innerHTML;}}android.onJsResult(tag,val);})();"), true);
            }
        }
    }

    public static boolean M4(Activity activity, String str) {
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        try {
            Intent intent = new Intent("android.intent.action.QUICK_VIEW");
            intent.setDataAndType(Uri.parse(str), "application/pdf");
            activity.startActivity(intent);
            return true;
        } catch (Exception unused) {
            e8(activity, R.string.not_support_device);
            return false;
        }
    }

    public static boolean M5() {
        Locale j = MainApp.j();
        if (j == null) {
            return false;
        }
        return "ko".equalsIgnoreCase(j.getLanguage());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void M6(MediaMetadataRetriever mediaMetadataRetriever) {
        try {
            mediaMetadataRetriever.release();
        } catch (Exception unused) {
        }
        if (Build.VERSION.SDK_INT >= 29) {
            try {
                if (mediaMetadataRetriever instanceof AutoCloseable) {
                    mediaMetadataRetriever.close();
                } else if (mediaMetadataRetriever instanceof ExecutorService) {
                    b.f((ExecutorService) mediaMetadataRetriever);
                } else {
                    mediaMetadataRetriever.release();
                }
            } catch (Exception unused2) {
            }
        }
    }

    public static void M7(WebView webView, String str) {
        StringBuilder J3;
        if (webView != null && !TextUtils.isEmpty(str) && (J3 = J3("confirm")) != null) {
            String sb = J3.toString();
            if (TextUtils.isEmpty(sb)) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("changeLang('");
            sb2.append(str);
            sb2.append("');");
            sb2.append(sb);
            sb2.insert(0, "(function(){");
            sb2.append("})();");
            I(webView, sb2.toString(), true);
        }
    }

    public static int N(int i, int i2) {
        if (i2 == 0) {
            if (i >= 0) {
                int[] iArr = MainConst.A;
                if (i < iArr.length) {
                    return iArr[i];
                }
            }
            return MainConst.y[0];
        }
        if (i >= 0) {
            int[] iArr2 = MainConst.B;
            if (i < iArr2.length) {
                return iArr2[i];
            }
        }
        return MainConst.z[0];
    }

    public static String N0(String str) {
        String substring;
        if (str == null) {
            return str;
        }
        int length = str.length();
        if (length >= 5 && str.startsWith("mix:")) {
            int indexOf = str.indexOf("<,>", 4);
            if (indexOf > 4 && indexOf < length) {
                substring = str.substring(4, indexOf);
            } else {
                substring = str.substring(4);
            }
            if (!TextUtils.isEmpty(substring)) {
                return a.C("https:", substring);
            }
        }
        return str;
    }

    public static String N1(String str, boolean z) {
        if (!TextUtils.isEmpty(X3(str)) && !str.contains("{{")) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (lowerCase.indexOf("?page_url=http", 7) == -1) {
                String W3 = W3(str, false);
                if (!TextUtils.isEmpty(W3) && !Compress.D(W3)) {
                    if ((Y5(str) && ("gifv".equals(W3) || "pnj".equals(W3))) || !z || l5(lowerCase)) {
                        return str;
                    }
                } else {
                    return str;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String N2() {
        /*
            boolean r0 = com.mycompany.app.main.MainApp.R1
            r1 = 0
            if (r0 != 0) goto L6
            goto L5b
        L6:
            r2 = 0
            r3 = 14
            if (r0 != 0) goto Ld
        Lb:
            r0 = r1
            goto L33
        Ld:
            java.util.ArrayList r0 = com.mycompany.app.main.MainNative.I
            boolean r0 = com.mycompany.app.main.MainNative.a(r3, r0)
            if (r0 == 0) goto L18
            java.util.ArrayList r0 = com.mycompany.app.main.MainNative.I
            goto L33
        L18:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r4 = r2
        L1e:
            if (r4 >= r3) goto L31
            java.lang.String r5 = getTtsMarkJs(r4)
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto L2b
            goto Lb
        L2b:
            r0.add(r5)
            int r4 = r4 + 1
            goto L1e
        L31:
            com.mycompany.app.main.MainNative.I = r0
        L33:
            if (r0 == 0) goto L5b
            int r4 = r0.size()
            if (r4 == r3) goto L3c
            goto L5b
        L3c:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
        L41:
            if (r2 >= r3) goto L56
            java.lang.Object r5 = r0.get(r2)
            java.lang.String r5 = (java.lang.String) r5
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto L50
            goto L5b
        L50:
            r4.append(r5)
            int r2 = r2 + 1
            goto L41
        L56:
            java.lang.String r0 = r4.toString()
            return r0
        L5b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.N2():java.lang.String");
    }

    public static StringBuilder N3() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        if (!MainApp.R1) {
            return null;
        }
        String c2 = MainNative.c();
        if (TextUtils.isEmpty(c2)) {
            return null;
        }
        String d = MainNative.d();
        if (TextUtils.isEmpty(d)) {
            return null;
        }
        if (!MainApp.R1) {
            str = null;
        } else {
            if (TextUtils.isEmpty(MainNative.g)) {
                MainNative.g = getTransPromptSection();
            }
            str = MainNative.g;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!MainApp.R1) {
            str2 = null;
        } else {
            if (TextUtils.isEmpty(MainNative.h)) {
                MainNative.h = getTransPromptLang();
            }
            str2 = MainNative.h;
        }
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (!MainApp.R1) {
            str3 = null;
        } else {
            if (TextUtils.isEmpty(MainNative.i)) {
                MainNative.i = getTransFinishSection();
            }
            str3 = MainNative.i;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!MainApp.R1) {
            str4 = null;
        } else {
            if (TextUtils.isEmpty(MainNative.j)) {
                MainNative.j = getTransFinishLang();
            }
            str4 = MainNative.j;
        }
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (!MainApp.R1) {
            str5 = null;
        } else {
            if (TextUtils.isEmpty(MainNative.k)) {
                MainNative.k = getTransTrId();
            }
            str5 = MainNative.k;
        }
        if (TextUtils.isEmpty(str5)) {
            return null;
        }
        if (!MainApp.R1) {
            str6 = null;
        } else {
            if (TextUtils.isEmpty(MainNative.l)) {
                MainNative.l = getTransSpId();
            }
            str6 = MainNative.l;
        }
        if (TextUtils.isEmpty(str6)) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("function myF1(ele){var gtb=ele.querySelector('");
        sb.append(c2);
        sb.append("');if(gtb){var gte=");
        sb.append(d);
        sb.append(";if(gte&&gte.innerHTML){android.onObserDet(null,0);return gte;}}return null;}function myPs1(ele,win){var gtv=ele.querySelector(\"");
        a.z(sb, str5, "'", str, "']\");if(gtv){myPs4(ele,win);if(myPs3(gtv))return true;}return false;}function myPs2(ele,win){if(ele.id.includes('");
        a.z(sb, str, "')){myPs4(ele,win);if(myPs3(ele))return true;}return false;}function myPs3(ele){var gtt=ele.querySelector(\"", str6, "'");
        a.z(sb, str2, "']\");if(gtt&&(gtt.innerText.length>0)){android.onObserDet(gtt.innerText,1);return true;}return false;}function myPs4(ele,win){if(!win.sb_ps){win.sb_ps=new MutationObserver(e=>{for(var i=0;i<e.length;i++){if(myPs3(e[i].target))break;if(myPs3(e[i].target.parentNode))break;}}),win.sb_ps.observe(ele,{childList:!0,subtree:!0});}}function myFs1(ele,win){var gtv=ele.querySelector(\"", str5, "'");
        a.z(sb, str3, "']\");if(gtv){myFs4(ele,win);if(myFs3(gtv))return true;}return false;}function myFs2(ele,win){if(ele.id.includes('", str3, "')){myFs4(ele,win);if(myFs3(ele))return true;}return false;}function myFs3(ele){var gtt=ele.querySelector(\"");
        a.z(sb, str6, "'", str4, "']\");if(gtt&&(gtt.innerText.length>0)){android.onObserDet(gtt.innerText,2);return true;}return false;}function myFs4(ele,win){if(!win.sb_fs){win.sb_fs=new MutationObserver(e=>{for(var i=0;i<e.length;i++){if(myFs3(e[i].target))break;if(myFs3(e[i].target.parentNode))break;}}),win.sb_fs.observe(ele,{childList:!0,subtree:!0,attributeOldValue:0});}}function myF5(ele,win){if(!win.sb_tr2){win.sb_tr2=new MutationObserver(e=>{for(var i=0;i<e.length;i++){if(myPs1(e[i].target,win))break;if(myPs2(e[i].target.parentNode,win))break;if(myFs1(e[i].target,win))break;if(myFs2(e[i].target.parentNode,win))break;}}),win.sb_tr2.observe(ele,{childList:!0,subtree:!0});}}function myF6(ele,win){if(!ele||!win)return false;var gte=myF1(ele);if(!gte)return false;myPs1(gte,win);myFs1(gte,win);myF5(gte,win);return true;}(function(){if(myF6(document,window))return;if(!document.body||window.sb_tr1)return;window.sb_tr1=new MutationObserver(e=>{for(var i=0;i<e.length;i++){var tgt=e[i].target;if(tgt.tagName=='BODY'){if(myF6(tgt,window)){if(window.sb_tr1){window.sb_tr1.disconnect();window.sb_tr1=null;}}break;}}}),window.sb_tr1.observe(document.body,{childList:!0,subtree:!0});})();");
        return sb;
    }

    public static boolean N4(Activity activity, int i) {
        if (i == 6) {
            if (Build.VERSION.SDK_INT < 26) {
                return false;
            }
        } else if (i == 7 && Build.VERSION.SDK_INT < 26) {
            return false;
        }
        if (activity == null) {
            return false;
        }
        Intent intent = new Intent(activity, (Class<?>) MainPermission.class);
        intent.putExtra("EXTRA_TYPE", i);
        activity.startActivity(intent);
        return true;
    }

    public static boolean N5(Context context) {
        Point s4 = s4(context);
        if (s4 == null || s4.x <= s4.y) {
            return false;
        }
        return true;
    }

    public static void N6(int i, MainActivity mainActivity, boolean z) {
        if (mainActivity != null) {
            int i2 = 6;
            if (!z || i == 6) {
                int i3 = PrefMain.l;
                if (i3 == 1) {
                    i2 = 1;
                } else if (i3 != 2) {
                    i2 = -1;
                }
                try {
                    if (i2 == mainActivity.getRequestedOrientation()) {
                        return;
                    }
                } catch (IllegalStateException | Exception unused) {
                }
                B7(mainActivity, i2);
            }
        }
    }

    public static void N7(WebView webView) {
        if (webView != null && MainApp.R1) {
            String c2 = MainNative.c();
            if (TextUtils.isEmpty(c2)) {
                return;
            }
            I(webView, "(function(){var tag='onTransClass';var val=0;var gtb=document.querySelector('" + c2 + "');if(gtb){val=gtb.className;}android.onJsResult(tag,val);})();", true);
        }
    }

    public static StringBuilder O(StringBuilder sb) {
        boolean z = MainApp.R1;
        if (z) {
            ArrayList arrayList = null;
            if (z) {
                if (MainNative.a(13, MainNative.K)) {
                    arrayList = MainNative.K;
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    int i = 0;
                    while (true) {
                        if (i < 13) {
                            String adsGoogleJs = getAdsGoogleJs(i);
                            if (TextUtils.isEmpty(adsGoogleJs)) {
                                break;
                            }
                            arrayList2.add(adsGoogleJs);
                            i++;
                        } else {
                            MainNative.K = arrayList2;
                            arrayList = arrayList2;
                            break;
                        }
                    }
                }
            }
            if (arrayList != null && arrayList.size() == 13) {
                if (sb == null) {
                    sb = new StringBuilder();
                }
                for (int i2 = 0; i2 < 13; i2++) {
                    String str = (String) arrayList.get(i2);
                    if (TextUtils.isEmpty(str)) {
                        break;
                    }
                    sb.append(str);
                }
            }
        }
        return sb;
    }

    public static String O0(String str) {
        int indexOf;
        int i;
        String substring;
        if (str == null) {
            return str;
        }
        int length = str.length();
        if (length != 0 && (indexOf = str.indexOf("http")) > 0 && indexOf < length) {
            int i2 = indexOf + 4;
            if (i2 < length) {
                i = str.indexOf("<,>", i2);
            } else {
                i = -1;
            }
            if (i > indexOf && i < length) {
                substring = str.substring(indexOf, i);
            } else {
                substring = str.substring(indexOf);
            }
            if (!TextUtils.isEmpty(substring)) {
                return substring;
            }
        }
        return str;
    }

    public static String O1(String str) {
        return q0(I1(str, true));
    }

    public static int O2(Window window) {
        if (Build.VERSION.SDK_INT >= 35 || window == null) {
            return 0;
        }
        return window.getNavigationBarColor();
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x006b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Locale O3(java.lang.String r8) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r8)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            r0 = 95
            boolean r0 = r(r0, r8)
            if (r0 == 0) goto L13
            java.lang.String r0 = "_"
            goto L1f
        L13:
            r0 = 45
            boolean r0 = r(r0, r8)
            if (r0 == 0) goto L1e
            java.lang.String r0 = "-"
            goto L1f
        L1e:
            r0 = r1
        L1f:
            boolean r2 = android.text.TextUtils.isEmpty(r8)
            r3 = 36
            if (r2 != 0) goto L34
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 == 0) goto L2e
            goto L34
        L2e:
            java.lang.String[] r0 = r8.split(r0)
            if (r0 != 0) goto L36
        L34:
            r0 = r1
            goto L69
        L36:
            int r2 = r0.length
            if (r2 != 0) goto L3a
            goto L34
        L3a:
            r4 = 0
            r4 = r0[r4]
            boolean r5 = android.text.TextUtils.isEmpty(r4)
            if (r5 == 0) goto L44
            goto L34
        L44:
            r5 = 1
            if (r2 <= r5) goto L4a
            r5 = r0[r5]
            goto L4b
        L4a:
            r5 = r1
        L4b:
            java.lang.String r6 = ""
            if (r5 != 0) goto L50
            r5 = r6
        L50:
            r7 = 2
            if (r2 <= r7) goto L56
            r0 = r0[r7]
            goto L57
        L56:
            r0 = r1
        L57:
            if (r0 != 0) goto L5a
            goto L5b
        L5a:
            r6 = r0
        L5b:
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L34
            if (r0 < r3) goto L64
            java.util.Locale r0 = java.util.Locale.of(r4, r5, r6)     // Catch: java.lang.Exception -> L34
            goto L69
        L64:
            java.util.Locale r0 = new java.util.Locale     // Catch: java.lang.Exception -> L34
            r0.<init>(r4, r5, r6)     // Catch: java.lang.Exception -> L34
        L69:
            if (r0 == 0) goto L6c
            return r0
        L6c:
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L7b
            if (r0 < r3) goto L75
            java.util.Locale r8 = java.util.Locale.of(r8)     // Catch: java.lang.Exception -> L7b
            return r8
        L75:
            java.util.Locale r0 = new java.util.Locale     // Catch: java.lang.Exception -> L7b
            r0.<init>(r8)     // Catch: java.lang.Exception -> L7b
            return r0
        L7b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.O3(java.lang.String):java.util.Locale");
    }

    public static void O4(MainActivity mainActivity, int i) {
        if (L4(mainActivity, 4, false, i) || K4(i, mainActivity, false) || J4(mainActivity, 4, false, i)) {
            return;
        }
        e8(mainActivity, R.string.apps_none);
    }

    public static boolean O5(Context context) {
        if (context == null || context.getResources().getConfiguration().getLayoutDirection() != 1) {
            return false;
        }
        return true;
    }

    public static void O6(WebNestView webNestView, int i, boolean z) {
        if (webNestView != null) {
            if (z) {
                if (j5() && MainApp.L1) {
                    String url = webNestView.getUrl();
                    i7(webNestView, url, J1(url, true), true);
                    return;
                }
                return;
            }
            T7(webNestView, i, webNestView.getUrl(), false);
        }
    }

    public static void O7(WebView webView, String str) {
        if (webView != null && !TextUtils.isEmpty(str) && MainApp.R1) {
            String c2 = MainNative.c();
            if (TextUtils.isEmpty(c2)) {
                return;
            }
            I(webView, a.n("(function(){var tag='", str, "';var val=0;var gtb=document.querySelector('", c2, "');if(gtb){val=2;}else if(document.getElementById('sb_trs_style')){val=1;}android.onJsResult(tag,val);})();"), true);
        }
    }

    public static Bitmap P(final Context context, MainItem.ChildItem childItem) {
        if (!TextUtils.isEmpty(childItem.g)) {
            if (TextUtils.isEmpty(childItem.z)) {
                childItem.z = p2(context, childItem.g);
            }
            if (new File(childItem.z).length() > 0) {
                return BitmapUtil.c(childItem.z);
            }
            String str = childItem.g;
            final String str2 = childItem.z;
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                Compress b2 = Compress.b(1, context, str, null);
                final Bitmap d = b2.d();
                b2.a();
                if (d != null) {
                    MainApp.J(context, new Runnable() { // from class: com.mycompany.app.main.MainUtil.23
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainUtil.p(context, d, str2);
                        }
                    });
                    return d;
                }
            }
        }
        return null;
    }

    public static int P0(String str) {
        String W0 = W0(str);
        if (!TextUtils.isEmpty(W0)) {
            if (Compress.L(W0)) {
                return 32;
            }
            if (Compress.D(W0)) {
                return 4;
            }
            if (Compress.K(W0)) {
                return 5;
            }
            if (Compress.E(W0)) {
                return 6;
            }
            if (Compress.A(W0)) {
                return 7;
            }
            return 44;
        }
        return 44;
    }

    public static int P1(int i, int i2) {
        if (i == 0) {
            return -2039584;
        }
        if (i == 1) {
            return -12632257;
        }
        return i2;
    }

    public static int P2(Context context, Window window, View view) {
        int i;
        boolean z;
        int i2;
        if (PrefMain.x && (i2 = PrefMain.w) > 0) {
            return i2;
        }
        if (window != null && (view != null || (view = window.getDecorView()) != null)) {
            Rect rect = new Rect();
            view.getWindowVisibleDisplayFrame(rect);
            if (rect.bottom > 0) {
                Point s4 = s4(context);
                if (s4 == null) {
                    i = 0;
                } else {
                    i = s4.y;
                }
                int i3 = i - rect.bottom;
                if (i3 > 0 && i3 < ((int) G(context, 140.0f))) {
                    int i4 = PrefMain.w;
                    if (i4 == i3) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (i4 == i3 && PrefMain.x == z) {
                        return i4;
                    }
                    PrefMain.x = z;
                    PrefMain.w = i3;
                    PrefMain r = PrefMain.r(context, false);
                    r.n(PrefMain.w, "mNaviHeight2");
                    r.l("mNaviConfirm", PrefMain.x);
                    r.a();
                    return PrefMain.w;
                }
            }
        }
        return 0;
    }

    public static int P3(int i, String str) {
        int length;
        if (str == null || (length = str.length()) == 0 || i < 0 || i > length) {
            return -1;
        }
        return Math.max(Math.max(str.lastIndexOf(47, i), str.lastIndexOf(63, i)), Math.max(str.lastIndexOf(61, i), str.lastIndexOf(38, i)));
    }

    public static boolean P4(MainActivity mainActivity, String str, String str2, String str3, int i) {
        Intent intent;
        if (!TextUtils.isEmpty(str3)) {
            try {
                if (i == 1) {
                    intent = new Intent("android.intent.action.VIEW");
                    intent.setPackage(str);
                    intent.setDataAndTypeAndNormalize(Uri.parse(str3), "video/*");
                } else if (i == 2) {
                    intent = new Intent("android.intent.action.VIEW");
                    intent.setPackage(str);
                    intent.setDataAndNormalize(Uri.parse(str3));
                } else if (i == 3) {
                    Intent intent2 = new Intent();
                    intent2.setComponent(new ComponentName(str, str2));
                    intent2.setDataAndType(Uri.parse(str3), "video/*");
                    intent = intent2;
                } else {
                    Intent intent3 = new Intent();
                    intent3.setComponent(new ComponentName(str, str2));
                    intent3.setData(Uri.parse(str3));
                    intent = intent3;
                }
                mainActivity.startActivity(intent);
                return true;
            } catch (ActivityNotFoundException unused) {
                if (i == 0) {
                    e8(mainActivity, R.string.apps_none);
                    return false;
                }
                return false;
            } catch (Exception unused2) {
                if (i == 0) {
                    e8(mainActivity, R.string.not_supported);
                    return false;
                }
                return false;
            }
        }
        return false;
    }

    public static boolean P5(int i) {
        if (i == 0 || ColorUtils.g(i) > 0.5d) {
            return true;
        }
        return false;
    }

    public static void P6(WebView webView) {
        if (webView == null) {
            return;
        }
        F(webView, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void P7(Context context, String str) {
        Document document;
        ArrayList arrayList = null;
        try {
            document = Jsoup.parse(str);
        } catch (Exception | LinkageError | OutOfMemoryError unused) {
            document = null;
        }
        if (document != null) {
            try {
                Elements select = document.select("span.text");
                if (select != null && select.size() != 0) {
                    int size = select.size();
                    int i = 0;
                    while (i < size) {
                        T t = select.get(i);
                        i++;
                        Element element = (Element) t;
                        if (element != null) {
                            String text = element.text();
                            if (!TextUtils.isEmpty(text)) {
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.add(text);
                            }
                        }
                    }
                }
            } catch (Exception unused2) {
            }
            DataTrans a2 = DataTrans.a(context);
            a2.getClass();
            if (arrayList != null) {
                try {
                    if (!arrayList.isEmpty()) {
                        ArrayList arrayList2 = a2.f12900a;
                        if (arrayList2 == null || arrayList2.isEmpty()) {
                            a2.f12900a = arrayList;
                            if (!TextUtils.isEmpty(PrefAlbum.y) && !arrayList.contains(PrefAlbum.y)) {
                                PrefAlbum.y = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                PrefAlbum.z = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                PrefAlbum.u(context);
                            }
                            if (!TextUtils.isEmpty(PrefZtwo.P) && !arrayList.contains(PrefZtwo.P)) {
                                PrefZtwo.P = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                PrefSet.c(16, context, "mNewsPick", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                            }
                        }
                    }
                } catch (Exception unused3) {
                }
            }
        }
    }

    public static StringBuilder Q(StringBuilder sb) {
        boolean z = MainApp.R1;
        if (z) {
            int i = 0;
            ArrayList arrayList = null;
            if (z) {
                if (MainNative.a(6, MainNative.b)) {
                    arrayList = MainNative.b;
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    int i2 = 0;
                    while (true) {
                        if (i2 < 6) {
                            String ampJs = getAmpJs(i2);
                            if (TextUtils.isEmpty(ampJs)) {
                                break;
                            }
                            arrayList2.add(ampJs);
                            i2++;
                        } else {
                            MainNative.b = arrayList2;
                            arrayList = arrayList2;
                            break;
                        }
                    }
                }
            }
            if (arrayList != null && arrayList.size() == 6) {
                StringBuilder sb2 = new StringBuilder();
                while (true) {
                    if (i < 6) {
                        String str = (String) arrayList.get(i);
                        if (TextUtils.isEmpty(str)) {
                            break;
                        }
                        sb2.append(str);
                        i++;
                    } else {
                        String sb3 = sb2.toString();
                        if (sb == null) {
                            sb = new StringBuilder();
                        }
                        sb.append(sb3);
                        sb.append("{mySm1(document);if(!document.body||window.sb_sch)return;window.sb_sch=new MutationObserver(e=>{for(var i=0;i<e.length;i++){mySm2(e[i].target);}}),window.sb_sch.observe(document.body,{childList:!0,subtree:!0,attributeOldValue:0});}");
                    }
                }
            }
        }
        return sb;
    }

    public static String Q0(EditText editText, boolean z) {
        Editable text;
        if (editText == null || (text = editText.getText()) == null) {
            return null;
        }
        String obj = text.toString();
        if (z && !TextUtils.isEmpty(obj)) {
            return obj.trim();
        }
        return obj;
    }

    public static int Q1(String str) {
        String W0 = W0(str);
        if (TextUtils.isEmpty(W0)) {
            return R.drawable.outline_draft_black_24;
        }
        if (Compress.w(W0)) {
            return R.drawable.outline_local_library_black_24;
        }
        if (Compress.G(W0)) {
            return R.drawable.outline_picture_as_pdf_black_24;
        }
        if (Compress.z(W0)) {
            return R.drawable.outline_folder_zip_black_24;
        }
        if (Compress.D(W0)) {
            return R.drawable.outline_image_black_24;
        }
        if (Compress.K(W0)) {
            return R.drawable.baseline_play_arrow_black_24;
        }
        if (Compress.E(W0)) {
            return R.drawable.baseline_music_note_black_24;
        }
        if (Compress.A(W0)) {
            return R.drawable.outline_description_black_24;
        }
        if (Compress.L(W0)) {
            return R.drawable.outline_public_black_24;
        }
        if (Compress.x(W0)) {
            return R.drawable.outline_android_black_24;
        }
        return R.drawable.outline_draft_black_24;
    }

    public static String Q2(String str) {
        int length;
        int i = -1;
        if (str != null && (length = str.length()) != 0) {
            int lastIndexOf = str.lastIndexOf(46);
            while (true) {
                if (lastIndexOf <= 0 || lastIndexOf >= length) {
                    break;
                }
                int i2 = lastIndexOf - 1;
                if (str.charAt(i2) >= '0' && str.charAt(i2) <= '9' && length != 0 && i2 > 0) {
                    int i3 = i2;
                    while (i3 > 0) {
                        int i4 = i3 - 1;
                        if (str.charAt(i4) < '0' || str.charAt(i4) > '9') {
                            break;
                        }
                        i3--;
                    }
                    if (i3 > 0 && str.charAt(i3 - 1) != '.') {
                        i = i2;
                        break;
                    }
                }
                lastIndexOf = str.lastIndexOf(46, i2);
            }
        }
        if (i <= 0) {
            return str;
        }
        int i5 = i + 1;
        while (i > 0) {
            int i6 = i - 1;
            if (str.charAt(i6) < '0' || str.charAt(i6) > '9') {
                break;
            }
            i--;
        }
        StringBuilder sb = new StringBuilder();
        if (i > 0) {
            sb.append(str.substring(0, i));
        }
        if (i5 < str.length()) {
            sb.append(str.substring(i5));
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x004e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0061 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String Q3(java.lang.String r9) {
        /*
            r0 = 0
            if (r9 != 0) goto L6
        L3:
            r3 = r0
            goto L63
        L6:
            int r1 = r9.length()
            if (r1 != 0) goto Ld
            goto L3
        Ld:
            int r1 = P3(r1, r9)
            r2 = -1
            if (r1 != r2) goto L15
            goto L3
        L15:
            int r3 = r1 + 1
            java.lang.String r3 = r9.substring(r3)
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            r5 = -1
            if (r4 == 0) goto L24
            goto L29
        L24:
            long r7 = java.lang.Long.parseLong(r3)     // Catch: java.lang.Throwable -> L29
            goto L2a
        L29:
            r7 = r5
        L2a:
            int r4 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r4 == 0) goto L35
            int r4 = r3.length()
            r7 = 6
            if (r4 >= r7) goto L63
        L35:
            r4 = 1
            if (r1 <= r4) goto L63
            int r4 = r1 + (-1)
            int r4 = P3(r4, r9)
            if (r4 != r2) goto L41
            goto L63
        L41:
            int r7 = r4 + 1
            java.lang.String r1 = r9.substring(r7, r1)
            boolean r7 = android.text.TextUtils.isEmpty(r1)
            if (r7 == 0) goto L4e
            goto L53
        L4e:
            long r7 = java.lang.Long.parseLong(r1)     // Catch: java.lang.Throwable -> L53
            goto L54
        L53:
            r7 = r5
        L54:
            int r7 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r7 == 0) goto L61
            int r7 = r1.length()
            r8 = 5
            if (r7 <= r8) goto L61
            r3 = r1
            goto L63
        L61:
            r1 = r4
            goto L35
        L63:
            boolean r9 = android.text.TextUtils.isEmpty(r3)
            if (r9 == 0) goto L6a
            goto L89
        L6a:
            boolean r9 = com.mycompany.app.main.MainApp.R1
            if (r9 != 0) goto L70
        L6e:
            r9 = r0
            goto L83
        L70:
            if (r9 != 0) goto L73
            goto L6e
        L73:
            java.lang.String r9 = com.mycompany.app.main.MainNative.C
            boolean r9 = android.text.TextUtils.isEmpty(r9)
            if (r9 == 0) goto L81
            java.lang.String r9 = getTwitUrl()
            com.mycompany.app.main.MainNative.C = r9
        L81:
            java.lang.String r9 = com.mycompany.app.main.MainNative.C
        L83:
            boolean r1 = android.text.TextUtils.isEmpty(r9)
            if (r1 == 0) goto L8a
        L89:
            return r0
        L8a:
            java.lang.String r9 = android.support.v4.media.a.k(r9, r3)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.Q3(java.lang.String):java.lang.String");
    }

    public static boolean Q4(Activity activity, String str) {
        if (activity != null && !TextUtils.isEmpty(str)) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse("https://play.google.com/store/apps/details?id=" + str));
                intent.setPackage("com.android.vending");
                activity.startActivity(intent);
                return true;
            } catch (ActivityNotFoundException unused) {
                e8(activity, R.string.apps_none);
                return false;
            } catch (Exception unused2) {
                e8(activity, R.string.not_supported);
                return false;
            }
        }
        return false;
    }

    public static boolean Q5(String str, String str2) {
        int length;
        int length2;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                if (str.endsWith("prospekt.com") && str2.endsWith("prospekte.com")) {
                    return true;
                }
                int indexOf = str.indexOf("://");
                if (indexOf != -1) {
                    str = str.substring(indexOf + 3);
                }
                String[] split2 = str.split("\\.");
                if (split2 == null || (length = split2.length) == 0) {
                    return false;
                }
                int indexOf2 = str2.indexOf("://");
                if (indexOf2 != -1) {
                    str2 = str2.substring(indexOf2 + 3);
                }
                String[] split3 = str2.split("\\.");
                if (split3 == null || (length2 = split3.length) == 0) {
                    return false;
                }
                int min = Math.min(length, length2);
                if (min > 2) {
                    min--;
                }
                if (min <= 0) {
                    return false;
                }
                int i = min + 1;
                for (int i2 = 1; i2 < i; i2++) {
                    if (!split2[length - i2].equals(split3[length2 - i2])) {
                        return false;
                    }
                }
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static void Q6(final Context context) {
        try {
            CookieManager m = MainApp.m(context);
            if (m != null) {
                m.removeAllCookies(new ValueCallback<Boolean>() { // from class: com.mycompany.app.main.MainUtil.17
                    @Override // android.webkit.ValueCallback
                    public final void onReceiveValue(Boolean bool) {
                        MainUtil.j8(context, true);
                    }
                });
            }
        } catch (Exception | NoSuchMethodError unused) {
        }
    }

    public static void Q7(WebSettings webSettings, String str) {
        if (webSettings == null) {
            return;
        }
        try {
            webSettings.setUserAgentString(str);
        } catch (Exception unused) {
        }
    }

    public static Context R(Context context) {
        if (context == null) {
            return context;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            return context;
        }
        return applicationContext;
    }

    public static String R0(String str, String str2) {
        int length;
        if (str2 == null || (length = str2.length()) == 0) {
            return str;
        }
        return a.D(str2, "/s/", str.substring(length + 8));
    }

    public static Intent R1(Context context) {
        return new Intent(context, (Class<?>) ImageViewActivity.class);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String R2(java.lang.String r12) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r12)
            if (r0 == 0) goto L8
            goto Lb9
        L8:
            java.io.File r0 = new java.io.File
            r0.<init>(r12)
            java.io.File r1 = r0.getParentFile()
            java.io.File[] r1 = r1.listFiles()
            if (r1 == 0) goto Lb9
            int r2 = r1.length
            if (r2 != 0) goto L1c
            goto Lb9
        L1c:
            java.io.File r12 = r0.getParentFile()
            java.lang.String r12 = r12.getPath()
            java.lang.String r0 = r0.getName()
            r2 = 46
            int r2 = r0.lastIndexOf(r2)
            r3 = -1
            r4 = 0
            java.lang.String r5 = ""
            if (r2 == r3) goto L43
            java.lang.String r6 = r0.substring(r4, r2)
            int r7 = r0.length()
            if (r2 >= r7) goto L44
            java.lang.String r5 = r0.substring(r2)
            goto L44
        L43:
            r6 = r0
        L44:
            java.lang.String r2 = ")"
            boolean r7 = r6.endsWith(r2)
            java.lang.String r8 = " ("
            r9 = 1
            if (r7 == 0) goto L71
            int r7 = r6.lastIndexOf(r8)
            if (r7 == r3) goto L71
            int r3 = r6.length()
            int r3 = r3 + (-3)
            if (r7 >= r3) goto L71
            int r3 = r7 + 2
            int r10 = r6.length()     // Catch: java.lang.Throwable -> L71
            int r10 = r10 - r9
            java.lang.String r3 = r6.substring(r3, r10)     // Catch: java.lang.Throwable -> L71
            int r3 = java.lang.Integer.parseInt(r3)     // Catch: java.lang.Throwable -> L71
            java.lang.String r6 = r0.substring(r4, r7)     // Catch: java.lang.Throwable -> L72
            goto L72
        L71:
            r3 = r9
        L72:
            int r3 = r3 + r9
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r6)
            r0.append(r8)
            r0.append(r3)
            r0.append(r2)
            r0.append(r5)
            java.lang.String r0 = r0.toString()
            int r7 = r1.length
            r10 = r4
        L8d:
            if (r10 >= r7) goto L9f
            r11 = r1[r10]
            java.lang.String r11 = r11.getName()
            boolean r11 = r0.equalsIgnoreCase(r11)
            if (r11 == 0) goto L9c
            goto L72
        L9c:
            int r10 = r10 + 1
            goto L8d
        L9f:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r12)
            java.lang.String r12 = "/"
            r0.append(r12)
            r0.append(r6)
            r0.append(r8)
            r0.append(r3)
            java.lang.String r12 = android.support.v4.media.a.p(r0, r2, r5)
        Lb9:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.R2(java.lang.String):java.lang.String");
    }

    public static Uri R3(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                if (Build.VERSION.SDK_INT >= 24) {
                    if (context != null) {
                        return FileProvider.d(context, context.getPackageName() + ".fileprovider", new File(str));
                    }
                } else {
                    return Uri.fromFile(new File(str));
                }
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static boolean R4() {
        if (PrefPdf.z && !TextUtils.isEmpty(PrefMain.D)) {
            return true;
        }
        return !TextUtils.isEmpty(PrefMain.E);
    }

    public static boolean R5(HttpURLConnection httpURLConnection) {
        try {
            String contentType = httpURLConnection.getContentType();
            if (!TextUtils.isEmpty(contentType)) {
                if (!contentType.startsWith("image") && !contentType.startsWith("video")) {
                    if (contentType.startsWith("audio")) {
                        return true;
                    }
                    return false;
                }
                return true;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void R6(Handler handler) {
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public static void R7(WebView webView, StringBuilder sb, boolean z) {
        if (webView != null) {
            sb.append("(function(){");
            if (z) {
                sb.append("if(window.sb_vi1){window.sb_vi1.disconnect();window.sb_vi1=null;}");
                sb.append("if(window.sb_vi2){window.sb_vi2.disconnect();window.sb_vi2=null;}");
            }
            a.z(sb, "if(myVd(document,window))return;", "if(!document.body||window.sb_vi1||window.sb_vi2)return;", "window.sb_vi1=new MutationObserver(e=>{for(var i=0;i<e.length;i++){", "var tgt=e[i].target;if(myVd(tgt,window)){");
            I(webView, a.q(sb, "if(window.sb_vi1){window.sb_vi1.disconnect();window.sb_vi1=null;}", "break;}if(tgt.tagName=='BODY')break;}}),", "window.sb_vi1.observe(document.body,{childList:!0,subtree:!0});})();"), true);
        }
    }

    public static Drawable S(Context context, int i) {
        Context applicationContext;
        if (context == null) {
            return null;
        }
        try {
            Drawable drawable = context.getDrawable(i);
            if (drawable != null) {
                return drawable;
            }
        } catch (Exception unused) {
        }
        try {
            Resources resources = context.getResources();
            ThreadLocal threadLocal = ResourcesCompat.f668a;
            Drawable drawable2 = resources.getDrawable(i, null);
            if (drawable2 != null) {
                return drawable2;
            }
        } catch (Exception unused2) {
        }
        try {
            applicationContext = context.getApplicationContext();
        } catch (Exception unused3) {
        }
        if (applicationContext == null) {
            return null;
        }
        Resources resources2 = applicationContext.getResources();
        ThreadLocal threadLocal2 = ResourcesCompat.f668a;
        Drawable drawable3 = resources2.getDrawable(i, null);
        if (drawable3 == null) {
            return null;
        }
        return drawable3;
    }

    public static String S0(String str) {
        if (!TextUtils.isEmpty(str)) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            try {
                BitmapFactory.decodeFile(str, options);
            } catch (Exception | OutOfMemoryError unused) {
            }
            String str2 = options.outMimeType;
            if (!TextUtils.isEmpty(str2)) {
                String lowerCase = str2.toLowerCase(Locale.US);
                if (lowerCase.contains("gif")) {
                    return "gif";
                }
                if (lowerCase.contains("png")) {
                    return "png";
                }
                if (lowerCase.contains("ico")) {
                    return "ico";
                }
                return "jpg";
            }
            return "jpg";
        }
        return "jpg";
    }

    public static int S1(MainActivity mainActivity) {
        if (mainActivity != null) {
            mainActivity.h0();
        }
        return PrefImage.z;
    }

    public static String S2(ArrayList arrayList, String str) {
        if (arrayList != null && !arrayList.isEmpty() && arrayList.contains(str)) {
            int i = 1;
            do {
                i++;
            } while (arrayList.contains(str + " (" + i + ")"));
            return str + " (" + i + ")";
        }
        return str;
    }

    public static HttpURLConnection S3(int i, int i2, Context context, String str, String str2, boolean z) {
        return T3(context, str, str2, i, i2, z, J0(), false);
    }

    public static boolean S4() {
        int i = PrefWeb.x;
        if (i != 3 && i != 4) {
            return false;
        }
        return true;
    }

    public static boolean S5(Context context) {
        try {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            if (audioManager == null) {
                return false;
            }
            return audioManager.isMusicActive();
        } catch (Exception unused) {
            return false;
        }
    }

    public static String S6(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        while (length > 0 && str.charAt(length - 1) == '/') {
            length--;
        }
        if (length < str.length()) {
            return str.substring(0, length);
        }
        return str;
    }

    public static void S7(Activity activity) {
        if (activity == null) {
            return;
        }
        int i = PrefVideo.o;
        if (i == 1) {
            v7(activity, 7);
        } else if (i == 2) {
            v7(activity, 6);
        } else {
            v7(activity, 4);
        }
    }

    public static Bitmap T(Context context, String str) {
        PackageManager packageManager;
        PackageInfo packageInfo;
        ApplicationInfo applicationInfo;
        if (context == null || TextUtils.isEmpty(str) || (packageManager = context.getPackageManager()) == null) {
            return null;
        }
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                packageInfo = packageManager.getPackageArchiveInfo(str, PackageManager.PackageInfoFlags.of(1L));
            } else {
                packageInfo = packageManager.getPackageArchiveInfo(str, 1);
            }
        } catch (Exception unused) {
            packageInfo = null;
        }
        if (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null) {
            return null;
        }
        applicationInfo.sourceDir = str;
        applicationInfo.publicSourceDir = str;
        return H(applicationInfo.loadIcon(packageManager), MainApp.g1);
    }

    public static String T0(String str) {
        int indexOf;
        if (!TextUtils.isEmpty(str) && str.startsWith("data:image/") && (indexOf = str.indexOf(59, 11)) > 11 && indexOf <= str.length()) {
            return str.substring(11, indexOf);
        }
        return "jpg";
    }

    public static int T1(boolean z) {
        if (z) {
            return PrefImage.A;
        }
        return PrefImage.z;
    }

    public static String T2(String str) {
        String str2;
        int lastIndexOf;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int lastIndexOf2 = str.lastIndexOf(46);
        int i = 0;
        String str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (lastIndexOf2 != -1) {
            str2 = str.substring(0, lastIndexOf2);
            if (lastIndexOf2 < str.length()) {
                str3 = str.substring(lastIndexOf2);
            }
        } else {
            str2 = str;
        }
        if (str2.endsWith(")") && (lastIndexOf = str2.lastIndexOf(" (")) != -1 && lastIndexOf < str2.length() - 3) {
            try {
                int parseInt = Integer.parseInt(str2.substring(lastIndexOf + 2, str2.length() - 1));
                try {
                    str2 = str.substring(0, lastIndexOf);
                } catch (Exception unused) {
                }
                i = parseInt;
            } catch (Exception unused2) {
            }
        }
        return str2 + " (" + (i + 1) + ")" + str3;
    }

    public static HttpURLConnection T3(Context context, String str, String str2, int i, int i2, boolean z, String str3, boolean z2) {
        String u0;
        String str4;
        if (!TextUtils.isEmpty(str)) {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) com.mycompany.app.warp.WarpAppProxy.open(new URL(str));
                if (z2) {
                    httpURLConnection.setRequestMethod(HttpMethods.HEAD);
                }
                if (i == 0) {
                    httpURLConnection.setConnectTimeout(5000);
                } else if (i > 0) {
                    httpURLConnection.setConnectTimeout(i);
                }
                if (i2 == 0) {
                    httpURLConnection.setReadTimeout(20000);
                } else if (i2 > 0) {
                    httpURLConnection.setReadTimeout(i2);
                }
                boolean z3 = false;
                if (v5(str2)) {
                    u0 = null;
                    str2 = null;
                } else {
                    if (t5(str)) {
                        str2 = str;
                    } else if (!TextUtils.isEmpty(str2)) {
                        MainApp p = MainApp.p(context);
                        if (p != null) {
                            String n = p.n(str);
                            if (!TextUtils.isEmpty(n)) {
                                httpURLConnection.setRequestProperty("Origin", n);
                            }
                        }
                    } else {
                        MainApp p2 = MainApp.p(context);
                        if (p2 != null && "https://missav.com".equals(p2.n(str))) {
                            z3 = true;
                        }
                    }
                    u0 = u0(context, str2);
                    if (TextUtils.isEmpty(str2)) {
                        str2 = str;
                    }
                }
                httpURLConnection.setRequestProperty("Accept", t0(str));
                if (z) {
                    str4 = "gzip, identity";
                } else {
                    str4 = "identity";
                }
                httpURLConnection.setRequestProperty("Accept-Encoding", str4);
                if (!z3) {
                    if (TextUtils.isEmpty(str3)) {
                        str3 = J0();
                    }
                    httpURLConnection.setRequestProperty("User-Agent", str3);
                }
                if (!TextUtils.isEmpty(str2)) {
                    httpURLConnection.setRequestProperty("Referer", str2);
                }
                if (!TextUtils.isEmpty(u0)) {
                    httpURLConnection.setRequestProperty("Cookie", u0);
                }
                return httpURLConnection;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static boolean T4(Context context) {
        if (context == null) {
            return false;
        }
        try {
            ClipboardManager k = MainApp.k(context);
            if (k == null) {
                return false;
            }
            return k.hasPrimaryClip();
        } catch (Exception | OutOfMemoryError unused) {
            return false;
        }
    }

    public static boolean T5(Context context, int i) {
        AppOpsManager appOpsManager;
        int i2 = Build.VERSION.SDK_INT;
        if (context != null) {
            if (i == 0) {
                if (ContextCompat.a(context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                    return false;
                }
            } else if (i == 2) {
                if (ContextCompat.a(context, "android.permission.CAMERA") == 0) {
                    return false;
                }
            } else if (i == 3) {
                if (ContextCompat.a(context, "android.permission.RECORD_AUDIO") == 0) {
                    return false;
                }
            } else if (i == 4) {
                if (ContextCompat.a(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                    return false;
                }
            } else if (i == 5) {
                if (i2 < 33 || ContextCompat.a(context, "android.permission.POST_NOTIFICATIONS") == 0) {
                    return false;
                }
            } else if (i == 6) {
                if (i2 >= 26 && (appOpsManager = (AppOpsManager) context.getSystemService("appops")) != null) {
                    if (i2 >= 29) {
                        if (appOpsManager.unsafeCheckOpNoThrow("android:picture_in_picture", Process.myUid(), context.getPackageName()) == 0) {
                            return false;
                        }
                    } else if (appOpsManager.checkOpNoThrow("android:picture_in_picture", Process.myUid(), context.getPackageName()) == 0) {
                        return false;
                    }
                } else {
                    return false;
                }
            } else {
                if (i == 7 && i2 >= 26) {
                    return !context.getPackageManager().canRequestPackageInstalls();
                }
                return false;
            }
            return true;
        }
        return false;
    }

    public static String T6(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        while (length > 0 && str.charAt(length - 1) <= ' ') {
            length--;
        }
        if (length < str.length()) {
            return str.substring(0, length);
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006c A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void T7(android.webkit.WebView r4, int r5, java.lang.String r6, boolean r7) {
        /*
            if (r4 != 0) goto L4
            goto L6c
        L4:
            r0 = 2
            r1 = 0
            if (r5 != r0) goto L28
            if (r7 == 0) goto Ld
            java.lang.String r5 = "if(window.sb_win_open){window.sb_win_open.disconnect();window.sb_win_open=null;}"
            goto L1d
        Ld:
            boolean r5 = com.mycompany.app.pref.PrefZtwo.E
            if (r5 == 0) goto L12
            goto L17
        L12:
            int r5 = com.mycompany.app.pref.PrefZtwo.C
            r5 = r5 & r0
            if (r5 != r0) goto L1c
        L17:
            java.lang.String r5 = v4()
            goto L1d
        L1c:
            r5 = r1
        L1d:
            boolean r0 = android.text.TextUtils.isEmpty(r5)
            if (r0 != 0) goto L28
            java.lang.StringBuilder r5 = android.support.v4.media.a.t(r5)
            goto L29
        L28:
            r5 = r1
        L29:
            boolean r0 = j5()
            r2 = 1
            if (r0 == 0) goto L6a
            boolean r0 = com.mycompany.app.main.MainApp.L1
            if (r0 == 0) goto L6a
            java.lang.String r0 = J1(r6, r2)
            r7 = r7 ^ r2
            boolean r3 = j5()
            if (r3 == 0) goto L48
            java.lang.String r3 = "file:///android_asset/shortcut.html"
            boolean r3 = r3.equals(r6)
            if (r3 == 0) goto L56
            goto L5a
        L48:
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 == 0) goto L4f
            goto L5a
        L4f:
            boolean r3 = g5(r6, r0)
            if (r3 != 0) goto L56
            goto L5a
        L56:
            java.lang.String r1 = A0(r6, r0, r7, r2)
        L5a:
            boolean r6 = android.text.TextUtils.isEmpty(r1)
            if (r6 != 0) goto L6a
            if (r5 != 0) goto L67
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
        L67:
            r5.append(r1)
        L6a:
            if (r5 != 0) goto L6d
        L6c:
            return
        L6d:
            r6 = 0
            java.lang.String r7 = "(function(){"
            r5.insert(r6, r7)
            java.lang.String r6 = "})();"
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            I(r4, r5, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.T7(android.webkit.WebView, int, java.lang.String, boolean):void");
    }

    public static long U(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo.availMem;
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static String U0(String str) {
        int indexOf;
        int indexOf2;
        if (!TextUtils.isEmpty(str) && (indexOf = str.indexOf("http")) != -1 && (indexOf2 = str.indexOf(41, indexOf)) != -1) {
            String substring = str.substring(indexOf, indexOf2);
            if (!TextUtils.isEmpty(substring)) {
                if (substring.endsWith("'") || substring.endsWith("\"")) {
                    substring = a.d(1, 0, substring);
                    if (TextUtils.isEmpty(substring)) {
                        return null;
                    }
                }
                String replace = substring.replace(" ", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).replace('\\', '%');
                if (TextUtils.isEmpty(replace)) {
                    return null;
                }
                return D0(replace);
            }
            return null;
        }
        return null;
    }

    public static ContentLengthInputStream U1(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new ContentLengthInputStream(new BufferedInputStream(a1(str), 32768), (int) new File(str).length());
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0050 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0051 A[Catch: Exception | OutOfMemoryError -> 0x006a, TryCatch #0 {Exception | OutOfMemoryError -> 0x006a, blocks: (B:7:0x000f, B:11:0x0032, B:12:0x001e, B:17:0x0039, B:25:0x0051, B:30:0x0065, B:34:0x004a), top: B:6:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap U2(java.lang.String r6) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            r1 = 0
            if (r0 == 0) goto L8
            goto L38
        L8:
            r0 = 1
            r2 = r0
            r3 = r1
        Lb:
            r4 = 26
            if (r2 >= r4) goto L35
            int[] r4 = com.nostra13.universalimageloader.core.ImageLoader.d     // Catch: java.lang.Throwable -> L6a
            r4 = r4[r2]     // Catch: java.lang.Throwable -> L6a
            java.lang.String r4 = com.nostra13.universalimageloader.utils.MemoryCacheUtils.a(r4, r6)     // Catch: java.lang.Throwable -> L6a
            boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L6a
            if (r5 == 0) goto L1e
            goto L32
        L1e:
            com.nostra13.universalimageloader.core.ImageLoader r5 = com.nostra13.universalimageloader.core.ImageLoader.f()     // Catch: java.lang.Throwable -> L6a
            com.nostra13.universalimageloader.cache.memory.impl.LruMemoryCache r5 = r5.g()     // Catch: java.lang.Throwable -> L6a
            android.graphics.Bitmap r3 = r5.a(r4)     // Catch: java.lang.Throwable -> L6a
            boolean r4 = f6(r3)     // Catch: java.lang.Throwable -> L6a
            if (r4 == 0) goto L32
            r6 = r0
            goto L36
        L32:
            int r2 = r2 + 1
            goto Lb
        L35:
            r6 = 0
        L36:
            if (r6 != 0) goto L39
        L38:
            return r1
        L39:
            int r6 = r3.getWidth()     // Catch: java.lang.Throwable -> L6a
            int r1 = r3.getHeight()     // Catch: java.lang.Throwable -> L6a
            int r2 = com.mycompany.app.main.MainApp.g1     // Catch: java.lang.Throwable -> L6a
            if (r6 > r2) goto L4a
            if (r1 <= r2) goto L48
            goto L4a
        L48:
            r2 = r0
            goto L4e
        L4a:
            int r2 = e0(r6, r1, r2, r2)     // Catch: java.lang.Throwable -> L6a
        L4e:
            if (r2 > r0) goto L51
            return r3
        L51:
            float r2 = (float) r2     // Catch: java.lang.Throwable -> L6a
            float r6 = (float) r6     // Catch: java.lang.Throwable -> L6a
            float r6 = r6 / r2
            int r6 = java.lang.Math.round(r6)     // Catch: java.lang.Throwable -> L6a
            float r1 = (float) r1     // Catch: java.lang.Throwable -> L6a
            float r1 = r1 / r2
            int r1 = java.lang.Math.round(r1)     // Catch: java.lang.Throwable -> L6a
            if (r6 != 0) goto L61
            r6 = r0
        L61:
            if (r1 != 0) goto L64
            goto L65
        L64:
            r0 = r1
        L65:
            android.graphics.Bitmap r6 = k3(r6, r0, r3)     // Catch: java.lang.Throwable -> L6a
            return r6
        L6a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.U2(java.lang.String):android.graphics.Bitmap");
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x007b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String U3(java.lang.String r8, boolean r9) {
        /*
            r0 = 0
            if (r8 != 0) goto L6
        L3:
            r1 = r0
            goto L75
        L6:
            int r1 = r8.length()
            if (r1 != 0) goto Ld
            goto L3
        Ld:
            r2 = 63
            int r2 = r8.indexOf(r2)     // Catch: java.lang.Exception -> L3
            if (r2 >= 0) goto L16
            goto L17
        L16:
            r1 = r2
        L17:
            r2 = 47
            int r2 = r8.lastIndexOf(r2, r1)     // Catch: java.lang.Exception -> L3
            r3 = 0
            if (r2 >= 0) goto L21
            r2 = r3
        L21:
            r4 = 35
            int r4 = o6(r8, r4, r2, r1)     // Catch: java.lang.Exception -> L3
            if (r4 <= r2) goto L2c
            if (r4 >= r1) goto L2c
            r1 = r4
        L2c:
            r4 = 46
            int r4 = o6(r8, r4, r2, r1)     // Catch: java.lang.Exception -> L3
            if (r4 >= r2) goto L35
            goto L3
        L35:
            r2 = 1
            int r4 = r4 + r2
            r5 = r4
        L38:
            if (r5 >= r1) goto L5d
            char r6 = r8.charAt(r5)     // Catch: java.lang.Exception -> L3
            r7 = 97
            if (r6 < r7) goto L47
            r7 = 122(0x7a, float:1.71E-43)
            if (r6 > r7) goto L47
            goto L59
        L47:
            r7 = 48
            if (r6 < r7) goto L50
            r7 = 57
            if (r6 > r7) goto L50
            goto L59
        L50:
            r7 = 65
            if (r6 < r7) goto L5c
            r7 = 90
            if (r6 > r7) goto L5c
            r3 = r2
        L59:
            int r5 = r5 + 1
            goto L38
        L5c:
            r1 = r5
        L5d:
            if (r1 > r4) goto L60
            goto L3
        L60:
            java.lang.String r1 = r8.substring(r4, r1)     // Catch: java.lang.Exception -> L3
            if (r9 == 0) goto L6d
            java.util.Locale r2 = java.util.Locale.US     // Catch: java.lang.Exception -> L3
            java.lang.String r1 = r1.toUpperCase(r2)     // Catch: java.lang.Exception -> L3
            goto L75
        L6d:
            if (r3 == 0) goto L75
            java.util.Locale r2 = java.util.Locale.US     // Catch: java.lang.Exception -> L3
            java.lang.String r1 = r1.toLowerCase(r2)     // Catch: java.lang.Exception -> L3
        L75:
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 == 0) goto L7c
            return r0
        L7c:
            if (r9 == 0) goto L86
            java.lang.String r0 = "GIF"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L90
        L86:
            if (r9 != 0) goto La6
            java.lang.String r0 = "gif"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto La6
        L90:
            java.util.Locale r0 = java.util.Locale.US
            java.lang.String r8 = r8.toLowerCase(r0)
            java.lang.String r0 = ".gif?type=mp4"
            boolean r8 = r8.contains(r0)
            if (r8 == 0) goto La6
            if (r9 == 0) goto La3
            java.lang.String r8 = "MP4"
            return r8
        La3:
            java.lang.String r8 = "mp4"
            return r8
        La6:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.U3(java.lang.String, boolean):java.lang.String");
    }

    public static boolean U4() {
        if (PrefSync.k) {
            return PrefWeb.T;
        }
        return PrefWeb.S;
    }

    public static boolean U5(String str) {
        if (TextUtils.isEmpty(str) || !str.startsWith("file:///")) {
            return false;
        }
        return str.endsWith(".mht");
    }

    public static String U6(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf("wlrtitdb");
        if (lastIndexOf != -1) {
            str = str.substring(0, lastIndexOf);
        }
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        return str.trim();
    }

    public static void U7(WebNestView webNestView, String str, String str2) {
        if (webNestView == null) {
            return;
        }
        StringBuilder k4 = k4(null, webNestView, str, str2);
        k4.insert(0, "(function(){");
        k4.append("})();");
        I(webNestView, k4.toString(), true);
    }

    public static String V(Context context, boolean z, boolean z2) {
        File filesDir;
        String str;
        String str2;
        if (z2) {
            if (!TextUtils.isEmpty(MainApp.a2)) {
                return MainApp.a2;
            }
            if (!TextUtils.isEmpty(MainApp.Z1)) {
                String str3 = MainApp.Z1;
                MainApp.a2 = str3;
                return str3;
            }
        } else {
            if (!TextUtils.isEmpty(MainApp.Y1)) {
                return MainApp.Y1;
            }
            if (!TextUtils.isEmpty(MainApp.X1)) {
                String str4 = MainApp.X1;
                MainApp.Y1 = str4;
                return str4;
            }
        }
        if (context == null || (filesDir = context.getFilesDir()) == null) {
            return null;
        }
        String path = filesDir.getPath();
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        String k = a.k(path, "/.back/");
        StringBuilder t = a.t(k);
        if (z) {
            str = "sec_port.jpg";
        } else {
            str = "back.jpg";
        }
        t.append(str);
        MainApp.Y1 = t.toString();
        StringBuilder t2 = a.t(k);
        if (z) {
            str2 = "sec_land.jpg";
        } else {
            str2 = "nor_land.jpg";
        }
        t2.append(str2);
        String sb = t2.toString();
        MainApp.a2 = sb;
        if (z2) {
            return sb;
        }
        return MainApp.Y1;
    }

    public static String V0(String str) {
        int lastIndexOf;
        int i;
        if (TextUtils.isEmpty(str) || (lastIndexOf = str.lastIndexOf(46)) == -1 || (i = lastIndexOf + 1) >= str.length()) {
            return null;
        }
        String substring = str.substring(i);
        if (TextUtils.isEmpty(substring)) {
            return null;
        }
        String trim = substring.trim();
        if (TextUtils.isEmpty(trim)) {
            return null;
        }
        return trim;
    }

    public static SizeItem V1(Context context, String str) {
        InputStream inputStream;
        SizeItem sizeItem = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(Uri.parse(str));
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapUtil.e(inputStream, options);
                sizeItem = new SizeItem(options.outWidth, options.outHeight);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            inputStream = null;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception unused3) {
            }
        }
        return sizeItem;
    }

    public static OutputStream V2(Context context, String str, boolean z) {
        String str2;
        if (MainUri.q(str)) {
            ContentResolver contentResolver = context.getContentResolver();
            Uri parse = Uri.parse(str);
            if (z) {
                str2 = "wa";
            } else {
                str2 = "w";
            }
            return contentResolver.openOutputStream(parse, str2);
        }
        return c1(str, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:144:0x008f, code lost:
    
        if (android.text.TextUtils.isEmpty(r4) != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0044, code lost:
    
        if (r0.equals("mp3") != false) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:131:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String V3(java.lang.String r11, java.lang.String r12, java.lang.String r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.V3(java.lang.String, java.lang.String, java.lang.String, boolean):java.lang.String");
    }

    public static boolean V4() {
        if (PrefPdf.z) {
            return false;
        }
        return !TextUtils.isEmpty(PrefMain.D);
    }

    public static boolean V5(AppCompatActivity appCompatActivity) {
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        return appCompatActivity.isInMultiWindowMode();
    }

    public static void V6(View view) {
        if (view != null) {
            try {
                ViewParent parent = view.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeViewInLayout(view);
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void V7(String str, Bitmap bitmap) {
        if (!TextUtils.isEmpty(str) && f6(bitmap)) {
            ImageLoader.f().g().b(MemoryCacheUtils.a(2, str), bitmap);
        }
    }

    public static String W(Context context, boolean z, boolean z2) {
        String str;
        String str2;
        if (z2) {
            if (!TextUtils.isEmpty(MainApp.Z1)) {
                return MainApp.Z1;
            }
        } else if (!TextUtils.isEmpty(MainApp.X1)) {
            return MainApp.X1;
        }
        String G0 = G0(context, ".back");
        if (TextUtils.isEmpty(G0)) {
            return null;
        }
        String k = a.k(G0, "/");
        StringBuilder t = a.t(k);
        if (z) {
            str = "sec_port.jpg";
        } else {
            str = "back.jpg";
        }
        t.append(str);
        MainApp.X1 = t.toString();
        StringBuilder t2 = a.t(k);
        if (z) {
            str2 = "sec_land.jpg";
        } else {
            str2 = "nor_land.jpg";
        }
        t2.append(str2);
        String sb = t2.toString();
        MainApp.Z1 = sb;
        if (z2) {
            return sb;
        }
        return MainApp.X1;
    }

    public static String W0(String str) {
        String V0 = V0(str);
        if (V0 == null) {
            return null;
        }
        return V0.toLowerCase(Locale.US);
    }

    public static Bitmap W1(MainItem.ChildItem childItem, boolean z) {
        BitmapFactory.Options options;
        if (TextUtils.isEmpty(childItem.g)) {
            return null;
        }
        if (z) {
            Bitmap U2 = U2(childItem.g);
            if (f6(U2)) {
                return U2;
            }
        }
        String str = childItem.g;
        if (!TextUtils.isEmpty(str)) {
            try {
                options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                try {
                    BitmapFactory.decodeFile(str, options);
                } catch (Exception | OutOfMemoryError unused) {
                }
                int i = options.outWidth;
                int i2 = MainApp.g1;
                if (i > i2 || options.outHeight > i2) {
                    options.inSampleSize = e0(i, options.outHeight, i2, i2);
                }
                options.inJustDecodeBounds = false;
            } catch (Exception | OutOfMemoryError unused2) {
                return null;
            }
        }
        return BitmapFactory.decodeFile(str, options);
    }

    public static String W2(int i, int i2) {
        if (i == 0) {
            return "0 / 0";
        }
        return (i2 + 1) + " / " + i;
    }

    public static String W3(String str, boolean z) {
        int lastIndexOf;
        int lastIndexOf2;
        if (TextUtils.isEmpty(str) || (lastIndexOf = str.lastIndexOf(46)) == -1) {
            return null;
        }
        String U3 = U3(str.substring(lastIndexOf), false);
        if (!TextUtils.isEmpty(U3) && U3.length() <= 4) {
            if (z) {
                if (U3.equals("jpeg") || U3.equals("jpe")) {
                    return "jpg";
                }
                if (!Compress.D(U3)) {
                    if (Y5(str)) {
                        if ("gifv".equals(U3)) {
                            return "gif";
                        }
                        if ("pnj".equals(U3)) {
                            return "png";
                        }
                    }
                    return null;
                }
            } else if (!Compress.D(U3) && (lastIndexOf2 = str.lastIndexOf(63, lastIndexOf)) != -1) {
                return W3(str.substring(0, lastIndexOf2), z);
            }
            return U3;
        }
        int lastIndexOf3 = str.lastIndexOf(63, lastIndexOf);
        if (lastIndexOf3 == -1) {
            return null;
        }
        return W3(str.substring(0, lastIndexOf3), z);
    }

    public static void W4(final Context context) {
        if (context == null) {
            return;
        }
        MainApp.J(context, new Runnable() { // from class: com.mycompany.app.main.MainUtil.4
            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = context;
                NotificationManager q = MainApp.q(context2);
                if (q != null) {
                    q.cancel(2147483641);
                }
                if (PrefTts.s) {
                    PrefTts.s = false;
                    PrefSet.g(12, context2, "mCheckBack", false);
                }
            }
        });
    }

    public static boolean W5() {
        int i = PrefSecret.H;
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return PrefSync.k;
        }
        return false;
    }

    public static void W6(View view) {
        if (view != null) {
            try {
                ViewParent parent = view.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(view);
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void W7(WebView webView, boolean z) {
        if (webView == null) {
            return;
        }
        WebSettings settings = webView.getSettings();
        settings.setTextZoom(100);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(false);
        settings.setSupportMultipleWindows(false);
        settings.setMediaPlaybackRequiresUserGesture(!z);
        settings.setDatabaseEnabled(true);
        settings.setMixedContentMode(0);
        if (Build.VERSION.SDK_INT < 30) {
            settings.setAllowFileAccessFromFileURLs(true);
            settings.setAllowUniversalAccessFromFileURLs(true);
        }
        settings.setAllowFileAccess(true);
        settings.setLoadsImagesAutomatically(z);
        settings.setJavaScriptEnabled(true);
        Context context = webView.getContext();
        MainApp.M(context);
        MainApp.O(context, webView, MainApp.l(true));
        webView.setOverScrollMode(2);
    }

    public static StringBuilder X(String str) {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            a.z(sb, "var ele=document.querySelector(\"video[src*='", str, "']\");if(!ele){ele=document.querySelector(\"source[src*='", str);
            a.y(sb, "']\");if(ele){ele=ele.parentNode;}else{ele=document.querySelector(\"audio[src*='", str, "']\");}if(!ele){");
        } else {
            sb.append("var ele=null;");
        }
        sb.append("var eles=document.querySelectorAll(\"video,audio\");if(eles&&(eles.length>0)){if(eles.length==1){ele=eles[0];}else{for(var i=0;i<eles.length;i++){if(!eles[i].paused&&eles[i].duration){ele=eles[i];break;}}if(!ele){ele=eles[0];}}}if(!ele){eles=document.querySelectorAll(\"source[type*='video'],source[type*='audio']\");if(eles&&(eles.length>0)){if(eles.length==1){ele=eles[0].parentNode;}else{for(var i=0;i<eles.length;i++){if(!eles[i].parentNode.paused&&eles[i].parentNode.duration){ele=eles[i].parentNode;break;}}if(!ele){ele=eles[0].parentNode;}}}}");
        if (!TextUtils.isEmpty(str)) {
            sb.append("if(ele){function myVideoPlaying(evt){var src=null;var ele=evt.target||evt.srcElement;if(ele){src=ele.src;}android.onVideoPaused(src,false);}function myVideoPaused(evt){var src=null;var ele=evt.target||evt.srcElement;if(ele){src=ele.src;}android.onVideoPaused(src,true);}ele.addEventListener(\"playing\",myVideoPlaying);ele.addEventListener(\"pause\",myVideoPaused);}}}");
        }
        return sb;
    }

    public static String X0(String str) {
        String V0 = V0(str);
        if (V0 == null) {
            return null;
        }
        return V0.toUpperCase(Locale.US);
    }

    public static String X1(int i, int i2, int i3, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(".");
        sb.append(i);
        sb.append(".");
        sb.append(i2);
        return androidx.work.impl.workers.a.t(sb, ".", i3, ".b");
    }

    public static String X2(String str) {
        int lastIndexOf;
        if (!TextUtils.isEmpty(str) && (lastIndexOf = str.lastIndexOf(47)) > 0 && lastIndexOf < str.length()) {
            String substring = str.substring(lastIndexOf);
            if (!TextUtils.isEmpty(substring)) {
                return a.C("file:///offline", substring);
            }
        }
        return "file:///offline";
    }

    public static String X3(String str) {
        String Y6 = Y6(str);
        if (TextUtils.isEmpty(Y6)) {
            return null;
        }
        if (str.startsWith("https://") || str.startsWith("http://")) {
            String J1 = J1(str, false);
            if (TextUtils.isEmpty(J1) || J1.equals(Y6)) {
                return null;
            }
        }
        int lastIndexOf = Y6.lastIndexOf(47);
        if (lastIndexOf != -1) {
            Y6 = Y6.substring(lastIndexOf + 1);
            if (TextUtils.isEmpty(Y6)) {
                return null;
            }
        }
        String lowerCase = Y6.toLowerCase(Locale.US);
        for (String str2 : MainConst.f) {
            if (lowerCase.contains(str2)) {
                return null;
            }
        }
        return Y6;
    }

    public static void X4(final Context context, final View view) {
        if (context != null && view != null) {
            MainApp p = MainApp.p(context);
            if (p != null && p.m != null) {
                MainApp.N(context, new AnonymousClass9(context, view));
            } else {
                MainApp.J(context, new Runnable() { // from class: com.mycompany.app.main.MainUtil.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        View view2;
                        Context context2 = context;
                        MainApp.o(context2);
                        if (context2 != null && (view2 = view) != null) {
                            MainApp.N(context2, new AnonymousClass9(context2, view2));
                        }
                    }
                });
            }
        }
    }

    public static boolean X5(Context context) {
        Point s4 = s4(context);
        if (s4 == null || Math.min(s4.x, s4.y) >= MainApp.X0) {
            return false;
        }
        return true;
    }

    public static String X6(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int i = 0;
        while (i < length && str.charAt(i) == '\"') {
            i++;
        }
        while (i < length && str.charAt(length - 1) == '\"') {
            length--;
        }
        if (i <= 0 && length >= str.length()) {
            return str;
        }
        return str.substring(i, length);
    }

    public static void X7(WebSettings webSettings, boolean z) {
        if (webSettings != null && !j5()) {
            try {
                WebSettingsCompat.a(webSettings, z);
            } catch (UnsupportedOperationException | Exception unused) {
            }
        }
    }

    public static boolean Y(BufferedWriter bufferedWriter, String str, byte[] bArr) {
        String h0 = h0(bArr);
        if (TextUtils.isEmpty(h0)) {
            h0 = "null";
        }
        try {
            bufferedWriter.write(str);
            bufferedWriter.write("\n");
            bufferedWriter.write("b");
            bufferedWriter.write("\n");
            bufferedWriter.write(h0);
            bufferedWriter.write("\n");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static MainItem.ChildItem Y0(MainItem.ChildItem childItem, String str) {
        if (childItem != null && childItem.v == 0) {
            if (childItem.k) {
                childItem.f16550a = 0;
                childItem.f16551c = 0;
                childItem.v = 0;
                childItem.w = R.drawable.outline_folder_black_24;
                return childItem;
            }
            if (childItem.f16550a == 32) {
                childItem.f16551c = 0;
                childItem.v = -460552;
                childItem.w = R.drawable.outline_public_black_24;
                return childItem;
            }
            if (TextUtils.isEmpty(str)) {
                childItem.f16550a = 44;
                childItem.f16551c = 0;
                childItem.v = -460552;
                childItem.w = R.drawable.outline_draft_black_24;
                return childItem;
            }
            if (Compress.w(str)) {
                childItem.f16550a = 1;
                childItem.f16551c = 4;
                childItem.v = -460552;
                childItem.w = R.drawable.outline_local_library_black_24;
                return childItem;
            }
            if (Compress.G(str)) {
                childItem.f16550a = 2;
                childItem.f16551c = 5;
                childItem.v = -460552;
                childItem.w = R.drawable.outline_picture_as_pdf_black_24;
                return childItem;
            }
            if (Compress.z(str)) {
                childItem.f16550a = 3;
                childItem.f16551c = 0;
                childItem.v = -460552;
                childItem.w = R.drawable.outline_folder_zip_black_24;
                return childItem;
            }
            if (Compress.D(str)) {
                childItem.f16550a = 4;
                childItem.f16551c = 1;
                childItem.v = -460552;
                childItem.w = R.drawable.outline_image_black_24;
                return childItem;
            }
            if (Compress.K(str)) {
                childItem.f16550a = 5;
                childItem.f16551c = 2;
                childItem.v = -460552;
                childItem.w = R.drawable.baseline_play_arrow_black_24;
                return childItem;
            }
            if (Compress.E(str)) {
                childItem.f16550a = 6;
                childItem.f16551c = 3;
                childItem.v = -460552;
                childItem.w = R.drawable.baseline_music_note_black_24;
                return childItem;
            }
            if (Compress.A(str)) {
                childItem.f16550a = 7;
                childItem.f16551c = 0;
                childItem.v = -460552;
                childItem.w = R.drawable.outline_description_black_24;
                return childItem;
            }
            if (Compress.L(str)) {
                childItem.f16550a = 8;
                childItem.f16551c = 11;
                childItem.v = -460552;
                childItem.w = R.drawable.outline_public_black_24;
                return childItem;
            }
            if (Compress.x(str)) {
                childItem.f16550a = 9;
                childItem.f16551c = 6;
                childItem.v = -460552;
                childItem.w = R.drawable.outline_android_black_24;
                return childItem;
            }
            childItem.f16550a = 44;
            childItem.f16551c = 0;
            childItem.v = -460552;
            childItem.w = R.drawable.outline_draft_black_24;
        }
        return childItem;
    }

    public static InputStream Y1(Context context, String str) {
        if (MainUri.q(str)) {
            return context.getContentResolver().openInputStream(Uri.parse(str));
        }
        return a1(str);
    }

    public static String Y2(Context context, String str) {
        if (U5(str)) {
            String str2 = null;
            if (!TextUtils.isEmpty(str) && str.startsWith("file:///offline/") && context != null) {
                String substring = str.substring(15);
                if (!TextUtils.isEmpty(substring)) {
                    str2 = context.getFilesDir() + "/.page" + substring;
                }
            }
            if (!TextUtils.isEmpty(str2)) {
                if (new File(str2).exists()) {
                    return str2;
                }
                return "file:///expired";
            }
        }
        return str;
    }

    public static InputStream Y3(Context context, String str, String str2, Map map) {
        if (!TextUtils.isEmpty(str) && map != null) {
            try {
                String u0 = u0(context, str2);
                if (!TextUtils.isEmpty(u0)) {
                    map.put("Cookie", u0);
                }
                Request.Builder builder = new Request.Builder();
                builder.d(str);
                Headers headers = Headers.i(map);
                Intrinsics.checkNotNullParameter(headers, "headers");
                builder.f22064c = headers.g();
                Request request = new Request(builder);
                OkHttpClient okHttpClient = new OkHttpClient(new OkHttpClient.Builder());
                Intrinsics.checkNotNullParameter(request, "request");
                ResponseBody responseBody = new RealCall(okHttpClient, request).c().k;
                if (responseBody != null) {
                    return responseBody.d().inputStream();
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static void Y4(final Context context) {
        if (context == null) {
            return;
        }
        MainApp.J(context, new Runnable() { // from class: com.mycompany.app.main.MainUtil.2
            @Override // java.lang.Runnable
            public final void run() {
                NotificationManager q = MainApp.q(context);
                if (q != null) {
                    q.cancel(2147483642);
                }
            }
        });
    }

    public static boolean Y5(String str) {
        String J1 = J1(str, true);
        if (!TextUtils.isEmpty(J1) && J1.endsWith("tumblr.com") && J1.contains("media")) {
            return true;
        }
        return false;
    }

    public static String Y6(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int i = 0;
        while (i < length && str.charAt(i) == '/') {
            i++;
        }
        while (i < length && str.charAt(length - 1) == '/') {
            length--;
        }
        if (i <= 0 && length >= str.length()) {
            return str;
        }
        return str.substring(i, length);
    }

    public static void Y7(WebView webView) {
        StringBuilder sb;
        if (webView != null) {
            if (PrefZtwo.U) {
                sb = a.t("var el1=document.querySelector(\"button[class*='ytp-unmute']\");if(el1){el1.click();}");
            } else {
                sb = null;
            }
            if (!PrefZtwo.T) {
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append("var el2=document.querySelector(\"video\");if(el2){el2.pause();}");
            }
            if (sb == null) {
                return;
            }
            sb.insert(0, "(function(){");
            sb.append("})();");
            I(webView, sb.toString(), true);
        }
    }

    public static boolean Z(BufferedWriter bufferedWriter, String str, int i) {
        try {
            bufferedWriter.write(str);
            bufferedWriter.write("\n");
            bufferedWriter.write("i");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(i));
            bufferedWriter.write("\n");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void Z0(MainItem.ChildItem childItem) {
        String W0;
        if (childItem != null && childItem.v == 0) {
            if (childItem.k) {
                W0 = null;
            } else {
                W0 = W0(childItem.h);
            }
            Y0(childItem, W0);
        }
    }

    public static String Z1(String str, boolean z) {
        Intent parseUri;
        if (!TextUtils.isEmpty(str)) {
            if (!str.startsWith("intent")) {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        int indexOf = str.indexOf("http", 4);
                        if (indexOf >= 4) {
                            String decode = URLDecoder.decode(str.substring(indexOf), "UTF-8");
                            if (URLUtil.isNetworkUrl(decode)) {
                                return decode;
                            }
                            return null;
                        }
                    } catch (Exception unused) {
                        return null;
                    }
                }
                return null;
            }
            try {
                parseUri = Intent.parseUri(str, 1);
            } catch (URISyntaxException unused2) {
            }
            if (parseUri != null) {
                str = parseUri.getStringExtra("browser_fallback_url");
                if (!TextUtils.isEmpty(str)) {
                    if (str.startsWith("https://play.google.com")) {
                        return null;
                    }
                    if (z) {
                        String J1 = J1(str, true);
                        if (TextUtils.isEmpty(J1) || !J1.endsWith("yahoo.co.jp")) {
                            return null;
                        }
                    }
                    if (a6(str)) {
                        return str;
                    }
                    return null;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    public static String Z2(Context context, String str) {
        int lastIndexOf;
        int length;
        int i;
        Cursor cursor;
        if (!U5(str)) {
            return str;
        }
        DbBookPage dbBookPage = DbBookPage.f12939c;
        String str2 = null;
        if (context != null && !TextUtils.isEmpty(str) && (lastIndexOf = str.lastIndexOf(95)) >= 0 && (i = lastIndexOf + 1) < str.length() - 4) {
            long I6 = I6(str.substring(i, length));
            if (I6 != 0) {
                try {
                    cursor = DbUtil.f(DbBookPage.a(context).getWritableDatabase(), "DbBookPage_table", new String[]{"_url"}, I6);
                    if (cursor != null) {
                        try {
                            if (cursor.moveToFirst()) {
                                str2 = cursor.getString(cursor.getColumnIndex("_url"));
                            }
                        } catch (Exception unused) {
                        }
                    }
                } catch (Exception unused2) {
                    cursor = null;
                }
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
        if (TextUtils.isEmpty(str2)) {
            return X2(str);
        }
        return str2;
    }

    public static String Z3(Context context, String str) {
        String b1;
        if (str == null) {
            return str;
        }
        int length = str.length();
        if (length != 0) {
            if (length > 13 && str.startsWith("userscript://")) {
                String substring = str.substring(13);
                if (!TextUtils.isEmpty(substring)) {
                    if (!substring.startsWith("user.")) {
                        return substring;
                    }
                    return "U" + substring.substring(1);
                }
            } else {
                if (URLUtil.isNetworkUrl(str)) {
                    b1 = V3(str, null, null, true);
                } else {
                    b1 = b1(context, str);
                }
                if (b1 == null) {
                    return b1;
                }
                int length2 = b1.length();
                if (length2 != 0) {
                    int lastIndexOf = b1.lastIndexOf(".user.js");
                    if (lastIndexOf > 0 && lastIndexOf < length2) {
                        return b1.substring(0, lastIndexOf);
                    }
                    int lastIndexOf2 = b1.lastIndexOf(46);
                    if (lastIndexOf2 > 0 && lastIndexOf2 < length2) {
                        return b1.substring(0, lastIndexOf2);
                    }
                    return b1;
                }
                return b1;
            }
        }
        return str;
    }

    public static void Z4(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("var clns=document.querySelectorAll('div[class^=\"");
        sb.append(str);
        sb.append("\"]');if(clns&&(clns.length>0)){for(var i=0;i<clns.length;i++){clns[i].style.display='none';}}");
        sb.insert(0, "(function(){");
        sb.append("})();");
        I(webView, sb.toString(), true);
    }

    public static boolean Z5(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !str2.equals("x.com")) {
            return false;
        }
        if (!str.endsWith("login") && !str.endsWith("signup")) {
            return false;
        }
        return true;
    }

    public static String Z6(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int i = 0;
        while (i < length && (str.charAt(i) <= ' ' || str.charAt(i) == '-')) {
            i++;
        }
        while (i < length) {
            int i2 = length - 1;
            if (str.charAt(i2) > ' ' && (length <= 0 || str.charAt(i2) != '-')) {
                break;
            }
            length--;
        }
        if (i <= 0 && length >= str.length()) {
            return str;
        }
        return str.substring(i, length);
    }

    public static boolean Z7(int i, Activity activity, String str, String str2, String str3) {
        Uri R3;
        String u2;
        String str4;
        if (activity == null) {
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            e8(activity, R.string.invalid_path);
            return false;
        }
        boolean q = MainUri.q(str);
        if (TextUtils.isEmpty(str3)) {
            if (i == 4) {
                str3 = "image/*";
            } else if (i == 5) {
                str3 = "video/*";
            } else if (i == 6) {
                str3 = "audio/*";
            } else if (i == 7) {
                str3 = "text/*";
            } else {
                if (q) {
                    if (TextUtils.isEmpty(str2)) {
                        str4 = MainUri.k(activity, str);
                    } else {
                        str4 = str2;
                    }
                    u2 = u2(str4);
                } else {
                    u2 = u2(str);
                }
                str3 = u2;
                if (TextUtils.isEmpty(str3)) {
                    str3 = "*/*";
                }
            }
        }
        try {
            if (q) {
                R3 = Uri.parse(str);
            } else {
                R3 = R3(activity, str);
            }
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setDataAndType(R3, str3);
            intent.putExtra("android.intent.extra.STREAM", R3);
            if (!TextUtils.isEmpty(str2)) {
                intent.putExtra("android.intent.extra.TITLE", str2);
                intent.putExtra("android.intent.extra.SUBJECT", str2);
            }
            intent.putExtra("EXTRA_SOUL", true);
            intent.addFlags(3);
            activity.startActivity(Intent.createChooser(intent, activity.getString(R.string.share)));
            return true;
        } catch (ActivityNotFoundException unused) {
            e8(activity, R.string.apps_none);
            return false;
        } catch (Exception unused2) {
            e8(activity, R.string.invalid_path);
            return false;
        }
    }

    public static void a(boolean[] zArr, int i, int i2, boolean z) {
        if (zArr == null) {
            return;
        }
        if (MainApp.R1) {
            try {
                arraysFill(zArr, i, i2, z);
                return;
            } catch (Exception | UnsatisfiedLinkError unused) {
            }
        }
        Arrays.fill(zArr, i, (i2 + i) - 1, z);
    }

    public static boolean a0(BufferedWriter bufferedWriter) {
        try {
            bufferedWriter.write("//|#_line_#|//");
            bufferedWriter.write("\n");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static InputStream a1(String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Files.newInputStream(Paths.get(str, new String[0]), new OpenOption[0]);
        }
        return new FileInputStream(str);
    }

    public static int[] a2(String str) {
        int[] iArr = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split2 = str.split(",");
        if (split2 != null && split2.length != 0) {
            int length = split2.length;
            iArr = new int[length];
            for (int i = 0; i < length; i++) {
                int G6 = G6(split2[i]);
                if (G6 >= 0 && G6 < 74) {
                    iArr[i] = G6;
                }
            }
        }
        return iArr;
    }

    public static String a3(String str) {
        int i;
        int o3 = o3(str);
        if (o3 == 0) {
            return str;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        int indexOf = lowerCase.indexOf("https://", o3);
        int i2 = -1;
        if (indexOf != -1) {
            int i3 = indexOf + 8;
            int indexOf2 = str.indexOf(38, i3);
            int indexOf3 = str.indexOf(34, i3);
            if (indexOf2 != -1 && indexOf3 != -1) {
                i2 = Math.min(indexOf2, indexOf3);
            } else if (indexOf2 != -1) {
                i2 = indexOf2;
            } else if (indexOf3 != -1) {
                i2 = indexOf3;
            }
            if (i2 > indexOf && i2 <= str.length()) {
                return str.substring(indexOf, i2);
            }
            return str;
        }
        int indexOf4 = lowerCase.indexOf("http://", o3);
        if (indexOf4 != -1) {
            int i4 = indexOf4 + 7;
            int indexOf5 = str.indexOf(38, i4);
            int indexOf6 = str.indexOf(34, i4);
            if (indexOf5 != -1 && indexOf6 != -1) {
                i2 = Math.min(indexOf5, indexOf6);
            } else if (indexOf5 != -1) {
                i2 = indexOf5;
            } else if (indexOf6 != -1) {
                i2 = indexOf6;
            }
            if (i2 > indexOf4 && i2 <= str.length()) {
                return str.substring(indexOf4, i2);
            }
            return str;
        }
        int indexOf7 = lowerCase.indexOf("https%3a%2f%2f", o3);
        if (indexOf7 != -1) {
            String substring = str.substring(indexOf7);
            try {
                substring = URLDecoder.decode(substring, "UTF-8");
            } catch (Exception unused) {
            }
            int indexOf8 = substring.indexOf(38);
            int indexOf9 = substring.indexOf(34);
            if (indexOf8 != -1 && indexOf9 != -1) {
                i2 = Math.min(indexOf8, indexOf9);
            } else if (indexOf8 != -1) {
                i2 = indexOf8;
            } else if (indexOf9 != -1) {
                i2 = indexOf9;
            }
            if (i2 > 0 && i2 <= substring.length()) {
                return substring.substring(0, i2);
            }
            return substring;
        }
        int indexOf10 = lowerCase.indexOf("http%3a%2f%2f", o3);
        if (indexOf10 != -1) {
            String substring2 = str.substring(indexOf10);
            try {
                substring2 = URLDecoder.decode(substring2, "UTF-8");
            } catch (Exception unused2) {
            }
            int indexOf11 = substring2.indexOf(38);
            int indexOf12 = substring2.indexOf(34);
            if (indexOf11 != -1 && indexOf12 != -1) {
                i2 = Math.min(indexOf11, indexOf12);
            } else if (indexOf11 != -1) {
                i2 = indexOf11;
            } else if (indexOf12 != -1) {
                i2 = indexOf12;
            }
            if (i2 > 0 && i2 <= substring2.length()) {
                return substring2.substring(0, i2);
            }
            return substring2;
        }
        int indexOf13 = lowerCase.indexOf("/bbs/view_image.php?fn=", o3);
        if (indexOf13 != -1 && (i = indexOf13 + 23) < str.length()) {
            String J1 = J1(str, false);
            String substring3 = str.substring(i);
            try {
                substring3 = URLDecoder.decode(substring3, "UTF-8");
            } catch (Exception unused3) {
            }
            return a.k(J1, substring3);
        }
        return str;
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator, java.lang.Object] */
    public static String a4(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            return G0(context, ".filter") + "/" + new Object().a(str);
        }
        return null;
    }

    public static int a5(String str, char c2, int i, int i2) {
        try {
            int length = str.length();
            if (length != 0 && i < length) {
                if (i < 0) {
                    i = 0;
                }
                if (i2 >= length) {
                    i2 = length - 1;
                }
                int i3 = i2 + 1;
                while (i < i3) {
                    if (str.charAt(i) == c2) {
                        return i;
                    }
                    i++;
                }
                return -1;
            }
            return -1;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static boolean a6(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (!str.startsWith("https:") && !str.startsWith("http:") && !str.startsWith("file:") && !str.startsWith("content:") && !str.startsWith("inline:") && !str.startsWith("data:") && !str.startsWith("about:") && !str.startsWith("blob:") && !str.startsWith("chrome:") && !str.startsWith("javascript:") && !str.startsWith("view-source:")) {
            return false;
        }
        return true;
    }

    public static String a7(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int i = 0;
        while (i < length && (str.charAt(i) <= ' ' || str.charAt(i) == '/')) {
            i++;
        }
        while (i < length) {
            int i2 = length - 1;
            if (str.charAt(i2) > ' ' && (length <= 0 || str.charAt(i2) != '/')) {
                break;
            }
            length--;
        }
        if (i <= 0 && length >= str.length()) {
            return str;
        }
        return str.substring(i, length);
    }

    public static boolean a8(Activity activity, String str, String str2) {
        if (activity != null && !TextUtils.isEmpty(str)) {
            try {
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.TEXT", str);
                if (!TextUtils.isEmpty(str2)) {
                    intent.putExtra("android.intent.extra.TITLE", str2);
                    intent.putExtra("android.intent.extra.SUBJECT", str2);
                }
                intent.putExtra("EXTRA_SOUL", true);
                activity.startActivity(Intent.createChooser(intent, activity.getString(R.string.share)));
                return true;
            } catch (ActivityNotFoundException unused) {
                e8(activity, R.string.apps_none);
            } catch (Exception unused2) {
                e8(activity, R.string.not_supported);
                return false;
            }
        }
        return false;
    }

    private static native void arraysFill(boolean[] zArr, int i, int i2, boolean z);

    public static void b(boolean[] zArr, boolean z) {
        if (zArr == null) {
            return;
        }
        if (MainApp.R1) {
            try {
                arraysFill(zArr, 0, zArr.length, z);
                return;
            } catch (Exception | UnsatisfiedLinkError unused) {
            }
        }
        Arrays.fill(zArr, z);
    }

    public static boolean b0(BufferedWriter bufferedWriter, String str, long j) {
        try {
            bufferedWriter.write(str);
            bufferedWriter.write("\n");
            bufferedWriter.write("l");
            bufferedWriter.write("\n");
            bufferedWriter.write(Long.toString(j));
            bufferedWriter.write("\n");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static String b1(Context context, String str) {
        int length;
        int i;
        int i2;
        if (str == null || (length = str.length()) == 0) {
            return null;
        }
        if (context != null && MainUri.q(str)) {
            return MainUri.k(context, str);
        }
        int i3 = length;
        while (true) {
            i = i3 - 1;
            if (i <= 0 || str.charAt(i) != '/') {
                break;
            }
            i3--;
        }
        if (i3 <= 1) {
            if (length != 1) {
                return str.substring(0, 1);
            }
        } else {
            int lastIndexOf = str.lastIndexOf(47, i);
            if (lastIndexOf >= 0 && (i2 = lastIndexOf + 1) < i3) {
                if (i3 == length) {
                    return str.substring(i2);
                }
                return str.substring(i2, i3);
            }
            if (i3 != length) {
                return str.substring(0, i3);
            }
        }
        return str;
    }

    public static String b2(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        StringBuilder sb = null;
        for (int i : iArr) {
            if (i >= 0 && i < 74) {
                if (sb == null) {
                    sb = new StringBuilder();
                } else {
                    sb.append(",");
                }
                sb.append(i);
            }
        }
        if (sb == null) {
            return null;
        }
        return sb.toString();
    }

    public static int b3(int i) {
        if (i < 0) {
            i = 0;
        } else if (i > 90) {
            i = 90;
        }
        return Math.round(((100 - i) * KotlinVersion.MAX_COMPONENT_VALUE) / 100.0f);
    }

    public static String b4(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (str.length() <= str2.length()) {
                return str.concat(str2);
            }
            int lastIndexOf = str.lastIndexOf(46);
            if (lastIndexOf > 0 && lastIndexOf < str.length()) {
                String substring = str.substring(lastIndexOf);
                if (TextUtils.isEmpty(substring)) {
                    return str.concat(str2);
                }
                if (substring.equals(str2)) {
                    return str;
                }
                if (substring.length() > 4) {
                    return str.concat(str2);
                }
                return str.substring(0, lastIndexOf) + str2;
            }
            return str.concat(str2);
        }
        return null;
    }

    public static int b5(String str, int i, int i2, String str2) {
        int length;
        try {
            length = str.length();
        } catch (Exception unused) {
        }
        if (length == 0 || i >= length) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 >= length) {
            i2 = length - 1;
        }
        int length2 = str2.length();
        if (length2 == 0) {
            return -1;
        }
        char charAt = str2.charAt(0);
        int i3 = (i2 - length2) + 2;
        while (i < i3) {
            if (str.charAt(i) != charAt) {
                do {
                    i++;
                    if (i >= i3) {
                        break;
                    }
                } while (str.charAt(i) != charAt);
            }
            if (i < i3) {
                int i4 = i + length2;
                int i5 = i + 1;
                for (int i6 = 1; i5 < i4 && str.charAt(i5) == str2.charAt(i6); i6++) {
                    i5++;
                }
                if (i5 == i4) {
                    return i;
                }
            }
            i++;
        }
        return -1;
    }

    public static boolean b6(int i, String str) {
        int i2 = i - 4;
        if (str.charAt(i2) == '.') {
            int i3 = i - 3;
            if (str.startsWith("jpg", i3) || str.startsWith("png", i3) || str.startsWith("gif", i3)) {
                return true;
            }
            return false;
        }
        if (str.charAt(i - 5) == '.') {
            if (str.startsWith("webp", i2) || str.startsWith("jpeg", i2)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public static void b7(final View view) {
        if (view == null) {
            return;
        }
        view.post(new Runnable() { // from class: com.mycompany.app.main.MainUtil.10
            @Override // java.lang.Runnable
            public final void run() {
                view.requestFocus();
            }
        });
    }

    public static void b8(final Context context, WebNestView webNestView, final boolean z, final boolean z2) {
        if (context != null && webNestView != null) {
            final String title = webNestView.getTitle();
            final Bitmap favicon = webNestView.getFavicon();
            MainApp.J(context, new Runnable() { // from class: com.mycompany.app.main.MainUtil.3
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationCompat.Builder builder;
                    int i;
                    String str;
                    int i2;
                    int i3;
                    Context context2 = context;
                    NotificationManager q = MainApp.q(context2);
                    if (q != null) {
                        String str2 = title;
                        boolean isEmpty = TextUtils.isEmpty(str2);
                        boolean z3 = z2;
                        String str3 = null;
                        if (isEmpty) {
                            str2 = context2.getString(R.string.back_play);
                        } else if (!z3) {
                            str3 = context2.getString(R.string.back_play);
                        }
                        Intent o4 = MainUtil.o4(context2);
                        o4.addFlags(268435456);
                        PendingIntent activity = PendingIntent.getActivity(context2, 6, o4, 201326592);
                        String packageName = context2.getPackageName();
                        if (z3) {
                            if (z) {
                                i = R.drawable.baseline_play_arrow_white_24;
                                str = "play";
                            } else {
                                i = R.drawable.baseline_pause_white_24;
                                str = "pause";
                            }
                            if (MainUtil.O5(context2)) {
                                i2 = R.drawable.baseline_fast_forward_white_24;
                                i3 = R.drawable.baseline_fast_rewind_white_24;
                            } else {
                                i2 = R.drawable.baseline_fast_rewind_white_24;
                                i3 = R.drawable.baseline_fast_forward_white_24;
                            }
                            int i4 = i2;
                            int i5 = i3;
                            Intent intent = new Intent("com.mycompany.app.soulbrowser.ACTION_PIP_FRWD");
                            intent.setPackage(packageName);
                            PendingIntent broadcast = PendingIntent.getBroadcast(context2, 0, intent, 201326592);
                            Intent intent2 = new Intent("com.mycompany.app.soulbrowser.ACTION_PIP_PLAY");
                            intent2.setPackage(packageName);
                            PendingIntent broadcast2 = PendingIntent.getBroadcast(context2, 1, intent2, 201326592);
                            Intent intent3 = new Intent("com.mycompany.app.soulbrowser.ACTION_PIP_FFWD");
                            intent3.setPackage(packageName);
                            String str4 = str2;
                            PendingIntent broadcast3 = PendingIntent.getBroadcast(context2, 2, intent3, 201326592);
                            Intent intent4 = new Intent("com.mycompany.app.soulbrowser.ACTION_BACK_STOP");
                            intent4.setPackage(packageName);
                            PendingIntent broadcast4 = PendingIntent.getBroadcast(context2, 3, intent4, 201326592);
                            NotificationCompat.Action action = new NotificationCompat.Action(i4, "frwd", broadcast);
                            NotificationCompat.Action action2 = new NotificationCompat.Action(i, str, broadcast2);
                            NotificationCompat.Action action3 = new NotificationCompat.Action(i5, "ffwd", broadcast3);
                            NotificationCompat.Action action4 = new NotificationCompat.Action(R.drawable.outline_close_white_24, "stop", broadcast4);
                            builder = new NotificationCompat.Builder(context2, "BackPlayMode");
                            builder.u.icon = R.drawable.baseline_play_arrow_white_24;
                            builder.e = NotificationCompat.Builder.c(str4);
                            builder.g = activity;
                            builder.i = 1;
                            builder.o = "com.mycompany.app.soulbrowser.NOTI_GROUP_BACKPLAY";
                            builder.a(action);
                            builder.a(action2);
                            builder.a(action3);
                            builder.a(action4);
                            NotificationCompat.MediaStyle mediaStyle = new NotificationCompat.MediaStyle();
                            mediaStyle.b = new int[]{0, 1, 2, 3};
                            builder.g(mediaStyle);
                        } else {
                            String str5 = str2;
                            Intent intent5 = new Intent("com.mycompany.app.soulbrowser.ACTION_BACK_STOP");
                            intent5.setPackage(packageName);
                            NotificationCompat.Action action5 = new NotificationCompat.Action(R.drawable.outline_close_white_24, "stop", PendingIntent.getBroadcast(context2, 3, intent5, 201326592));
                            builder = new NotificationCompat.Builder(context2, "BackPlayMode");
                            builder.u.icon = R.drawable.baseline_play_arrow_white_24;
                            builder.e = NotificationCompat.Builder.c(str5);
                            builder.g = activity;
                            builder.i = 1;
                            builder.o = "com.mycompany.app.soulbrowser.NOTI_GROUP_BACKPLAY";
                            builder.a(action5);
                            NotificationCompat.MediaStyle mediaStyle2 = new NotificationCompat.MediaStyle();
                            mediaStyle2.b = new int[]{0};
                            builder.g(mediaStyle2);
                            if (!TextUtils.isEmpty(str3)) {
                                builder.f = NotificationCompat.Builder.c(str3);
                            }
                        }
                        Bitmap bitmap = favicon;
                        if (MainUtil.f6(bitmap)) {
                            builder.e(bitmap);
                        }
                        Notification b2 = builder.b();
                        b2.flags |= 48;
                        if (Build.VERSION.SDK_INT >= 26) {
                            q.createNotificationChannel(new NotificationChannel("BackPlayMode", context2.getString(R.string.back_play), 2));
                        }
                        q.notify(2147483641, b2);
                        if (!PrefTts.s) {
                            PrefTts.s = true;
                            PrefSet.g(12, context2, "mCheckBack", true);
                        }
                    }
                }
            });
        }
    }

    public static void c() {
        Toast toast = MainApp.T1;
        MainApp.T1 = null;
        if (toast != null) {
            try {
                toast.cancel();
            } catch (Exception unused) {
            }
        }
    }

    public static boolean c0(BufferedWriter bufferedWriter, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = "null";
        }
        try {
            bufferedWriter.write(str);
            bufferedWriter.write("\n");
            bufferedWriter.write("s");
            bufferedWriter.write("\n");
            bufferedWriter.write(str2);
            bufferedWriter.write("\n");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static OutputStream c1(String str, boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            if (z) {
                return Files.newOutputStream(Paths.get(str, new String[0]), StandardOpenOption.CREATE, com.google.common.net.a.j());
            }
            return Files.newOutputStream(Paths.get(str, new String[0]), new OpenOption[0]);
        }
        return new FileOutputStream(str, z);
    }

    public static String c2(String str) {
        if (str == null || str.length() <= 28 || !str.startsWith("https://cdn.jsdelivr.net/gh/")) {
            return null;
        }
        int indexOf = str.indexOf("@master/", 28);
        if (indexOf == -1 && (indexOf = str.indexOf("@main/", 28)) == -1) {
            return null;
        }
        String substring = str.substring(28, indexOf);
        if (TextUtils.isEmpty(substring)) {
            return null;
        }
        String substring2 = str.substring(indexOf + 1);
        if (TextUtils.isEmpty(substring2)) {
            return null;
        }
        return a.m("https://raw.githubusercontent.com/", substring, "/", substring2);
    }

    public static String c3(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (str.length() > 14 && str.endsWith(" - Pornhub.com")) {
            String d = a.d(14, 0, str);
            if (!TextUtils.isEmpty(d)) {
                return d;
            }
        }
        return str;
    }

    public static String c4(Context context) {
        PackageInfo packageInfo;
        if (context == null) {
            return null;
        }
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
            } else {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            }
        } catch (PackageManager.NameNotFoundException | Exception unused) {
            packageInfo = null;
        }
        if (packageInfo == null) {
            return null;
        }
        return packageInfo.versionName;
    }

    public static void c5(EditText editText) {
        if (W5() && Build.VERSION.SDK_INT >= 26 && editText != null) {
            try {
                editText.setImeOptions(editText.getImeOptions() | 16777216);
            } catch (Exception unused) {
            }
        }
    }

    public static boolean c6(String str) {
        int length;
        if (str == null || (length = str.length()) < 10) {
            return false;
        }
        if (str.startsWith("data:image/") || b6(length, str)) {
            return true;
        }
        int indexOf = str.indexOf(63);
        if (indexOf < 10) {
            return false;
        }
        return b6(indexOf, str);
    }

    /** True for downloadable data: URLs (images, or other base64 payloads except HTML documents). */
    public static boolean isDataUrlDownload(String str) {
        int indexOf;
        if (TextUtils.isEmpty(str) || !str.startsWith("data:")) {
            return false;
        }
        if (str.startsWith("data:image/")) {
            return true;
        }
        if (str.startsWith("data:text/html")) {
            return false;
        }
        indexOf = str.indexOf(44);
        return indexOf > 5 && str.substring(0, indexOf).contains(";base64");
    }

    public static byte[] decodeDataUrl(String str) {
        int indexOf;
        if (TextUtils.isEmpty(str) || (indexOf = str.indexOf(44)) < 0 || indexOf + 1 >= str.length()) {
            return null;
        }
        if (!str.substring(0, indexOf).contains(";base64")) {
            return null;
        }
        try {
            return Base64.decode(str.substring(indexOf + 1), 0);
        } catch (Exception | OutOfMemoryError unused) {
            return null;
        }
    }

    public static boolean writeBytes(Context context, String str, byte[] bArr) {
        OutputStream outputStream;
        if (context == null || TextUtils.isEmpty(str) || bArr == null || bArr.length == 0) {
            return false;
        }
        try {
            outputStream = V2(context, str, false);
        } catch (Exception unused) {
            outputStream = null;
        }
        if (outputStream == null) {
            return false;
        }
        try {
            outputStream.write(bArr);
            try {
                outputStream.close();
            } catch (Exception unused2) {
            }
            return true;
        } catch (Exception unused3) {
            try {
                outputStream.close();
            } catch (Exception unused4) {
            }
            return false;
        }
    }

    public static boolean isUiForeground(Context context) {
        if (context == null) {
            return false;
        }
        try {
            ActivityManager.RunningAppProcessInfo info = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(info);
            if (info.importance > ActivityManager.RunningAppProcessInfo.IMPORTANCE_VISIBLE) {
                return false;
            }
            if (!ProcessLifecycleOwner.m.getLifecycle().b().a(Lifecycle.State.i)) {
                return false;
            }
            if (context instanceof LifecycleOwner) {
                if (!((LifecycleOwner) context).getLifecycle().b().a(Lifecycle.State.i)) {
                    return false;
                }
                if (context instanceof Activity) {
                    Activity activity = (Activity) context;
                    if (activity.isFinishing()) {
                        return false;
                    }
                    if (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed()) {
                        return false;
                    }
                }
                return true;
            }
            MainApp p = MainApp.p(context);
            return p != null && p.o > 0;
        } catch (Exception | NoSuchMethodError | NoClassDefFoundError unused) {
            return false;
        }
    }

    public static void quietKillProcess() {
        MainApp.P1 = true;
        MainApp.Q1 = true;
        try {
            Process.killProcess(Process.myPid());
        } catch (Exception unused) {
        }
        try {
            System.exit(0);
        } catch (Exception unused2) {
        }
    }

    public static void c7(Context context, String str, boolean z) {
        Intent makeRestartActivityTask;
        if (!MainApp.P1) {
            MainApp.P1 = true;
            K(context, true, true);
            // Never bring Soul to the front after a background WebView renderer death.
            // The old path started MainSwitchBlack with NEW_TASK|CLEAR_TASK then
            // System.exit, which races shade dismiss / BAL and steals focus.
            if (!isUiForeground(context)) {
                quietKillProcess();
                return;
            }
            try {
                if (k5(z)) {
                    makeRestartActivityTask = new Intent(context, (Class<?>) MainSwitchBlack.class);
                    makeRestartActivityTask.addFlags(268468224);
                } else {
                    makeRestartActivityTask = Intent.makeRestartActivityTask(context.getPackageManager().getLaunchIntentForPackage(context.getPackageName()).getComponent());
                }
                if (!TextUtils.isEmpty(str)) {
                    makeRestartActivityTask.putExtra("EXTRA_PATH", str);
                    if (PrefTts.w && str.equals("short_new_tab")) {
                        makeRestartActivityTask.putExtra("EXTRA_KEYPAD", true);
                    }
                }
                context.startActivity(makeRestartActivityTask);
                if (context instanceof Activity) {
                    if (Build.VERSION.SDK_INT >= 34) {
                        ((Activity) context).overrideActivityTransition(0, R.anim.slide_in_left, R.anim.slide_out_left);
                    } else {
                        ((Activity) context).overridePendingTransition(R.anim.slide_in_left, R.anim.slide_out_left);
                    }
                }
            } catch (Exception unused) {
            }
            if (!MainApp.Q1) {
                MainApp.Q1 = true;
                try {
                    System.exit(0);
                } catch (Exception unused2) {
                }
            }
        }
    }

    public static void c8(final Context context, final View view) {
        if (context != null && view != null) {
            MainApp p = MainApp.p(context);
            if (p != null && p.m != null) {
                MainApp.N(context, new AnonymousClass7(context, view));
            } else {
                MainApp.J(context, new Runnable() { // from class: com.mycompany.app.main.MainUtil.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        View view2;
                        Context context2 = context;
                        MainApp.o(context2);
                        if (context2 != null && (view2 = view) != null) {
                            MainApp.N(context2, new AnonymousClass7(context2, view2));
                        }
                    }
                });
            }
        }
    }

    private static native int compareName(String str, String str2);

    public static boolean d(Activity activity, String str, String str2, boolean z, boolean z2) {
        boolean z3 = false;
        if (activity != null && !TextUtils.isEmpty(str)) {
            if (TextUtils.isEmpty(str2)) {
                str2 = u2(MainUri.k(activity, str));
                if (TextUtils.isEmpty(str2)) {
                    if (z) {
                        str2 = "*/*";
                    }
                }
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                if (!TextUtils.isEmpty(str2)) {
                    z3 = str2.equals("application/vnd.android.package-archive");
                }
                if (z3 && T5(activity, 7)) {
                    if (i >= 26) {
                        Intent intent = new Intent(activity, (Class<?>) MainPermission.class);
                        intent.putExtra("EXTRA_TYPE", 7);
                        if (!TextUtils.isEmpty(str)) {
                            intent.putExtra("EXTRA_PATH", str);
                            intent.putExtra("EXTRA_EXT", z2);
                        }
                        activity.startActivity(intent);
                        return true;
                    }
                    return true;
                }
            }
            return y4(activity, str, str2, z, z2);
        }
        return false;
    }

    public static Bitmap d0(Context context, String str) {
        Bitmap bitmap;
        int indexOf;
        int i;
        ByteArrayInputStream byteArrayInputStream = null;
        Bitmap bitmap2 = null;
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            indexOf = str.indexOf(44);
        } catch (Exception | OutOfMemoryError unused) {
            bitmap = null;
        }
        if (indexOf >= 0 && (i = indexOf + 1) < str.length()) {
            ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(Base64.decode(str.substring(i).getBytes(), 0));
            try {
                bitmap2 = BitmapFactory.decodeStream(byteArrayInputStream2);
            } catch (Exception | OutOfMemoryError unused2) {
            }
            bitmap = bitmap2;
            byteArrayInputStream = byteArrayInputStream2;
            if (byteArrayInputStream != null) {
                try {
                    byteArrayInputStream.close();
                } catch (Exception unused3) {
                }
            }
            return bitmap;
        }
        return null;
    }

    public static String d1(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            if (context != null && MainUri.q(str)) {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                MainUri.f(context, str);
                int lastIndexOf = str.lastIndexOf("%2F");
                int lastIndexOf2 = str.lastIndexOf("%3A");
                int max = Math.max(Math.max(lastIndexOf, lastIndexOf2), str.lastIndexOf(47));
                if (max > 0 && max < str.length()) {
                    return str.substring(0, max);
                }
                return str;
            }
            while (true) {
                if (str.endsWith("/")) {
                    if (str.length() <= 1) {
                        break;
                    }
                    str = a.d(1, 0, str);
                } else {
                    int lastIndexOf3 = str.lastIndexOf(47);
                    if (lastIndexOf3 != -1) {
                        String substring = str.substring(0, lastIndexOf3);
                        if (TextUtils.isEmpty(substring)) {
                            break;
                        }
                        return substring;
                    }
                }
            }
        }
        return "/";
    }

    public static HashMap d2(Context context, String str, String str2) {
        String str3;
        String str4;
        HashMap hashMap = new HashMap();
        boolean z = false;
        if (v5(str2)) {
            str4 = null;
            str3 = null;
        } else {
            if (t5(str)) {
                str2 = str;
            } else if (!TextUtils.isEmpty(str2)) {
                MainApp p = MainApp.p(context);
                if (p != null) {
                    String n = p.n(str);
                    if (!TextUtils.isEmpty(n)) {
                        hashMap.put("Origin", n);
                    }
                }
            } else {
                MainApp p2 = MainApp.p(context);
                if (p2 != null && "https://missav.com".equals(p2.n(str))) {
                    z = true;
                }
            }
            String u0 = u0(context, str2);
            if (TextUtils.isEmpty(str2)) {
                str2 = str;
            }
            String str5 = str2;
            str3 = u0;
            str4 = str5;
        }
        hashMap.put("Accept", t0(str));
        hashMap.put("Accept-Encoding", "gzip, identity");
        if (!z) {
            hashMap.put("User-Agent", J0());
        }
        if (!TextUtils.isEmpty(str4)) {
            hashMap.put("Referer", str4);
        }
        if (!TextUtils.isEmpty(str3)) {
            hashMap.put("Cookie", str3);
        }
        return hashMap;
    }

    public static String d3(String str) {
        int indexOf;
        int H6;
        int i;
        if (!TextUtils.isEmpty(str) && str.startsWith("https://i.pinimg.com/") && !str.startsWith("736x/", 21) && (indexOf = str.indexOf("x/", 21)) > 21 && (H6 = H6(str.substring(21, indexOf))) != -1 && H6 < 736 && (i = indexOf + 2) < str.length()) {
            String substring = str.substring(i);
            if (TextUtils.isEmpty(substring)) {
                return null;
            }
            return a.C("https://i.pinimg.com/736x/", substring);
        }
        return null;
    }

    public static int d4(int i, boolean z) {
        int i2;
        boolean z2 = PrefZone.o;
        boolean z3 = PrefZone.p;
        if (z3) {
            i2 = (z2 ? 1 : 0) + 1;
        } else {
            i2 = z2 ? 1 : 0;
        }
        if (PrefZone.q) {
            i2++;
        }
        boolean z4 = true;
        if (i2 <= 1) {
            z4 = false;
        }
        if (z4) {
            if (z) {
                return R.drawable.outline_video_library_white_24;
            }
            if (i == 0) {
                return R.drawable.outline_video_library_black_24;
            }
            return R.drawable.outline_video_library_dark_24;
        }
        if (z2) {
            if (z) {
                return R.drawable.outline_picture_in_picture_alt_white_24;
            }
            if (i == 0) {
                return R.drawable.outline_picture_in_picture_alt_black_24;
            }
            return R.drawable.outline_picture_in_picture_alt_dark_24;
        }
        if (z3) {
            if (z) {
                return R.drawable.outline_fullscreen_white_24;
            }
            if (i == 0) {
                return R.drawable.outline_fullscreen_black_24;
            }
            return R.drawable.outline_fullscreen_dark_24;
        }
        if (z) {
            return R.drawable.outline_download_white_24;
        }
        if (i == 0) {
            return R.drawable.outline_download_black_24;
        }
        return R.drawable.outline_download_dark_24;
    }

    public static void d5(Context context) {
        String str;
        if (TextUtils.isEmpty(MainApp.b2) || TextUtils.isEmpty(PrefZtwo.n)) {
            String str2 = MainApp.b2;
            if (TextUtils.isEmpty(str2)) {
                str2 = null;
                if (context != null) {
                    try {
                        str2 = WebSettings.getDefaultUserAgent(context);
                    } catch (Exception | UnsatisfiedLinkError unused) {
                    }
                }
                if (!TextUtils.isEmpty(str2)) {
                    MainApp.b2 = str2;
                } else {
                    return;
                }
            }
            if (str2 != null && str2.length() != 0) {
                if (!TextUtils.isEmpty(PrefZtwo.o)) {
                    str = PrefZtwo.o;
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append((char) L6(65, 90));
                    int L6 = L6(3, 9);
                    for (int i = 0; i < L6; i++) {
                        sb.append((char) L6(97, 122));
                    }
                    sb.append("/");
                    String sb2 = sb.toString();
                    PrefZtwo.o = sb2;
                    PrefSet.c(16, context, "mSoulAgName", sb2);
                    str = PrefZtwo.o;
                }
                str2 = str2.replace("; wv", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).replace("Version/", str);
            }
            if (!TextUtils.isEmpty(str2) && !str2.equals(PrefZtwo.n)) {
                PrefZtwo.n = str2;
                PrefSet.c(16, context, "mSoulAgent", str2);
            }
        }
    }

    public static boolean d6(String str) {
        String J1 = J1(str, true);
        if (TextUtils.isEmpty(J1) || !J1.endsWith("phncdn.com") || !str.startsWith("/pics/gifs/", J1.length())) {
            return false;
        }
        String str2 = null;
        if (TextUtils.isEmpty(null)) {
            str2 = U3(str, false);
        }
        return "gif".equalsIgnoreCase(str2);
    }

    public static void d7(Activity activity, String str, boolean z) {
        if (MainConst.f16452a) {
            c7(activity, str, z);
            return;
        }
        K(activity, true, false);
        try {
            activity.finishAffinity();
            Intent o4 = o4(activity);
            if (!TextUtils.isEmpty(str)) {
                o4.putExtra("EXTRA_PATH", str);
            }
            activity.startActivity(o4);
        } catch (Exception unused) {
        }
    }

    public static void d8(final Context context) {
        if (!PrefSecret.p || context == null) {
            return;
        }
        MainApp.J(context, new Runnable() { // from class: com.mycompany.app.main.MainUtil.1
            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = context;
                NotificationManager q = MainApp.q(context2);
                if (q == null) {
                    return;
                }
                Intent intent = new Intent("com.mycompany.app.soulbrowser.ACTION_SECRET_EXIT");
                intent.setPackage(context2.getPackageName());
                PendingIntent broadcast = PendingIntent.getBroadcast(context2, 5, intent, 201326592);
                NotificationCompat.Action action = new NotificationCompat.Action(R.drawable.outline_close_black_24, context2.getString(R.string.secret_exit), broadcast);
                NotificationCompat.Builder builder = new NotificationCompat.Builder(context2, "SecretMode");
                builder.u.icon = R.drawable.outline_secret_mode_white_24;
                builder.e = NotificationCompat.Builder.c(context2.getString(R.string.secret_exit));
                builder.g = broadcast;
                builder.i = 1;
                builder.r = -1;
                builder.o = "com.mycompany.app.soulbrowser.NOTI_GROUP_SECRET";
                builder.a(action);
                Notification b2 = builder.b();
                b2.flags |= 48;
                if (Build.VERSION.SDK_INT >= 26) {
                    q.createNotificationChannel(new NotificationChannel("SecretMode", context2.getString(R.string.secret_mode), 2));
                }
                q.notify(2147483642, b2);
            }
        });
    }

    public static boolean e(Context context, boolean z) {
        int a2;
        try {
            a2 = BiometricManager.c(context).a();
        } catch (Exception unused) {
        }
        if (a2 != -2) {
            if (a2 != -1) {
                if (a2 == 0) {
                    return true;
                }
                if (a2 != 1) {
                    if (a2 != 11) {
                        if (a2 != 12) {
                            if (a2 == 15) {
                                if (z) {
                                    e8(context, R.string.finger_security);
                                    return false;
                                }
                            } else if (z) {
                                e8(context, R.string.pay_fail);
                            }
                        } else if (z) {
                            e8(context, R.string.finger_no_hardware);
                            return false;
                        }
                    } else if (z) {
                        e8(context, R.string.finger_register);
                        return false;
                    }
                } else if (z) {
                    e8(context, R.string.finger_unavailable);
                    return false;
                }
            } else if (z) {
                e8(context, R.string.finger_unknown);
                return false;
            }
        } else if (z) {
            e8(context, R.string.finger_unsupported);
            return false;
        }
        return false;
    }

    public static int e0(int i, int i2, int i3, int i4) {
        int i5 = i / 2;
        int i6 = i2 / 2;
        int i7 = 1;
        while (i5 / i7 > i3 && i6 / i7 > i4) {
            i7 *= 2;
        }
        if (i7 < 1) {
            return 1;
        }
        return i7;
    }

    public static String e1(long j, long j2) {
        return i1(j) + " / " + i1(j2);
    }

    public static String e2(int i, String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        byte[] bytes = str.getBytes();
        if (bytes == null || bytes.length <= i) {
            return str.trim();
        }
        while (bytes.length > i) {
            if (str.length() < 2) {
                return str.trim();
            }
            str = a.d(1, 0, str);
            if (str == null) {
                return null;
            }
            bytes = str.getBytes();
            if (bytes == null || bytes.length <= i) {
                return str.trim();
            }
        }
        return str.trim();
    }

    public static Rational e3(int i, int i2) {
        if (i == 1280 && i2 == 720) {
            return new Rational(i, i2);
        }
        Rational rational = new Rational(i, i2);
        float floatValue = rational.floatValue();
        if (floatValue < 0.41841f) {
            return new Rational(Math.round(i2 * 0.42f), i2);
        }
        if (floatValue > 2.39f) {
            return new Rational(i, Math.round(i / 2.38f));
        }
        return rational;
    }

    public static Bitmap e4(Context context, MainItem.ChildItem childItem) {
        if (TextUtils.isEmpty(childItem.g)) {
            return null;
        }
        if (TextUtils.isEmpty(childItem.z)) {
            childItem.z = p2(context, childItem.g);
        }
        if (new File(childItem.z).length() > 0) {
            return BitmapUtil.c(childItem.z);
        }
        Bitmap f4 = f4(context, childItem.g);
        p(context, f4, childItem.z);
        return f4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x004c, code lost:
    
        if (r19.charAt(r10) != r12) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x004e, code lost:
    
        r10 = r10 + r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x004f, code lost:
    
        if (r10 >= r9) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0051, code lost:
    
        r14 = r19.charAt(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0055, code lost:
    
        if (r14 != r12) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0058, code lost:
    
        if (r14 != r13) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x005a, code lost:
    
        r14 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x005d, code lost:
    
        if (r10 >= r9) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x005f, code lost:
    
        r15 = r10 + r11;
        r16 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0063, code lost:
    
        if (r14 == 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0065, code lost:
    
        r17 = r1;
        r1 = r3;
        r14 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x006a, code lost:
    
        if (r14 >= r15) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x006c, code lost:
    
        r18 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x006e, code lost:
    
        r3 = r19.charAt(r14);
        r8 = r7.charAt(r1);
        r16 = r1;
        r1 = (char) (r8 - ' ');
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x007b, code lost:
    
        if (r3 == r8) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x007d, code lost:
    
        if (r3 == r1) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x007f, code lost:
    
        r18 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a2, code lost:
    
        if (r14 != r15) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00a4, code lost:
    
        r1 = -1;
        r18 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00aa, code lost:
    
        r10 = r10 + 1;
        r1 = r17;
        r3 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0080, code lost:
    
        r14 = r14 + 1;
        r1 = r16 + 1;
        r3 = r18 == true ? 1 : 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0087, code lost:
    
        r18 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x008a, code lost:
    
        r17 = r1;
        r18 = r3;
        r1 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0090, code lost:
    
        if (r1 >= r15) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x009a, code lost:
    
        if (r19.charAt(r1) != r7.charAt(r3)) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x009c, code lost:
    
        r1 = r1 + 1;
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00a1, code lost:
    
        r14 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00a6, code lost:
    
        r17 = r1;
        r18 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x005c, code lost:
    
        r14 = r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean e5(java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 191
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.e5(java.lang.String):boolean");
    }

    public static boolean e6(String str) {
        int c2 = MainUrl.c(str);
        return c2 >= 6 && str.startsWith(".user.js", c2 - 5) && URLUtil.isNetworkUrl(str);
    }

    public static String e7(String str) {
        String D1 = D1(str, true);
        if (!TextUtils.isEmpty(D1)) {
            String lowerCase = D1.toLowerCase(Locale.US);
            if (TextUtils.isEmpty(lowerCase)) {
                return null;
            }
            return a.C("https://www.google.com/s2/favicons?sz=64&domain_url=", lowerCase);
        }
        return null;
    }

    public static void e8(Context context, int i) {
        if (context == null) {
            return;
        }
        c();
        Toast makeText = Toast.makeText(context, i, 0);
        makeText.show();
        MainApp.T1 = makeText;
    }

    public static boolean f(DataUrl.ImgCntItem imgCntItem, int i, int i2) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        if (imgCntItem == null) {
            return true;
        }
        if (imgCntItem.f12903a > 0) {
            if ((i & 2) == 2) {
                z11 = true;
            } else {
                z11 = false;
            }
            if ((i2 & 2) == 2) {
                z12 = true;
            } else {
                z12 = false;
            }
            if (z11 != z12) {
                return true;
            }
        }
        if (imgCntItem.b > 0) {
            if ((i & 4) == 4) {
                z9 = true;
            } else {
                z9 = false;
            }
            if ((i2 & 4) == 4) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z9 != z10) {
                return true;
            }
        }
        if (imgCntItem.f12904c > 0) {
            if ((i & 8) == 8) {
                z7 = true;
            } else {
                z7 = false;
            }
            if ((i2 & 8) == 8) {
                z8 = true;
            } else {
                z8 = false;
            }
            if (z7 != z8) {
                return true;
            }
        }
        if (imgCntItem.d > 0) {
            if ((i & 16) == 16) {
                z5 = true;
            } else {
                z5 = false;
            }
            if ((i2 & 16) == 16) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (z5 != z6) {
                return true;
            }
        }
        if (imgCntItem.e > 0) {
            if ((i & 32) == 32) {
                z3 = true;
            } else {
                z3 = false;
            }
            if ((i2 & 32) == 32) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (z3 != z4) {
                return true;
            }
        }
        if (imgCntItem.f > 0) {
            if ((i & 64) == 64) {
                z = true;
            } else {
                z = false;
            }
            if ((i2 & 64) == 64) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z != z2) {
                return true;
            }
        }
        return false;
    }

    public static ByteArrayInputStream f0(Bitmap bitmap) {
        if (!f6(bitmap)) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
        return new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
    }

    public static String f1() {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                return FileSystems.getDefault().getSeparator();
            } catch (Exception unused) {
            }
        }
        try {
            return System.getProperty("file.separator");
        } catch (Exception unused2) {
            return "/";
        }
    }

    public static String f2(Locale locale) {
        if (locale == null) {
            return null;
        }
        String language = locale.getLanguage();
        if (TextUtils.isEmpty(language)) {
            return null;
        }
        String country = locale.getCountry();
        if (TextUtils.isEmpty(country)) {
            return null;
        }
        return a.D(language, "-", country);
    }

    public static String f3(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (z) {
            return a.l("data:text/html;charset=utf-8,<?xml version=\"1.0\"encoding=\"UTF-8\"?><html><head><style>html{background-color:black;}</style><meta name=\"viewport\"content=\"width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=5.0,user-scalable=yes\"></head><body><video src=\"", str, "\"width=\"100%\"height=\"100%\"muted autoplay loop controls controlsList=\"nodownload\"></video></body></html>");
        }
        return a.l("data:text/html;charset=utf-8,<?xml version=\"1.0\"encoding=\"UTF-8\"?><html><head><style>html{background-color:black;}</style><meta name=\"viewport\"content=\"width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no\"></head><body><audio src=\"", str, "\"style=\"width:100%\"preload=\"auto\"autoplay loop controls controlsList=\"nodownload noplaybackrate\"></audio></body></html>");
    }

    public static Bitmap f4(Context context, String str) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                try {
                    mediaMetadataRetriever.setDataSource(context, Uri.parse(str));
                    mediaMetadataRetriever.extractMetadata(1);
                    bitmap2 = mediaMetadataRetriever.getFrameAtTime(1000000L, 3);
                } catch (Exception | OutOfMemoryError unused) {
                    bitmap2 = null;
                }
                M6(mediaMetadataRetriever);
            } catch (Exception | OutOfMemoryError unused2) {
                bitmap = null;
            }
            if (f6(bitmap2)) {
                if (bitmap2.getWidth() > MainApp.g1 || bitmap2.getHeight() > MainApp.g1) {
                    int width = bitmap2.getWidth();
                    int height = bitmap2.getHeight();
                    int i = MainApp.g1;
                    int e0 = e0(width, height, i, i);
                    if (e0 > 1) {
                        float f = e0;
                        int round = Math.round(bitmap2.getWidth() / f);
                        int round2 = Math.round(bitmap2.getHeight() / f);
                        if (round == 0) {
                            round = 8;
                        }
                        if (round2 == 0) {
                            round2 = 8;
                        }
                        bitmap = k3(round, round2, bitmap2);
                        try {
                            bitmap2.recycle();
                        } catch (Exception | OutOfMemoryError unused3) {
                        }
                        if (f6(bitmap)) {
                            return bitmap;
                        }
                    }
                }
                return bitmap2;
            }
        }
        return null;
    }

    public static boolean f5() {
        Locale j = MainApp.j();
        if (j == null) {
            return false;
        }
        return "CN".equalsIgnoreCase(j.getCountry());
    }

    public static boolean f6(Bitmap bitmap) {
        if (bitmap != null && !bitmap.isRecycled() && bitmap.getWidth() != 0 && bitmap.getHeight() != 0) {
            return true;
        }
        return false;
    }

    public static void f7() {
        int i;
        if (PrefWeb.J) {
            if (Build.VERSION.SDK_INT >= 29) {
                i = -1;
            } else {
                i = 3;
            }
        } else if (PrefWeb.K == 1) {
            // DayNight (floating ActionMode, etc.) follows UI theme, not web theme.
            // Web dark mode is applied separately via MainApp.L1 / WebSettings.
            i = 2;
        } else {
            i = 1;
        }
        int i2 = AppCompatDelegate.f;
        if (i2 != i) {
            if (i != -1 && i != 0 && i != 1 && i != 2 && i != 3) {
                Log.d("AppCompatDelegate", "setDefaultNightMode() called with an unknown mode");
                return;
            }
            if (i2 != i) {
                AppCompatDelegate.f = i;
                synchronized (AppCompatDelegate.l) {
                    try {
                        Iterator it = AppCompatDelegate.k.iterator();
                        while (true) {
                            IndexBasedArrayIterator indexBasedArrayIterator = (IndexBasedArrayIterator) it;
                            if (indexBasedArrayIterator.hasNext()) {
                                AppCompatDelegate appCompatDelegate = (AppCompatDelegate) ((WeakReference) indexBasedArrayIterator.next()).get();
                                if (appCompatDelegate != null) {
                                    appCompatDelegate.e();
                                }
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    public static void f8(Context context, CharSequence charSequence) {
        if (context == null) {
            return;
        }
        c();
        Toast makeText = Toast.makeText(context, charSequence, 0);
        makeText.show();
        MainApp.T1 = makeText;
    }

    public static boolean g(Point point, MotionEvent motionEvent, boolean z) {
        int i;
        int i2 = 0;
        if (motionEvent == null) {
            return false;
        }
        if (motionEvent.getActionMasked() != 0) {
            return MainApp.S1;
        }
        MainApp.S1 = false;
        float y = motionEvent.getY();
        if (y < MainApp.t1) {
            boolean z2 = !z;
            MainApp.S1 = z2;
            return z2;
        }
        if (point != null) {
            i2 = point.x;
            i = point.y;
        } else {
            i = 0;
        }
        if (i2 > i) {
            float x = motionEvent.getX();
            if (x < MainApp.t1 || x > i2 - r6) {
                MainApp.S1 = true;
            }
        } else if (y > i - r2) {
            MainApp.S1 = !z;
        }
        return MainApp.S1;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap g0(int r18, long r19, android.content.Context r21, java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 712
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.g0(int, long, android.content.Context, java.lang.String):android.graphics.Bitmap");
    }

    public static long g1(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        if (MainUri.q(str)) {
            return MainUri.l(context, str);
        }
        return new File(str).length();
    }

    public static String g2() {
        String f2 = f2(MainApp.j());
        if (TextUtils.isEmpty(f2)) {
            return "en-US";
        }
        return f2;
    }

    public static int[] g3(int i, boolean z) {
        String str;
        String[] strArr;
        if (i == 4) {
            int[] iArr = new int[7];
            if (!z) {
                String str2 = PrefWeb.i0;
                String[] split = TextUtils.isEmpty(str2) ? null : str2.split("/");
                if (split != null && split.length == 7) {
                    for (int i2 = 0; i2 < 7; i2++) {
                        iArr[i2] = G6(split[i2]);
                    }
                    return iArr;
                }
                PrefWeb.i0 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            return new int[]{0, 1, 2, 3, 4, 5, 6};
        }
        if (i == 3) {
            int[] iArr = new int[8];
            if (!z) {
                String str2 = PrefWeb.g0;
                String[] split = TextUtils.isEmpty(str2) ? null : str2.split("/");
                if (split != null && split.length == 8) {
                    for (int i2 = 0; i2 < 8; i2++) {
                        iArr[i2] = G6(split[i2]);
                    }
                    return iArr;
                }
                PrefWeb.g0 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            return new int[]{0, 1, 2, 3, 4, 5, 6, 7};
        }
        if (i == 2) {
            int[] iArr = new int[13];
            if (!z) {
                String str2 = PrefWeb.e0;
                String[] split = TextUtils.isEmpty(str2) ? null : str2.split("/");
                if (split != null && split.length == 13) {
                    for (int i2 = 0; i2 < 13; i2++) {
                        iArr[i2] = G6(split[i2]);
                    }
                    return iArr;
                }
                PrefWeb.e0 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            return new int[]{0, 1, 2, 9, 10, 3, 11, 4, 5, 6, 7, 8, 12};
        }
        if (i == 0) {
            str = PrefZone.g0;
            int[] linkOrder = new int[13];
            int i2 = 0;
            if (z) {
                return new int[]{1, 2, 3, 4, 5, 6, 7, 8, 13, 9, 10, 11, 12};
            }
            if (!TextUtils.isEmpty(str)) {
                strArr = str.split("/");
            } else {
                strArr = null;
            }
            if (strArr != null && strArr.length == 13) {
                while (i2 < 13) {
                    linkOrder[i2] = G6(strArr[i2]);
                    i2++;
                }
                return linkOrder;
            }
            PrefZone.g0 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            return new int[]{1, 2, 3, 4, 5, 6, 7, 8, 13, 9, 10, 11, 12};
        }
        str = PrefZone.h0;
        int[] iArr3 = new int[12];
        int i2 = 0;
        if (z) {
            while (i2 < 12) {
                int i3 = i2 + 1;
                iArr3[i2] = i3;
                i2 = i3;
            }
        } else {
            if (!TextUtils.isEmpty(str)) {
                strArr = str.split("/");
            } else {
                strArr = null;
            }
            if (strArr != null && strArr.length == 12) {
                while (i2 < 12) {
                    iArr3[i2] = G6(strArr[i2]);
                    i2++;
                }
            } else {
                PrefZone.h0 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                while (i2 < 12) {
                    int i4 = i2 + 1;
                    iArr3[i2] = i4;
                    i2 = i4;
                }
            }
        }
        return iArr3;
    }

    public static Bitmap g4(View view, int i, float f, long j, Bitmap.Config config) {
        int i2;
        if (view == null) {
            return null;
        }
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width != 0 && height != 0) {
                if (j > 0 && height > (i2 = (int) (j / (width * 32)))) {
                    height = i2;
                }
                int round = Math.round(width * f);
                int round2 = Math.round(height * f);
                if (round != 0 && round2 != 0) {
                    view.invalidate();
                    if (config == null) {
                        config = Bitmap.Config.ARGB_8888;
                    }
                    Bitmap createBitmap = Bitmap.createBitmap(round, round2, config);
                    Canvas canvas = new Canvas(createBitmap);
                    if (i != 0) {
                        canvas.drawColor(i);
                    }
                    canvas.scale(f, f);
                    view.draw(canvas);
                    return createBitmap;
                }
            }
        } catch (Exception | OutOfMemoryError unused) {
        }
        return null;
    }

    public static boolean g5(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        if (!y6(str) && !str.startsWith("https://www.amazon.") && !str2.endsWith("fandom.com") && !str2.endsWith("www.elektra.com.mx")) {
            return false;
        }
        return true;
    }

    public static boolean g6(Context context, String str, String str2) {
        String str3;
        HttpURLConnection T3 = T3(context, str, str2, 0, 0, false, J0(), true);
        boolean z = false;
        if (T3 == null) {
            return false;
        }
        try {
            T3.setDoInput(true);
            T3.connect();
            if (T3.getResponseCode() == 200) {
                try {
                    str3 = T3.getContentType();
                } catch (Exception unused) {
                    str3 = null;
                }
                if (TextUtils.isEmpty(str3) || !str3.startsWith("text/html")) {
                    z = true;
                }
                if (!z) {
                    String v2 = v2(str);
                    if (!TextUtils.isEmpty(v2)) {
                        if (v2.startsWith("text/html")) {
                            z = true;
                        }
                    }
                }
            }
        } catch (Exception unused2) {
        }
        T3.disconnect();
        return z;
    }

    public static void g7(Window window, int i, boolean z) {
        float f;
        if (window != null) {
            if (z) {
                if (i < 0) {
                    i = 0;
                } else if (i > 100) {
                    i = 100;
                }
                f = i / 100.0f;
            } else {
                f = -1.0f;
            }
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (Float.compare(attributes.screenBrightness, f) != 0) {
                attributes.screenBrightness = f;
                window.setAttributes(attributes);
                window.addFlags(4);
            }
        }
    }

    public static Comparator g8(int i, int i2, boolean z) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            return new SortChildName(i, z);
                        }
                        return new SortChildSize(i, z);
                    }
                    return new SortChildTime(i, z);
                }
                return new SortChildExt(i, z);
            }
            return new SortChildData(i, z);
        }
        return new SortChildName(i, z);
    }

    public static native String getAdsGoogleJs(int i);

    public static native String getAdsHamJs(int i);

    public static native String getAmpJs(int i);

    private static native String getAreaJs(int i);

    private static native String getAreaMultiJs(int i);

    private static native String getAreaUpJs(int i);

    public static native String getBackupTag();

    public static native String getBlobJs(int i);

    private static native String getDcIdJs(int i);

    private static native String getDcJs(int i);

    public static native String getFaceJs(int i);

    public static native String getFaceUrl();

    public static native String getFansJs(int i);

    private static native String getGoogleLens(int i);

    public static native String getInstaAid();

    public static native String getInstaData(int i);

    public static native String getInstaJs(int i);

    public static native String getInstaMid1();

    public static native String getInstaMid2();

    public static native String getOverlayJs(int i);

    public static native String getPassJs1(int i);

    public static native String getPassJs2(int i);

    public static native String getPassJs3(int i);

    public static native String getRedditJs(int i);

    private static String getSearchImage(int i) {
        if (i == 1) {
            // detailv2+SBIHMP redirects to a Bing results page that WebView can render;
            // images/detail/search stays blank (AMD/_G JS errors in Chromium WebView).
            return "https://www.bing.com/images/search?view=detailv2&iss=sbi&form=SBIHMP&sbisrc=UrlPaste&q=imgurl:";
        }
        if (i == 2) {
            return "https://yandex.com/images/search?rpt=imageview&url=";
        }
        // Prefer classic searchbyimage (still redirects into Lens). lens.google.com/uploadbyurl
        // 404s for some WebView clients even when the same URL works via curl.
        return "https://www.google.com/searchbyimage?image_url=";
    }

    private static native String getSnsJs1(int i);

    private static native String getSnsJs2(int i);

    private static native String getSnsUrl(int i);

    public static native String getTiktokJs(int i);

    public static native String getTransContain();

    public static native String getTransCsp();

    public static native String getTransElement();

    public static native String getTransFinishLang();

    public static native String getTransFinishSection();

    public static native String getTransLang();

    public static native String getTransPromptLang();

    public static native String getTransPromptSection();

    public static native String getTransSpId();

    public static native String getTransTag(int i);

    public static native String getTransTrId();

    public static native String getTtsMarkJs(int i);

    public static native String getTtsPartJs1(int i);

    public static native String getTtsPartJs2(int i);

    public static native String getTwitJs(int i);

    public static native String getTwitReq(int i);

    public static native String getTwitUrl();

    public static native String getYouJs1(int i);

    public static native String getYouJs2(int i);

    public static void h(Context context, Window window, View view) {
        int i;
        if (window != null) {
            if (view == null) {
                try {
                    view = window.getDecorView();
                    if (view == null) {
                        return;
                    }
                } catch (Exception unused) {
                    return;
                }
            }
            Rect rect = new Rect();
            view.getWindowVisibleDisplayFrame(rect);
            int i2 = PrefMain.u;
            boolean z = PrefMain.v;
            int i3 = PrefMain.w;
            boolean z2 = PrefMain.x;
            if (PrefWeb.t && rect.top > 0) {
                int G = (int) G(context, 70.0f);
                int i4 = rect.top;
                if (i4 < G) {
                    if (i2 == i4) {
                        z = true;
                    } else {
                        z = false;
                    }
                    i2 = i4;
                }
            }
            if (PrefWeb.u && rect.bottom > 0) {
                Point s4 = s4(context);
                if (s4 == null) {
                    i = 0;
                } else {
                    i = s4.y;
                }
                int i5 = i - rect.bottom;
                if (i5 > 0 && i5 < ((int) G(context, 140.0f))) {
                    if (i3 == i5) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    i3 = i5;
                }
            }
            if (PrefMain.u != i2 || PrefMain.v != z || PrefMain.w != i3 || PrefMain.x != z2) {
                PrefMain.v = z;
                PrefMain.u = i2;
                PrefMain.x = z2;
                PrefMain.w = i3;
                PrefMain r = PrefMain.r(context, false);
                r.n(PrefMain.u, "mStatusHeight");
                r.l("mStatusConfirm", PrefMain.v);
                r.n(PrefMain.w, "mNaviHeight2");
                r.l("mNaviConfirm", PrefMain.x);
                r.a();
            }
        }
    }

    public static String h0(byte[] bArr) {
        if (bArr != null && bArr.length != 0) {
            try {
                String encodeToString = Base64.encodeToString(bArr, 0);
                if (TextUtils.isEmpty(encodeToString)) {
                    return null;
                }
                String replace = encodeToString.replace("\n", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                if (TextUtils.isEmpty(replace)) {
                    return null;
                }
                return "data:image/png;base64," + replace;
            } catch (Exception | OutOfMemoryError unused) {
            }
        }
        return null;
    }

    public static String h1(long j) {
        if (j / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID == 0) {
            return j + ".00 B";
        }
        if (j / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED == 0) {
            return String.format(Locale.US, "%.2f", Float.valueOf(((float) j) / 1024.0f)).concat(" KB");
        }
        if (j / 1073741824 == 0) {
            return String.format(Locale.US, "%.2f", Float.valueOf(((float) j) / 1048576.0f)).concat(" MB");
        }
        return String.format(Locale.US, "%.2f", Float.valueOf(((float) j) / 1.0737418E9f)).concat(" GB");
    }

    public static String h2(String str, Locale locale) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return null;
        }
        if (length == 1) {
            return str.toUpperCase(locale);
        }
        return str.substring(0, 1).toUpperCase(locale) + str.substring(1);
    }

    public static String h3(int i, int i2) {
        return i + " / " + i2;
    }

    public static int h4(View view) {
        if (view == null) {
            return 0;
        }
        if (MainApp.d2 == null) {
            MainApp.d2 = new int[2];
        }
        int[] iArr = MainApp.d2;
        view.getLocationOnScreen(iArr);
        return iArr[0];
    }

    public static boolean h5(Resources resources, boolean z) {
        if (PrefWeb.J) {
            if (resources == null || (resources.getConfiguration().uiMode & 48) != 32) {
                return false;
            }
        } else if (z) {
            if (PrefWeb.K != 1) {
                return false;
            }
        } else if (PrefWeb.L != 1) {
            return false;
        }
        return true;
    }

    public static boolean h6(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (MainUri.q(str)) {
            return MainUri.r(context, str);
        }
        File file = new File(str);
        if (!file.isFile() || !file.canRead()) {
            return false;
        }
        return true;
    }

    public static void h7(int i, Context context, MediaRouteButton mediaRouteButton) {
        if (mediaRouteButton != null) {
            try {
                Drawable S = S(context, R.drawable.cast_mr_button_light);
                S.setTint(i);
                mediaRouteButton.setRemoteIndicatorDrawable(S);
            } catch (Exception unused) {
            }
        }
    }

    public static void h8(Context context, final View view, int i, boolean z) {
        if (view != null) {
            if (i == R.anim.ic_rotate_in) {
                if (view.getVisibility() == 0) {
                    view.setTag(Boolean.valueOf(z));
                    view.clearAnimation();
                    return;
                }
            } else if (i == R.anim.ic_rotate_out && view.getVisibility() != 0) {
                view.setTag(Boolean.valueOf(z));
                view.clearAnimation();
                return;
            }
            Animation loadAnimation = AnimationUtils.loadAnimation(context, i);
            if (loadAnimation == null) {
                return;
            }
            loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.mycompany.app.main.MainUtil.22
                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationEnd(Animation animation) {
                    View view2 = view;
                    Object tag = view2.getTag();
                    view2.clearAnimation();
                    if (tag != null && (tag instanceof Boolean) && ((Boolean) tag).booleanValue()) {
                        view2.setVisibility(8);
                    }
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationStart(Animation animation) {
                }
            });
            view.setTag(Boolean.valueOf(z));
            view.clearAnimation();
            view.setVisibility(0);
            view.startAnimation(loadAnimation);
        }
    }

    public static void i() {
        LruMemoryCache lruMemoryCache = ImageLoader.f().f20963a.h;
        lruMemoryCache.d(lruMemoryCache.b / 2);
        LruCache lruCache = CompressCache.a().f12871a;
        if (lruCache != null) {
            lruCache.g(-1);
        }
        ImageLoader f = ImageLoader.f();
        f.getClass();
        try {
            f.f20963a.j.b();
        } catch (Exception unused) {
        }
    }

    public static int i0() {
        if (TextUtils.isEmpty(PrefMain.E)) {
            return 0;
        }
        return PrefPdf.B;
    }

    public static String i1(long j) {
        if (j / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID == 0) {
            return j + ".0 B";
        }
        if (j / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED == 0) {
            return String.format(Locale.US, "%.1f", Float.valueOf(((float) j) / 1024.0f)).concat(" KB");
        }
        if (j / 1073741824 == 0) {
            return String.format(Locale.US, "%.1f", Float.valueOf(((float) j) / 1048576.0f)).concat(" MB");
        }
        return String.format(Locale.US, "%.1f", Float.valueOf(((float) j) / 1.0737418E9f)).concat(" GB");
    }

    public static Intent i2(Context context, int i) {
        if (i == 2) {
            return new Intent(context, (Class<?>) PinActivity.class);
        }
        if (i == 3) {
            return new Intent(context, (Class<?>) PassActivity.class);
        }
        if (i == 4) {
            return new Intent(context, (Class<?>) FingerActivity.class);
        }
        return new Intent(context, (Class<?>) PatternActivity.class);
    }

    public static String i3(String str, String str2) {
        return a.D(str, " / ", str2);
    }

    public static int i4(View view) {
        if (view == null) {
            return 0;
        }
        if (MainApp.d2 == null) {
            MainApp.d2 = new int[2];
        }
        int[] iArr = MainApp.d2;
        view.getLocationOnScreen(iArr);
        return iArr[1];
    }

    public static boolean i5(boolean z, Configuration configuration) {
        if (PrefWeb.J) {
            if ((configuration.uiMode & 48) != 32) {
                return false;
            }
        } else if (z) {
            if (PrefWeb.K != 1) {
                return false;
            }
        } else if (PrefWeb.L != 1) {
            return false;
        }
        return true;
    }

    public static boolean i6(String str) {
        int indexOf;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String k = a.k(str, ".");
        int i = 0;
        int i2 = 0;
        while (i < k.length() && (indexOf = k.indexOf(46, i)) > i) {
            if (i2 == 4) {
                return false;
            }
            try {
                int parseInt = Integer.parseInt(k.substring(i, indexOf));
                if (parseInt >= 0 && parseInt <= 255) {
                    i = indexOf + 1;
                    i2++;
                }
            } catch (NumberFormatException unused) {
            }
            return false;
        }
        if (i2 != 4) {
            return false;
        }
        return true;
    }

    public static void i7(WebView webView, String str, String str2, boolean z) {
        if (webView != null) {
            if (j5()) {
                if ("file:///android_asset/shortcut.html".equals(str)) {
                    return;
                }
            } else if (TextUtils.isEmpty(str2) || !g5(str, str2)) {
                return;
            }
            String A0 = A0(str, str2, z, true);
            if (TextUtils.isEmpty(A0)) {
                return;
            }
            I(webView, A0, false);
        }
    }

    public static void i8(final Context context) {
        if (context == null || !PrefZone.G) {
            return;
        }
        MainApp.J(context, new Runnable() { // from class: com.mycompany.app.main.MainUtil.5
            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = context;
                if (MainUtil.S5(context2)) {
                    if (context2 != null) {
                        NotificationManager q = MainApp.q(context2);
                        if (q != null) {
                            q.cancel(2147483641);
                        }
                        if (PrefTts.s) {
                            PrefTts.s = false;
                            PrefSet.g(12, context2, "mCheckBack", false);
                        }
                    }
                    try {
                        Intent intent = new Intent("com.mycompany.app.soulbrowser.ACTION_BACK_STOP");
                        intent.setPackage(context2.getPackageName());
                        context2.sendBroadcast(intent);
                    } catch (SecurityException | Exception unused) {
                    }
                }
            }
        });
    }

    public static boolean j(int i, boolean z) {
        if (i == 0 || S4() || s5(z)) {
            return true;
        }
        if (z && PrefWeb.O != 2) {
            return true;
        }
        return false;
    }

    public static int j0() {
        int i = 0;
        if (PrefPdf.z) {
            if (MainActivity.e1) {
                int max = Math.max(G3(), i0());
                if (S4()) {
                    i = PrefPdf.F;
                }
                return i + max;
            }
            int i0 = i0() + G3();
            if (S4()) {
                i = PrefPdf.F;
            }
            return i + i0;
        }
        int i02 = i0();
        if (S4()) {
            i = PrefPdf.F;
        }
        return i + i02;
    }

    public static String j1(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (context != null && MainUri.q(str)) {
            String k = MainUri.k(context, str);
            if (TextUtils.isEmpty(k)) {
                return null;
            }
            int lastIndexOf = k.lastIndexOf(46);
            if (lastIndexOf > 0 && lastIndexOf <= k.length()) {
                return k.substring(0, lastIndexOf);
            }
            return k;
        }
        return k1(b1(context, str));
    }

    public static int j2(int i, boolean z) {
        if (i == 0) {
            if (z) {
                return R.drawable.outline_more_vert_black_24;
            }
            return MainConst.y[2];
        }
        if (z) {
            return R.drawable.outline_more_vert_dark_24;
        }
        return MainConst.z[2];
    }

    public static String j3(Context context) {
        if (!TextUtils.isEmpty(MainApp.W1)) {
            return MainApp.W1;
        }
        String G0 = G0(context, ".font");
        if (TextUtils.isEmpty(G0)) {
            return null;
        }
        String k = a.k(G0, "/read.ttf");
        MainApp.W1 = k;
        return k;
    }

    public static Bitmap j4(View view, float f) {
        if (view == null) {
            return null;
        }
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width != 0 && height != 0) {
                int round = Math.round(width * f);
                int round2 = Math.round(height * f);
                if (round != 0 && round2 != 0) {
                    Bitmap createBitmap = Bitmap.createBitmap(round, round2, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(createBitmap);
                    RectF rectF = new RectF();
                    rectF.set(0.0f, 0.0f, round, round2);
                    float f2 = MainApp.v1 * f;
                    Path path = new Path();
                    path.addRoundRect(rectF, f2, f2, Path.Direction.CW);
                    path.close();
                    canvas.clipPath(path);
                    canvas.scale(f, f);
                    view.draw(canvas);
                    return createBitmap;
                }
            }
        } catch (Exception | OutOfMemoryError unused) {
        }
        return null;
    }

    public static boolean j5() {
        boolean z;
        if (MainApp.M1 == 0) {
            try {
                z = WebViewFeature.a("ALGORITHMIC_DARKENING");
            } catch (RuntimeException | Exception unused) {
                z = false;
            }
            if (z) {
                MainApp.M1 = 2;
            } else {
                MainApp.M1 = 1;
            }
        }
        if (MainApp.M1 != 1) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x004d, code lost:
    
        if (r1.startsWith("text/html") != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0065, code lost:
    
        if (r0 > 0) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean j6(android.content.Context r9, java.lang.String r10, java.lang.String r11) {
        /*
            java.lang.String r0 = "text/html"
            java.lang.String r7 = J0()
            r8 = 1
            r4 = 0
            r5 = 0
            r6 = 0
            r1 = r9
            r2 = r10
            r3 = r11
            java.net.HttpURLConnection r9 = T3(r1, r2, r3, r4, r5, r6, r7, r8)
            r10 = 0
            if (r9 != 0) goto L15
            return r10
        L15:
            r11 = 1
            r9.setDoInput(r11)     // Catch: java.lang.Exception -> L68
            r9.connect()     // Catch: java.lang.Exception -> L68
            int r1 = r9.getResponseCode()     // Catch: java.lang.Exception -> L68
            r3 = 200(0xc8, float:2.8E-43)
            if (r1 != r3) goto L68
            java.lang.String r1 = r9.getContentType()     // Catch: java.lang.Exception -> L29
            goto L2a
        L29:
            r1 = 0
        L2a:
            boolean r3 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Exception -> L68
            if (r3 != 0) goto L51
            java.lang.String r3 = "image/"
            boolean r3 = r1.startsWith(r3)     // Catch: java.lang.Exception -> L68
            if (r3 == 0) goto L39
            goto L51
        L39:
            boolean r1 = r1.startsWith(r0)     // Catch: java.lang.Exception -> L68
            if (r1 == 0) goto L4f
            java.lang.String r1 = v2(r2)     // Catch: java.lang.Exception -> L68
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Exception -> L68
            if (r2 != 0) goto L68
            boolean r0 = r1.startsWith(r0)     // Catch: java.lang.Exception -> L68
            if (r0 == 0) goto L68
        L4f:
            r10 = r11
            goto L68
        L51:
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L68
            r1 = 24
            if (r0 < r1) goto L5c
            long r0 = r9.getContentLengthLong()     // Catch: java.lang.Exception -> L68
            goto L61
        L5c:
            int r0 = r9.getContentLength()     // Catch: java.lang.Exception -> L68
            long r0 = (long) r0
        L61:
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto L68
            goto L4f
        L68:
            r9.disconnect()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.j6(android.content.Context, java.lang.String, java.lang.String):boolean");
    }

    public static void j7(Window window, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 35 || i < 30 || window == null) {
            return;
        }
        window.setDecorFitsSystemWindows(z);
    }

    public static void j8(Context context, boolean z) {
        final MainApp p = MainApp.p(context);
        if (p != null && !p.t) {
            p.t = true;
            if (!z) {
                try {
                    CookieManager m = MainApp.m(p.getApplicationContext());
                    if (m != null) {
                        m.flush();
                    }
                } catch (Exception | NoSuchMethodError unused) {
                }
                p.t = false;
                return;
            }
            p.K(new Runnable() { // from class: com.mycompany.app.main.MainApp.2
                public AnonymousClass2() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    MainApp mainApp = MainApp.this;
                    int i = MainApp.X0;
                    try {
                        CookieManager m2 = MainApp.m(mainApp.getApplicationContext());
                        if (m2 != null) {
                            m2.flush();
                        }
                    } catch (Exception | NoSuchMethodError unused2) {
                    }
                    mainApp.t = false;
                }
            });
        }
    }

    public static void k(Context context) {
        if (Build.VERSION.SDK_INT < 26) {
            try {
                WebViewDatabase.getInstance(context).clearFormData();
            } catch (Exception | NoSuchMethodError unused) {
            }
        }
    }

    public static String k0(Context context, String str) {
        File cacheDir;
        if (context == null || (cacheDir = context.getCacheDir()) == null) {
            return null;
        }
        if (!cacheDir.exists()) {
            cacheDir.mkdirs();
        }
        return cacheDir.getPath() + "/" + str;
    }

    public static String k1(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            return str.substring(0, lastIndexOf);
        }
        return str;
    }

    public static int k2(int i, int i2) {
        boolean z = false;
        if (i2 == 0) {
            if (i < 0 || i >= MainConst.y.length) {
                return MainConst.y[0];
            }
        } else if (i < 0 || i >= MainConst.z.length) {
            return MainConst.z[0];
        }
        if (i == 6) {
            if (i2 == 0) {
                if (PrefZone.u) {
                    return R.drawable.outline_image_black_24;
                }
                return MainConst.y[i];
            }
            if (PrefZone.u) {
                return R.drawable.outline_image_dark_24;
            }
            return MainConst.z[i];
        }
        if (i == 21) {
            if (i2 == 0) {
                if (PrefSync.k) {
                    return R.drawable.outline_mood_black_24;
                }
                return MainConst.y[i];
            }
            if (PrefSync.k) {
                return R.drawable.outline_mood_dark_24;
            }
            return MainConst.z[i];
        }
        if (i == 22) {
            if (MainApp.K1 && MainApp.L1) {
                z = true;
            }
            if (i2 == 0) {
                if (z) {
                    return R.drawable.outline_sunny_black_24;
                }
                return MainConst.y[i];
            }
            if (z) {
                return R.drawable.outline_sunny_dark_24;
            }
            return MainConst.z[i];
        }
        if (i2 == 0) {
            return MainConst.y[i];
        }
        return MainConst.z[i];
    }

    public static Bitmap k3(int i, int i2, Bitmap bitmap) {
        if (!f6(bitmap)) {
            return null;
        }
        try {
            return Bitmap.createScaledBitmap(bitmap, i, i2, true);
        } catch (Exception | OutOfMemoryError unused) {
            return null;
        }
    }

    public static StringBuilder k4(StringBuilder sb, WebNestView webNestView, String str, String str2) {
        if (sb == null) {
            sb = new StringBuilder();
        }
        if (!"file:///android_asset/shortcut.html".equals(str)) {
            if (c6(str)) {
                sb.append("var evp=document.querySelector(\"meta[name=viewport]\");if(evp){evp.setAttribute('content','width=device-width,minimum-scale=0.1');}");
                return sb;
            }
            if (webNestView.B()) {
                sb.append("var evp=document.querySelector(\"meta[name=viewport]\");if(evp){evp.setAttribute('content','user-scalable=yes');}");
                return sb;
            }
            if (PrefZtwo.A != 0) {
                sb.append("var evp=document.querySelector(\"meta[name=viewport]\");if(evp){var vwcnt=evp.content;if(!vwcnt||(vwcnt.includes('user-scalable=no')||vwcnt.includes('user-scalable=0')||vwcnt.includes('maximum-scale=1'))){");
                if (!TextUtils.isEmpty(str2) && str2.endsWith("namu.wiki")) {
                    sb.append("evp.setAttribute('content','width=device-width,initial-scale=1.1,minimum-scale=1.0,maximum-scale=5.0,user-scalable=yes');");
                }
                sb.append("evp.setAttribute('content','width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=5.0,user-scalable=yes');}}");
                return sb;
            }
        }
        return sb;
    }

    public static boolean k5(boolean z) {
        if (!MainApp.K1 && !s5(z)) {
            return false;
        }
        return true;
    }

    public static boolean k6(String str) {
        int length;
        if (str == null || (length = str.length()) < 11 || !str.endsWith("youtube.com")) {
            return false;
        }
        if (length == 11) {
            return true;
        }
        if (length >= 13) {
            if (str.startsWith("m.", length - 13)) {
                return true;
            }
            if (length >= 15 && str.startsWith("www.", length - 15)) {
                return true;
            }
        }
        return str.startsWith("/", length - 12);
    }

    public static void k7(final EditText editText, boolean z) {
        if (editText == null) {
            return;
        }
        editText.setSelectAllOnFocus(z);
        if (z) {
            editText.setOnFocusChangeListener(null);
        } else {
            editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.mycompany.app.main.MainUtil.18
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z2) {
                    if (!z2) {
                        return;
                    }
                    editText.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainUtil.18.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass18 anonymousClass18 = AnonymousClass18.this;
                            String Q0 = MainUtil.Q0(editText, false);
                            if (!TextUtils.isEmpty(Q0)) {
                                int lastIndexOf = Q0.lastIndexOf(46);
                                if (lastIndexOf == -1) {
                                    editText.selectAll();
                                } else if ((Q0.length() - lastIndexOf) - 1 > 4) {
                                    editText.selectAll();
                                } else {
                                    if (lastIndexOf == 0) {
                                        return;
                                    }
                                    editText.setSelection(0, lastIndexOf);
                                }
                            }
                        }
                    }, 100L);
                }
            });
        }
    }

    public static String k8(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                try {
                    return StringEscapeUtils.f22470c.b(str);
                } catch (OutOfMemoryError unused) {
                    return StringEscapeUtils.f22470c.b(str);
                }
            } catch (Exception | LinkageError | OutOfMemoryError unused2) {
                return null;
            }
        }
        return null;
    }

    public static void l(WebView webView) {
        if (webView == null) {
            return;
        }
        try {
            webView.clearCache(false);
        } catch (Exception unused) {
        }
    }

    public static int l0(Context context, boolean z, boolean z2) {
        int i;
        int i2;
        boolean z3;
        boolean z4;
        if (z2 && PrefPdf.k) {
            i = 264;
        } else {
            i = 8;
        }
        if (context == null) {
            return i;
        }
        if (z) {
            i2 = PrefImage.u;
            z3 = PrefImage.w;
            z4 = PrefImage.y;
            i |= 16;
        } else {
            i2 = PrefImage.t;
            z3 = PrefImage.v;
            z4 = PrefImage.x;
        }
        if (z4) {
            i |= Uuid.SIZE_BITS;
        }
        if (z3) {
            return i;
        }
        if (i2 == 2) {
            return i | 64;
        }
        return i | 32;
    }

    public static int l1() {
        int i = PrefEditor.z;
        if (i == 1) {
            return PrefEditor.D;
        }
        if (i == 2 && MainApp.K1 && MainApp.L1) {
            return PrefEditor.D;
        }
        return 0;
    }

    public static int l2(int i) {
        if (i >= 0) {
            int[] iArr = MainConst.x;
            if (i < iArr.length) {
                if (i == 6) {
                    if (PrefZone.u) {
                        return R.string.show_image;
                    }
                    return iArr[i];
                }
                if (i == 21) {
                    if (PrefSync.k) {
                        return R.string.normal_mode;
                    }
                    return iArr[i];
                }
                if (i == 22) {
                    if (MainApp.K1 && MainApp.L1) {
                        return R.string.day_mode;
                    }
                    return iArr[i];
                }
                return iArr[i];
            }
        }
        return MainConst.x[0];
    }

    public static String l3(int i, String str, String str2) {
        String replaceAll;
        if (!TextUtils.isEmpty(str)) {
            String p3 = p3(str);
            if (TextUtils.isEmpty(p3)) {
                replaceAll = null;
            } else {
                replaceAll = p3.replaceAll("[\\uD83C-\\uDBFF\\uDC00-\\uDFFF]&&[^()-]+", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).replaceAll("\\p{InEmoticons}&&[^()-]+", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).replaceAll("\\p{So}&&[^()-]+", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).replaceAll("\\p{InMiscellaneousSymbolsAndPictographs}&&[^()-]+", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            }
            String e2 = e2(i, replaceAll);
            if (!TextUtils.isEmpty(e2)) {
                return e2;
            }
        }
        return str2;
    }

    public static Bitmap l4(Context context, boolean z) {
        String V = V(context, PrefSync.k, z);
        if (TextUtils.isEmpty(V)) {
            return null;
        }
        return ImageLoader.f().g().a(MemoryCacheUtils.a(0, V));
    }

    public static boolean l5(String str) {
        String J1 = J1(str, true);
        if (TextUtils.isEmpty(J1)) {
            return false;
        }
        if (!J1.endsWith("dcinside.com") && !J1.endsWith("dcinside.co.kr")) {
            return false;
        }
        int length = J1.length();
        int i = length + 1;
        if (str.startsWith("viewimage", i)) {
            if (str.indexOf(".php", length + 10) != -1) {
                return true;
            }
            return false;
        }
        if (str.startsWith("dccon", i) && str.indexOf(".php", length + 6) != -1) {
            return true;
        }
        return false;
    }

    public static boolean l6(String str) {
        int length;
        int indexOf;
        int indexOf2;
        if (str == null || (length = str.length()) == 0 || (indexOf = str.indexOf("youtube.com/")) == -1 || (indexOf2 = str.indexOf("shorts/", indexOf + 12)) == -1 || indexOf2 + 7 >= length) {
            return false;
        }
        return true;
    }

    public static void l7(View view) {
        int i;
        if (view == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            i = 1;
        } else {
            i = 3;
        }
        view.performHapticFeedback(1, i);
    }

    public static void l8(Context context, boolean z) {
        if ((z || !PrefSync.k) && context != null) {
            try {
                Intent intent = new Intent(context, (Class<?>) WidgetBookProviderLight.class);
                intent.setAction("com.mycompany.app.soulbrowser.ACTION_BOOKGET_UPDATE");
                context.sendBroadcast(intent);
                Intent intent2 = new Intent(context, (Class<?>) WidgetBookProviderDark.class);
                intent2.setAction("com.mycompany.app.soulbrowser.ACTION_BOOKGET_UPDATE");
                context.sendBroadcast(intent2);
            } catch (SecurityException | Exception unused) {
            }
        }
    }

    public static int m(String str, String str2, boolean z) {
        int i;
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (isEmpty && isEmpty2) {
            return 0;
        }
        if (z) {
            i = -1;
        } else {
            i = 1;
        }
        if (isEmpty) {
            return i;
        }
        if (isEmpty2) {
            return -i;
        }
        if (MainApp.R1) {
            try {
                return compareName(str, str2) * i;
            } catch (Exception | UnsatisfiedLinkError unused) {
            }
        }
        return str.compareTo(str2) * i;
    }

    public static String m0(Context context) {
        File cacheDir;
        if (context == null || (cacheDir = context.getCacheDir()) == null) {
            return null;
        }
        if (!cacheDir.exists()) {
            cacheDir.mkdirs();
        }
        return cacheDir.getPath() + "/" + System.currentTimeMillis();
    }

    public static HttpURLConnection m1(Context context, String str) {
        String str2;
        d5(context);
        String str3 = MainApp.b2;
        if (!TextUtils.isEmpty(str3)) {
            str2 = str3.replace("; wv", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        } else {
            str2 = "Mozilla/5.0 (Linux; Android 14; SM-S24 Build/PQ3A.190801.002) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.0.0 Mobile Safari/537.36";
        }
        return T3(context, str, null, 0, 0, false, str2, false);
    }

    public static int m2(int i, int i2) {
        if (i2 == 0) {
            if (i >= 0) {
                int[] iArr = MainConst.y;
                if (i < iArr.length) {
                    return iArr[i];
                }
            }
            return MainConst.y[0];
        }
        if (i >= 0) {
            int[] iArr2 = MainConst.z;
            if (i < iArr2.length) {
                return iArr2[i];
            }
        }
        return MainConst.z[0];
    }

    public static String m3(long j) {
        return new SimpleDateFormat("yyyyMMdd_hhmmss", MainApp.j()).format(new Date(j));
    }

    public static Bitmap m4(Context context, boolean z) {
        if (z) {
            String W = W(context, PrefSync.k, true);
            if (!TextUtils.isEmpty(W) && !new File(W).exists()) {
                u(W(context, PrefSync.k, false), W);
            }
        }
        String V = V(context, PrefSync.k, z);
        if (TextUtils.isEmpty(V)) {
            return null;
        }
        String a2 = MemoryCacheUtils.a(0, V);
        Bitmap c2 = BitmapUtil.c(V);
        if (f6(c2)) {
            ImageLoader.f().g().b(a2, c2);
        }
        return c2;
    }

    public static boolean m5(String str) {
        if (!URLUtil.isNetworkUrl(str)) {
            return false;
        }
        if (str.endsWith(".pdf")) {
            return true;
        }
        if (TextUtils.isEmpty(U3(str, false))) {
            return false;
        }
        return "pdf".equals(str);
    }

    public static boolean m6(String str) {
        return k6(J1(str, true));
    }

    public static void m7() {
        int i = PrefWeb.P;
        if (i < 0 || i >= MainConst.u.length) {
            PrefWeb.P = 16;
        }
        int i2 = MainConst.u[PrefWeb.P];
        PrefWeb.Q = i2;
        PrefWeb.R = p6(i2);
    }

    public static boolean m8() {
        if (PrefZone.r == 0) {
            return false;
        }
        return PrefZone.t;
    }

    public static int n(String str, String str2, boolean z) {
        int i;
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (isEmpty && isEmpty2) {
            return 0;
        }
        if (z) {
            i = -1;
        } else {
            i = 1;
        }
        if (isEmpty) {
            return i;
        }
        if (isEmpty2) {
            return -i;
        }
        return str.compareTo(str2) * i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0024, code lost:
    
        if (r0 > r6) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap n0(android.view.View r6, android.graphics.Bitmap r7, boolean r8) {
        /*
            if (r6 != 0) goto L3
            goto L5f
        L3:
            boolean r0 = f6(r7)
            if (r0 != 0) goto La
            goto L5f
        La:
            int r0 = r6.getWidth()     // Catch: java.lang.Throwable -> L61
            int r6 = r6.getHeight()     // Catch: java.lang.Throwable -> L61
            if (r0 == 0) goto L5f
            if (r6 != 0) goto L17
            goto L5f
        L17:
            int r1 = r7.getWidth()     // Catch: java.lang.Throwable -> L61
            int r2 = r7.getHeight()     // Catch: java.lang.Throwable -> L61
            if (r8 == 0) goto L24
            if (r6 <= r0) goto L29
            goto L26
        L24:
            if (r0 <= r6) goto L29
        L26:
            r5 = r0
            r0 = r6
            r6 = r5
        L29:
            if (r0 <= r1) goto L32
            float r6 = (float) r6     // Catch: java.lang.Throwable -> L61
            float r8 = (float) r0     // Catch: java.lang.Throwable -> L61
            float r6 = r6 / r8
            float r8 = (float) r1     // Catch: java.lang.Throwable -> L61
            float r8 = r8 * r6
            int r6 = (int) r8     // Catch: java.lang.Throwable -> L61
            r0 = r1
        L32:
            if (r6 <= r2) goto L3b
            float r8 = (float) r0     // Catch: java.lang.Throwable -> L61
            float r6 = (float) r6     // Catch: java.lang.Throwable -> L61
            float r8 = r8 / r6
            float r6 = (float) r2     // Catch: java.lang.Throwable -> L61
            float r6 = r6 * r8
            int r0 = (int) r6     // Catch: java.lang.Throwable -> L61
            r6 = r2
        L3b:
            int r8 = r1 - r0
            float r8 = (float) r8     // Catch: java.lang.Throwable -> L61
            r3 = 1073741824(0x40000000, float:2.0)
            float r8 = r8 / r3
            int r8 = (int) r8     // Catch: java.lang.Throwable -> L61
            int r4 = r2 - r6
            float r4 = (float) r4     // Catch: java.lang.Throwable -> L61
            float r4 = r4 / r3
            int r3 = (int) r4     // Catch: java.lang.Throwable -> L61
            r4 = 0
            if (r8 >= 0) goto L4b
            r8 = r4
        L4b:
            if (r3 >= 0) goto L4e
            r3 = r4
        L4e:
            int r4 = r8 + r0
            if (r4 <= r1) goto L54
            int r0 = r1 - r8
        L54:
            int r1 = r3 + r6
            if (r1 <= r2) goto L5a
            int r6 = r2 - r3
        L5a:
            android.graphics.Bitmap r6 = android.graphics.Bitmap.createBitmap(r7, r8, r3, r0, r6)     // Catch: java.lang.Throwable -> L61
            return r6
        L5f:
            r6 = 0
            return r6
        L61:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.n0(android.view.View, android.graphics.Bitmap, boolean):android.graphics.Bitmap");
    }

    public static String n1(String str) {
        if (str == null) {
            return str;
        }
        if (str.endsWith(".*")) {
            str = str.substring(0, str.length() - 1) + "com";
        }
        if (r(42, str)) {
            str = str.replace("*", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
        return q0(str);
    }

    public static int n2(int i) {
        if (i >= 0) {
            int[] iArr = MainConst.x;
            if (i < iArr.length) {
                return iArr[i];
            }
        }
        return MainConst.x[0];
    }

    public static Bitmap n3(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            String O1 = O1(str);
            if (!TextUtils.isEmpty(O1)) {
                Bitmap n4 = n4(O1);
                if (f6(n4)) {
                    return n4;
                }
                Bitmap b2 = DbBookIcon.b(context, O1);
                if (f6(b2)) {
                    return b2;
                }
                String[] strArr = {"google.com", "youtube.com", "facebook.com", "instagram.com", "x.com"};
                int[] iArr = {R.drawable.baseline_search_google, R.drawable.baseline_search_youtube, R.drawable.ic_facebook, R.drawable.ic_instagram, R.drawable.ic_twitter};
                for (int i = 0; i < 5; i++) {
                    if (O1.endsWith(strArr[i])) {
                        return BitmapUtil.d(context.getResources(), iArr[i]);
                    }
                }
                return null;
            }
            return null;
        }
        return null;
    }

    public static Bitmap n4(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return ImageLoader.f().g().a(MemoryCacheUtils.a(2, str));
    }

    public static boolean n5(String str) {
        int length;
        String J1 = J1(str, true);
        if (J1 == null || (length = J1.length()) == 0) {
            return false;
        }
        return str.startsWith("/h/", length);
    }

    public static boolean n6(String str) {
        int indexOf;
        if (TextUtils.isEmpty(str) || (indexOf = str.indexOf("youtube.com/")) == -1) {
            return false;
        }
        int indexOf2 = str.indexOf("watch?", indexOf + 12);
        if (indexOf2 != -1) {
            int indexOf3 = str.indexOf("v=", indexOf2 + 6);
            if (indexOf3 == -1 || indexOf3 + 2 >= str.length()) {
                return false;
            }
            return true;
        }
        int indexOf4 = str.indexOf("shorts/", indexOf2 + 12);
        if (indexOf4 == -1 || indexOf4 + 7 >= str.length()) {
            return false;
        }
        return true;
    }

    public static void n7(View view) {
        if (view == null) {
            return;
        }
        view.setOutlineProvider(new ViewOutlineProvider());
        view.setClipToOutline(true);
    }

    public static int o(long j, long j2, boolean z) {
        int i = z ? -1 : 1;
        if (j < j2) {
            return -i;
        }
        if (j > j2) {
            return i;
        }
        return 0;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [org.mozilla.universalchardet.UniversalDetector, java.lang.Object] */
    public static String o0(InputStream inputStream) {
        int i;
        boolean z;
        CharsetProber[] charsetProberArr;
        if (inputStream != null) {
            byte[] bArr = new byte[ConstantsKt.DEFAULT_BLOCK_SIZE];
            ?? obj = new Object();
            obj.e = true;
            String str = null;
            obj.i = null;
            obj.h = new CharsetProber[3];
            obj.b();
            while (true) {
                i = 0;
                try {
                    int read = inputStream.read(bArr);
                    if (read <= 0 || obj.b) {
                        break;
                    }
                    obj.a(bArr, read);
                } catch (Exception unused) {
                    z = true;
                }
            }
            z = false;
            if (obj.d) {
                if (obj.g != null) {
                    obj.b = true;
                } else {
                    UniversalDetector.InputState inputState = obj.f22656a;
                    if (inputState == UniversalDetector.InputState.g) {
                        float f = 0.0f;
                        int i2 = 0;
                        while (true) {
                            charsetProberArr = obj.h;
                            if (i >= charsetProberArr.length) {
                                break;
                            }
                            float b2 = charsetProberArr[i].b();
                            if (b2 > f) {
                                i2 = i;
                                f = b2;
                            }
                            i++;
                        }
                        if (f > 0.2f) {
                            obj.g = charsetProberArr[i2].a();
                        }
                    } else if (inputState != UniversalDetector.InputState.f && inputState == UniversalDetector.InputState.f22658c && obj.e) {
                        obj.g = Constants.A;
                    }
                }
            }
            try {
                inputStream.close();
            } catch (Exception unused2) {
            }
            if (!z) {
                str = obj.g;
            }
            obj.b();
            if (str == null || "WINDOWS-1252".equals(str)) {
                return "EUC-KR";
            }
            return str;
        }
        return "EUC-KR";
    }

    public static int o1(int i, int i2) {
        if (i2 < 20) {
            i2 = 20;
        } else if (i2 > 100) {
            i2 = 100;
        }
        return (i & 16777215) | (Math.round(((100 - i2) * KotlinVersion.MAX_COMPONENT_VALUE) / 100.0f) << 24);
    }

    public static int o2() {
        int i = PrefPdf.x;
        if (i > 0) {
            return i;
        }
        return 2048;
    }

    public static int o3(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (!str.startsWith("https://")) {
                if (!str.startsWith("http://")) {
                    if (str.startsWith("file:///")) {
                        return 8;
                    }
                    if (str.startsWith("file://")) {
                        return 7;
                    }
                    return 0;
                }
                return 7;
            }
            return 8;
        }
        return 0;
    }

    public static Intent o4(Context context) {
        return new Intent(context, (Class<?>) WebViewActivity.class);
    }

    public static boolean o5(String str) {
        return p5(str, J1(str, true));
    }

    public static int o6(String str, char c2, int i, int i2) {
        try {
            int length = str.length();
            if (length != 0 && i < length) {
                if (i < 0) {
                    i = 0;
                }
                if (i2 >= length) {
                    i2 = length - 1;
                }
                int i3 = i - 1;
                while (i2 > i3) {
                    if (str.charAt(i2) == c2) {
                        return i2;
                    }
                    i2--;
                }
            }
        } catch (Exception unused) {
        }
        return -1;
    }

    public static void o7(Activity activity) {
        if (activity == null) {
            return;
        }
        int i = PrefImage.l;
        if (i == 1) {
            v7(activity, 7);
        } else if (i == 2) {
            v7(activity, 6);
        } else {
            v7(activity, 4);
        }
    }

    public static boolean p(Context context, Bitmap bitmap, String str) {
        Bitmap.CompressFormat compressFormat;
        if (!f6(bitmap)) {
            return false;
        }
        if (bitmap.hasAlpha()) {
            compressFormat = Bitmap.CompressFormat.PNG;
        } else {
            compressFormat = Bitmap.CompressFormat.JPEG;
        }
        return q(context, bitmap, str, compressFormat);
    }

    public static String p0(String str) {
        int i;
        int length;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith("https://")) {
            i = 8;
        } else if (str.startsWith("http://")) {
            i = 7;
        } else {
            i = 0;
        }
        if (i != 0 && i < str.length()) {
            int indexOf = str.indexOf("http", i);
            if (indexOf > 0) {
                int i2 = indexOf + 4;
                if (str.startsWith("s://", i2)) {
                    i = indexOf + 8;
                    if (i >= str.length()) {
                        return str;
                    }
                } else if (str.startsWith("://", i2) && (i = indexOf + 7) >= str.length()) {
                    return str;
                }
            }
            String substring = str.substring(i);
            int indexOf2 = substring.indexOf(47);
            if (indexOf2 > 0 && indexOf2 < substring.length()) {
                String substring2 = substring.substring(0, indexOf2);
                if (!TextUtils.isEmpty(substring2)) {
                    int length2 = substring2.length();
                    String Q2 = Q2(substring2);
                    if (!TextUtils.isEmpty(Q2)) {
                        StringBuilder t = a.t(Q2);
                        t.append(substring.substring(length2));
                        String sb = t.toString();
                        String W3 = W3(sb, false);
                        if (Q2.endsWith("tumblr.com") && Q2.contains("media")) {
                            if (!Compress.D(W3) && !"gifv".equals(W3) && !"pnj".equals(W3)) {
                                return null;
                            }
                        } else if (!Compress.D(W3)) {
                            return sb;
                        }
                        int lastIndexOf = sb.toLowerCase(Locale.US).lastIndexOf(W3);
                        if (lastIndexOf == -1 || (length = W3.length() + lastIndexOf) > sb.length()) {
                            return sb;
                        }
                        return sb.substring(0, length);
                    }
                    return substring;
                }
                return substring;
            }
            return substring;
        }
        return str;
    }

    public static long p1(Context context, String str) {
        long j = 0;
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        ParcelFileDescriptor parcelFileDescriptor = null;
        try {
            parcelFileDescriptor = context.getContentResolver().openFileDescriptor(Uri.parse(str), "r");
            j = parcelFileDescriptor.getStatSize();
        } catch (SecurityException unused) {
            j = -1234;
        } catch (Exception unused2) {
        }
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (Exception unused3) {
            }
        }
        return j;
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator, java.lang.Object] */
    public static String p2(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            return G0(context, ".cache") + "/" + new Object().a(str);
        }
        return null;
    }

    public static String p3(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return Z6(URLDecoder.decode(str.replaceAll("[\\\\/:*?\"<>|]", "-"), "UTF-8"));
        } catch (Exception unused) {
            return str;
        }
    }

    public static String p4(String str) {
        if (!TextUtils.isEmpty(str) && !"about:blank".equals(str)) {
            return str;
        }
        return null;
    }

    public static boolean p5(String str, String str2) {
        int length;
        if (str2 == null || (length = str2.length()) == 0 || !str2.endsWith("e-hentai.org")) {
            return false;
        }
        if (!str.startsWith("/s/", length) && !str.startsWith("/lofi/s/", length)) {
            return false;
        }
        return true;
    }

    public static int p6(int i) {
        if (i == 0) {
            return 0;
        }
        if (i == -16777216) {
            return -13421773;
        }
        return ColorUtils.e(0.2f, i, -1);
    }

    public static void p7(EditText editText) {
        int i;
        if (Build.VERSION.SDK_INT >= 26 && editText != null) {
            try {
                int imeOptions = editText.getImeOptions();
                if (W5()) {
                    i = imeOptions | 16777216;
                } else {
                    i = imeOptions & (-16777217);
                }
                editText.setImeOptions(i);
            } catch (Exception unused) {
            }
        }
    }

    public static boolean q(Context context, Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat) {
        OutputStream outputStream;
        boolean z = false;
        if (context != null && f6(bitmap)) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            try {
                outputStream = V2(context, str, false);
                try {
                    bitmap.compress(compressFormat, 100, outputStream);
                    z = true;
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                outputStream = null;
            }
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (Exception unused3) {
                }
            }
        }
        return z;
    }

    public static String q0(String str) {
        String Q2 = Q2(str);
        if (Q2 == null) {
            return Q2;
        }
        int length = Q2.length();
        if (length != 0) {
            if (length > 4 && Q2.startsWith("www.")) {
                return Q2.substring(4);
            }
            if (length > 2 && Q2.startsWith(".", 1)) {
                return Q2.substring(2);
            }
            if (length > 7 && Q2.startsWith("mobile.")) {
                return Q2.substring(7);
            }
            return Q2;
        }
        return Q2;
    }

    public static int q1(int i, int i2) {
        Bitmap createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawColor(i);
        canvas.drawColor(i2);
        int pixel = createBitmap.getPixel(0, 0);
        createBitmap.recycle();
        return pixel;
    }

    public static String q2(long j, long j2) {
        if (j == 0) {
            return "00:00";
        }
        long j3 = j2 / 1000;
        long j4 = j3 / 3600;
        long j5 = (j3 / 60) % 60;
        long j6 = j3 % 60;
        if (j >= 3600000) {
            if (j4 > 999) {
                j4 = 999;
            }
            return String.format(Locale.US, "%d:%02d:%02d", Long.valueOf(j4), Long.valueOf(j5), Long.valueOf(j6));
        }
        return String.format(Locale.US, "%02d:%02d", Long.valueOf(j5), Long.valueOf(j6));
    }

    public static String q3(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            str = URLEncoder.encode(str, "UTF-8");
        } catch (Exception unused) {
        }
        if (PrefZtwo.j < 10) {
            str2 = MainConst.F[PrefZtwo.j];
        } else if (TextUtils.isEmpty(PrefZtwo.k)) {
            str2 = MainConst.F[4];
        } else if (!PrefZtwo.l) {
            str2 = PrefZtwo.k;
        } else {
            str2 = null;
        }
        if (!TextUtils.isEmpty(str2)) {
            return a.k(str2, str);
        }
        return String.format(Locale.US, PrefZtwo.k, str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0099, code lost:
    
        if (r4.startsWith("://naver.com", 4) != false) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String q4(android.content.Context r3, java.lang.String r4) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            if (r0 == 0) goto L8
            goto L72
        L8:
            boolean r0 = android.webkit.URLUtil.isValidUrl(r4)
            if (r0 != 0) goto L72
            java.lang.String r0 = "chrome://"
            boolean r0 = r4.startsWith(r0)
            if (r0 != 0) goto L72
            java.lang.String r0 = "data:image/"
            boolean r0 = r4.startsWith(r0)
            if (r0 != 0) goto L72
            java.lang.String r0 = "blob:"
            boolean r0 = r4.startsWith(r0)
            if (r0 == 0) goto L27
            goto L72
        L27:
            if (r3 == 0) goto L32
            boolean r0 = com.mycompany.app.db.book.DbBookRecent.l()
            if (r0 == 0) goto L32
            com.mycompany.app.db.book.DbBookRecent.k(r3, r4)
        L32:
            java.util.regex.Pattern r3 = android.util.Patterns.WEB_URL
            java.util.regex.Matcher r3 = r3.matcher(r4)
            boolean r3 = r3.matches()
            if (r3 == 0) goto L6e
            boolean r3 = com.mycompany.app.pref.PrefPdf.p
            if (r3 == 0) goto L43
            goto L64
        L43:
            boolean r3 = android.text.TextUtils.isEmpty(r4)
            if (r3 == 0) goto L4a
            goto L67
        L4a:
            java.lang.String r3 = "onlyfans.com"
            boolean r3 = r4.endsWith(r3)
            if (r3 == 0) goto L53
            goto L64
        L53:
            java.lang.String r3 = "pornhub.com"
            boolean r3 = r4.endsWith(r3)
            if (r3 == 0) goto L5c
            goto L64
        L5c:
            java.lang.String r3 = "hitomi.la"
            boolean r3 = r4.endsWith(r3)
            if (r3 == 0) goto L67
        L64:
            java.lang.String r3 = "https://"
            goto L69
        L67:
            java.lang.String r3 = "http://"
        L69:
            java.lang.String r4 = r3.concat(r4)
            goto L72
        L6e:
            java.lang.String r4 = q3(r4)
        L72:
            if (r4 != 0) goto L75
            return r4
        L75:
            int r3 = r4.length()
            r0 = 16
            if (r3 >= r0) goto L7e
            goto Lb1
        L7e:
            java.lang.String r1 = "http"
            boolean r1 = r4.startsWith(r1)
            if (r1 != 0) goto L87
            goto Lb1
        L87:
            java.lang.String r1 = "s://naver.com"
            r2 = 4
            boolean r1 = r4.startsWith(r1, r2)
            if (r1 == 0) goto L93
            r0 = 17
            goto L9b
        L93:
            java.lang.String r1 = "://naver.com"
            boolean r1 = r4.startsWith(r1, r2)
            if (r1 == 0) goto Lb1
        L9b:
            java.lang.String r1 = "https://m.naver.com"
            if (r0 < r3) goto La0
            return r1
        La0:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r1)
            java.lang.String r4 = r4.substring(r0)
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            return r3
        Lb1:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.q4(android.content.Context, java.lang.String):java.lang.String");
    }

    public static boolean q5(Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return true;
        }
        if (obj != null && obj2 != null) {
            return obj.equals(obj2);
        }
        return false;
    }

    public static boolean q6(ImageView imageView, String str) {
        Drawable decodeDrawable;
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        try {
            ImageDecoder.Source createSource = ImageDecoder.createSource(new File(str));
            if (createSource == null || (decodeDrawable = ImageDecoder.decodeDrawable(createSource)) == null || !com.google.common.net.a.h(decodeDrawable)) {
                return false;
            }
            imageView.setImageDrawable(decodeDrawable);
            ((AnimatedImageDrawable) decodeDrawable).start();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void q7(View view) {
        if (view == null) {
            return;
        }
        view.setOutlineProvider(new ViewOutlineProvider());
        view.setClipToOutline(true);
    }

    public static boolean r(int i, String str) {
        if (str != null && str.indexOf(i) >= 0) {
            return true;
        }
        return false;
    }

    public static String r0(Context context) {
        ClipboardManager k;
        ClipData primaryClip;
        ClipData.Item itemAt;
        if (context == null) {
            return null;
        }
        try {
            k = MainApp.k(context);
        } catch (Exception | OutOfMemoryError unused) {
        }
        if (!k.hasPrimaryClip() || k.getPrimaryClipDescription() == null || (primaryClip = k.getPrimaryClip()) == null || (itemAt = primaryClip.getItemAt(0)) == null) {
            return null;
        }
        CharSequence text = itemAt.getText();
        if (text != null) {
            return text.toString();
        }
        Uri uri = itemAt.getUri();
        if (uri != null) {
            return uri.getPath();
        }
        return null;
    }

    public static String r1(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return null;
        }
        if (length == 1) {
            return str.toUpperCase(Locale.US);
        }
        if (length > 2 && str.startsWith(".", 1)) {
            str = str.substring(2);
            length -= 2;
            if (length == 1) {
                return str.toUpperCase(Locale.US);
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str.substring(0, 1).toUpperCase(Locale.US));
        if (length > 5 && (str.endsWith(".com") || str.endsWith(".net"))) {
            sb.append(str.substring(1, length - 4));
        } else {
            sb.append(str.substring(1));
        }
        return sb.toString();
    }

    public static String r2(long j) {
        if (j == 0) {
            return "00:00";
        }
        long j2 = j / 1000;
        long j3 = j2 / 3600;
        long j4 = (j2 / 60) % 60;
        long j5 = j2 % 60;
        if (j3 > 999) {
            j3 = 999;
        }
        return String.format(Locale.US, "%02d:%02d:%02d", Long.valueOf(j3), Long.valueOf(j4), Long.valueOf(j5));
    }

    public static boolean[] r3() {
        String[] strArr;
        boolean z;
        int length = MainConst.D.length;
        boolean[] zArr = new boolean[length];
        String str = PrefZone.i0;
        if (!TextUtils.isEmpty(str)) {
            strArr = str.split("/");
        } else {
            strArr = null;
        }
        if (strArr != null && strArr.length == length) {
            for (int i = 0; i < length; i++) {
                if (i == PrefZtwo.j) {
                    zArr[i] = true;
                } else {
                    if (G6(strArr[i]) == 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    zArr[i] = z;
                }
            }
        } else {
            PrefZone.i0 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            for (int i2 = 0; i2 < length; i2++) {
                zArr[i2] = true;
            }
        }
        return zArr;
    }

    public static WindowInsetsControllerCompat r4(Window window, View view) {
        if (Build.VERSION.SDK_INT < 30 || window == null) {
            return null;
        }
        if (view == null) {
            try {
                view = window.getDecorView();
                if (view == null) {
                    return null;
                }
            } catch (Exception unused) {
                return null;
            }
        }
        return new WindowInsetsControllerCompat(window, view);
    }

    public static boolean r5(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (!str.startsWith("m3fake:") && !str.startsWith("tsfake:")) {
            return false;
        }
        return true;
    }

    public static void r6(WebView webView, String str, String str2) {
        if (webView != null && !TextUtils.isEmpty(str2)) {
            if (!TextUtils.isEmpty(str) && str.startsWith("https://m.youtube.com/")) {
                str = "https://www" + str.substring(9);
            }
            String str3 = str;
            webView.loadDataWithBaseURL(str3, str2, "text/html; charset=utf-8", "UTF-8", str3);
        }
    }

    public static void r7(View view) {
        if (view == null) {
            return;
        }
        view.setOutlineProvider(new ViewOutlineProvider());
        view.setClipToOutline(true);
    }

    public static void s(final int i, final Context context, final String str, final String str2) {
        if (context != null && !TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str)) {
                str = "text";
            }
            MainApp.J(context, new Runnable() { // from class: com.mycompany.app.main.MainUtil.15
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        MainApp.k(context).setPrimaryClip(ClipData.newPlainText(str, str2));
                        if (i != 0) {
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.mycompany.app.main.MainUtil.15.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AnonymousClass15 anonymousClass15 = AnonymousClass15.this;
                                    MainUtil.e8(context, i);
                                }
                            });
                        }
                    } catch (Exception | OutOfMemoryError unused) {
                    }
                }
            });
        }
    }

    public static int s0(int i, boolean z) {
        if (s5(z)) {
            return 1;
        }
        if (PrefWeb.O != 0 && i != 0 && i != 1) {
            return i;
        }
        if (MainApp.K1) {
            return 1;
        }
        return 0;
    }

    public static Bitmap s1(View view, Bitmap bitmap, boolean z) {
        if (view != null && f6(bitmap)) {
            try {
                int width = view.getWidth();
                int height = view.getHeight();
                if (width != 0 && height != 0) {
                    int width2 = bitmap.getWidth();
                    int height2 = bitmap.getHeight();
                    if (z) {
                        if (height > width) {
                            width = height;
                        }
                        if (width2 > width) {
                            height2 = (int) (width * (height2 / width2));
                            width2 = width;
                        }
                    } else {
                        if (width <= height) {
                            width = height;
                        }
                        if (height2 > width) {
                            width2 = (int) (width * (width2 / height2));
                            height2 = width;
                        }
                    }
                    return k3(width2, height2, bitmap);
                }
                return null;
            } catch (Exception | OutOfMemoryError unused) {
                return bitmap;
            }
        }
        return null;
    }

    public static String s2(long j) {
        if (j <= 0) {
            return "0:00:00";
        }
        long j2 = j / 1000;
        long j3 = j2 / 3600;
        long j4 = (j2 / 60) % 60;
        long j5 = j2 % 60;
        if (j3 > 999) {
            j3 = 999;
        }
        return String.format(Locale.US, "%d:%02d:%02d", Long.valueOf(j3), Long.valueOf(j4), Long.valueOf(j5));
    }

    public static int s3(int i) {
        if (i != 429 && i != 503 && i != 504) {
            if (i / 100 == 3) {
                return 2;
            }
            return 0;
        }
        return 1;
    }

    public static Point s4(Context context) {
        int i;
        int i2;
        int i3;
        int i4;
        if (context == null) {
            return null;
        }
        Point point = new Point();
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (Build.VERSION.SDK_INT < 30) {
            windowManager.getDefaultDisplay().getRealSize(point);
            return point;
        }
        WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
        Insets insetsIgnoringVisibility = currentWindowMetrics.getWindowInsets().getInsetsIgnoringVisibility(0);
        Rect bounds = currentWindowMetrics.getBounds();
        int width = bounds.width();
        i = insetsIgnoringVisibility.left;
        int i5 = width - i;
        i2 = insetsIgnoringVisibility.right;
        point.x = i5 - i2;
        int height = bounds.height();
        i3 = insetsIgnoringVisibility.top;
        i4 = insetsIgnoringVisibility.bottom;
        point.y = (height - i3) - i4;
        return point;
    }

    public static boolean s5(boolean z) {
        if (z && U4() && PrefWeb.U) {
            return true;
        }
        return false;
    }

    public static SpannableString s6(String str, int i, int i2, String str2, int i3) {
        if (i2 >= 0 && str != null && str2 != null) {
            try {
                int length = str2.length() + i2;
                SpannableString spannableString = new SpannableString(str);
                spannableString.setSpan(new BackgroundHeightSpan(i, i3), i2, length, 33);
                return spannableString;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static void s7(Context context) {
        int maximumBitmapWidth;
        if (PrefPdf.x > 0 || (maximumBitmapWidth = new Canvas().getMaximumBitmapWidth() / 2) <= 0) {
            return;
        }
        PrefPdf.x = maximumBitmapWidth;
        PrefSet.f(context, 7, maximumBitmapWidth, "mMaxTexSize");
    }

    public static boolean t(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            boolean q = MainUri.q(str);
            boolean q2 = MainUri.q(str2);
            if (!q && !q2) {
                return u(str, str2);
            }
            return MainUri.b(context, str, str2, q, q2);
        }
        return false;
    }

    public static String t0(String str) {
        if (!c6(str)) {
            boolean z = false;
            if (!MainUrl.e(str, false)) {
                String J1 = J1(str, true);
                if (!TextUtils.isEmpty(J1) && (J1.endsWith("giphy.com") || J1.endsWith("tumblr.com"))) {
                    z = J1.contains("media");
                }
                if (!z) {
                    return "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9";
                }
                return "application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9";
            }
            return "application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9";
        }
        return "application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9";
    }

    public static Bitmap t1(View view, Bitmap bitmap, boolean z) {
        Bitmap s1;
        if (view == null || !f6(bitmap)) {
            return null;
        }
        try {
            s1 = s1(view, bitmap, z);
        } catch (Exception | OutOfMemoryError unused) {
        }
        if (f6(s1)) {
            Bitmap n0 = n0(view, s1, z);
            if (!f6(n0)) {
                return s1;
            }
            s1.recycle();
            return n0;
        }
        return bitmap;
    }

    public static String t2(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        if (lowerCase.equals("gifv")) {
            return "image/gif";
        }
        if (lowerCase.equals("m3u8")) {
            return "video/*";
        }
        if (lowerCase.equals("flv")) {
            return "video/x-flv";
        }
        if (lowerCase.equals("aac")) {
            return "audio/aac";
        }
        if (Compress.H(lowerCase)) {
            return "text/*";
        }
        return MimeTypeMap.getSingleton().getMimeTypeFromExtension(lowerCase);
    }

    public static String t3(Context context) {
        d5(context);
        String str = PrefZtwo.n;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        return "Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Soul/4.0 Chrome/131.0.0.0 Mobile Safari/537.36";
    }

    public static int t4(int i, boolean z) {
        int i2;
        boolean z2 = PrefZone.s;
        if (PrefZone.t) {
            i2 = (z2 ? 1 : 0) + 1;
        } else {
            i2 = z2 ? 1 : 0;
        }
        boolean z3 = true;
        if (i2 <= 1) {
            z3 = false;
        }
        if (z3) {
            if (z) {
                return R.drawable.outline_youtube_library_2_white_24;
            }
            if (i == 0) {
                return R.drawable.outline_youtube_library_2_black_24;
            }
            return R.drawable.outline_youtube_library_2_dark_24;
        }
        if (z2) {
            if (z) {
                return R.drawable.outline_picture_in_picture_alt_white_24;
            }
            if (i == 0) {
                return R.drawable.outline_picture_in_picture_alt_black_24;
            }
            return R.drawable.outline_picture_in_picture_alt_dark_24;
        }
        if (z) {
            return R.drawable.outline_slow_motion_video_white_24;
        }
        if (i == 0) {
            return R.drawable.outline_slow_motion_video_black_24;
        }
        return R.drawable.outline_slow_motion_video_dark_24;
    }

    public static boolean t5(String str) {
        String J1 = J1(str, true);
        if (TextUtils.isEmpty(J1)) {
            return false;
        }
        return J1.endsWith("googleusercontent.com");
    }

    public static SpannableString t6(String str, int i, int i2, String str2) {
        int indexOf;
        if (str == null) {
            return null;
        }
        SpannableString spannableString = new SpannableString(str);
        if (str2 != null) {
            try {
                String lowerCase = str.toLowerCase(Locale.US);
                int length = lowerCase.length();
                if (i2 < length && (indexOf = lowerCase.indexOf(str2, i2)) >= 0 && indexOf < length) {
                    int length2 = str2.length() + indexOf;
                    if (length2 <= length) {
                        length = length2;
                    }
                    if (i == -14784824) {
                        spannableString.setSpan(new StyleSpan(1), indexOf, length, 33);
                        return spannableString;
                    }
                    spannableString.setSpan(new ForegroundColorSpan(i), indexOf, length, 33);
                }
            } catch (Exception unused) {
            }
        }
        return spannableString;
    }

    public static void t7(Window window, int i) {
        if (Build.VERSION.SDK_INT >= 35 || window == null) {
            return;
        }
        window.setNavigationBarColor(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0046 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0041 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x003c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean u(java.lang.String r9, java.lang.String r10) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r9)
            r1 = 0
            if (r0 != 0) goto L5e
            boolean r0 = android.text.TextUtils.isEmpty(r10)
            if (r0 == 0) goto Le
            goto L5e
        Le:
            r0 = 0
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L36
            r2.<init>(r9)     // Catch: java.lang.Exception -> L36
            java.io.FileOutputStream r9 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L33
            r9.<init>(r10)     // Catch: java.lang.Exception -> L33
            java.nio.channels.FileChannel r3 = r2.getChannel()     // Catch: java.lang.Exception -> L30
            java.nio.channels.FileChannel r8 = r9.getChannel()     // Catch: java.lang.Exception -> L2e
            long r6 = r3.size()     // Catch: java.lang.Exception -> L2c
            r4 = 0
            r3.transferTo(r4, r6, r8)     // Catch: java.lang.Exception -> L2c
            r1 = 1
            goto L3a
        L2c:
            r0 = r2
            goto L39
        L2e:
            r8 = r0
            goto L2c
        L30:
            r3 = r0
        L31:
            r8 = r3
            goto L2c
        L33:
            r9 = r0
            r3 = r9
            goto L31
        L36:
            r9 = r0
            r3 = r9
            r8 = r3
        L39:
            r2 = r0
        L3a:
            if (r8 == 0) goto L3f
            r8.close()     // Catch: java.lang.Exception -> L3f
        L3f:
            if (r3 == 0) goto L44
            r3.close()     // Catch: java.lang.Exception -> L44
        L44:
            if (r9 == 0) goto L49
            r9.close()     // Catch: java.lang.Exception -> L49
        L49:
            if (r2 == 0) goto L4e
            r2.close()     // Catch: java.lang.Exception -> L4e
        L4e:
            if (r1 != 0) goto L5e
            java.io.File r9 = new java.io.File
            r9.<init>(r10)
            boolean r10 = r9.exists()
            if (r10 == 0) goto L5e
            r9.delete()
        L5e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.u(java.lang.String, java.lang.String):boolean");
    }

    public static String u0(Context context, String str) {
        CookieManager m;
        if (TextUtils.isEmpty(str) || (m = MainApp.m(context)) == null) {
            return null;
        }
        return m.getCookie(str);
    }

    public static String u1(Context context) {
        if (!TextUtils.isEmpty(MainApp.U1)) {
            return MainApp.U1;
        }
        String G0 = G0(context, ".font");
        if (TextUtils.isEmpty(G0)) {
            return null;
        }
        String k = a.k(G0, "/font.ttf");
        MainApp.U1 = k;
        return k;
    }

    public static String u2(String str) {
        return t2(V0(str));
    }

    public static String u3(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && str.endsWith("hitomi.la") && 12 < str2.length() && str2.endsWith(" | Hitomi.la")) {
            return a.d(12, 0, str2);
        }
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String u4() {
        /*
            boolean r0 = com.mycompany.app.main.MainApp.R1
            r1 = 0
            if (r0 != 0) goto L6
            goto L5a
        L6:
            r2 = 0
            r3 = 5
            if (r0 != 0) goto Lc
        La:
            r0 = r1
            goto L32
        Lc:
            java.util.ArrayList r0 = com.mycompany.app.main.MainNative.o
            boolean r0 = com.mycompany.app.main.MainNative.a(r3, r0)
            if (r0 == 0) goto L17
            java.util.ArrayList r0 = com.mycompany.app.main.MainNative.o
            goto L32
        L17:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r4 = r2
        L1d:
            if (r4 >= r3) goto L30
            java.lang.String r5 = getYouJs1(r4)
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto L2a
            goto La
        L2a:
            r0.add(r5)
            int r4 = r4 + 1
            goto L1d
        L30:
            com.mycompany.app.main.MainNative.o = r0
        L32:
            if (r0 == 0) goto L5a
            int r4 = r0.size()
            if (r4 == r3) goto L3b
            goto L5a
        L3b:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
        L40:
            if (r2 >= r3) goto L55
            java.lang.Object r5 = r0.get(r2)
            java.lang.String r5 = (java.lang.String) r5
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto L4f
            goto L5a
        L4f:
            r4.append(r5)
            int r2 = r2 + 1
            goto L40
        L55:
            java.lang.String r0 = r4.toString()
            return r0
        L5a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.u4():java.lang.String");
    }

    public static boolean u5(String str) {
        int length;
        if (str == null || (length = str.length()) == 0 || !str.endsWith("google.com")) {
            return false;
        }
        if (length <= 10 || str.lastIndexOf(46, length - 10) == length - 11) {
            return true;
        }
        return str.equals("https://google.com");
    }

    public static SpannableString u6(String str) {
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 0);
        return spannableString;
    }

    public static void u7(Activity activity) {
        if (activity != null) {
            int i = PrefMain.l;
            if (i == 1) {
                v7(activity, 1);
            } else if (i == 2) {
                v7(activity, 6);
            }
        }
    }

    public static void v(final int i, final Context context, String str, String str2) {
        if (context != null && !TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str)) {
                str = "text";
            }
            try {
                MainApp.k(context).setPrimaryClip(ClipData.newPlainText(str, str2));
                if (i != 0) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.mycompany.app.main.MainUtil.16
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainUtil.e8(context, i);
                        }
                    });
                }
            } catch (Exception | OutOfMemoryError unused) {
            }
        }
    }

    public static HashMap v0(Context context, String str, String str2) {
        String u0;
        if (!TextUtils.isEmpty(str)) {
            try {
                HashMap hashMap = new HashMap();
                boolean z = false;
                if (v5(str2)) {
                    u0 = null;
                    str2 = null;
                } else {
                    if (t5(str)) {
                        str2 = str;
                    } else if (!TextUtils.isEmpty(str2)) {
                        MainApp p = MainApp.p(context);
                        if (p != null) {
                            String n = p.n(str);
                            if (!TextUtils.isEmpty(n)) {
                                hashMap.put("Origin", n);
                            }
                        }
                    } else {
                        MainApp p2 = MainApp.p(context);
                        if (p2 != null && "https://missav.com".equals(p2.n(str))) {
                            z = true;
                        }
                    }
                    u0 = u0(context, str2);
                    if (TextUtils.isEmpty(str2)) {
                        str2 = str;
                    }
                }
                hashMap.put("Accept", t0(str));
                hashMap.put("Accept-Encoding", "identity");
                if (!z) {
                    hashMap.put("User-Agent", J0());
                }
                if (!TextUtils.isEmpty(str2)) {
                    hashMap.put("Referer", str2);
                }
                if (!TextUtils.isEmpty(u0)) {
                    hashMap.put("Cookie", u0);
                }
                return hashMap;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static WebResourceResponse v1(Context context, String str) {
        InputStream inputStream;
        if (TextUtils.isEmpty(str) || !str.contains("soul_user_font.ttf")) {
            return null;
        }
        try {
            inputStream = a1(u1(context));
            try {
                return new WebResourceResponse("application/x-font-ttf", "UTF-8", inputStream);
            } catch (Exception unused) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception unused2) {
                    }
                }
                return null;
            }
        } catch (Exception unused3) {
            inputStream = null;
        }
    }

    public static String v2(String str) {
        return t2(U3(str, false));
    }

    public static int v3(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (str.endsWith("hitomi.la")) {
                return 1;
            }
            if (str.endsWith("manatoki.net") || str.endsWith("newtoki.com")) {
                return 2;
            }
            return 0;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String v4() {
        /*
            boolean r0 = com.mycompany.app.main.MainApp.R1
            r1 = 0
            if (r0 != 0) goto L6
            goto L5a
        L6:
            r2 = 0
            r3 = 5
            if (r0 != 0) goto Lc
        La:
            r0 = r1
            goto L32
        Lc:
            java.util.ArrayList r0 = com.mycompany.app.main.MainNative.p
            boolean r0 = com.mycompany.app.main.MainNative.a(r3, r0)
            if (r0 == 0) goto L17
            java.util.ArrayList r0 = com.mycompany.app.main.MainNative.p
            goto L32
        L17:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r4 = r2
        L1d:
            if (r4 >= r3) goto L30
            java.lang.String r5 = getYouJs2(r4)
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto L2a
            goto La
        L2a:
            r0.add(r5)
            int r4 = r4 + 1
            goto L1d
        L30:
            com.mycompany.app.main.MainNative.p = r0
        L32:
            if (r0 == 0) goto L5a
            int r4 = r0.size()
            if (r4 == r3) goto L3b
            goto L5a
        L3b:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
        L40:
            if (r2 >= r3) goto L55
            java.lang.Object r5 = r0.get(r2)
            java.lang.String r5 = (java.lang.String) r5
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto L4f
            goto L5a
        L4f:
            r4.append(r5)
            int r2 = r2 + 1
            goto L40
        L55:
            java.lang.String r0 = r4.toString()
            return r0
        L5a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.v4():java.lang.String");
    }

    public static boolean v5(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("https://www.google.com/search");
    }

    public static boolean v6(Context context, String str, String str2) {
        OutputStream outputStream;
        boolean z = false;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            InputStream inputStream = null;
            try {
                outputStream = V2(context, str, true);
            } catch (Exception unused) {
                outputStream = null;
            }
            if (outputStream == null) {
                return false;
            }
            if (!TextUtils.isEmpty(str2)) {
                try {
                    inputStream = Y1(context, str2);
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int read = inputStream.read(bArr, 0, 8192);
                        if (read == -1) {
                            break;
                        }
                        outputStream.write(bArr, 0, read);
                    }
                    z = true;
                } catch (Exception unused2) {
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception unused3) {
                    }
                }
            }
            try {
                outputStream.close();
            } catch (Exception unused4) {
            }
        }
        return z;
    }

    public static void v7(final Activity activity, final int i) {
        if (activity == null) {
            return;
        }
        MainApp.J(activity, new Runnable() { // from class: com.mycompany.app.main.MainUtil.11
            @Override // java.lang.Runnable
            public final void run() {
                MainUtil.B7(activity, i);
            }
        });
    }

    public static void w(Context context) {
        if (context != null) {
            try {
                File cacheDir = context.getCacheDir();
                y(cacheDir);
                if (!cacheDir.exists()) {
                    cacheDir.mkdirs();
                }
            } catch (Exception unused) {
            }
            try {
                File externalCacheDir = context.getExternalCacheDir();
                y(externalCacheDir);
                if (!externalCacheDir.exists()) {
                    externalCacheDir.mkdirs();
                }
            } catch (Exception unused2) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003c A[Catch: Exception -> 0x0060, TryCatch #0 {Exception -> 0x0060, blocks: (B:7:0x001c, B:10:0x0028, B:13:0x0030, B:18:0x003c, B:20:0x0046, B:24:0x0050, B:26:0x0056, B:27:0x005b), top: B:6:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0050 A[Catch: Exception -> 0x0060, TryCatch #0 {Exception -> 0x0060, blocks: (B:7:0x001c, B:10:0x0028, B:13:0x0030, B:18:0x003c, B:20:0x0046, B:24:0x0050, B:26:0x0056, B:27:0x005b), top: B:6:0x001c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long w0(android.content.Context r11, java.lang.String r12, java.lang.String r13) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r12)
            r1 = 0
            if (r0 == 0) goto L9
            goto L1a
        L9:
            java.lang.String r9 = J0()
            r10 = 1
            r6 = 0
            r7 = 0
            r8 = 0
            r3 = r11
            r4 = r12
            r5 = r13
            java.net.HttpURLConnection r11 = T3(r3, r4, r5, r6, r7, r8, r9, r10)
            if (r11 != 0) goto L1b
        L1a:
            return r1
        L1b:
            r12 = 1
            r11.setDoInput(r12)     // Catch: java.lang.Exception -> L60
            r11.connect()     // Catch: java.lang.Exception -> L60
            java.lang.String r13 = r11.getContentType()     // Catch: java.lang.Exception -> L27
            goto L28
        L27:
            r13 = 0
        L28:
            boolean r0 = android.text.TextUtils.isEmpty(r13)     // Catch: java.lang.Exception -> L60
            java.lang.String r3 = "text/html"
            if (r0 != 0) goto L39
            boolean r13 = r13.startsWith(r3)     // Catch: java.lang.Exception -> L60
            if (r13 != 0) goto L37
            goto L39
        L37:
            r13 = 0
            goto L3a
        L39:
            r13 = r12
        L3a:
            if (r13 != 0) goto L4d
            java.lang.String r0 = v2(r4)     // Catch: java.lang.Exception -> L60
            boolean r4 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L60
            if (r4 != 0) goto L4d
            boolean r0 = r0.startsWith(r3)     // Catch: java.lang.Exception -> L60
            if (r0 == 0) goto L4d
            goto L4e
        L4d:
            r12 = r13
        L4e:
            if (r12 == 0) goto L60
            int r12 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L60
            r13 = 24
            if (r12 < r13) goto L5b
            long r1 = r11.getContentLengthLong()     // Catch: java.lang.Exception -> L60
            goto L60
        L5b:
            int r12 = r11.getContentLength()     // Catch: java.lang.Exception -> L60
            long r1 = (long) r12
        L60:
            r11.disconnect()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.w0(android.content.Context, java.lang.String, java.lang.String):long");
    }

    public static Typeface w1(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            if (MainUri.q(str)) {
                return Typeface.createFromFile(MainUri.i(context, str));
            }
            return Typeface.createFromFile(str);
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] w2(Context context, String str) {
        byte[] bArr;
        if (context != null && !TextUtils.isEmpty(str)) {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                mediaMetadataRetriever.setDataSource(context, Uri.parse(str));
                bArr = mediaMetadataRetriever.getEmbeddedPicture();
            } catch (Exception unused) {
                bArr = null;
            }
            M6(mediaMetadataRetriever);
            if (bArr != null) {
                return bArr;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x00c7, code lost:
    
        if (android.text.TextUtils.isEmpty(r3) != false) goto L75;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String w3(java.lang.String r15) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r15)
            if (r0 == 0) goto L7
            return r15
        L7:
            java.lang.String r15 = r15.trim()
            boolean r0 = android.text.TextUtils.isEmpty(r15)
            if (r0 == 0) goto L12
            goto L1a
        L12:
            r0 = 44
            boolean r0 = r(r0, r15)
            if (r0 != 0) goto L1b
        L1a:
            return r15
        L1b:
            java.lang.String r0 = ","
            java.lang.String[] r0 = r15.split(r0)
            if (r0 == 0) goto Le3
            int r1 = r0.length
            if (r1 != 0) goto L28
            goto Le3
        L28:
            int r1 = r0.length
            r2 = 0
            r3 = 0
            r4 = r2
            r5 = r4
        L2d:
            r6 = 1
            if (r4 >= r1) goto Lb9
            r7 = r0[r4]
            boolean r8 = android.text.TextUtils.isEmpty(r7)
            if (r8 == 0) goto L3a
            goto Lb5
        L3a:
            java.lang.String r7 = r7.trim()
            boolean r8 = android.text.TextUtils.isEmpty(r7)
            if (r8 == 0) goto L46
            goto Lb5
        L46:
            r8 = 32
            int r8 = r7.lastIndexOf(r8)
            r9 = -1
            if (r8 != r9) goto L51
            goto Lb5
        L51:
            int r9 = r8 + 1
            int r10 = r7.length()
            int r10 = r10 - r6
            if (r9 < r10) goto L5b
            goto Lb5
        L5b:
            java.lang.String r6 = android.support.v4.media.a.d(r6, r9, r7)
            boolean r9 = android.text.TextUtils.isEmpty(r6)
            if (r9 == 0) goto L66
            goto La1
        L66:
            int r9 = r6.length()
            r10 = r2
        L6b:
            r11 = 57
            r12 = 48
            if (r10 >= r9) goto L80
            char r13 = r6.charAt(r10)
            if (r13 < r12) goto L7d
            char r13 = r6.charAt(r10)
            if (r13 <= r11) goto L80
        L7d:
            int r10 = r10 + 1
            goto L6b
        L80:
            if (r10 >= r9) goto L95
            int r13 = r9 + (-1)
            char r14 = r6.charAt(r13)
            if (r14 < r12) goto L92
            if (r9 <= 0) goto L95
            char r13 = r6.charAt(r13)
            if (r13 <= r11) goto L95
        L92:
            int r9 = r9 + (-1)
            goto L80
        L95:
            if (r10 > 0) goto L9d
            int r11 = r6.length()
            if (r9 >= r11) goto La1
        L9d:
            java.lang.String r6 = r6.substring(r10, r9)
        La1:
            int r6 = G6(r6)
            if (r6 > r5) goto La8
            goto Lb5
        La8:
            java.lang.String r7 = r7.substring(r2, r8)
            boolean r8 = android.text.TextUtils.isEmpty(r7)
            if (r8 == 0) goto Lb3
            goto Lb5
        Lb3:
            r5 = r6
            r3 = r7
        Lb5:
            int r4 = r4 + 1
            goto L2d
        Lb9:
            boolean r1 = android.text.TextUtils.isEmpty(r3)
            if (r1 == 0) goto Lca
            int r1 = r0.length
            int r1 = r1 - r6
            r3 = r0[r1]
            boolean r0 = android.text.TextUtils.isEmpty(r3)
            if (r0 == 0) goto Lca
            goto Le3
        Lca:
            java.lang.String r0 = r3.trim()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto Ld5
            goto Le3
        Ld5:
            boolean r1 = android.webkit.URLUtil.isNetworkUrl(r15)
            if (r1 == 0) goto Le2
            boolean r1 = android.webkit.URLUtil.isNetworkUrl(r0)
            if (r1 != 0) goto Le2
            goto Le3
        Le2:
            return r0
        Le3:
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.w3(java.lang.String):java.lang.String");
    }

    public static String w4(String str) {
        int indexOf;
        int indexOf2;
        int indexOf3;
        int i;
        int length;
        if (TextUtils.isEmpty(str) || (indexOf = str.indexOf("youtube.com/")) == -1 || (indexOf2 = str.indexOf("watch?", indexOf + 12)) == -1 || (indexOf3 = str.indexOf("v=", indexOf2 + 6)) == -1 || (i = indexOf3 + 2) >= (length = str.length())) {
            return null;
        }
        int i2 = indexOf3 + 13;
        if (i2 >= length) {
            return str.substring(i);
        }
        return str.substring(i, i2);
    }

    public static boolean w5(String str, boolean z) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(f16990a)) {
            if (str.endsWith(f16990a)) {
                return true;
            }
            if (z && !TextUtils.isEmpty(b)) {
                return str.equals(b);
            }
            return false;
        }
        return false;
    }

    public static boolean w6(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        boolean q = MainUri.q(str);
        boolean q2 = MainUri.q(str2);
        if (!q && !q2) {
            File file = new File(str);
            if (!file.exists()) {
                return false;
            }
            return file.renameTo(new File(str2));
        }
        return MainUri.s(context, str, str2, q, q2);
    }

    public static void w7(Activity activity) {
        int i = PrefMain.l;
        if (i == 1) {
            v7(activity, 1);
        } else if (i == 2) {
            v7(activity, 6);
        } else {
            v7(activity, -1);
        }
    }

    public static void x(Context context) {
        if (Build.VERSION.SDK_INT >= 24 && context != null) {
            try {
                File file = new File(context.getDataDir().getPath(), "app_webview");
                y(file);
                if (!file.exists()) {
                    file.mkdirs();
                }
            } catch (Exception unused) {
            }
        }
    }

    public static String x0(int i) {
        if (i < 2) {
            return null;
        }
        return a.f(i, "%0", "d");
    }

    public static String x1(int i, int i2) {
        if (i2 < 2) {
            StringBuilder sb = new StringBuilder();
            sb.append(i);
            return sb.toString();
        }
        return String.format(Locale.US, a.s(i2, "%0", "d").toString(), Integer.valueOf(i));
    }

    public static Bitmap x2(Context context, MainItem.ChildItem childItem) {
        byte[] w2;
        Bitmap bitmap = null;
        if (TextUtils.isEmpty(childItem.g)) {
            return null;
        }
        if (TextUtils.isEmpty(childItem.z)) {
            childItem.z = p2(context, childItem.g);
        }
        if (new File(childItem.z).length() > 0) {
            return BitmapUtil.c(childItem.z);
        }
        String str = childItem.g;
        if (!TextUtils.isEmpty(str) && (w2 = w2(context, str)) != null && w2.length != 0) {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapUtil.b(w2, w2.length, options);
                int i = options.outWidth;
                int i2 = MainApp.g1;
                if (i > i2 || options.outHeight > i2) {
                    options.inSampleSize = e0(i, options.outHeight, i2, i2);
                }
                options.inJustDecodeBounds = false;
                bitmap = BitmapUtil.b(w2, w2.length, options);
            } catch (Exception unused) {
            }
        }
        p(context, bitmap, childItem.z);
        return bitmap;
    }

    public static int x3(Window window) {
        if (Build.VERSION.SDK_INT >= 35 || window == null) {
            return 0;
        }
        return window.getStatusBarColor();
    }

    public static String x4(String str) {
        int length;
        int indexOf;
        int i;
        int i2;
        if (str == null || (length = str.length()) == 0) {
            return null;
        }
        if (str.indexOf("youtube.com/") == -1) {
            int ytbe = str.indexOf("youtu.be/");
            if (ytbe == -1) {
                return null;
            }
            int start = ytbe + 9;
            if (start >= length) {
                return null;
            }
            int end = start + 11;
            if (end >= length) {
                return str.substring(start);
            }
            return str.substring(start, end);
        }
        indexOf = str.indexOf("youtube.com/");
        int indexOf2 = str.indexOf("watch?", indexOf + 12);
        if (indexOf2 != -1) {
            int indexOf3 = str.indexOf("v=", indexOf2 + 6);
            if (indexOf3 == -1 || (i2 = indexOf3 + 2) >= length) {
                return null;
            }
            int i3 = indexOf3 + 13;
            if (i3 >= length) {
                return str.substring(i2);
            }
            return str.substring(i2, i3);
        }
        int indexOf4 = str.indexOf("shorts/", indexOf2 + 12);
        if (indexOf4 == -1 || (i = indexOf4 + 7) >= length) {
            return null;
        }
        int i4 = indexOf4 + 18;
        if (i4 >= length) {
            return str.substring(i);
        }
        return str.substring(i, i4);
    }

    public static boolean x5(String str) {
        int length;
        int lastIndexOf;
        int i;
        int a5;
        if (str == null || (length = str.length()) == 0 || (lastIndexOf = str.lastIndexOf(35)) < 0 || (i = lastIndexOf + 1) >= length || (a5 = a5(str, '-', i, length)) <= i || a5 + 1 > length) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003f, code lost:
    
        if (android.text.TextUtils.isEmpty(r5) != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0057, code lost:
    
        if (android.text.TextUtils.isEmpty(r7) != false) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean x6(com.mycompany.app.web.WebNestView r3, java.lang.String r4, java.lang.String r5, java.lang.String r6, java.lang.String r7, boolean r8) {
        /*
            boolean r0 = com.mycompany.app.pref.PrefZtwo.E
            r1 = 0
            if (r0 != 0) goto L7
            goto L73
        L7:
            boolean r0 = q5(r4, r6)
            if (r0 == 0) goto Lf
            goto L73
        Lf:
            java.lang.String r0 = "file:///android_asset/shortcut.html"
            boolean r0 = r0.equals(r4)
            r2 = 1
            if (r0 == 0) goto L19
            goto L72
        L19:
            if (r8 == 0) goto L24
            if (r3 == 0) goto L24
            int r3 = r3.V1
            r8 = 4
            if (r3 != r8) goto L23
            goto L24
        L23:
            return r1
        L24:
            boolean r3 = e5(r4)
            if (r3 != 0) goto L73
            boolean r3 = e5(r6)
            if (r3 == 0) goto L31
            goto L73
        L31:
            boolean r3 = android.text.TextUtils.isEmpty(r5)
            if (r3 == 0) goto L42
            java.lang.String r5 = J1(r4, r2)
            boolean r3 = android.text.TextUtils.isEmpty(r5)
            if (r3 == 0) goto L42
            goto L72
        L42:
            boolean r3 = android.text.TextUtils.isEmpty(r6)
            if (r3 == 0) goto L49
            goto L72
        L49:
            boolean r3 = android.text.TextUtils.isEmpty(r7)
            if (r3 == 0) goto L5a
            java.lang.String r7 = J1(r6, r1)
            boolean r3 = android.text.TextUtils.isEmpty(r7)
            if (r3 == 0) goto L5a
            goto L72
        L5a:
            boolean r3 = u5(r5)
            if (r3 != 0) goto L61
            goto L72
        L61:
            boolean r3 = u5(r7)
            if (r3 != 0) goto L68
            goto L72
        L68:
            java.lang.String r3 = "&sclient="
            int r3 = r6.lastIndexOf(r3)
            r4 = -1
            if (r3 == r4) goto L72
            goto L73
        L72:
            return r2
        L73:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.x6(com.mycompany.app.web.WebNestView, java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean):boolean");
    }

    public static void x7(WebView webView) {
        boolean z = MainApp.R1;
        if (z) {
            int i = 0;
            ArrayList arrayList = null;
            if (z) {
                if (MainNative.a(9, MainNative.f16826c)) {
                    arrayList = MainNative.f16826c;
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    int i2 = 0;
                    while (true) {
                        if (i2 < 9) {
                            String overlayJs = getOverlayJs(i2);
                            if (TextUtils.isEmpty(overlayJs)) {
                                break;
                            }
                            arrayList2.add(overlayJs);
                            i2++;
                        } else {
                            MainNative.f16826c = arrayList2;
                            arrayList = arrayList2;
                            break;
                        }
                    }
                }
            }
            if (arrayList != null && arrayList.size() == 9) {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    if (i < 5) {
                        String str = (String) arrayList.get(i);
                        if (!TextUtils.isEmpty(str)) {
                            sb.append(str);
                            i++;
                        } else {
                            return;
                        }
                    } else {
                        if (PrefTts.u == 1) {
                            sb.append("(function(){myOvr1(document);})();");
                            I(webView, sb.toString(), true);
                            return;
                        }
                        for (int i3 = 5; i3 < 9; i3++) {
                            String str2 = (String) arrayList.get(i3);
                            if (!TextUtils.isEmpty(str2)) {
                                sb.append(str2);
                            } else {
                                return;
                            }
                        }
                        I(webView, sb.toString(), true);
                        return;
                    }
                }
            }
        }
    }

    public static void y(File file) {
        try {
            if (!file.isDirectory()) {
                if (file.exists()) {
                    file.delete();
                    return;
                }
                return;
            }
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length > 0) {
                for (File file2 : listFiles) {
                    if (file2.isDirectory()) {
                        y(file2);
                    } else if (file2.exists()) {
                        file2.delete();
                    }
                }
            }
            if (file.exists()) {
                file.delete();
            }
        } catch (Exception unused) {
        }
    }

    public static int y0(int i) {
        int i2 = 0;
        if (i < 0) {
            i = -i;
        }
        while (i != 0) {
            i /= 10;
            i2++;
        }
        return i2;
    }

    public static String y1(long j, String str, String str2) {
        if (str == null && (str = C0(str2)) == null) {
            return null;
        }
        try {
            return DateFormat.format(str, j).toString();
        } catch (Exception unused) {
            return new SimpleDateFormat(str, MainApp.j()).format(new Date(j));
        }
    }

    public static String y2(String str, Pattern pattern) {
        String substring;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!TextUtils.isEmpty(str) && (pattern != null || (pattern = Pattern.compile("\\p{Punct}")) != null)) {
            str = pattern.matcher(str).replaceAll(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!TextUtils.isEmpty(str)) {
            int length = str.length();
            int i = 0;
            while (i < length && str.charAt(i) <= ' ') {
                i++;
            }
            if (i > 0 || length < str.length()) {
                str = str.substring(i, length);
            }
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith("˝")) {
            if (str.length() == 1) {
                return null;
            }
            substring = str.substring(1, 2);
        } else {
            substring = str.substring(0, 1);
        }
        if (TextUtils.isEmpty(substring)) {
            return null;
        }
        return substring.toUpperCase(Locale.US);
    }

    public static StaticLayout y3(CharSequence charSequence, TextPaint textPaint, int i) {
        Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
        if (charSequence != null) {
            return StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i).setAlignment(alignment).build();
        }
        return null;
    }

    public static boolean y4(Activity activity, String str, String str2, boolean z, boolean z2) {
        if (activity != null && !TextUtils.isEmpty(str)) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setDataAndType(Uri.parse(str), str2);
                intent.addFlags(3);
                intent.addFlags(536870912);
                if (z2) {
                    activity.startActivity(Intent.createChooser(intent, activity.getString(R.string.open_with)));
                    return true;
                }
                activity.startActivity(intent);
                return true;
            } catch (ActivityNotFoundException unused) {
                if (z) {
                    e8(activity, R.string.apps_none);
                    return false;
                }
                return false;
            } catch (Exception unused2) {
                if (z) {
                    e8(activity, R.string.invalid_path);
                    return false;
                }
                return false;
            }
        }
        return false;
    }

    public static boolean y5(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.endsWith("hitomi.la");
    }

    public static boolean y6(String str) {
        if (!PrefWeb.M || PrefWeb.N == 100) {
            return false;
        }
        return !"file:///android_asset/shortcut.html".equals(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00f3, code lost:
    
        if (r3 == 0) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00fe, code lost:
    
        if (I4(r2, r7) == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0100, code lost:
    
        return 14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f8, code lost:
    
        if (com.mycompany.app.pref.PrefAlbum.P != false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00a6, code lost:
    
        if (r8.endsWith("accounts.google.com") == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00af, code lost:
    
        if (r8.endsWith("youtu.be") == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00d2, code lost:
    
        if (o5(r5) == false) goto L78;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int y7(android.app.Activity r2, android.content.Context r3, com.mycompany.app.web.WebNestView r4, java.lang.String r5, java.lang.String r6, java.lang.String r7, java.lang.String r8, int r9) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUtil.y7(android.app.Activity, android.content.Context, com.mycompany.app.web.WebNestView, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int):int");
    }

    public static void z(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        y(new File(str));
    }

    public static String z0(String str, boolean z, boolean z2) {
        if (y6(str)) {
            if (z) {
                return a.g(PrefWeb.N, "%);}';document.head.appendChild(ele);}}", new StringBuilder("if(document.head){if(!document.getElementById('sb_dark_style')){var ele=document.createElement('style');ele.id='sb_dark_style';ele.innerText='img{-webkit-filter:brightness("));
            }
            if (z2) {
                return "var edk=document.getElementById('sb_dark_style');if(edk){document.head.removeChild(edk);}";
            }
            return null;
        }
        return null;
    }

    public static String z1(String str) {
        String[] split2;
        int length;
        String str2;
        if (str == null || str.length() <= 34 || !str.startsWith("https://raw.githubusercontent.com/") || (length = (split2 = str.substring(34).split("/")).length) < 4) {
            return null;
        }
        String str3 = split2[0];
        String str4 = split2[1];
        int i = 3;
        if (length >= 5 && split2[2].equals("refs") && split2[3].equals("heads")) {
            str2 = split2[4];
            i = 5;
        } else {
            str2 = split2[2];
        }
        StringBuilder sb = new StringBuilder();
        while (i < length) {
            sb.append(split2[i]);
            if (i < length - 1) {
                sb.append("/");
            }
            i++;
        }
        String sb2 = sb.toString();
        if (sb2.length() == 0) {
            return null;
        }
        return a.q(androidx.work.impl.workers.a.u("https://cdn.jsdelivr.net/gh/", str3, "/", str4, "@"), str2, "/", sb2);
    }

    public static String z2(String str) {
        int length;
        int indexOf;
        int i;
        int i2;
        int indexOf2;
        String str2 = null;
        if (str == null || (length = str.length()) < 10 || (indexOf = str.toLowerCase(Locale.US).indexOf("filename=")) == -1 || (i = indexOf + 9) >= length) {
            return null;
        }
        int indexOf3 = str.indexOf(34, i);
        if (indexOf3 >= i && (i2 = indexOf3 + 1) < length && (indexOf2 = str.indexOf(34, i2)) > i2 && indexOf2 < length) {
            str2 = str.substring(i2, indexOf2);
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = str.substring(i);
        }
        try {
            str2 = URLDecoder.decode(str2, "UTF-8");
            return str2.trim();
        } catch (Exception unused) {
            return str2;
        }
    }

    public static int z3(Context context, Window window, View view) {
        boolean z;
        int i;
        if (PrefMain.v && (i = PrefMain.u) > 0) {
            return i;
        }
        if (window == null) {
            return 0;
        }
        if (view == null && (view = window.getDecorView()) == null) {
            return 0;
        }
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        if (rect.top <= 0) {
            return 0;
        }
        int G = (int) G(context, 70.0f);
        int i2 = rect.top;
        if (i2 >= G) {
            return 0;
        }
        int i3 = PrefMain.u;
        if (i3 == i2) {
            z = true;
        } else {
            z = false;
        }
        if (i3 == i2 && PrefMain.v == z) {
            return i3;
        }
        PrefMain.v = z;
        PrefMain.u = i2;
        PrefMain r = PrefMain.r(context, false);
        r.n(PrefMain.u, "mStatusHeight");
        r.l("mStatusConfirm", PrefMain.v);
        r.a();
        return PrefMain.u;
    }

    public static boolean z4(MainActivity mainActivity) {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                Intent intent = new Intent();
                intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
                intent.putExtra("android.provider.extra.APP_PACKAGE", mainActivity.getPackageName());
                intent.addFlags(268435456);
                mainActivity.startActivity(intent);
                return true;
            } catch (ActivityNotFoundException | Exception unused) {
                return false;
            }
        }
        return false;
    }

    public static boolean z5(String str) {
        return A5(str, J1(str, true));
    }

    public static boolean z6() {
        if (PrefSecret.s == 0) {
            return false;
        }
        if (PrefSecret.u && !PrefSync.k) {
            return false;
        }
        return true;
    }

    public static void z7(Context context, Uri uri) {
        if (context != null && uri != null) {
            try {
                try {
                    context.getContentResolver().takePersistableUriPermission(uri, 3);
                } catch (SecurityException unused) {
                    context.getContentResolver().takePersistableUriPermission(uri, 1);
                }
            } catch (SecurityException | Exception unused2) {
            }
        }
    }
}
