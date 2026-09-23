.class Lcom/mycompany/app/quick/QuickAdapter$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter$7;->c:Lcom/mycompany/app/quick/QuickAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter$7;->c:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->l:Lcom/mycompany/app/quick/QuickAdapter$QuickListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/quick/QuickAdapter;->v(Landroid/view/View;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {v0, p1}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickAdapter;->l:Lcom/mycompany/app/quick/QuickAdapter$QuickListener;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lcom/mycompany/app/quick/QuickAdapter$QuickListener;->e(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
