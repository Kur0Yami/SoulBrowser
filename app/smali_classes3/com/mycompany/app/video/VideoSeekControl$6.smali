.class Lcom/mycompany/app/video/VideoSeekControl$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoSeekControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoSeekControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl$6;->c:Lcom/mycompany/app/video/VideoSeekControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSeekControl$6;->c:Lcom/mycompany/app/video/VideoSeekControl;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/video/VideoSeekControl;->g:Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    iget-object p2, p1, Lcom/mycompany/app/video/VideoSeekControl;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_2

    .line 21
    .line 22
    iget-object p2, p1, Lcom/mycompany/app/video/VideoSeekControl;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-nez p2, :cond_2

    .line 29
    .line 30
    iget-object p1, p1, Lcom/mycompany/app/video/VideoSeekControl;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 40
    return p1

    .line 41
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 42
    return p1
.end method
