.class Lcom/mycompany/app/dialog/DialogWebView$PreviewTouch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final c:Landroid/view/GestureDetector;

.field public final synthetic d:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$PreviewTouch;->d:Lcom/mycompany/app/dialog/DialogWebView;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    new-instance v2, Lcom/mycompany/app/dialog/DialogWebView$PreviewGesture;

    invoke-direct {v2, p1}, Lcom/mycompany/app/dialog/DialogWebView$PreviewGesture;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$PreviewTouch;->c:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$PreviewTouch;->c:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    # Do not consume — let WebView scroll/hit-test normally.
    const/4 p1, 0x0

    return p1
.end method
