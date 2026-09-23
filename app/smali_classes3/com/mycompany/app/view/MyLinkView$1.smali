.class Lcom/mycompany/app/view/MyLinkView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyLinkView$1;->c:Lcom/mycompany/app/view/MyLinkView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/view/MyLinkView;->S:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/view/MyLinkView$1;->c:Lcom/mycompany/app/view/MyLinkView;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    instance-of v2, v1, Ljava/lang/Integer;

    .line 19
    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    :goto_0
    const/4 v1, -0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    check-cast v1, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    :goto_1
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyLinkView;->y(I)Lcom/mycompany/app/view/MyLinkView$MainLinkItem;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/view/MyLinkView;->K:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    iget v1, v1, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;->a:I

    .line 42
    .line 43
    invoke-interface {v0, p1, v1}, Lcom/mycompany/app/view/MyLinkView$MainLinkListener;->a(Landroid/view/View;I)V

    .line 44
    .line 45
    .line 46
    :cond_4
    :goto_2
    return-void
.end method
