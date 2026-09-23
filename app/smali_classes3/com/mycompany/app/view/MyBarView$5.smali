.class Lcom/mycompany/app/view/MyBarView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyIconView$AddrIconListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyBarView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyBarView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyBarView$5;->a:Lcom/mycompany/app/view/MyBarView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/view/MyIconView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyBarView$5;->a:Lcom/mycompany/app/view/MyBarView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyBarView;->f:Lcom/mycompany/app/view/MyBarView$BarListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x3e9

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, p1, v2}, Lcom/mycompany/app/view/MyBarView$BarListener;->a(ILandroid/view/View;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final b(Lcom/mycompany/app/view/MyIconView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyBarView$5;->a:Lcom/mycompany/app/view/MyBarView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyBarView;->f:Lcom/mycompany/app/view/MyBarView$BarListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x33

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, p1, v2}, Lcom/mycompany/app/view/MyBarView$BarListener;->a(ILandroid/view/View;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
