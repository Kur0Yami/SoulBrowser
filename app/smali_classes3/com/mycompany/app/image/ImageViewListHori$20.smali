.class Lcom/mycompany/app/image/ImageViewListHori$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageListAdapter$ImageListListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewListHori;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewListHori;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListHori$20;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$20;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->n:I

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListHori;->o:Lcom/mycompany/app/web/WebLoadWrap;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebLoadWrap;->c(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final b()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$20;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListHori;->I:Lcom/mycompany/app/image/ImageListHori;

    .line 4
    .line 5
    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$20;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    iget v0, v0, Lcom/mycompany/app/image/ImageViewListHori;->r:I

    .line 4
    .line 5
    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$20;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListHori;->u:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method
