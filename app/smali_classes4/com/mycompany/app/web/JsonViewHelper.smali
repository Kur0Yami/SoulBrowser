.class public final Lcom/mycompany/app/web/JsonViewHelper;
.super Ljava/lang/Object;
.source "JsonViewHelper.java"


# static fields
.field private static final DETECT_JS:Ljava/lang/String; = "(function(){if(window.__soulMozillaJsonView)return false;var el=document.body&&document.body.firstElementChild;if(!(el instanceof HTMLElement)||el.tagName!==\'PRE\')return false;try{JSON.parse(el.innerText);return true;}catch(e){return false;}})();"

.field private static cachedViewerJs:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sminjectViewer(Landroid/webkit/WebView;)V
    .registers 1

    invoke-static {p0}, Lcom/mycompany/app/web/JsonViewHelper;->injectViewer(Landroid/webkit/WebView;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Landroid/webkit/WebView;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 33
    :cond_3
    :try_start_3
    const-string v0, "(function(){if(window.__soulMozillaJsonView)return false;var el=document.body&&document.body.firstElementChild;if(!(el instanceof HTMLElement)||el.tagName!==\'PRE\')return false;try{JSON.parse(el.innerText);return true;}catch(e){return false;}})();"

    new-instance v1, Lcom/mycompany/app/web/JsonViewHelper$1;

    invoke-direct {v1, p0}, Lcom/mycompany/app/web/JsonViewHelper$1;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method

.method private static injectViewer(Landroid/webkit/WebView;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 49
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 53
    :cond_a
    invoke-static {v0}, Lcom/mycompany/app/web/JsonViewHelper;->loadViewerJs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    :cond_15
    const/4 v1, 0x0

    .line 58
    :try_start_16
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_19

    :catch_19
    return-void
.end method

.method private static declared-synchronized loadViewerJs(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-class v0, Lcom/mycompany/app/web/JsonViewHelper;

    monitor-enter v0

    .line 64
    :try_start_3
    sget-object v1, Lcom/mycompany/app/web/JsonViewHelper;->cachedViewerJs:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_4e

    if-eqz v1, :cond_9

    .line 65
    monitor-exit v0

    return-object v1

    :cond_9
    const/4 v1, 0x0

    .line 69
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v2, "jsonview/viewer.js"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 70
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x2000

    .line 71
    new-array v2, v2, [B

    .line 73
    :goto_1d
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_28

    const/4 v4, 0x0

    .line 74
    invoke-virtual {p0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1d

    .line 76
    :cond_28
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v2, Lcom/mycompany/app/web/JsonViewHelper;->cachedViewerJs:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_35} :catch_3d
    .catchall {:try_start_a .. :try_end_35} :catchall_3b

    if-eqz v1, :cond_44

    .line 82
    :goto_37
    :try_start_37
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_44
    .catchall {:try_start_37 .. :try_end_3a} :catchall_4e

    goto :goto_44

    :catchall_3b
    move-exception p0

    goto :goto_48

    .line 78
    :catch_3d
    :try_start_3d
    const-string p0, ""

    sput-object p0, Lcom/mycompany/app/web/JsonViewHelper;->cachedViewerJs:Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3b

    if-eqz v1, :cond_44

    goto :goto_37

    .line 87
    :catch_44
    :cond_44
    :goto_44
    :try_start_44
    sget-object p0, Lcom/mycompany/app/web/JsonViewHelper;->cachedViewerJs:Ljava/lang/String;
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_4e

    monitor-exit v0

    return-object p0

    :goto_48
    if-eqz v1, :cond_4d

    .line 82
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    .line 86
    :catch_4d
    :cond_4d
    :try_start_4d
    throw p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p0

    monitor-exit v0

    goto :goto_52

    :goto_51
    throw p0

    :goto_52
    goto :goto_51
.end method
