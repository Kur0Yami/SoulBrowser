.class Lcom/mycompany/app/dialog/DialogWebView$PreviewGesture;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$PreviewGesture;->c:Lcom/mycompany/app/dialog/DialogWebView;

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$PreviewGesture;->c:Lcom/mycompany/app/dialog/DialogWebView;

    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebView;->L1:Lcom/mycompany/app/wview/WebAreaView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebView;->b0:Lcom/mycompany/app/main/MainActivity;

    instance-of v1, p1, Lcom/mycompany/app/web/WebViewActivity;

    if-nez v1, :cond_2

    return-void

    :cond_2
    check-cast p1, Lcom/mycompany/app/web/WebViewActivity;

    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebViewActivity;->handleWebNestLongClick(Lcom/mycompany/app/web/WebNestView;)Z

    return-void
.end method
