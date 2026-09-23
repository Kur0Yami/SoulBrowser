.class Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/curl/CurlMesh;

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;Lcom/mycompany/app/curl/CurlMesh;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$4;->g:Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$4;->c:Lcom/mycompany/app/curl/CurlMesh;

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$4;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$4;->g:Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->n0:Z

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->l0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->M:Lcom/mycompany/app/view/MyCoverView;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyCoverView;->l()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    const/16 v2, 0x8

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->f(Z)V

    .line 37
    .line 38
    .line 39
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$4;->c:Lcom/mycompany/app/curl/CurlMesh;

    .line 40
    .line 41
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$4;->f:I

    .line 42
    .line 43
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q(Lcom/mycompany/app/image/ImageViewPageEffect;Lcom/mycompany/app/curl/CurlMesh;I)Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 44
    .line 45
    .line 46
    return-void
.end method
