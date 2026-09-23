.class Lcom/mycompany/app/dialog/DialogMenuList$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyBarView$BarListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogMenuList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuList$15;->a:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList$15;->a:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogMenuList;->c:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;->e()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p3, v0, Lcom/mycompany/app/dialog/DialogMenuList;->c:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    invoke-interface {p3, p2, p1}, Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;->b(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method
