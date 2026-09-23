.class Lcom/mycompany/app/image/ImageViewListVert$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageSizeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewListVert;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewListVert;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListVert$4;->a:Lcom/mycompany/app/image/ImageViewListVert;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewListVert$4;->a:Lcom/mycompany/app/image/ImageViewListVert;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/image/ImageViewListVert;->N0:Lcom/mycompany/app/image/ImageTransView;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/mycompany/app/image/ImageViewListVert;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    new-instance p2, Lcom/mycompany/app/image/ImageViewListVert$4$1;

    .line 14
    .line 15
    invoke-direct {p2, p0}, Lcom/mycompany/app/image/ImageViewListVert$4$1;-><init>(Lcom/mycompany/app/image/ImageViewListVert$4;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
