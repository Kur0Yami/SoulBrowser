.class Lcom/mycompany/app/image/ImageViewListHori$61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewListHori;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewListHori;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListHori$61;->c:Lcom/mycompany/app/image/ImageViewListHori;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$61;->c:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->j1:Z

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->S:Lcom/mycompany/app/view/MyCoverView;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->N0:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    sget-object v3, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3, v1}, Lcom/mycompany/app/web/WebTransOcrCtrl;->h(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    new-instance v1, Lcom/mycompany/app/image/ImageViewListHori$61$1;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewListHori$61$1;-><init>(Lcom/mycompany/app/image/ImageViewListHori$61;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method
