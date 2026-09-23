.class Lcom/mycompany/app/image/ImageViewPageScroll$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyImageView;

.field public final synthetic f:Z

.field public final synthetic g:Lcom/mycompany/app/image/ImageViewPageScroll;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll;Lcom/mycompany/app/view/MyImageView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$24;->g:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/image/ImageViewPageScroll$24;->c:Lcom/mycompany/app/view/MyImageView;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mycompany/app/image/ImageViewPageScroll$24;->f:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$24;->c:Lcom/mycompany/app/view/MyImageView;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageScroll$24;->g:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/zoom/ZoomImageAttacher;-><init>(Landroid/widget/ImageView;Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, v2, Lcom/mycompany/app/image/ImageViewPageScroll;->i0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 11
    .line 12
    iget-object v0, v2, Lcom/mycompany/app/image/ImageViewPageScroll;->i0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/mycompany/app/image/ImageViewPageScroll;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 15
    .line 16
    iput-object v2, v0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->c:Landroid/view/ViewGroup;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageScroll$24;->f:Z

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    xor-int/2addr v2, v3

    .line 22
    iput-boolean v2, v0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->x:Z

    .line 23
    .line 24
    iput-boolean v3, v0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->z:Z

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyImageView;->setAttacher(Lcom/mycompany/app/zoom/ZoomImageAttacher;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
