.class Lcom/mycompany/app/image/ImageViewListHori$30;
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
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListHori$30;->c:Lcom/mycompany/app/image/ImageViewListHori;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewListHori$30;->c:Lcom/mycompany/app/image/ImageViewListHori;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lcom/mycompany/app/image/ImageViewListHori;->h0(Z)V

    .line 5
    .line 6
    .line 7
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->j:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, v1, Lcom/mycompany/app/image/ImageViewListHori;->H0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, v1, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v2, Lcom/mycompany/app/image/ImageViewListHori$36;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Lcom/mycompany/app/image/ImageViewListHori$36;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method
