.class Lcom/mycompany/app/quick/QuickControl$5;
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
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickControl$5;->c:Lcom/mycompany/app/quick/QuickControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl$5;->c:Lcom/mycompany/app/quick/QuickControl;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickControl;->s:Lcom/mycompany/app/quick/QuickView;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAdapter;->B()Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p1, v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->m(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method
