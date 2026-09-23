.class Lcom/mycompany/app/view/MyPopupMenu$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyLinkView$MainLinkListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyPopupMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyPopupMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyPopupMenu$6;->a:Lcom/mycompany/app/view/MyPopupMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu$6;->a:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyPopupMenu;->i:Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;->b(Landroid/view/View;I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->b()V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method
