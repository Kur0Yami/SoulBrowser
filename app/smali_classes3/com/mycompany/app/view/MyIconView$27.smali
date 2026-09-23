.class Lcom/mycompany/app/view/MyIconView$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/view/MyIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyIconView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyIconView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyIconView$27;->c:Lcom/mycompany/app/view/MyIconView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/view/MyIconView$27;->c:Lcom/mycompany/app/view/MyIconView;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/view/MyIconView;->N0:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/mycompany/app/view/MyIconView;->O0:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/view/MyIconView;->M0:Z

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p1, Lcom/mycompany/app/view/MyIconView;->Q0:Landroid/view/View$OnLongClickListener;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 23
    .line 24
    .line 25
    iput-boolean v1, p1, Lcom/mycompany/app/view/MyIconView;->M0:Z

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyIconView;->B()V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_2
    :goto_0
    return v1
.end method
