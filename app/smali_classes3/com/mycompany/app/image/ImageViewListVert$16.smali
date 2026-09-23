.class Lcom/mycompany/app/image/ImageViewListVert$16;
.super Lcom/mycompany/app/list/ListTask$ListTaskSimpleListener;
.source "SourceFile"


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
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListVert$16;->a:Lcom/mycompany/app/image/ImageViewListVert;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListVert$16;->a:Lcom/mycompany/app/image/ImageViewListVert;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->c0:Lcom/mycompany/app/list/ListTask;

    .line 5
    .line 6
    return-void
.end method

.method public final g(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewListVert$16;->a:Lcom/mycompany/app/image/ImageViewListVert;

    .line 3
    .line 4
    iput-object v0, v1, Lcom/mycompany/app/image/ImageViewListVert;->c0:Lcom/mycompany/app/list/ListTask;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, v1, Lcom/mycompany/app/image/ImageViewListVert;->a:Landroid/content/Context;

    .line 11
    .line 12
    sget v0, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageViewListVert;->d0()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 22
    .line 23
    iput p1, v1, Lcom/mycompany/app/image/ImageViewListVert;->r:I

    .line 24
    .line 25
    iget-object p1, v1, Lcom/mycompany/app/image/ImageViewListVert;->U:Lcom/mycompany/app/image/ImageViewControl;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget v0, v1, Lcom/mycompany/app/image/ImageViewListVert;->t:I

    .line 30
    .line 31
    iget v2, v1, Lcom/mycompany/app/image/ImageViewListVert;->n:I

    .line 32
    .line 33
    iget-object v1, v1, Lcom/mycompany/app/image/ImageViewListVert;->C:Lcom/mycompany/app/compress/Compress;

    .line 34
    .line 35
    invoke-virtual {p1, v0, v2, v1}, Lcom/mycompany/app/image/ImageViewControl;->p(IILcom/mycompany/app/compress/Compress;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method
