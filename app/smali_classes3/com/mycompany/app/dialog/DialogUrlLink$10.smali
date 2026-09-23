.class Lcom/mycompany/app/dialog/DialogUrlLink$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogUrlLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$10;->a:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/core/widget/NestedScrollView;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$10;->a:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->G0:Lcom/mycompany/app/view/MyLinkView;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-lez p2, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyLinkView;->A()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget-boolean p2, p1, Lcom/mycompany/app/view/MyLinkView;->R:Z

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_2
    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p1, Lcom/mycompany/app/view/MyLinkView;->R:Z

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
