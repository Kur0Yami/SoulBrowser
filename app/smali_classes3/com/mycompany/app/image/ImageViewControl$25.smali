.class Lcom/mycompany/app/image/ImageViewControl$25;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewControl$25;->a:Lcom/mycompany/app/image/ImageViewControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl$25;->a:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/image/ImageViewControl;->l0:Lcom/mycompany/app/view/MyScrollBar;

    .line 4
    .line 5
    if-eqz p2, :cond_5

    .line 6
    .line 7
    iget-object p2, p1, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean p2, p2, Lcom/mycompany/app/image/ImageThumbAdapter;->l:Z

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyFadeRelative;->f()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/4 p3, 0x1

    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyFadeRelative;->i(Z)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object p2, p1, Lcom/mycompany/app/image/ImageViewControl;->s0:Ljava/lang/Runnable;

    .line 28
    .line 29
    iget-object v0, p1, Lcom/mycompany/app/image/ImageViewControl;->l0:Lcom/mycompany/app/view/MyScrollBar;

    .line 30
    .line 31
    if-eqz v0, :cond_5

    .line 32
    .line 33
    iget-object v1, p1, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    iget-boolean v1, p1, Lcom/mycompany/app/image/ImageViewControl;->r0:Z

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    iput-boolean p3, p1, Lcom/mycompany/app/image/ImageViewControl;->r0:Z

    .line 44
    .line 45
    invoke-virtual {v0, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    iget-object p1, p1, Lcom/mycompany/app/image/ImageViewControl;->l0:Lcom/mycompany/app/view/MyScrollBar;

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    :cond_5
    :goto_0
    return-void
.end method
