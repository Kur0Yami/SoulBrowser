.class Lcom/mycompany/app/quick/QuickControl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickControl$4;->c:Lcom/mycompany/app/quick/QuickControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl$4;->c:Lcom/mycompany/app/quick/QuickControl;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickControl;->s:Lcom/mycompany/app/quick/QuickView;

    .line 4
    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAdapter;->A()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x1

    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    .line 26
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/mycompany/app/quick/QuickAdapter;->B()Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {v1, p1, v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->o(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-interface {p1, v1, v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->o(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;I)V

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_0
    return-void
.end method
