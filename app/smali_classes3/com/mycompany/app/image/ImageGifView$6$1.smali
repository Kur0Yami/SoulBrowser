.class Lcom/mycompany/app/image/ImageGifView$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageGifView$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageGifView$6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageGifView$6$1;->a:Lcom/mycompany/app/image/ImageGifView$6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final C(Landroid/graphics/RectF;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final D(Landroid/view/MotionEvent;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageGifView$6$1;->a:Lcom/mycompany/app/image/ImageGifView$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/image/ImageGifView$6;->c:Lcom/mycompany/app/image/ImageGifView;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/image/ImageGifView;->z:Lcom/mycompany/app/image/ImageGifView$GifListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Lcom/mycompany/app/image/ImageGifView$GifListener;->b(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final t()V
    .locals 0

    .line 1
    return-void
.end method
