.class Lcom/mycompany/app/image/ImageViewControl$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewControl$24;->c:Lcom/mycompany/app/image/ImageViewControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl$24;->c:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/image/ImageViewControl;->C:Lcom/mycompany/app/image/ImageViewControl$ControlListener;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Lcom/mycompany/app/image/ImageViewControl$ControlListener;->v()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/image/ImageViewControl;->l()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method
