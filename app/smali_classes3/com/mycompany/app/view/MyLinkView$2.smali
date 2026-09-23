.class Lcom/mycompany/app/view/MyLinkView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/view/MyLinkView;->setItemView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyLinkView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyLinkView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/view/MyLinkView$2;->c:Lcom/mycompany/app/view/MyLinkView;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/mycompany/app/view/MyLinkView$2;->c:Lcom/mycompany/app/view/MyLinkView;

    iget-object v1, v0, Lcom/mycompany/app/view/MyLinkView;->T:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyLinkView;->y(I)Lcom/mycompany/app/view/MyLinkView$MainLinkItem;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget-object v0, v0, Lcom/mycompany/app/view/MyLinkView;->T:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

    iget v1, v1, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;->a:I

    add-int/lit16 v1, v1, 0x3e8

    invoke-interface {v0, p1, v1}, Lcom/mycompany/app/view/MyLinkView$MainLinkListener;->a(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1
.end method
