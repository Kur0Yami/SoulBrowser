.class Lcom/mycompany/app/image/ImageViewListVert$58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewListVert;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewListVert;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListVert$58;->c:Lcom/mycompany/app/image/ImageViewListVert;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListVert$58;->c:Lcom/mycompany/app/image/ImageViewListVert;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->M0:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->C:Lcom/mycompany/app/compress/Compress;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->w:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->C:Lcom/mycompany/app/compress/Compress;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/mycompany/app/compress/Compress;->u(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->M0:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 26
    .line 27
    sget-object v3, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, v3, v1}, Lcom/mycompany/app/web/WebTransOcrCtrl;->h(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListVert;->M0:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebTransOcrCtrl;->i(Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
