.class public final Lcom/mycompany/app/web/DevToolsHelper;
.super Ljava/lang/Object;
.source "DevToolsHelper.java"


# static fields
.field private static final ASSET_PATH:Ljava/lang/String; = "eruda/eruda.js"

.field private static final HAS_ERUDA_JS:Ljava/lang/String; = "(function(){return!!window.eruda;})();"

.field private static final HIDE_ENTRY_JS:Ljava/lang/String; = "try{var __e=eruda.get(\'entryBtn\');if(__e)__e.hide()}catch(e){}"

.field private static final INIT_AND_SHOW_SUFFIX:Ljava/lang/String; = ";eruda.init({defaults:{displaySize:50}});eruda.show();"

.field private static final INIT_HIDDEN_SUFFIX:Ljava/lang/String; = ";eruda.init({defaults:{displaySize:50}});try{var __e=eruda.get(\'entryBtn\');if(__e)__e.hide()}catch(e){}"

.field private static final INIT_OPTS:Ljava/lang/String; = "{defaults:{displaySize:50}}"

.field private static final SHOW_JS:Ljava/lang/String; = "eruda.show();try{var __e=eruda.get(\'entryBtn\');if(__e)__e.show()}catch(e){}"

.field private static cachedErudaJs:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static inject(Lcom/mycompany/app/web/WebViewActivity;ZZ)V
    .registers 8

    # p0=activity, p1=showPanel, p2=toastIfUnsupported
    # v0=webView, v1=url/tmp, v2=eruda, v3=whenPresent, v4=whenAbsent

    if-nez p0, :cond_return

    return-void

    :cond_return
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    if-nez v0, :cond_webview

    return-void

    :cond_webview
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_unsupported

    const-string v2, "file:///android_asset/shortcut.html"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_unsupported

    const-string v2, "about:blank"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ok_url

    goto :goto_unsupported

    :cond_ok_url
    if-eqz p1, :cond_skip_close

    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    :cond_skip_close
    invoke-static {p0}, Lcom/mycompany/app/web/DevToolsHelper;->loadErudaJs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_have_js

    return-void

    :cond_have_js
    if-eqz p1, :cond_hide_only

    const-string v3, "eruda.show();try{var __e=eruda.get(\'entryBtn\');if(__e)__e.show()}catch(e){}"

    goto :goto_present

    :cond_hide_only
    const-string v3, "try{var __e=eruda.get(\'entryBtn\');if(__e)__e.hide()}catch(e){}"

    :goto_present
    if-eqz p1, :cond_init_hidden

    const-string v1, ";eruda.init({defaults:{displaySize:50}});eruda.show();"

    goto :goto_suffix

    :cond_init_hidden
    const-string v1, ";eruda.init({defaults:{displaySize:50}});try{var __e=eruda.get(\'entryBtn\');if(__e)__e.hide()}catch(e){}"

    :goto_suffix
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_eval
    const-string v1, "(function(){return!!window.eruda;})();"

    new-instance v2, Lcom/mycompany/app/web/DevToolsHelper$1;

    invoke-direct {v2, v0, v3, v4}, Lcom/mycompany/app/web/DevToolsHelper$1;-><init>(Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebNestView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_eval
    .catch Ljava/lang/Exception; {:try_start_eval .. :try_end_eval} :catch_eval

    :catch_eval
    return-void

    :cond_unsupported
    :goto_unsupported
    if-eqz p2, :cond_no_toast

    invoke-static {p0}, Lcom/mycompany/app/web/DevToolsHelper;->resolveNotSupportedPage(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    :cond_no_toast
    return-void
.end method

.method public static loadEruda(Lcom/mycompany/app/web/WebViewActivity;)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/mycompany/app/web/DevToolsHelper;->inject(Lcom/mycompany/app/web/WebViewActivity;ZZ)V

    return-void
.end method

.method private static declared-synchronized loadErudaJs(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-class v0, Lcom/mycompany/app/web/DevToolsHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/mycompany/app/web/DevToolsHelper;->cachedErudaJs:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_4e

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    :cond_9
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v2, "eruda/eruda.js"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_28

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1d

    :cond_28
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v2, Lcom/mycompany/app/web/DevToolsHelper;->cachedErudaJs:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_35} :catch_3d
    .catchall {:try_start_a .. :try_end_35} :catchall_3b

    if-eqz v1, :cond_44

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

    :catch_3d
    :try_start_3d
    const-string p0, ""

    sput-object p0, Lcom/mycompany/app/web/DevToolsHelper;->cachedErudaJs:Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3b

    if-eqz v1, :cond_44

    goto :goto_37

    :catch_44
    :cond_44
    :goto_44
    :try_start_44
    sget-object p0, Lcom/mycompany/app/web/DevToolsHelper;->cachedErudaJs:Ljava/lang/String;
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_4e

    monitor-exit v0

    return-object p0

    :goto_48
    if-eqz v1, :cond_4d

    :try_start_4a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

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

.method public static maybePreload(Lcom/mycompany/app/web/WebViewActivity;)V
    .registers 2

    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->R:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/mycompany/app/web/DevToolsHelper;->inject(Lcom/mycompany/app/web/WebViewActivity;ZZ)V

    return-void
.end method

.method private static resolveNotSupportedPage(Landroid/content/Context;)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "not_supported_page"

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
