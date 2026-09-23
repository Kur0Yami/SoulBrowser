.class Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$2;->c:Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$2;->c:Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->M:Lcom/mycompany/app/view/MyCoverView;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->f(Z)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method
