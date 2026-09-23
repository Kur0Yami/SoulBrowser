.class Lcom/mycompany/app/image/ImageViewControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyFadeListener;


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
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewControl$1;->a:Lcom/mycompany/app/image/ImageViewControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl$1;->a:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewControl;->setIconsPressed(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    xor-int/lit8 v1, p1, 0x1

    .line 14
    .line 15
    iget-boolean v2, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->l:Z

    .line 16
    .line 17
    if-ne v2, v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->l:Z

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    return-void
.end method

.method public final b(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl$1;->a:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->C:Lcom/mycompany/app/image/ImageViewControl$ControlListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1, p1}, Lcom/mycompany/app/image/ImageViewControl$ControlListener;->b(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object p2, v0, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 14
    .line 15
    if-eqz p2, :cond_3

    .line 16
    .line 17
    xor-int/lit8 v0, p1, 0x1

    .line 18
    .line 19
    iget-boolean v1, p2, Lcom/mycompany/app/image/ImageThumbAdapter;->l:Z

    .line 20
    .line 21
    if-ne v1, v0, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iput-boolean v0, p2, Lcom/mycompany/app/image/ImageThumbAdapter;->l:Z

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 29
    .line 30
    .line 31
    :cond_3
    :goto_0
    return-void
.end method
