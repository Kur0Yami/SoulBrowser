.class Lcom/mycompany/app/image/ImageViewListVert$54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListVert$54;->c:Lcom/mycompany/app/image/ImageViewListVert;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewListVert$54;->c:Lcom/mycompany/app/image/ImageViewListVert;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/mycompany/app/image/ImageViewListVert;->w0()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p1, Lcom/mycompany/app/image/ImageViewListVert;->i0:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p1, Lcom/mycompany/app/image/ImageViewListVert;->i0:Z

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Lcom/mycompany/app/image/ImageViewListVert;->Y0(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
