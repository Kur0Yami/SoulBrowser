.class Lcom/mycompany/app/view/MyBarView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyBarView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyBarView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyBarView$4;->c:Lcom/mycompany/app/view/MyBarView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyBarView$4;->c:Lcom/mycompany/app/view/MyBarView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyBarView;->f:Lcom/mycompany/app/view/MyBarView$BarListener;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-interface {v0, v2, p1, v1}, Lcom/mycompany/app/view/MyBarView$BarListener;->a(ILandroid/view/View;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return v1
.end method
