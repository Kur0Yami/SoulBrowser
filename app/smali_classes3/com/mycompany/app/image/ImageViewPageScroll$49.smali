.class Lcom/mycompany/app/image/ImageViewPageScroll$49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewPageScroll;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$49;->c:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$49;->c:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->i:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/image/ImageViewPageScroll;->y0()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->e0:Lcom/mycompany/app/image/ImageViewPageScroll$BookTask;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 17
    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    iput-object v0, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->e0:Lcom/mycompany/app/image/ImageViewPageScroll$BookTask;

    .line 20
    .line 21
    iget-boolean v0, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->j0:Z

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iput-boolean v1, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->j0:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    invoke-virtual {p1, v1}, Lcom/mycompany/app/image/ImageViewPageScroll;->j1(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
