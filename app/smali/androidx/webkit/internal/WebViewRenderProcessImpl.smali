.class public Landroidx/webkit/internal/WebViewRenderProcessImpl;
.super Landroidx/webkit/WebViewRenderProcess;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/WeakHashMap;


# instance fields
.field public a:Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/webkit/internal/WebViewRenderProcessImpl;->b:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    return-void
.end method
