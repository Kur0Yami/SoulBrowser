.class Lcom/mycompany/app/image/ImageViewListHori$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/image/ImageViewListHori;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewListHori;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListHori$23;->f:Lcom/mycompany/app/image/ImageViewListHori;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/image/ImageViewListHori$23;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$23;->f:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->Q:Lcom/mycompany/app/image/ImageGifView;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageGifView;->j()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->Q:Lcom/mycompany/app/image/ImageGifView;

    .line 18
    .line 19
    const/4 v3, -0x1

    .line 20
    invoke-virtual {v1, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 24
    .line 25
    new-instance v1, Lcom/mycompany/app/image/ImageViewListHori$23$1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewListHori$23$1;-><init>(Lcom/mycompany/app/image/ImageViewListHori$23;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method
