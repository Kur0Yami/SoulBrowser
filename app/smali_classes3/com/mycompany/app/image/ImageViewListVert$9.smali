.class Lcom/mycompany/app/image/ImageViewListVert$9;
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
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListVert$9;->c:Lcom/mycompany/app/image/ImageViewListVert;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListVert$9;->c:Lcom/mycompany/app/image/ImageViewListVert;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->a:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->u:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->s:Ljava/lang/String;

    .line 15
    .line 16
    sget-boolean v1, Lcom/mycompany/app/pref/PrefList;->q:Z

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->a:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->u:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/mycompany/app/db/DbCmp;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    .line 32
    .line 33
    iput v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->v:I

    .line 34
    .line 35
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 36
    .line 37
    iput v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->w:I

    .line 38
    .line 39
    iget v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    .line 40
    .line 41
    iput v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->x:I

    .line 42
    .line 43
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListVert;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :cond_3
    new-instance v1, Lcom/mycompany/app/image/ImageViewListVert$9$1;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewListVert$9$1;-><init>(Lcom/mycompany/app/image/ImageViewListVert$9;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method
