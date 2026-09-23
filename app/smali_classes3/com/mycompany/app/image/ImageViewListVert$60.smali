.class Lcom/mycompany/app/image/ImageViewListVert$60;
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
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListVert$60;->c:Lcom/mycompany/app/image/ImageViewListVert;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListVert$60;->c:Lcom/mycompany/app/image/ImageViewListVert;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->N0:Lcom/mycompany/app/image/ImageTransView;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->C:Lcom/mycompany/app/compress/Compress;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->w:I

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->C:Lcom/mycompany/app/compress/Compress;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Lcom/mycompany/app/compress/Compress;->u(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListVert;->N0:Lcom/mycompany/app/image/ImageTransView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageTransView;->setIconTrans(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method
